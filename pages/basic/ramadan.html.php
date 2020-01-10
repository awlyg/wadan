<?php

$ramadanDate = new \App\Utils\Ramadan();
$title = $lang['ramadan_title'];
$page_title = $lang['ramadan_page_title'] . ' ' . $ramadanDate->getNextRamdan(false);
$ramadan = $data['ramadan'];

$current_lang = \App\Core::getCurrentLanguage();
$desk = ($current_lang == 'ar') ? 'شهر رمضان الكريم' : 'ramadan holy month';
$keywords = "hijri, هجري, georgian, convert, تحويل التاريخ, months, ramadan, umm alqura, أم القرى,تقويم";

?>

<div class="container ramadan">
    <div class="row ramadan-header">
        <div class="col-md-9">
            <h3><?php echo $lang['ramadan_for'] . ' ' . $ramadanDate->getNextRamdan(false); ?></h3>
        </div>
        <div class="col-md-3 ramadan-count-down text-right">
            <table class="count-down">
                <thead>
                    <tr>
                        <th class="days"></th>
                        <th class="hours"></th>
                        <th class="minutes"></th>
                        <th class="seconds"></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><?= $lang['days']; ?></td>
                        <td><?= $lang['hours']; ?></td>
                        <td><?= $lang['minutes'] ?></td>
                        <td><?= $lang['seconds']; ?></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <hr />
    <div class="row">
        <div class="col-md-12">
            <table class="table text-center">
                <thead class="thead-light">
                <tr>
                    <th scope="col"><?= $lang['ramadan_hijri']; ?></th>
                    <th scope="col"><?= $lang['ramadan_georgian']; ?></th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <!-- static values -->
                    <td><?= $ramadanDate->getNextRamdan(); ?></td>
                    <td><?= $ramadanDate->getNextRamdan('georgian'); ?></td>
                </tr>

                </tbody>
            </table>
            <blockquote class="blockquote ramadan-intro">
                <h4><?= $lang['info_about_ramadan']; ?></h4>
                <p class="mb-0"><?= (App\Core::getCurrentLanguage() == 'ar') ?  $ramadan['body_ar'] : $ramadan['body_en']; ?></p>
                <footer class="blockquote-footer"><?= $lang['source']; ?> <cite title="Source Title"><?= $ramadan['source']; ?></cite></footer>
            </blockquote>
        </div>
    </div>
</div>