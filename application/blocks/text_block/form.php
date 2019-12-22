<?php defined('C5_EXECUTE') or die('Access Denied.'); ?>

<div id="form-container-<?php echo $uniqueID; ?>">

    <div class="js-tab-content">

        <div class="form-group js-custom-editor-height-<?php echo $view->field('textContent'); ?>-<?php echo $uniqueID; ?>">
            <?php echo $form->label($view->field('textContent'), t('Content').' *'); ?>
            <p class="small text-muted"><?php echo t('The text of the block'); ?></p>
            <?php echo $app->make('editor')->outputBlockEditModeEditor($view->field('textContent'), $textContent); ?>
        </div>

        <div class="form-group">
            <?php echo $form->label($view->field('blockPadding'), t('Padding')); ?>
            <p class="small text-muted"><?php echo t('The padding to put around the block. E.g. \"20px 20px\" or \"15px\". Default value is \"0px\" if no value is specified.'); ?></p>
            <?php echo $form->text($view->field('blockPadding'), $blockPadding, ['maxlength'=>'255']); ?>
        </div>

    </div>

    <hr/>

    <p class="small text-muted">* <?php echo t('Required fields'); ?></p>

</div>