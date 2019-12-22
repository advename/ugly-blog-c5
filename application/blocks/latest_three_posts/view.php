<?php defined('C5_EXECUTE') or die('Access Denied.');


$category_type = "animals";
$pl = new \Concrete\Core\Page\PageList();
$pl->filterByAttribute('category_selection', $category_type, '=');

$pl->sortByDisplayOrder();
$pagination = $pl->getPagination();

$pagination->setMaxPerPage(3)->setCurrentPage(1);
$pages = $pagination->getCurrentPageResults();

?>



<section class="latest-blog-posts">
    <p class="label"><?php echo !empty($blockTitle) ? h($blockTitle) : "Recent blog posts" ?></p>

    <div class="latest-blog-posts-container">

        <?php if (count($pages) > 0) : ?>

            <?php foreach ($pages as $page) : ?>

                <div class="post">
                    <p class="title"><?php echo $page->getCollectionName() ?></p>
                    <p class="desc">
                        <?php echo $page->getCollectionDescription() ?>
                    </p>
                    <p style="font-weight: bold; margin-top: 10px; font-size: 12px;">
                        <?php echo $page->getAttribute('category_selection'); ?>
                    </p>
                    <a href="<?php echo $page->getCollectionLink() ?>">read more</a>
                </div>

            <?php endforeach; ?>
        <?php else : ?>
            <p>There are no blog posts yet</p>
        <?php endif; ?>
    </div>
</section>