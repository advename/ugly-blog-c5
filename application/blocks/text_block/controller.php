<?php namespace Application\Block\TextBlock;

use Concrete\Core\Asset\AssetList;
use Concrete\Core\Block\BlockController;
use Concrete\Core\Editor\LinkAbstractor;

defined('C5_EXECUTE') or die('Access Denied.');

class Controller extends BlockController
{

    protected $btTable = 'btTextBlock';
    protected $btExportTables = ['btTextBlock'];
    protected $btInterfaceWidth = '800';
    protected $btInterfaceHeight = '650';
    protected $btWrapperClass = 'ccm-ui';
    protected $btCacheBlockRecord = true;
    protected $btCacheBlockOutput = true;
    protected $btCacheBlockOutputOnPost = true;
    protected $btCacheBlockOutputForRegisteredUsers = true;
    protected $btCacheBlockOutputLifetime = 0;

    protected $btDefaultSet = ''; // basic, navigation, form, express, social, multimedia

    private $uniqueID;

    public function getBlockTypeName() {
        return t('Text block');
    }

    public function getBlockTypeDescription() {
        return t('');
    }

    public function getSearchableContent() {

        $content = [];
        $content[] = $this->textContent;
        $content[] = $this->blockPadding;

        return implode(' ', $content);

    }

    public function on_start() {

        // Unique identifier
        $this->uniqueID = $this->app->make('helper/validation/identifier')->getString(18);
        $this->set('uniqueID', $this->uniqueID);

    }

    public function add() {

        $this->addEdit();

    }

    public function edit() {

        $this->addEdit();

        // Wysiwyg editors
        $this->set('textContent', LinkAbstractor::translateFromEditMode($this->textContent));

    }

    public function addEdit() {

        // Load form.css
        $al = AssetList::getInstance();
        $al->register('css', 'text-block/form', 'blocks/text_block/css_files/form.css', [], false);
        $this->requireAsset('css', 'text-block/form');

        // Make $app available in view
        $this->set('app', $this->app);

    }

    public function view() {

        // Wysiwyg editors
        $this->set('textContent', LinkAbstractor::translateFrom($this->textContent));

    }

    public function save($args) {

        // Basic fields
        $args['textContent']  = LinkAbstractor::translateTo($args['textContent']);
        $args['blockPadding'] = trim($args['blockPadding']);

        parent::save($args);

    }

    public function duplicate($newBlockID) {

        parent::duplicate($newBlockID);

    }

    public function delete() {

    }

    public function validate($args) {

        $error = $this->app->make('helper/validation/error');

        // Required fields
        $requiredFields = [];
        $requiredFields['textContent'] = t('Content');

        foreach ($requiredFields as $requiredFieldHandle => $requiredFieldLabel) {

            if (empty($args[$requiredFieldHandle])) {
                $error->add(t('Field "%s" is required.', $requiredFieldLabel));
            }

        }

        // Required fields - Links
        $requiredLinkFields = [];

        foreach ($requiredLinkFields as $requiredLinkFieldHandle => $requiredLinkFieldLabel) {

            $errorCounter = 0;
            $errorCounter += empty($args[$requiredLinkFieldHandle.'_link_type']) ? 1 : 0;
            $errorCounter += ($args[$requiredLinkFieldHandle.'_link_type']=='link_from_sitemap' AND empty($args[$requiredLinkFieldHandle.'_link_from_sitemap'])) ? 1 : 0;
            $errorCounter += ($args[$requiredLinkFieldHandle.'_link_type']=='link_from_file_manager' AND empty($args[$requiredLinkFieldHandle.'_link_from_file_manager'])) ? 1 : 0;
            $errorCounter += ($args[$requiredLinkFieldHandle.'_link_type']=='external_link' AND empty($args[$requiredLinkFieldHandle.'_external_link'])) ? 1 : 0;

            if ($errorCounter > 0) {
                $error->add(t('Field "%s" is required.', $requiredLinkFieldLabel));
            }

        }

        return $error;

    }

    public function composer() {

        $this->edit();

    }

    public function scrapbook() {

        $this->edit();

    }

}