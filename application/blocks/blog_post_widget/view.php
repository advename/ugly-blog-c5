<?php defined('C5_EXECUTE') or die('Access Denied.');


$page_type = "blog_page";
$pl = new \Concrete\Core\Page\PageList();
$pl->filterByCollectionTypeHandle($page_type);
$pl->sortByDisplayOrder();
$pages = $pl->getResults();

?>


<section class="latest-posts-widget">
    <?php if (count($pages) > 0) : ?>

        <?php foreach ($pages as $page) : ?>
            <ul>
                <li><a href="<?php echo $page->getCollectionLink() ?>"><?php echo $page->getCollectionName() ?></a></li>
            </ul>
        <?php endforeach; ?>
    <?php endif; ?>
</section>