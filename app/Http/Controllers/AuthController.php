<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class AuthController extends Controller
{
    public function register(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|unique:users,email',
            'password' => 'required|string|min:6',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => bcrypt($request->password),
        ]);

        $token = $user->createToken('main')->plainTextToken;

        return response()->json([
            'user' => $user,
            'token' =>  $token
        ], 201);
    }

    public function login(Request $request)
    {
        $request->validate([
            'email' => 'required|string|email',
            'password' => 'required|string',
        ]);

        if (!Auth::attempt($request->only('email', 'password'))) {
            return response()->json(
                data: ["message" => "User was not found"],
                status: Response::HTTP_NOT_FOUND
            );
        }

        $user = Auth::user();

        $token = $user->createToken('authToken')->plainTextToken;


        return response()->json([
            'user' => $user,
            'token' => $token
        ]);
    }

    public function cekLogin()
    {
        if (Auth::check()) {
            // Pengguna sudah login
            $user = Auth::user();
            // Lakukan sesuatu dengan data pengguna
            return response()->json([
                'user' => $user
            ], 200);
        } else {
            // Pengguna belum login
            return response()->json([
                'message' => 'Unauthorized'
            ], 401);
        }
    }

    public function logout(Request $request)
    {
        // Revoke semua token akses yang terkait dengan pengguna
        $request->user()->tokens()->delete();

        return response()->json([
            'message' => 'Logged out successfully'
        ], 200);
    }

    public function getUser()
    {
        return response()->json([
            "user" => auth()->user()
        ], Response::HTTP_OK);
    }
}
