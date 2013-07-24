<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of MeterController
 *
 * @author abbasadel
 */
class MeterController extends BaseController{

    public function getIndex(){
        return View::make('site/home');
    }
}

?>
