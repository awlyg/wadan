<?php
$page_title = $lang['month_names'];
$title = $lang['months_page_title'];

$current_lang = \App\Core::getCurrentLanguage();
$desk = ($current_lang == 'ar') ? 'الأشهر حسب الترتيب' : 'Months By Order';
$keywords = "hijri, هجري, georgian, convert, تحويل التاريخ, months, ramadan, umm alqura, أم القرى,تقويم";

?>

<div class="container list-months" dir="<?= $direction; ?>">
    <h3><?= $lang['months']; ?></h3>
    <hr />
    <div class="row">
        <div class="col-lg-4 col-sm-12">
            <table class="table table-hover table-bordered list-months__table">
                <thead class="thead-light">
                <tr>
                    <th colspan="2">
                        <?= $lang['hijri_calendar']; ?>
                    </th>
                </tr>
                </thead>
                <thead>
                <tr>
                    <th scope="col"><?= $lang['number']; ?></th>
                    <th scope="col"><?= $lang['month_name']; ?></th>
                </tr>
                </thead>
                <tbody>
                </tbody>
            </table>
        </div>
        <div class="col-lg-4 col-sm-12">
            <table class="table table-hover table-bordered list-months__table">
                <thead class="thead-light">
                <tr>
                    <th colspan="2">
                        <?= $lang['georgian_calendar']; ?>
                    </th>
                </tr>
                </thead>
                <thead>
                <tr>
                    <th scope="col"><?= $lang['number']; ?></th>
                    <th scope="col"><?= $lang['month_name']; ?></th>
                </tr>
                </thead>
                <tbody>
                </tbody>
            </table>
        </div>
        <div class="col-lg-4 col-sm-12">
            <table class="table table-hover table-bordered list-months__table">
                <thead class="thead-light">
                <tr>
                    <th colspan="2">
                        <?= $lang['solar_calendar']; ?>
                    </th>
                </tr>
                </thead>
                <thead class="">
                <tr>
                    <th scope="col"><?= $lang['number']; ?></th>
                    <th scope="col"><?= $lang['month_name']; ?></th>
                </tr>
                </thead>
                <tbody>
                </tbody>
            </table>
            <input type="hidden" class="curr_lang" value="<?= $current_lang; ?>" />
        </div>
    </div>
</div>