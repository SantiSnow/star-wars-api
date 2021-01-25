<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Nave extends Model
{
    private $Nombre;
    private $Propietario;
    private $Tipo;
    private $Estado;
    private $Foto;

    protected $fillable = [
        'Nombre',
        'Propietario',
        'Tipo',
        'Estado',
        'Foto'
    ];

    public $timestamps = false;

    use HasFactory;
}
