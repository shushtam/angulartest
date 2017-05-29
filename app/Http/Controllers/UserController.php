<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Auth;

class UserController extends Controller {

    //
    public function addUser(\App\Http\Requests\addUser $request) {
        User::create([
            'name' => $request->input('name'),
            'email' => $request->input('email'),
            'password' => bcrypt($request->input('password'))
        ]);
        $user = ['email' => $request->input('email'),
            'password' => $request->input('password')];
        if (Auth::attempt($user))
            return response()->json(['registered' => true]);
    }

    public function loginUser(\App\Http\Requests\loginUser $request) {
        $user = ['email' => $request->input('email'),
            'password' => $request->input('password')];
        if (Auth::attempt($user)) {
            return Auth::user();
        } else {
            return 'invalid username/pass combo';
        }
    }

    public function logoutUser() {
        Auth::logout();
        return 'logged out';
    }

    public function showUser() {
        return Auth::user();
    }

    public function showTasks() {
        return Auth::user();
    }

    public function editUser(\App\Http\Requests\editUser $request) {
        User::find(Auth::user()->id)->update(['name' => $request->input('name'), 'email' => $request->input('email')]);
    }

}
