<?php

$current_lang = \App\Core::getCurrentLanguage();
$dateTime = new hijri\datetime(null, null, $current_lang);

if($data['type'] == 'georgian') {
    $f = ($current_lang == 'ar') ? 'M' : 'F';
    $dateTime->setDate($data['year'], $data['month'], 1);
    $month = $dateTime->format($f);
    $surfix = ($current_lang == 'ar') ? ' هـ' : '';
}
else {
    $f = ($current_lang == 'ar') ? '_M' : '_F';
    $dateTime->setDateHijri($data['year'], $data['month'], 1);
    $month = $dateTime->format($f);
    $surfix = ($current_lang == 'ar') ? ' م' : '';

}
$title_month = $lang['month'] . $month . ' - ' . $data['year'] . $surfix;

$page_title = $title_month;
$title = $title_month . ' ' . $lang['hijri_calendar'];

$desk = ($current_lang == 'ar') ? 'التقويم الهجري حسب أم القرى' : 'Umm alqura Hijri Calendar';
$keywords = "hijri, هجري, georgian, convert, تحويل التاريخ, months, ramadan, umm alqura, أم القرى,تقويم," ;

if($data['type'] == 'hijri') {

    $dt = new hijri\datetime(null, null, $current_lang);
    $dt->setDateHijri(1441, $data['month'], 1);
    $format_m = ($current_lang == 'ar') ? 'M' : 'F';
    $geo_month = ' ' . $dt->format($format_m);
    $geo_year = ' ' . $dt->format('Y');

    $h = ($current_lang == 'ar') ? 'هـ' : '';

    $desk = $lang['month'] . $month . " {$data['year']} $h" . ' ' . $lang['correspond_to'] . $geo_month . $geo_year . $lang['based_on'];
}

else {

    $dt = new hijri\datetime(null, null, $current_lang);
    $dt->setDate(2019, $data['month'], 1);
    $format_m = ($current_lang == 'ar') ? '_M' : '_F';
    $hij_month = ' ' . $dt->format($format_m);
    $hij_year = ' ' . $dt->format('_Y');

    $g = ($current_lang == 'ar') ? 'م' : '';

    $desk = $lang['month'] . $month . " {$data['year']} $g" . ' ' . $lang['correspond_to'] . $hij_month . $hij_year . $lang['based_on'];
}


$api = new \App\Controllers\APIController();
$days_full = \App\Core\BaseController::getLanguageDaysFull();
?>

<div class="container single-show-month" dir="<?= $direction; ?>">
    <h3><?= $title_month; ?></h3>
    <hr />
    <div class="row">
        <div class='col-md-12 calendar-hijri__content'>
            <?php
            if($data['type'] == 'hijri'){

                $APIContent = $api->buildMonth($data['month'], $data['year'], FALSE, $days_full, $data['cal_trans']);
            }
            elseif ($data['type'] == 'georgian'){
                $APIContent = $api->buildMonthGeorgian($data['month'], $data['year'], FALSE, $days_full, $data['cal_trans']);
            }
            ?>
        </div>
    </div>
    <div class="row back-calender">
        <div class="col-md-12 text-center">
            <a class="btn btn-success" href="<?= BASE_PATH . $data['cal_trans'] . '/' . $data['year']; ?>"><?= $lang['show_calendar']; ?></a>
        </div>
    </div>
</div>