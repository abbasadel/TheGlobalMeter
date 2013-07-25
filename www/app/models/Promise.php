<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Promise
 *
 * @author abbasadel
 */
class Promise extends Eloquent {

    const DONE = 1;
    const INPROGRESS = -1;
    const NOT_DONE = 0;
    const DONE_STR = "done";
    const INPROGRESS_STR = "inprogress";
    const NOT_DONE_STR = "notdone";
    const DONE_ICO = "icon-ok";
    const INPROGRESS_ICO = "icon-con";
    const NOT_DONE_ICO = "icon-minus-sign";

    function statusText() {
        $state = $this->attributes['state'];
        if ($state == self::DONE) {
            return self::DONE_STR;
        } else if ($state == self::INPROGRESS) {
            return self::INPROGRESS_STR;
        }
        return self::NOT_DONE_STR;
    }

    function statusIcon() {
        $state = $this->attributes['state'];
        if ($state == self::DONE) {
            return self::DONE_ICO;
        } else if ($state == self::INPROGRESS) {
            return self::INPROGRESS_ICO;
        }
        return self::NOT_DONE_ICO;
    }

}

?>
