<?php

namespace App\Http\Controllers;

use App\Models\Nave;
use Illuminate\Http\Request;

class NavesController extends Controller
{

    public function todasLasNaves(){
        return Nave::all();
    }

    public function buscarNave($id){
        return Nave::find($id);
    }
}
