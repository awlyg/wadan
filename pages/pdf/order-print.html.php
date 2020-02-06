<?php
$order = $data['order'];
$items = $data['items'];
$vendor = $data['vendor'];
$approvedBy = $data['approvedBy'];

$total = 0;
$vat = 0;

foreach ($items as $item) {
    $total += $item['rate'] * $item['quantity'];
}

// calculate VAT
if ($order['vat'] === 1) {
    $vat = ($total * 5) / 100;
}

$total = $total - $vat - $order['discount'];


/*echo "<pre>";
var_dump($items);
die();*/


?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>
        .logo {
            float: right;
            width: 100%;
            height: 80px;
            margin-bottom: 40px;
        }

        img {
            max-height: 100px;
            float: right;
            margin-right: 2px;
        }

        table.items {
            margin-top: 40px;
            border-collapse: collapse;
            width: 100%;
        }

        table.items, table.items th, table.items td {
            clear: both;
            text-align: left;
            border: 1px solid black;
        }

        td, th {
            padding: 10px;
            font-size: 15px;
        }

        .discount, .sub-total, .vat {
            text-align: center;
        }

        .total {
            text-align: center;
        }

        .total-value {
            font-weight: bold;
        }

        .company,
        .ship_to {
            border: 2px solid rgb(194, 194, 194);
        }

        .company div,
        .ship_to div {
            padding: 10px;
            color: #adacac;
            font-weight: bold;
            font-size: 18px;
        }

        .company p,
        .ship_to p {
            padding: 5px;
        }

        .term-cond {
            border: 2px solid rgb(194, 194, 194);
            border-radius: 4px;
            width: 45%;
            height: 120px;
            padding: 5px;
        }

        .currency {
            text-transform: uppercase;
        }
    </style>
</head>

<body>
<div class="logo">
    <img src="<?= BASE_PATH . 'assets/images/logo.png'; ?>" alt="">
</div>

<table style="width: 100%;clear: both;">
    <tr>
        <td style="width: 70%;padding-left: 0">
            <h2>Purchase Order</h2>
        </td>
        <td style="width: 30%;">
            <span class="date"><b>Date:</b> <?= $order['date'] ?></span><br/>
            <span class="num"><b>PO NO:</b> <?= 'PO-00' . $order['id'] ?></span>
        </td>
    </tr>
</table>
<columns column-count="2" vAlign="J" column-gap="7"/>
<div class="company">
    <div>Company</div>
    <hr>
    <p>
        <?= isset($vendor) && !empty($vendor) ? 'Name: ' . $vendor['name'] . '<br />' . 'Mob: ' . $vendor['phone'] : '-'; ?>
    </p>
</div>
<columnbreak/>
<div class="ship_to">
    <div>Ship To</div>
    <hr>
    <p><?= $order['ship_to'] ?></p>
</div>
<columns column-count="1" vAlign="J" column-gap="7"/>

<table class="items">
    <tr>
        <th width="10%">ID</th>
        <th width="15%">Part No.</th>
        <th width="35%">Description</th>
        <th width="10%">Qty</th>
        <th width="15%">Rate</th>
        <th width="15%">Amount</th>
    </tr>

    <?php
    foreach ($items as $item) {
        ?>
        <tr>
            <td><?= $item['id']; ?></td>
            <td><?= $item['part_code'] ?></td>
            <td><?= $item['description']; ?></td>
            <td><?= $item['quantity']; ?></td>
            <td><?= $item['rate']; ?></td>
            <td><?= $item['quantity'] * $item['rate'];; ?></td>
        </tr>
        <?php
    }
    ?>
    <tr>
        <th colspan="5" class="discount">discount</th>
        <td><?= $order['discount'] ?></td>
    </tr>
    <tr>
        <th colspan="5" class="sub-total">subtotale</th>
        <td><?= ($total + $vat) ?></td>
    </tr>
    <tr>
        <th colspan="5" class="vat">vat 5%</th>
        <td><?= $vat ?></td>
    </tr>
    <tfoot>
    <tr>
        <th colspan="5" class="total">Grand total</th>
        <td class="total-value"><span class="currency"><?= $order['currency'] ?></span><br/><?= $total ?></td>
    </tr>
    </tfoot>
</table>

<p><b>Terms & Conditions</b></p>
<div class="term-cond">
    <?= $order['terms']; ?>
</div>

<columns column-count="2" vAlign="J" column-gap="7"/>

<div class="d_bottom">
    <p><b>Prepared By:</b></p>
    <p>
        <b>Name:</b>
        <?= $order['prepared_by'] ?>
    </p>
    <p><b>Signature:</b></p>
</div>
<columnbreak/>

<div class="d_bottom">
    <p><b>Approved By:</b></p>
    <p>
        <b>Name:</b>
        <?= isset($approvedBy) && !empty($approvedBy) ? $approvedBy['name'] : '-' ?>
    </p>
    <p><b>Signature:</b></p>
</div>

</body>
</html>
