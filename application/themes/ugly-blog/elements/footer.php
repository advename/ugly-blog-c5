<?php
defined('C5_EXECUTE') or die("Access Denied.");
?>

<!-- Footer section which will be global -->
<footer>
    <?php
    $a = new GlobalArea('Footer area');
    $a->display($c);
    ?>
</footer>

<!-- All <body> content goes above here -->
</div>
</div>
<script src="<?= $view->getThemePath() ?>/scripts/main.js" type="text/javascript"></script>
<?php Loader::element('footer_required') ?>
</body>

</html>