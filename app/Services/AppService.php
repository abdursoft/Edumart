<?php

    /**
 * Get site settings
 */
    if (! function_exists('site')) {
    function site($key = null)
    {
        $settings = \App\Models\SiteSetting::first();

        if (! $settings) {
            return null;
        }

        if ($key) {
            return $settings->$key ?? null;
        }

        return $settings;
    }
    }

    /**
 * get signin profile
 */
    if (! function_exists('profile')) {
    function profile()
    {
        return auth('web')->user();
    }
    }

    /**
 * Check the user is permitted for the action
 */
    if (! function_exists('permitted')) {
    /**
     * @param $permission name of the actions | permissions
     */
    function permitted($permission)
    {
        $action = profile()?->can($permission);
        if (! $action) {
            return abort(403, "You are not allowed to browse this page");
        }
        return $action;
    }
    }

    /**
 * Checking the role
 */
    if (! function_exists('isRole')) {
    /**
     * @param $role name of the user role
     */
    function isRole($role)
    {
        return profile()->hasRole($role);
    }
    }

    /**
 * Check class is running or not
 */
    if (! function_exists('classRunning')) {
    /**
     * @param $date class date
     * @param $start class start time
     * @param $end class end time
     */
    function classRunning($start, $end)
    {
        $carbon = \Carbon\Carbon::class;

        $now = $carbon::now();

        $startTime = $carbon::createFromFormat('H:i:s', $start);
        $endTime   = $carbon::createFromFormat('H:i:s', $end);

        return $now->between($startTime, $endTime);
    }
    }

    /**
 * Get sms configurations
 */
    if (! function_exists('smsAttributes')) {
    /**
     * @param $keyword sms method keyword
     * @param $key attribute key
     */
    function smsAttributes($keyword, $key)
    {
        $smsMethod = \App\Models\SmsMethod::where('keyword', $keyword)->first();
        if ($smsMethod) {
            $attributes = json_decode($smsMethod->attributes, true);
            return $attributes[$key] ?? '';
        }
    }
    }

    /**
 * Get user type and id
 */
    if (! function_exists('getUsers')) {
    /**
     *@param $type get users by type
     *@param $id get users by type and id
     */
    function getUsers($type, $id = null)
    {
        if ($type && $id) {
            return \App\Models\User::where('role', $type)->where('id', $id)->first();
        }
        return \App\Models\User::where('role', $type)->get();
    }
    }

    /**
 * Get divisions
 */
    if (! function_exists('division')) {
    function division($id = null)
    {
        if ($id) {
            return \App\Models\Division::with('district')->findOrFail($id);
        }
        return \App\Models\Division::all();
    }
    }

    /**
 * Get district
 */
    if (! function_exists('district')) {
    function district($id = null)
    {
        if ($id) {
            return \App\Models\District::with('thana')->findOrFail($id);
        }
        return \App\Models\District::all();
    }
    }

    /**
 * Get thana
 */
    if (! function_exists('thana')) {
    function thana($id = null)
    {
        if ($id) {
            return \App\Models\Thana::with('union')->findOrFail($id);
        }
        return \App\Models\Thana::all();
    }
    }

    /**
 * Get union
 */
    if (! function_exists('union')) {
    function union($id = null)
    {
        if ($id) {
            return \App\Models\Union::findOrFail($id);
        }
        return \App\Models\Union::all();
    }
    }

    /**
     * Get country
     */
    if(!function_exists('country')){
        function country($id=null){
            if($id){
                return \App\Models\Country::findOrFail($id);
            }
            return \App\Models\Country::all();
        }
    }

    /**
 * Get an model
 */
    if (! function_exists('getModel')) {
    function getModel($model, $id)
    {
        $class = "\\App\\Models\\$model";
        return $class::find($id) ?: (object) [];
    }
    }

    /**
 * Get the theme path
 */
    if (! function_exists('theme')) {
    function theme($view)
    {
        $theme = site()->theme ?? config('app.theme', 'default');
        return "themes.$theme.$view";
    }
    }

    /**
 * Get the backend path
 */
    if (! function_exists('backend')) {
    function backend($view)
    {
        return "backend.$view";
    }
    }

    /**
 * Get the theme asset URL
 */
    if (! function_exists('theme_asset')) {
    function theme_asset($path)
    {
        $theme = site()->theme ?? config('app.theme', 'default');
        return asset("themes/$theme/$path");
    }
    }

    /**
 * Render board URLS
 */
    if (! function_exists('board_url')) {
    function board_url($path = '')
    {
        $board_prefix = config('app.board_prefix', 'board');
        return url($board_prefix . '/' . ltrim($path, '/'));
    }
    }

    /**
 * Iconify icons
 */
    if (! function_exists('icons')) {
    function icons($icon)
    {
        ob_start();
        echo ICONS[$icon] ?? '';
        return ob_get_clean();
    }
    }

    /**
 * Get localization text
 */
    if (! function_exists('text')) {
    function text($key)
    {
        return __(strtoupper(app()->getLocale()) . '.' . $key);
    }
    }

/**
 * Email stats
 */
if(!function_exists('emailStats')){
    function emailStats(){
        return (new \App\Http\Controllers\Api\V1\ContactController)->noReplay();
    }
}

    /**
 * CGPA calculations
 */
    if (! function_exists('cgpaGradePoint')) {
    function cgpaGradePoint($percentage)
    {
        return match (true) {
            $percentage >= 80 => [4.00, 'A+'],
            $percentage >= 75 => [3.75, 'A'],
            $percentage >= 70 => [3.50, 'A-'],
            $percentage >= 65 => [3.25, 'B+'],
            $percentage >= 60 => [3.00, 'B'],
            $percentage >= 55 => [2.75, 'B-'],
            $percentage >= 50 => [2.50, 'C+'],
            $percentage >= 45 => [2.25, 'C'],
            $percentage >= 40 => [2.00, 'D'],
            default           => ['0.00', 'F'],
        };
    }
    }

    /**
 * GPA calculations
 */
    if (! function_exists('gpaGradePoint')) {
    function gpaGradePoint($percentage)
    {
        return match (true) {
            $percentage >= 80 => [5.00, 'A+'],
            $percentage >= 70 => [4.00, 'A'],
            $percentage >= 60 => [3.50, 'A-'],
            $percentage >= 50 => [3.00, 'B'],
            $percentage >= 40 => [2.00, 'C'],
            $percentage >= 33 => [1.00, 'D'],
            default           => ['0.00', 'F'],
        };
    }
    }

    /**
 * CGPA calculations
 */
    if (! function_exists('cgpaGradeLater')) {
    function cgpaGradeLater($percentage)
    {
        return match (true) {
            $percentage >= 4.00 => 'A+',
            $percentage >= 3.75 => 'A',
            $percentage >= 3.50 => 'A-',
            $percentage >= 3.25 => 'B+',
            $percentage >= 3.00 => 'B',
            $percentage >= 2.75 => 'B-',
            $percentage >= 2.50 => 'C+',
            $percentage >= 2.25 => 'C',
            $percentage >= 2.00 => 'D',
            default             => 'F',
        };
    }
    }

    /**
 * GPA calculations
 */
    if (! function_exists('gpaGradeLater')) {
    function gpaGradeLater($percentage)
    {
        return match (true) {
            $percentage >= 5    => 'A+',
            $percentage >= 4.50 => 'A',
            $percentage >= 4.00 => 'A-',
            $percentage >= 3.50 => 'B',
            $percentage >= 3.00 => 'C',
            $percentage >= 2.00 => 'D',
            default             => 'F'
        };
    }
}

/**
 * Render a slider
 */
if(!function_exists('slider')){
    function slider($shortCode){
        return \App\Models\Slider::where('shortcode', $shortCode)->first() ?? [];
    }
}

    /**
 * Render meta contents
 */
    if (! function_exists('metaContent')) {
    function metaContent($title = null, $description = null, $image = null, $keywords = null)
    {
        ob_start();
        $keywords = '' . ($keywords ?? site()->meta_keywords ?? 'education, online courses, learning, e-learning, tutorials, classes, training, skills, knowledge, study, academic, professional development, certification, workshops, webinars, elearning platform, online education') . ' ';
        ?>
        <meta name="description" content="<?php echo $description ?>" />
        <meta property="og:title" content="<?php echo $title ?>" />
        <meta property="og:description" content="<?php echo $description ?>" />
        <meta name="keywords" content="<?php echo $keywords ?>" />
        <meta property="og:url" content="<?php echo config('app.url') ?>" />
        <meta property="og:site_name" content="<?php echo $_SERVER['HTTP_HOST'] ?>" />
        <meta property="og:updated_time" content="<?php echo date('Y-m-d H-i-s') ?>" />
        <meta property="og:image" content="<?php echo $image ?>" />
        <meta property="og:image:secure_url" content="<?php echo $image ?>" />
        <meta property="og:image:width" content="1200" />
        <meta property="og:image:height" content="1200" />
        <meta property="og:image:alt" content="custom" />
        <meta property="og:image:type" content="image/png" />
        <meta property="article:published_time" content="<?php echo date('Y-m-d H-i-s') ?>" />
        <meta property="article:modified_time" content="<?php echo date('Y-m-d H-i-s') ?>" />
        <meta name="twitter:card" content="summary_large_image" />
        <meta name="twitter:title" content="<?php echo $title ?>" />
        <meta name="twitter:keywords" content="<?php echo $keywords ?>" />
        <meta name="twitter:description" content="<?php echo $description ?>" />
        <meta name="twitter:image" content="<?php echo $image ?>" />
        <meta name="twitter:label1" content="Written by" />
        <meta name="twitter:data1" content="<?php echo $_SERVER['HTTP_HOST'] ?>" />
        <meta name="twitter:label2" content="Time to read" />
        <meta name="twitter:data2" content="1 minute" />
        <meta name="robots" content="index, follow, max-snippet:-1, max-video-preview:-1, max-image-preview:large" />
        <link rel="shortcut icon" href="<?php echo site()->fav_icon ?? '' ?>" type="image/x-icon">
    <?php
        echo ob_get_clean();
            }
        }

        // table styles
        if (! function_exists('tableStyle')) {
            function tableStyle()
            {
                ob_start();
            ?>
        <link href="/ui/datatable.min.css" rel="stylesheet">
        <link href="/ui/responsive-datatable.min.css" rel="stylesheet">
        <!-- datatable css  -->
        <link rel="stylesheet" href="/table/table.css">
        <!-- Buttons -->
        <link rel="stylesheet" href="https://cdn.datatables.net/buttons/2.4.2/css/buttons.dataTables.min.css">
    <?php
        echo ob_get_clean();
            }
        }

        // table scripts
        if (! function_exists('tableScript')) {
            function tableScript($title="Reports")
            {
                ob_start();
                ?>
                [{
                            extend: 'copy',
                            title:'',
                            exportOptions: commonExportOptions
                        },
                        {
                            extend: 'csv',
                            exportOptions: commonExportOptions,
                            customize: function(csv) {
                                return `
                                <?= site()->site_name ?? 'Edumart Technology' ?>
                                <?= site()->division->name ?? 'Rangpur' ?>, <?= site()->country->name ?>
                                <?= $title; ?>

                                ${csv}`;
                            }
                        },
                        {
                            extend: 'excel',
                            title:'',
                            exportOptions: commonExportOptions,
                            customize: function(xlsx) {
                                const sheet = xlsx.xl.worksheets['sheet1.xml'];
                                const rows = `
                                <row r="1"><c t="inlineStr" r="A1"><is><t><?= site()->site_name ?? 'Edumart Technology' ?></t></is></c></row>
                                <row r="2"><c t="inlineStr" r="A2"><is><t><?= site()->division->name ?? 'Rangpur' ?>, <?= site()->country->name ?></t></is></c></row>
                                <row r="3"><c t="inlineStr" r="A3"><is><t><?= $title; ?></t></is></c></row>`;
                                sheet.childNodes[0].childNodes[1].innerHTML =
                                    rows + sheet.childNodes[0].childNodes[1].innerHTML;
                            }
                        },
                        {
                            extend: 'pdfHtml5',
                            text: 'PDF',
                            title: '',
                            orientation: 'landscape',
                            pageSize: 'A4',
                            exportOptions: commonExportOptions,

                            customize: function (doc) {

                                doc.header = null;
                                doc.footer = null;

                                if (doc.content.length && doc.content[0].text) {
                                    doc.content.splice(0, 1);
                                }

                                const tableNode = doc.content.find(node => node.table);

                                if (tableNode) {
                                    tableNode.table.widths =
                                        Array(tableNode.table.body[0].length).fill('*');
                                }


                                doc.styles.tableHeader.alignment = 'center';
                                doc.defaultStyle.alignment = 'center';

                                doc.content.unshift(
                                    {
                                        text: '<?= site()->site_name ?? "Edumart Technology" ?>',
                                        fontSize: 14,
                                        bold: true,
                                        alignment: 'center',
                                        margin: [0, 0, 0, 5]
                                    },
                                    {
                                        text:
                                            '<?= site()->division->name ?? "Rangpur" ?>, ' +
                                            '<?= site()->country->name ?>\n' +
                                            '<?= $title; ?>\n\n',
                                        alignment: 'center',
                                        margin: [0, 0, 0, 10]
                                    }
                                );
                            }
                        },
                        {
                            extend: 'print',
                            title:'',
                            exportOptions: commonExportOptions,
                            customize: function(win) {
                                $(win.document.body)
                                    .prepend(`
                                    <div style="text-align:center; margin-bottom:20px;">
                                    <h2><?= site()->site_name ?? 'Edumart Technology' ?></h2>
                                    <p><?= site()->division->name ?? 'Rangpur' ?>, <?= site()->country->name ?></p>
                                    <p><strong><?= $title; ?></strong></p>
                                    </div>`);
                                $(win.document.body).find('table')
                                    .addClass('compact')
                                    .css('font-size', '12px');
                            }
                        }
                    ]
                <?php
                return ob_get_clean();
            }
        }

        // load datatable
        if (! function_exists('loadDataTable')) {
            function loadDataTable($tableId,$title="Report")
            {
                ob_start();
            ?>
        <script>
            const commonExportOptions = {
                columns: ':visible:not(.no-export)'
            };

            document.addEventListener('DOMContentLoaded', () => {
                $('#<?php echo $tableId ?>').DataTable({
                    responsive: true,
                    layout: {
                        topStart: 'buttons'
                    },
                    dom: '<"tableTop"Bf>tr<"tableBottom"ip>',
                    buttons: <?= tableScript($title) ?>,
                    pageLength: 10,
                    order: [
                        [0, 'desc']
                    ],
                });
            });
        </script>
<?php
    echo ob_get_clean();
    }
    }

    // editor scripts and style
    if (! function_exists('editorScript')) {
    function editorScript($variable)
    {
        ob_start();
        echo "<script lang='javascript'>let $variable = null;</script>";
        echo ob_get_clean();
    }
    }

    // event render
    if (! function_exists('renderEvent')) {
    function renderEvent($event)
    {
        if ($event == 'admin.information.notice_board') {
            return 'notice';
        } elseif ($event == 'admin.information.event_calendar') {
            return 'event';
        } else {
            return 'news';
        }
    }
    }

    // route events
    if (! function_exists('getEvent')) {
    function getEvent($event)
    {
        if ($event === 'notice') {
            return 'notice_board';
        } elseif ($event === 'event') {
            return 'event_calendar';
        } else {
            return 'news';
        }
    }
    }

    /**
 * Create unique id
 */
    if (! function_exists('uniqueID')) {
    function uniqueID($model, $column, $length = 16)
    {
        do {
            $id = substr(str_shuffle('0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 0, $length);
        } while ($model::where($column, $id)->exists());
        return $id;
    }
}
