<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableDoctors extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('doctors', function (Blueprint $table) {

            $table->engine = 'InnoDB';
            
            $table->increments('id');

            $table->string('name')->nullable();
            $table->string('qualification', 500)->nullable();

            $table->integer('opd_current_token_number')->nullable();

            $table->integer('opd_fee')->nullable();

            $table->boolean('is_activated')->nullable();
            $table->string('deactivation_reason', 1000)->nullable();
            
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('doctors');
    }
}
