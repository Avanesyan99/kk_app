<?php 

namespace App\Services\Fighter;

use App\Models\Fighter;

class Service {
    public function store($data) {
        $weight = $data['weight'];
        $lightW = 70;
        $averageW = 80;
        $lightHeavyW = 90;
        if($weight <= $lightW) {
            $data['category_id'] = 1;
        } else if($weight <= $averageW) {
            $data['category_id'] = 2;
        } else if($weight <= $lightHeavyW) {
            $data['category_id'] = 3;
        } else if($weight > $lightHeavyW) {
            $data['category_id'] = 4;
        }
        $fighter = Fighter::create($data);
    }

    public function update($fighter, $data) {
        $fighter->update($data);
    }
}