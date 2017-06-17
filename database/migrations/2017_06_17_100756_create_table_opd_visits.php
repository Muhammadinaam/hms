<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableOpdVisits extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('opd_visits', function (Blueprint $table) {
            
            $table->engine = 'InnoDB';

            $table->bigIncrements('id');
            
            $table->unsignedBigInteger('doctor_id');
            $table->unsignedBigInteger('patient_id');
            $table->integer('token_number');
            $table->datetime('date_of_visit');
            $table->decimal('doctor_fee');

            $table->decimal('bp_up')->nullable();
            $table->decimal('bp_down')->nullable();
            $table->decimal('temperature')->nullable();
            $table->decimal('blood_sugar')->nullable();
            $table->decimal('weight')->nullable();
            $table->decimal('pulse_rate')->nullable();

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
        Schema::dropIfExists('opd_visits');
    }
}
