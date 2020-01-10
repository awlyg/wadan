<?php

$date = new App\Utils\Today();
$date->setSpecificDay($data['day'], $data['month'], $data['year'], $data['type']);
$current_lang = \App\Core::getCurrentLanguage();

$full_date = ($data['type'] == 'hijri') ? $date->getCurrentDate() : $date->getCurrentDate('georgian');

$title = $full_date . '  -  '  . $lang['hijri_calendar'];
$page_title = $lang['day'] . $full_date;

if($data['type'] == 'hijri') {
    $desk = $lang['today_date'] . $date->getCurrentDate() . ' ' . $lang['correspond_to'] . $date->getCurrentDate('georgian') . $lang['based_on'];
} else {
    $desk = $lang['today_date'] . $date->getCurrentDate('georgian') . ' ' . $lang['correspond_to'] . $date->getCurrentDate() . $lang['based_on'];

}
$keywords = "hijri, هجري, georgian, convert, تحويل التاريخ, months, ramadan, umm alqura,أم القرى,تقويم," . $date->getCurrentDate();

?>

<div class="container home-page">
    <div class="row">
        <div class="col-md-12">
            <h3><?= $full_date ?></h3>
            <hr />
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <table class="table table-hover" dir="<?= $direction; ?>">
                <thead class="thead-dark">
                <tr>
                    <th scope="col"><?= $lang['date_today_hijri']; ?></th>
                    <th scope="col"><?= $lang['result']; ?></th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <th scope="row"><?= $lang['complete_format']; ?></th>
                    <td><?= $date->getCurrentDate('hijri'); ?></td>
                </tr>
                <tr>
                    <th scope="row"><?= $lang['numeric_format']; ?></th>
                    <td><?= $date->getCurrentDate('hijri', 'numeric'); ?></td>
                </tr>
                <tr>
                    <th scope="row"><?= $lang['today']; ?></th>
                    <td><?= $date->getCurrentDate('hijri', 'day'); ?></td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <table class="table table-hover" dir="<?= $direction; ?>">
                <thead class="thead-dark">
                <tr>
                    <th scope="col"><?= $lang['date_today_georgian']; ?></th>
                    <th scope="col"><?= $lang['result']; ?></th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <th scope="row"><?= $lang['complete_format']; ?></th>
                    <td><?= $date->getCurrentDate('georgian'); ?></td>
                </tr>
                <tr>
                    <th scope="row"><?= $lang['numeric_format']; ?></th>
                    <td><?= $date->getCurrentDate('georgian', 'numeric');  ?></td>
                </tr>
                <tr>
                    <th scope="row"><?= $lang['year_type']; ?></th>
                    <td>-</td>
                </tr>
                <tr>
                    <th scope="row"><?= $lang['julian_date']; ?></th>
                    <td>-</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>

</div>

