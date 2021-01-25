<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Planeta extends Model
{
    private $Nombre;
    private $Descripcion;
    private $Primer_Aparicion;
    private $Foto;

    protected $fillable = [
        'Nombre',
        'Descripcion',
        'Primer_Aparicion',
        'Foto'
    ];

    public $timestamps = false;

    use HasFactory;
}
