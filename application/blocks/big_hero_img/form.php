<?php defined('C5_EXECUTE') or die('Access Denied.'); ?>

<div id="form-container-<?php echo $uniqueID; ?>">

    <div class="js-tab-content">

        <div class="form-group">
            <?php echo $form->label($view->field('bgImage'), t('Background image').' *'); ?>
            <p class="small text-muted"><?php echo t('The background image of the hero.'); ?></p>
            <?php echo $app->make('helper/concrete/asset_library')->image('bgImage-'.$uniqueID, $view->field('bgImage'), t('Choose Image'), !empty($bgImage) ? File::getByID($bgImage) : null); ?>
        </div>

        <div class="form-group">
            <?php echo $form->label($view->field('heroText'), t('Hero text').' *'); ?>
            <p class="small text-muted"><?php echo t('The text to display inside the hero'); ?></p>
            <?php echo $form->text($view->field('heroText'), $heroText, ['maxlength'=>'255']); ?>
        </div>

        <div class="form-group">
            <?php echo $form->label($view->field('heroHeight'), t('Hero height')); ?>
            <p class="small text-muted"><?php echo t('The height of the hero. E.g.'); ?></p>
            <?php echo $form->text($view->field('heroHeight'), $heroHeight, ['maxlength'=>'255']); ?>
        </div>

        <div class="form-group">
            <?php echo $form->label($view->field('textPos'), t('Text position').' *'); ?>
            <p class="small text-muted"><?php echo t('The position of the hero text'); ?></p>
            <?php echo $form->select($view->field('textPos'), $textPos_options, $textPos); ?>
        </div>

    </div>

    <hr/>

    <p class="small text-muted">* <?php echo t('Required fields'); ?></p>

</div>