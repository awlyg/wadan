<?php
/**
 * Created by PhpStorm.
 * User: inejih
 * Date: 03/09/2019
 * Time: 00:47
 */

namespace App\Utils;

class Ramadan
{
    public $dateTime;
    public $calendar;
    public $c_language;
    public static $isToday = false;

    function __construct()
    {
        $this->c_language =  \App\Core::getCurrentLanguage();
        require_once DIR_BASE . 'external/Hijri/hijri.class.php';
        $this->calendar = new \hijri\Calendar();
        $this->dateTime = new \hijri\datetime(null, null, $this->c_language, $this->calendar);
    }

    public function getNextRamdan($format='hijri'){

        list($year, $month, $day) = explode('-', $this->dateTime->format('_Y-_m-_j'));
        $year = (int) $year;
        $month = (int) $month;

        if($month < 9){
            $this->dateTime->setDateHijri($year, 9, 1);
        }
        elseif ($month == 9 && $day = 1){
            self::$isToday = true;
            $this->dateTime->setDateHijri($year, 9, 1);
        }
        else {
            $this->dateTime->setDateHijri($year+1, 9, 1);
        }

        if($format == false){
            return $this->dateTime->format('Y');
        }

        if ($format == 'hijri'){
            $h = ($this->c_language == 'ar') ? 'هـ' : '';
            $hijri = $this->dateTime->format("_j _F _Y $h");

            return $hijri;
        }

        elseif ($format == 'georgian'){
            $g = ($this->c_language == 'ar') ? 'م' : '';
            $m = ($this->c_language == 'ar') ? 'M' : 'F';
            $georgian = $this->dateTime->format("j $m Y $g");

            return $georgian;
        }

        else {
            return false;
        }
    }
}