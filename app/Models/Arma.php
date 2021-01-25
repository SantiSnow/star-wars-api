<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Arma extends Model
{
    private $Nombre;
    private $Principal_usuario;
    private $Tipo;
    private $Creador;
    private $Foto;

    protected $fillable = [
        'Nombre',
        'Principal_usuario',
        'Tipo',
        'Creador',
        'Foto'
    ];

    public $timestamps = false;

    use HasFactory;
}
