<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePersonajesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('personajes', function (Blueprint $table) {
            $table->id();
            $table->string('Nombre');
            $table->string('Estado');
            $table->string('Planeta_Origen');
            $table->string('Rango');
            $table->string('Sensible');
            $table->string('Trilogia');
            $table->string('Peliculas');
            $table->string('Raza');
            $table->string('Genero');
            $table->string('Interprete');
            $table->string('Foto');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('personajes');
    }
}
