<?php
defined('C5_EXECUTE') or die("Access Denied.");
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />

    <?php Loader::element('header_required') ?>

    <link rel="stylesheet" href="<?= $view->getStyleSheet('primary.less') ?>" />
    <title>Concrete5 website</title>
</head>

<body>
    <div class="<?= $c->getPageWrapperClass() ?>">
        <!-- From here, everything is your code (not concrete) -->
        <!-- Use "body-content" as the <body> replacement -->
        <div id="body-content">
            <!-- All <body> content goes below here -->

            <!-- Header section which will be global later-->
            <header>
                <?php
                $a = new GlobalArea('Header area');
                $a->display($c);
                ?>
            </header>