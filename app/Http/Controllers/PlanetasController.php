<?php

namespace App\Http\Controllers;

use App\Models\Planeta;

class PlanetasController extends Controller
{
    public function todosLosPlanetas(){
        return Planeta::all();
    }

    public function buscarPlaneta($id){
        return Planeta::find($id);
    }
}
