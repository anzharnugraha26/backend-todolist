<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\TodoController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('/register', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class, 'login']);
Route::get('/cekLogin', [AuthController::class, 'cekLogin']);
Route::middleware("auth:sanctum")->get('/logout', [AuthController::class, 'logout']);
Route::middleware("auth:sanctum")->get('/getuser', [AuthController::class, 'getUser']);


Route::controller(TodoController::class)->group(function () {
    Route::post('create', 'create');
    Route::get('getdata/{id}', 'getData');
    Route::get('getdataDetail/{id}', 'getDataDetail');
    Route::post('update/{id}', 'update');
    Route::get('destroy/{id}', 'destroy');
});
