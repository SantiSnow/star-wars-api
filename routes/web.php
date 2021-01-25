<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/planetas', [\App\Http\Controllers\PlanetasController::class, 'todosLosPlanetas']);

Route::get('/planeta/{id}', [\App\Http\Controllers\PlanetasController::class, 'buscarPlaneta']);

Route::get('/naves', [\App\Http\Controllers\NavesController::class, 'todasLasNaves']);

Route::get('/nave/{id}', [\App\Http\Controllers\NavesController::class, 'buscarNave']);
