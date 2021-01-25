<?php

namespace App\Http\Controllers;

use App\Models\Arma;
use Illuminate\Http\Request;

class ArmasController extends Controller
{

    public function todasLasArmas(){
        return Arma::all();
    }

    public function buscarArma($id){
        return Arma::find($id);
    }
}
