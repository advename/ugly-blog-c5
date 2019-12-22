<?php defined('C5_EXECUTE') or die('Access Denied.'); ?>

<section class="text-content" style="padding: <?php echo !empty($blockPadding) ? h($blockPadding) : "0px"   ?>;">
    <?php echo !empty($textContent) ? $textContent : "" ?>
</section>