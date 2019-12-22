<?php namespace Application\Block\BigHeroImg;

use Concrete\Core\Asset\AssetList;
use Concrete\Core\Block\BlockController;
use Concrete\Core\File\File;

defined('C5_EXECUTE') or die('Access Denied.');

class Controller extends BlockController
{

    protected $btTable = 'btBigHeroImg';
    protected $btExportTables = ['btBigHeroImg'];
    protected $btExportFileColumns = ['bgImage'];
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
        return t('Big hero image');
    }

    public function getBlockTypeDescription() {
        return t('');
    }

    public function getSearchableContent() {

        $content = [];
        $content[] = $this->heroText;
        $content[] = $this->heroHeight;

        return implode(' ', $content);

    }

    public function on_start() {

        // Unique identifier
        $this->uniqueID = $this->app->make('helper/validation/identifier')->getString(18);
        $this->set('uniqueID', $this->uniqueID);

        // Text position (textPos) options
        $textPos_options           = [];
        $textPos_options[]         = '----';
        $textPos_options['left']   = h(t('Left'));
        $textPos_options['center'] = h(t('Center'));
        $textPos_options['right']  = h(t('Right'));

        $this->set('textPos_options', $textPos_options);

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
        $al->register('css', 'big-hero-img/form', 'blocks/big_hero_img/css_files/form.css', [], false);
        $this->requireAsset('css', 'big-hero-img/form');

        // Make $app available in view
        $this->set('app', $this->app);

    }

    public function view() {

        // Prepare fields for view
        $this->prepareForViewImage('view', [
            'bgImage'     => $this->bgImage,
            'bgImage_alt' => false
        ], [
            'thumbnail'        => false,
            'thumbnailWidth'   => false,
            'thumbnailHeight'  => false,
            'thumbnailCrop'    => false,

            'fullscreen'       => true,
            'fullscreenWidth'  => 1920,
            'fullscreenHeight' => 1080,
            'fullscreenCrop'   => false
        ]);

    }

    public function save($args) {

        // Basic fields
        $args['bgImage']    = intval($args['bgImage']);
        $args['heroText']   = trim($args['heroText']);
        $args['heroHeight'] = trim($args['heroHeight']);
        $args['textPos']    = trim($args['textPos']);

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
        $requiredFields['bgImage']  = t('Background image');
        $requiredFields['heroText'] = t('Hero text');
        $requiredFields['textPos']  = t('Text position');

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

    private function prepareForViewImage($type, $fields, $options = []) {

        // Options
        if (!is_array($options)) {
            $options = [];
        }

        $defaultOptions = [];
        $defaultOptions['fullscreen']       = false;
        $defaultOptions['fullscreenWidth']  = 1920;
        $defaultOptions['fullscreenHeight'] = 1080;
        $defaultOptions['fullscreenCrop']   = false;

        $defaultOptions['thumbnail']        = false;
        $defaultOptions['thumbnailWidth']   = 480;
        $defaultOptions['thumbnailHeight']  = 270;
        $defaultOptions['thumbnailCrop']    = true;

        $options = array_merge($defaultOptions, $options);

        // Prepare links/images
        $keys = array_keys($fields);
        $fileIDFieldName = $keys[0];
        $altFieldName    = $keys[1];

        $fileID = $fields[$fileIDFieldName];
        $alt    = $fields[$altFieldName];

        $fileObject = false;
        $filename   = '';

        $link   = '';
        $width  = '';
        $height = '';

        $fullscreenLink   = '';
        $fullscreenWidth  = '';
        $fullscreenHeight = '';

        $thumbnailLink   = '';
        $thumbnailWidth  = '';
        $thumbnailHeight = '';

        if (!empty($fileID)) {

            $fileObject = File::getByID($fileID);

            if (is_object($fileObject)) {

                $filename = $fileObject->getFileName();

                if (empty($alt)) {
                    $alt = $filename;
                }

                // Original image
                $link   = $fileObject->getURL();
                $width  = $fileObject->getAttribute('width');
                $height = $fileObject->getAttribute('height');

                // Fullscreen image
                if (!empty($options['fullscreen'])) {

                    $fullscreenWidth  = $options['fullscreenWidth'];
                    $fullscreenHeight = $options['fullscreenHeight'];
                    $fullscreenCrop   = $options['fullscreenCrop'];

                    if ($fileObject->canEdit() AND (($width > $fullscreenWidth AND $fullscreenWidth!=false) OR ($height > $fullscreenHeight AND $fullscreenHeight!=false))) {

                        $fullscreen       = $this->app->make('helper/image')->getThumbnail($fileObject, $fullscreenWidth, $fullscreenHeight, $fullscreenCrop);
                        $fullscreenLink   = $fullscreen->src;
                        $fullscreenWidth  = $fullscreen->width;
                        $fullscreenHeight = $fullscreen->height;

                    } else {

                        $fullscreenLink   = $link;
                        $fullscreenWidth  = $width;
                        $fullscreenHeight = $height;

                    }

                }

                // Thumbnail image
                if (!empty($options['thumbnail'])) {

                    $thumbnailWidth  = $options['thumbnailWidth'];
                    $thumbnailHeight = $options['thumbnailHeight'];
                    $thumbnailCrop   = $options['thumbnailCrop'];

                    if ($fileObject->canEdit() AND (($width > $thumbnailWidth AND $thumbnailWidth!=false) OR ($height > $thumbnailHeight AND $thumbnailHeight!=false))) {

                        $thumbnail       = $this->app->make('helper/image')->getThumbnail($fileObject, $thumbnailWidth, $thumbnailHeight, $thumbnailCrop);
                        $thumbnailLink   = $thumbnail->src;
                        $thumbnailWidth  = $thumbnail->width;
                        $thumbnailHeight = $thumbnail->height;

                    } else {

                        $thumbnailLink   = $link;
                        $thumbnailWidth  = $width;
                        $thumbnailHeight = $height;

                    }

                }

            }

        }

        if ($type == 'view') {

            // Fields from database
            $this->set($fileIDFieldName, $fileID);
            $this->set($altFieldName, $alt);

            // Additional data
            $this->set($fileIDFieldName.'_object', $fileObject);
            $this->set($fileIDFieldName.'_filename', $filename);

            $this->set($fileIDFieldName.'_link', $link);
            $this->set($fileIDFieldName.'_width', $width);
            $this->set($fileIDFieldName.'_height', $height);

            $this->set($fileIDFieldName.'_fullscreenLink', $fullscreenLink);
            $this->set($fileIDFieldName.'_fullscreenWidth', $fullscreenWidth);
            $this->set($fileIDFieldName.'_fullscreenHeight', $fullscreenHeight);

            $this->set($fileIDFieldName.'_thumbnailLink', $thumbnailLink);
            $this->set($fileIDFieldName.'_thumbnailWidth', $thumbnailWidth);
            $this->set($fileIDFieldName.'_thumbnailHeight', $thumbnailHeight);

        } elseif ($type == 'entry') {

            $entry = [];

            // Fields from database
            $entry[$fileIDFieldName] = $fileID;
            $entry[$altFieldName]    = $alt;

            // Additional data
            // $entry[$fileIDFieldName.'_object']   = $fileObject;
            $entry[$fileIDFieldName.'_filename'] = $filename;

            $entry[$fileIDFieldName.'_link']   = $link;
            $entry[$fileIDFieldName.'_width']  = $width;
            $entry[$fileIDFieldName.'_height'] = $height;

            $entry[$fileIDFieldName.'_fullscreenLink']   = $fullscreenLink;
            $entry[$fileIDFieldName.'_fullscreenWidth']  = $fullscreenWidth;
            $entry[$fileIDFieldName.'_fullscreenHeight'] = $fullscreenHeight;

            $entry[$fileIDFieldName.'_thumbnailLink']   = $thumbnailLink;
            $entry[$fileIDFieldName.'_thumbnailWidth']  = $thumbnailWidth;
            $entry[$fileIDFieldName.'_thumbnailHeight'] = $thumbnailHeight;

            return $entry;

        }

    }

}