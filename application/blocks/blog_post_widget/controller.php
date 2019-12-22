<?php namespace Application\Block\BlogPostWidget;

use Concrete\Core\Asset\AssetList;
use Concrete\Core\Block\BlockController;

defined('C5_EXECUTE') or die('Access Denied.');

class Controller extends BlockController
{

    protected $btTable = 'btBlogPostWidget';
    protected $btExportTables = ['btBlogPostWidget'];
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
        return t('Blog posts widget');
    }

    public function getBlockTypeDescription() {
        return t('');
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

    }

    public function addEdit() {

        // Load form.css
        $al = AssetList::getInstance();
        $al->register('css', 'blog-post-widget/form', 'blocks/blog_post_widget/css_files/form.css', [], false);
        $this->requireAsset('css', 'blog-post-widget/form');

        // Make $app available in view
        $this->set('app', $this->app);

    }

    public function view() {

    }

    public function save($args) {

        parent::save($args);

    }

    public function duplicate($newBlockID) {

        parent::duplicate($newBlockID);

    }

    public function delete() {

    }

    public function validate($args) {

        $error = $this->app->make('helper/validation/error');

        return $error;

    }

    public function composer() {

        $this->edit();

    }

    public function scrapbook() {

        $this->edit();

    }

}