<?php
$voucher = $data['voucher'];
$beneficiary = $data['beneficiary'];

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

        .items th {
            width: 30%;
            text-transform: uppercase;
        }
        .items td {
            width: 70%;
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
            <h2>PAYMENT REQUEST</h2>
        </td>
        <td style="width: 30%;">
            <span class="num"><b>NO:</b> 00<?= $voucher['id']; ?></span>
        </td>
    </tr>
</table>
<table width="100%" class="items">
    <tr>
        <th>Beneficiary Name</th>
        <td><?= $beneficiary['name']; ?></td>
    </tr>
    <tr>
        <th>PO No</th>
        <td><?= 'PO-00' . $voucher['order_id']; ?></td>
    </tr>
    <tr>
        <th>Payment Method</th>
        <td><?= $voucher['type']; ?></td>
    </tr>
    <tr>
        <th>Beneficiary ACC No</th>
        <td><?= $beneficiary['account']; ?></td>
    </tr>
    <tr>
        <th>Beneficiary ACC Bank</th>
        <td><?= $beneficiary['bank']; ?></td>
    </tr>
    <tr>
        <th>Amount</th>
        <td><?= number_format($voucher['amount']); ?></td>
    </tr>
</table>

<columns column-count="1" vAlign="J" column-gap="7"/>


<columns column-count="2" vAlign="J" column-gap="7"/>

<div class="d_bottom">
    <p><b>Prepared By:</b></p>
    <p>-</p>
</div>
<columnbreak/>

<div class="d_bottom">
    <p><b>Approved By:</b></p>
    <p>-</p>
</div>

</body>
</html>
