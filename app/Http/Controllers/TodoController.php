<?php

namespace App\Http\Controllers;

use App\Models\Todo;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class TodoController extends Controller
{
    public function create(Request $request)
    {

        $request->validate([
            'title' => 'required|string'
        ]);

        // Dapatkan id pengguna dari sesi login
        $userId = Auth::id();

        // Buat data todo
        $todo = new Todo([
            'title' => $request->title,
            'userid' => $request->userid
        ]);

        $todo->save();

        return response()->json([
            'message' => 'Todo created successfully',
            'todo' => $todo
        ], 201);
    }

    public function getData($id)
    {
        return Todo::where('userid', $id)->get();
    }

    public function getDataDetail($id)
    {
        $todo = Todo::find($id);

        // Periksa apakah todo ditemukan
        if (!$todo) {
            return response()->json([
                'message' => 'Todo not found'
            ], 404);
        }

        // Periksa apakah pengguna memiliki akses ke todo


        return $todo;
    }

    public function update($id, Request $request)
    {
        $todo = Todo::find($id);

        // Periksa apakah todo ditemukan
        if (!$todo) {
            return response()->json([
                'message' => 'Todo not found'
            ], 404);
        }

        // Periksa apakah pengguna memiliki akses ke todo
       
        // Validasi data yang diterima
        $request->validate([
            'title' => 'required|string'
        ]);

        // Perbarui data todo
        $todo->title = $request->title;
        $todo->save();

        return response()->json([
            'message' => 'Todo updated successfully',
            'todo' => $todo
        ], 200);
    }

    public function destroy($id)
    {
        // Dapatkan data todo berdasarkan ID
        $todo = Todo::find($id);

        // Periksa apakah todo ditemukan
        if (!$todo) {
            return response()->json([
                'message' => 'Todo not found'
            ], 404);
        }


        $todo->delete();

        return response()->json([
            'message' => 'Todo deleted successfully'
        ], 200);
    }
}
