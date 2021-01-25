<?php

namespace Tests\Unit;

use App\Models\Planeta;
use Illuminate\Foundation\Testing\RefreshDatabase;
use PHPUnit\Framework\TestCase;
use Webmozart\Assert\Assert;

class PersonajesTest extends TestCase
{
    use RefreshDatabase;

    public function test_no_se_encontraron_resgistros_en_planetas(){
        $planetas = Planeta::all();
        $this->assertEquals(null, $planetas);
    }

}
