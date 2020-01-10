<?php
$current_lang = \App\Core::getCurrentLanguage();

$ex_path = '';
$date = new App\Utils\Today();
$full_today = $lang['today'] . ' ' . $date->getCurrentDate() . ' ' . $lang['correspond_to'] . ' ' . $date->getCurrentDate('georgian');
$dateTime = new \hijri\datetime();
$c_year = (int) $dateTime->format('_Y');
$ex_path = ($current_lang == 'en') ? 'hijri/' : 'التقويم-الهجري' . '/';


$surfix = ($current_lang == 'ar') ? 'هـ' : '';
$page_title = $lang['hijri_page_title'] . " {$lang['for_year']} {$data['year']} $surfix";


if($c_year != $data['year']){
    $title = $page_title;
}
else {
    $title = $lang['hijri_page_title'];

}
$using = ($current_lang == 'ar') ? 'حسب تقويم أم القرى' : 'using umm alqura calendar';
$desk = $page_title . ' ' . $using;
$keywords = "hijri, هجري, georgian, convert, تحويل التاريخ, months, ramadan, umm alqura, أم القرى,تقويم," . $data['year'];

$api = new \App\Controllers\APIController();
$request_calendar = new \App\Core\Request();
$request_calendar->data['year'] = $data['year'];
?>

<div class="container calendar-hijri">
    <div class="row calendar-hijri__title">
        <div class="col-md-12">
            <h2 class="text-center actual-year"><?= $data['year']; ?></h2>
        </div>
    </div>
    <div class="calender-content__container">
        <?php
        $api->hijriCalendar($request_calendar);
        ?>
    </div>
    <a href="<?= ($data['year']+1) ; ?>">
        <img class="right-arrow" src="<?= BASE_PATH . 'assets/images/right2.png'; ?>" width="30px" />
    </a>
    <a href="<?= ($data['year']-1) ; ?>">
        <img class="left-arrow" src="<?= BASE_PATH . 'assets/images/left2.png'; ?>" width="30px" />

    </a>
</div>
