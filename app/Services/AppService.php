<?php


/**
* Get site settings
*/
if (!function_exists('site')) {
    function site($key = null) {
        $settings = \App\Models\SiteSetting::first();

        if (!$settings) {
            return null;
        }

        if ($key) {
            return $settings->$key ?? null;
        }

        return $settings;
    }
}

/**
 * Get divisions
 */
if(!function_exists('division')){
    function division($id=null){
        if($id){
            return \App\Models\Division::with('district')->findOrFail($id);
        }
        return \App\Models\Division::all();
    }
}

/**
 * Get district
 */
if(!function_exists('district')){
    function district($id=null){
        if($id){
            return \App\Models\District::with('thana')->findOrFail($id);
        }
        return \App\Models\District::all();
    }
}

/**
 * Get thana
 */
if(!function_exists('thana')){
    function thana($id=null){
        if($id){
            return \App\Models\Thana::with('union')->findOrFail($id);
        }
        return \App\Models\Thana::all();
    }
}

/**
 * Get union
 */
if(!function_exists('union')){
    function union($id=null){
        if($id){
            return \App\Models\Union::findOrFail($id);
        }
        return \App\Models\Union::all();
    }
}

/**
 * Get an model
 */
if (!function_exists('getModel')) {
    function getModel($model, $id)
    {
        $class = "\\App\\Models\\$model";
        return $class::find($id) ?: (object) [];
    }
}

/**
* Get the theme path
*/
if (!function_exists('theme')) {
    function theme($view) {
        $theme = site()->theme ?? config('app.theme', 'default');
        return "themes.$theme.$view";
    }
}

/**
* Get the backend path
*/
if (!function_exists('backend')) {
    function backend($view) {
        return "backend.$view";
    }
}


/**
 * Get the theme asset URL
 */
if (!function_exists('theme_asset')) {
    function theme_asset($path) {
        $theme = site()->theme ?? config('app.theme', 'default');
        return asset("themes/$theme/$path");
    }
}

/**
 * Render board URLS
 */
if (!function_exists('board_url')) {
    function board_url($path = '') {
        $board_prefix = config('app.board_prefix', 'board');
        return url($board_prefix . '/' . ltrim($path, '/'));
    }
}

/**
 * Render meta contents
 */
if (!function_exists('metaContent')) {
    function metaContent( $title = null, $description = null, $image = null, $keywords = null ) {
        ob_start();
        $keywords = '' . ( $keywords ?? site()->meta_keywords ?? 'education, online courses, learning, e-learning, tutorials, classes, training, skills, knowledge, study, academic, professional development, certification, workshops, webinars, elearning platform, online education' ) . ' ';
        ?>
        <meta name="description" content="<?=$description?>" />
        <meta property="og:title" content="<?=$title?>" />
        <meta property="og:description" content="<?=$description?>" />
        <meta name="keywords" content="<?=$keywords?>" />
        <meta property="og:url" content="<?= config('app.url') ?>" />
        <meta property="og:site_name" content="<?=$_SERVER['HTTP_HOST']?>" />
        <meta property="og:updated_time" content="<?=date( 'Y-m-d H-i-s' )?>" />
        <meta property="og:image" content="<?=$image?>" />
        <meta property="og:image:secure_url" content="<?=$image?>" />
        <meta property="og:image:width" content="1200" />
        <meta property="og:image:height" content="1200" />
        <meta property="og:image:alt" content="custom" />
        <meta property="og:image:type" content="image/png" />
        <meta property="article:published_time" content="<?=date( 'Y-m-d H-i-s' )?>" />
        <meta property="article:modified_time" content="<?=date( 'Y-m-d H-i-s' )?>" />
        <meta name="twitter:card" content="summary_large_image" />
        <meta name="twitter:title" content="<?=$title?>" />
        <meta name="twitter:keywords" content="<?=$keywords?>" />
        <meta name="twitter:description" content="<?=$description?>" />
        <meta name="twitter:image" content="<?=$image?>" />
        <meta name="twitter:label1" content="Written by" />
        <meta name="twitter:data1" content="<?=$_SERVER['HTTP_HOST']?>" />
        <meta name="twitter:label2" content="Time to read" />
        <meta name="twitter:data2" content="1 minute" />
        <meta name="robots" content="index, follow, max-snippet:-1, max-video-preview:-1, max-image-preview:large" />
        <link rel="shortcut icon" href="<?= site()->fav_icon ?? '' ?>" type="image/x-icon">
        <?php
        echo ob_get_clean();
    }
}

// table styles
if(!function_exists('tableStyle')){
    function tableStyle(){
        ob_start();
        ?>
            <link href="/ui/datatable.min.css" rel="stylesheet">
            <link href="/ui/responsive-datatable.min.css" rel="stylesheet">
            <!-- datatable css  -->
            <link rel="stylesheet" href="/table/table.css">
        <?php
        echo ob_get_clean();
    }
}


// table scripts
if(!function_exists('tableScript')){
    function tableScript(){
        ob_start();
        ?>
            <!-- Table scripts -->
            <script src="/ui/datatable.min.js"></script>
            <script src="/ui/responsive-datatable.min.js"></script>
     <?php
        echo ob_get_clean();
    }
}


// editor scripts and style
if(!function_exists('editorScript')){
    function editorScript($variable){
        ob_start();
        echo "<script lang='javascript'>let $variable = null;</script>";
        echo ob_get_clean();
    }
}


// event render
if(!function_exists('renderEvent')){
    function renderEvent($event){
        if($event == 'admin.information.notice_board'){
            return 'notice';
        }elseif($event == 'admin.information.event_calendar'){
            return 'event';
        }else{
            return 'news';
        }
    }
}

// route events
if(!function_exists('getEvent')){
    function getEvent($event){
        if($event === 'notice'){
            return 'notice_board';
        }elseif($event === 'event'){
            return 'event_calendar';
        }else{
            return 'news';
        }
    }
}


/**
 * Create unique id
 */
if(!function_exists('uniqueID')){
    function uniqueID($model, $column, $length = 16) {
        do {
            $id = substr(str_shuffle('0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 0, $length);
        } while ($model::where($column, $id)->exists());
        return $id;
    }
}
