<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddPrioritiesTasksTable extends Migration {

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up() {
        Schema::table('tasks', function (Blueprint $table) {
            //
            for ($i = 1; $i < DB::table('tasks')->count('id') + 1; $i++)
                DB::table('tasks')->where('id', $i)->update(['priority' => $i]);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down() {
        Schema::table('tasks', function (Blueprint $table) {
            //
        });
    }

}
