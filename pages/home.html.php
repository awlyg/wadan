
<?php
$title = $lang['home_title'];
$page_title = $lang['home_page_title'];
$date = new App\Utils\Today();

$current_lang = \App\Core::getCurrentLanguage();
$desk = ($current_lang == 'ar') ? 'موقع التقويم الهجري يقدم لكم التاريخين الهجري والميلادي, ويعرض لكم معلومات حول رمضان المقبل, ويمكنكم من خلاله التحويل بين التواريخ ببساطة' : 'Hijra Calendar';
$keywords = "hijri,تاريخ اليوم,التقويم الهجري,هجري, georgian, convert, تحويل التاريخ, months, ramadan, umm alqura, أم القرى,تقويم";


?>

<div class="container home-page">
    <div class="row">
        <div class="col-md-12">
            <h3><?= $date->getCurrentDate(); ?></h3>
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

