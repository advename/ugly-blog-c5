<?php
defined('C5_EXECUTE') or die("Access Denied.");

$this->inc('elements/header.php');

?>

<!-- Template section which will be used for template/page specific elements -->
<!-- An example of two different templates would be "Fullwidth page" and "Page with widget" -->
<main id="single-page">
  <?php
  $a = new Area('Full width header area');
  $a->display($c);
  ?>

  <div id="single-page-divider">
    <div class="left-side">
      <?php
      $a = new Area('Left side content area');
      $a->display($c);
      ?>
    </div>

    <div class="widgets">
      <?php
      $a = new Area('Widget area');
      $a->display($c);
      ?>
    </div>
  </div>
</main>

<?php

$this->inc('elements/footer.php');

?>