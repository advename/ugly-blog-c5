<?php
defined('C5_EXECUTE') or die("Access Denied.");

$this->inc('elements/header.php');

?>


<!-- Template section which will be used for template/page specific elements -->
<!-- An example of two different templates would be "Fullwidth page" and "Page with widget" -->
<main id="default-page">
  <?php
  $a = new Area('Default page content');
  $a->display($c);
  ?>
</main>

<?php

$this->inc('elements/footer.php');

?>