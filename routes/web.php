<?php

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


Route::get('/test', function () {
    return view('test');
});


Route::get('/home', 'HomeController@index')->name('home');

Route::post('/register', 'UserController@addUser');
Route::post('/login/auth', 'UserController@loginUser');
Route::get('/login/destroy', 'UserController@logoutUser');
Route::post('/edit', 'UserController@editUser');
Route::get('/show', 'UserController@showUser');
Route::get('/tasks', 'TaskController@showTasks');
Route::post('/update', 'TaskController@updatePriority');
Route::get('/reset', 'TaskController@resetTasks');
Route::post('/add', 'TaskController@addTask');
Route::post('/change', 'TaskController@changeTask');

