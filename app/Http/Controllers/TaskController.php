<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Task;
use DB;

class TaskController extends Controller {

    //
    public function showTasks() {
        return Task::orderBy('priority')->get();
    }

    public function resetTasks() {
        for ($i = 1; $i < DB::table('tasks')->count('id') + 1; $i++) {
            DB::table('tasks')->where('id', $i)->update(['priority' => $i]);
        }
    }

    public function updatePriority(\App\Http\Requests\updatePriority $request) {
        $subquery = "CASE id ";
        foreach ($request->input('changeArr') as $sort => $id) {
            $subquery .= " WHEN {$id} THEN " . ($sort + 1) . "";
        }
        $subquery .= " END ";
        DB::table('tasks')->whereIn('id', $request->input('changeArr'))->update(['priority' => DB::raw($subquery)]);
        return Task::orderBy('priority')->get();
    }

    public function addTask(\App\Http\Requests\addTask $request) {
        $task = Task::create([
                    'title' => $request->input('title'),
                    'description' => $request->input('title'),
                    'status' => $request->input('title'),
                    'priority' => 0,
        ]);
       // Task::where('id', $task->id)->update(['priority'=>$task->id]);
        return Task::orderBy('priority')->get();
    }
     public function changeTask(\App\Http\Requests\changeTask $request) {
  
        Task::where('id', $request->input('id'))->update(['title'=>$request->input('title')]);
        return Task::orderBy('priority')->get();
    }

}
