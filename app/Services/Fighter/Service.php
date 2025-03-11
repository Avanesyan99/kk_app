<?php 

namespace App\Services\Fighter;

use App\Models\Fighter;

class Service {
    public function store($data) {
        $weight = $data['weight'];
        $fighter = Fighter::create($data);
    }

    public function update($fighter, $data) {
        $fighter->update($data);
    }
}