<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Meter
 *
 * @author abbasadel
 */
class Meter  extends Eloquent{
    public function categories() {
        return $this->hasMany('Category');
    }
}

?>
