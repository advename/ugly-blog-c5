<?php defined('C5_EXECUTE') or die('Access Denied.');

if (!empty($textPos)) {
    switch ($textPos) {
        case "left":
            $textPosition = "flex-start";
            break;
        case "center":
            $textPosition = "center";
            break;
        case "right":
            $textPosition = "flex-end";
            break;
        default:
            $textPosition = "flex-start";
    }
} else {
    $textPosition = "flex-start";
}

?>



<section class="hero-big-img" style="
height: <?php echo !empty($heroHeight) ?  h($heroHeight) : "80vh"  ?>;
 justify-content: <?php echo $textPosition; ?>;
 background: url(<?php echo !empty($bgImage_link) ? $bgImage_link : "none"  ?>) no-repeat center center;
 background-size: auto;
background-size: cover;
 ">
    <div class="bg-img" style="height: <?php echo !empty($heroHeight) ?  h($heroHeight) : "80vh"  ?>;"></div>
    <h1> <?php echo !empty($heroText) ? h($heroText) : ""; ?></h1>
</section>