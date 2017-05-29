<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddColumnPriorityTasksTable extends Migration {

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up() {
        //
        Schema::table('tasks', function(Blueprint $table) {
            $table->integer('priority')->after('status');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down() {
        //
    }

}
