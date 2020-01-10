<?php

$c_language = \App\Core::getCurrentLanguage();
$route = urldecode($request->getRoute());

$calendar_year_hijri = (int) (new hijri\datetime())->format("_Y");
$calendar_year_geo = (int) (new hijri\datetime())->format("Y");


$hijri = '/hijri';
$hijri_ar = urldecode(\App\Core::mapingRouteReverse($hijri));
$georgian = '/georgian';
$georgian_ar = urldecode(\App\Core::mapingRouteReverse($georgian));


if(preg_match("#$hijri_ar\/.{4}$#", $route) || preg_match("#$hijri\/.{4}$#", $route)){
    $active_h = true;
}

if(preg_match("#$georgian_ar\/.{4}$#", $route) || preg_match("#$georgian\/.{4}$#", $route)){
    $active_g = true;
}

?>
<!-- this file contain static urls -->
<!DOCTYPE html>
<html>
<head>
    <title><?= $title; ?></title>
    <!-- mobile responsive meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <!-- end Mobile responsive meta -->
    <!-- meta SEO -->
    <meta name="description" content="<?= $desk; ?>">
    <meta name="keywords" content="<?= $keywords; ?>">
    <meta name="author" content="CHEIKH EL MOCTAR Mohamed Yehdhih">

    <!-- Facebook Card -->
    <meta property="og:title" content="<?= $page_title ?>">
    <meta property="og:site_name" content="<?= $lang['hijri_calendar']; ?>">
    <meta property="og:description" content="<?= $desk; ?>">
    <!-- /Facebook Card -->

    <!-- Twitter Card -->
    <meta name="twitter:card" content="<?= $title ?>">
    <meta name="twitter:site" content="@<?= $lang['hijri_calendar']; ?>">
    <meta name="twitter:title" content="<?= $page_title ?>">
    <meta name="twitter:description" content="<?= $desk; ?>">
    <!-- /Twitter Card -->

    <!-- !-->
    <link rel="icon" href="<?= BASE_PATH . 'assets/images/calendar.ico'; ?>" type="image/x-icon">
    <!-- style files -->
    <link rel="stylesheet" type="text/css" href="<?= BASE_PATH . 'assets/css/bootstrap.min.css'; ?>">
    <link rel="stylesheet" type="text/css" href="<?= BASE_PATH . 'assets/css/main.css'; ?>">
    <!-- addition style for only Arabic language -->
    <?php if($c_language == 'ar') { ?>
        <link rel="stylesheet" type="text/css" href="<?= BASE_PATH . 'assets/css/main-arabic.css'; ?>">
    <?php } ?>
    <!-- end style files  -->
</head>
<body>
<!-- navbar start -->
<nav class="navbar navbar-expand-lg">
    <!--
    <span class="navbar-brand time-frame" href="#">
        <span id='time-part'>00:00:00</span>
    </span>
    -->
    <form id="switch_lang_form" action="<?php if($c_language == 'en') { $path = (!isset($data['path_ar'])) ? \App\Core::mapingRouteReverse($route): $data['path_ar']; echo $path; } else {  $path = (!isset($data['path_en'])) ? \App\Core::mapingRoute($route) : $data['path_en']; echo $path; } ?>" method="post">
        <input type="hidden" name="switch_lang" value="true" />
        <?php $show_lang = ($c_language == 'ar')  ? 'en' : 'ar'; ?>
        <img class="lang_switcher" src="<?php echo BASE_PATH . "assets/images/{$show_lang}.png"; ?>" />
    </form>

    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse main-navigation" dir="<?= $direction; ?>" id="navbarText">
        <ul class="navbar-nav ml-auto">
           <!-- <li class="nav-item">
                <a class="nav-link <?php /*if($request->getRoute() == '/' || $request->getRoute() == '/en') {echo 'active'; } */?>" href="<?/*= ($c_language == 'ar') ? BASE_PATH : '/en'; */?>"><?/*= $lang['home']; */?> <span class="sr-only">(current)</span></a>
            </li>-->
            <li class="nav-item">
                <a class="nav-link <?= isset($active_h) ? 'active' : ''; ?>" href="<?php if($c_language == 'ar') {echo \App\Core::mapingRouteReverse('/hijri') . "/$calendar_year_hijri"; } else { echo BASE_PATH . "hijri/$calendar_year_hijri"; } ?>"><?= $lang['home']; ?></a>
            </li>
            <li class="nav-item">
                <a class="nav-link  <?php if($request->getRoute() == '/converter' || $route == \App\Core::mapingRouteReverse('/converter')) {echo 'active'; } ?>" href="<?php if($c_language == 'ar') {echo \App\Core::mapingRouteReverse('/converter'); } else { echo BASE_PATH . 'converter'; } ?>"><?= $lang['converter']; ?></a>
            </li>
            <li class="nav-item">
                <a class="nav-link  <?php if($request->getRoute() == '/today' || $route == \App\Core::mapingRouteReverse('/today')) {echo 'active'; } ?>" href="<?php if($c_language == 'ar') {echo \App\Core::mapingRouteReverse('/today'); } else { echo BASE_PATH . 'today'; } ?>"><?= $lang['today_date']; ?></a>
            </li>

            <li class="nav-item">
                <a class="nav-link <?= isset($active_g) ? 'active' : ''; ?>" href="<?php if($c_language == 'ar') {echo \App\Core::mapingRouteReverse('/georgian') . "/$calendar_year_geo"; } else { echo BASE_PATH . "georgian/$calendar_year_geo"; } ?>"><?= $lang['georgian_calendar']; ?></a>
            </li>
            <li class="nav-item">
                <a class="nav-link <?php if($request->getRoute() == '/months' || $route == \App\Core::mapingRouteReverse('/months')) {echo 'active'; } ?>" href="<?php if($c_language == 'ar') {echo \App\Core::mapingRouteReverse('/months'); } else { echo BASE_PATH . 'months'; } ?>"><?= $lang['month_names']; ?></a>
            </li>
            <li class="nav-item">
                <a class="nav-link <?php if($request->getRoute() == '/ramadan' || $route == \App\Core::mapingRouteReverse('/ramadan')) {echo 'active'; } ?>" href="<?php if($c_language == 'ar') {echo \App\Core::mapingRouteReverse('/ramadan'); } else { echo 'ramadan'; } ?>"><?= $lang['ramadan']; ?></a>
            </li>

        </ul>
    </div>
</nav>
<!-- navbar end -->

<!-- header of ocntent -->
<div class="container-fluid header-of-page">
    <div class="row header-of-page__content">
        <div class="col-md-12">
            <h1><?= $page_title; ?></h1>
            <span class="full_today"><?= (isset($full_today)) ? $full_today : 'اليوم 24 محرم 1441 الموافق 20 سبتمبر 2019'; ?> </span>
        </div>
    </div>
</div>
</div>
<!-- end of header -->

<?= $content; ?>
<div class="container-fluid page-footer">
    <?= $lang['copy']; ?>
</div>
<!-- script files -->
<script src="<?= BASE_PATH . 'assets/js/jquery-3.4.1.min.js'; ?>"></script>
<script src="<?= BASE_PATH . 'assets/js/popper.min.js'; ?>"></script>
<script src="<?= BASE_PATH . 'assets/js/bootstrap.min.js'; ?>"></script>
<!--    <script src="<?/*= BASE_PATH . 'assets/js/moment.min.js'; */?>"></script>
-->    <!-- end script files -->
<script src="<?= BASE_PATH . 'assets/js/script.js'; ?>"></script>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-387908-66"></script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());

    gtag('config', 'UA-387908-66');
</script>
</body>
</html>
