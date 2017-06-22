<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddTableCmsPrivilegesOtherPermissions extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cms_privileges_other_permissions', function (Blueprint $table) {
            
            $table->engine = 'InnoDB';

            $table->increments('id');

            $table->integer('cms_privilege_id');
            $table->integer('cms_other_permission_id');

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
        Schema::dropIfExists('cms_privileges_other_permissions');
    }
}
