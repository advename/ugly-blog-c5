<?php defined('C5_EXECUTE') or die('Access Denied.'); ?>

<div id="form-container-<?php echo $uniqueID; ?>">

    <div class="js-tab-content">

        <div class="form-group">
            <?php echo $form->label($view->field('blockTitle'), t('Title').' *'); ?>
            <p class="small text-muted"><?php echo t('The title of the block'); ?></p>
            <?php echo $form->text($view->field('blockTitle'), $blockTitle, ['maxlength'=>'255']); ?>
        </div>

    </div>

    <hr/>

    <p class="small text-muted">* <?php echo t('Required fields'); ?></p>

</div>