<?php
$quote = $db->getOne('quotes');
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Admin Theme</title>

    <link rel="stylesheet" type="text/css" href="<?= BASE_PATH . 'assets/css/bootstrap.min.css'; ?>">

    <link href="<?= BASE_PATH . 'assets/css/admin/reset.css'; ?>" rel="stylesheet">
    <link
        href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
        rel="stylesheet"
        integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
        crossorigin="anonymous">
    <link href="<?= BASE_PATH . 'assets/css/admin/style.css'; ?>" rel="stylesheet">
</head>

<body>
<div class="app-wrapper">
    <div class="app-sidenav__wrapper">
        <aside id="app-sidebar" class="app-sidenav">
            <nav class="app-sidenav__content">
                <div class="app-sidenav__header">
                    <div class="brand">
                        <h1 class="name">Hijri Calendar</h1>
                    </div>
                </div>
                <div class="menu">
                    <p class="menu-label">
                        General
                    </p>
                    <ul class="app-sidenav-menu-list">
                        <li>
                            <a href="#">BASIC</a>
                        </li>
                    </ul>

                </div>
                <div class="app-sidenav__footer">
                    <p>All &copy; reserved</p>
                </div>
            </nav>

        </aside>
    </div>
    <main class="app-body">
        <header class="app-header">
            <button class="app-sidebar__toggler" id="app-sidebar__toggler">
                <span class="app-sidebar__toggler-icon"></span>
            </button>
            <div class="brand">
                <p>Hijri Claendar</p>
            </div>
            <div class="navbar-items">
                <a href="/logout">
                    <i class="fa fa-sign-out" aria-hidden="true"></i>
                </a>
            </div>
        </header>

        <div class="app-content">

            <?php
            if(isset($_SESSION['system_message'])) { ?>
                <div class="alert alert-danger" role="alert">
                    <?= $_SESSION['system_message']; ?>
                    <?php if(isset($_SESSION['system_message'])){ unset($_SESSION['system_message']); } ?>
                </div>
            <?php } ?>
            <form action="/hijricpanel/save" method="post">
            <div class="form-group">
                <label for="ramadan_ar">Ramadan</label>
                <textarea class="form-control" name="body_en" id="ramadan_ar" rows="5"><?= $quote['body_en']; ?></textarea>
            </div>
            <div class="form-group" dir="rtl">
                <label for="ramadan_ar" style="float: right;margin-bottom: 5px;">رمضان</label>
                <textarea class="form-control" id="body_ar" name="body_ar" rows="5"><?= $quote['body_ar']; ?></textarea>
            </div>
            <button class="btn btn-success" style="float: right;">SAVE</button>
            </form>
        </div>
    </main>
</div>
<script>
    var treemenuLists = document.querySelectorAll('.app-sidenav-menu-list > li > a');

    treemenuLists.forEach(function (elem) {
        if (elem.nextElementSibling && elem.nextElementSibling.nodeName == 'UL') {
            elem.classList.add('app-sidenav-menu-tree');
            elem.addEventListener('click', function (event) {
                event.preventDefault();
                event.target.parentElement.classList.toggle('expanded');
            });
        }
    });

    document.getElementById('app-sidebar__toggler').addEventListener('click', function () {
        document.body.classList.toggle('uncollapse-sidebar');
    });
</script>
</body>

</html>