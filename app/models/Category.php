<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Category
 *
 * @author abbasadel
 */
class Category extends Eloquent {

    public function promises() {
        return $this->hasMany('Promise');
    }

}

?>
