<?php
//static data
$page_title = $lang['convert_title'];
$title = $lang['convert_page_title'];

$current_lang = \App\Core::getCurrentLanguage();
$desk = ($current_lang == 'ar') ? 'تحويل التاريخ بين الهجري والميلادي' : 'convert date between hijri and georgian';
$keywords = "hijri, هجري, georgian, convert, تحويل التاريخ, months, ramadan, umm alqura, أم القرى,تقويم";

$dateTime = new hijri\datetime(null, null, $current_lang);
$m = ($current_lang == 'ar') ? 'M' : 'F';
?>
<div class="container converter" dir="<?= $direction; ?>">
    <div class="row">
        <div class="col-md-12">
            <h3><?= $lang['system_convert']; ?></h3>
            <hr />
        </div>
    </div>
    <div class="row">
        <div class="col-lg-6 col-md-12 col-sm-12 convert-col">
            <div class="card convert-card" >
                <h5 class="card-header converter-title">
                    <?= $lang['convert_date']; ?> | <?= $lang['from']; ?>
                    <span class="Hto">
                        <?= $lang['hij'] . ' ' .$lang['to'] . ' ' . $lang['geo']; ?>&nbsp;
                    </span>
                    <span class="Gto">
                        <?= $lang['geo'] . ' ' . $lang['to'] . ' ' . $lang['hij']; ?>&nbsp;
                    </span>
                    <div class="converter-switch">
                        <button class="btn btn-primary"><?= $lang['switch_from_to']; ?></button>
                    </div>
                </h5>
                <div class="card-body converter-select">
                    <div class="row">
                        <div class="col-md-4">
                            <select class="form-control georgian" id="day">
                                <?php
                                $c_day = (int) $dateTime->format('j');

                                for($i=1; $i<=31; $i++){ ?>
                                    <option <?= $c_day == $i ? 'selected' : ''; ?>><?= $i; ?></option>
                                <?php } ?>
                            </select>
                            <select class="form-control hijri" id="day">
                                <?php
                                $c_day = (int) $dateTime->format('_j');

                                for($i=1; $i<=29; $i++){ ?>
                                    <option <?= $c_day == $i ? 'selected' : ''; ?>><?= $i; ?></option>
                                <?php } ?>
                            </select>
                        </div>
                        <div class="col-md-4">
                            <select class="form-control georgian" id="month">
                                <?php
                                    $c_month = (int) $dateTime->format('n');
                                    $c_month_h = (int) $dateTime->format('_n');
                                    $c_year = (int) $dateTime->format('Y');
                                    $c_year_h = (int) $dateTime->format('_Y');

                                for($i=1; $i<=12; $i++){
                                    $dateTime->setDate(2019, $i ,1);
                                    ?>
                                    <option value="<?= $i ?>" <?= ($c_month == $i) ? 'selected' : ''; ?>>
                                        <?= $dateTime->format("$m"); ?>
                                    </option>
                                <?php } ?>
                            </select>
                            <select class="form-control hijri" id="month">
                                <?php

                                for($i=1; $i<=12; $i++){ $dateTime->setDateHijri(1440, $i ,1); ?>
                                    <option value="<?= $i ?>" <?= ($c_month_h == $i) ? 'selected' : ''; ?>><?= $dateTime->format('_F'); ?></option>
                                <?php } ?>
                            </select>
                        </div>
                        <div class="col-md-4">
                            <select class="form-control georgian" id="year">
                                <?php
                                    for($i=1890; $i<= 2150; $i++) { ?>
                                    <option <?= ($c_year == $i) ? 'selected' : ''; ?>><?= $i; ?></option>
                                <?php } ?>
                            </select>
                            <select class="form-control hijri" id="year">
                                <?php for($i=1307; $i<= 1576; $i++){ ?>
                                    <option <?= ($c_year_h == $i) ? 'selected' : ''; ?>><?= $i; ?></option>
                                <?php } ?>
                            </select>
                        </div>
                    </div>
                    <div class="row convert-button__row">
                        <div class="col-md-12 convert-button__col">
                            <input type="hidden" id="from" value="hijri" />
                            <button class="btn btn-primary" id="convert-button"><?= $lang['convert']; ?></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-6 col-md-12 col-sm-12 convert-col">
            <div class="card converter-result">
                <div class="card-header">
                    <h5>
                        <?= $lang['result']; ?>
                    </h5>
                </div>
                <div class="card-body">
                    <div class="loading">
                        <div class="spinner-border" role="status">
                            <span class="sr-only">Loading...</span>
                        </div>
                    </div>

                    <table class="table result-table" dir="<?= $direction; ?>">
                        <tbody>
                            <tr>
                                <td><?= $lang['hijri_date']; ?></td>
                                <td class="hijri-date">-</td>
                            </tr>
                            <tr>
                                <td><?= $lang['numeric_format_hijri']; ?></td>
                                <td class="hijri-date__numeric">-</td>
                            </tr>
                            <tr>
                                <td><?= $lang['georgian_date']; ?></td>
                                <td class="georgian-date">-</td>
                            </tr>
                            <tr>
                                <td><?= $lang['numeric_format_georgian']; ?></td>
                                <td class="georgian-date__numeric">-</td>
                            </tr>
                            <tr>
                                <td><?= $lang['julian_date']; ?></td>
                                <td class="julian-date">-</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <input type="hidden" class="curr_lang" value="<?= $current_lang; ?>" />
</div>