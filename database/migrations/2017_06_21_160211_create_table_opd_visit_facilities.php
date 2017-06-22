<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableOpdVisitFacilities extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('opd_visit_facilities', function (Blueprint $table) {
            
            $table->engine = 'InnoDB';

            $table->bigIncrements('id');

            $table->unsignedBigInteger('opd_visit_id');
            $table->integer('facility_id');
            $table->integer('days')->nullable();
            $table->string('direction')->nullable();
            $table->decimal('qty');
            $table->decimal('cost')->nullable();
            $table->decimal('sale_price');
            $table->decimal('sub_total');

            //$table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('opd_visit_facilities');
    }
}
