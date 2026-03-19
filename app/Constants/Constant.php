<?php
// project constant variables

const SOFTWARE_VERSION = "1.0.0";
const DOMAIN_POINTED_DIRECTORY = 'public';

const PARENTS = [
                'name_en' => 'Name on English',
                'name_bn' => 'বাংলায় নাম',
                'mobile'  => 'Mobile',
                'nid'     => 'NID number',
                'dob'     => 'Date of birth'
];

const ADDRESS = [
                'division' => 'Division',
                'district' => 'District',
                'thana'    => 'Thana',
                'union'    => 'Union',
                'post'     => 'Post',
                'address'  => 'Address'
];


const MENUS = [
    // Dashboard
    "dashboard" => "Dashboard",

    // Admission
    "admission.request" => "Admission",

    // 🎓 Academic Management
    "academic" => [


        // Academic Structure
        "structure" => [
            "departments" => "Departments",
            "classes" => "Classes",
            "sections" => "Sections",
            "group" => "Groups",
            "subjects" => "Subjects",
            "rooms" => "Rooms",
            "routines" => "Class Routines",
        ],
        
        // People Management
        "people" => [
            "designations" => "Designations",
            "teachers" => "Teachers",
            "staff" => "Staff",
            "committees" => "Committees",
            "guardians" => "Guardians",
            "students" => "Students",
            // "profiles" => "Profiles",
        ],

        // Learning Activities
        "activities" => [
            "attendance" => "Attendance",
            "assignments" => "Assignments",
            // "lesson_plan" => "Lesson Plans",
        ],

        //  Evaluation & Examination
        "evaluation" => [
            "exams" => "Examinations",
            "exam_fee" => "Exam Fees",
            "exam_subject" => "Exam Subjects",
            "admit_cards" => "Admit Cards",
            "mark_sheet" => "Mark Sheet",
            "results" => "Results",
            "certificates" => "Certificates",
            "promotion" => "Class Promotion",
        ],

        // Academic Resources
        // "resources" => [
        //     "library" => [
        //         "author" => "Author",
        //         "category" => "Category",
        //         "shelf" => "Shelf",
        //         "books" => "Books",
        //         "book_issue" => "Book Issue",
        //         "book_return" => "Book Return",
        //     ],
        //     "room" => [
        //         "rooms" => "Hostel Rooms",
        //     ],
        // ],
    ],

    // Administration
    "administration" => [
        // "inventory" => "Inventory Management",
        "assets" => "Asset Register",
        "suppliers" => "Suppliers",
        "leave_management" => "Leave Management",
        "attendance_staff" => "Staff Attendance",
    ],

    // Finance & Accounts
    "finance" => [
        "fees" => [
            'fee_group' => 'Fee Group',
            "fee_heads" => "Fee Heads",
            "student_due" => "Student Due",
            "fee_collection" => "Fee Collection",
        ],
        "expenses" => [
            "heads" => "Expense Heads",
            "cost" => "Expenses",
        ],
        // "salary" => [
        //     "payroll" => "Payroll",
        //     "salary_sheet" => "Salary Sheet",
        // ],
    ],

    // Communication & Collaboration
    "communication" => [
        "sms" => "SMS",
        "email" => "Email",
    ],

    //  Reports
    "reports" => [
        "student_reports" => "Student Reports",
        // "attendance_reports" => "Attendance Reports",
        // "exam_reports" => "Exam Reports",
        // "finance_reports" => "Finance Reports",
        // "library_reports" => "Library Reports",
    ],

    // General Information
    "information" => [
        "institute_info" => "Institute Information",
        "notice_board" => "Notice Board",
        "event_calendar" => "Event Calendar",
        "news" => "News & Announcements",
    ],

    // System Settings
    "settings" => [
        'role_permission' => "Role & Permissions",
        // "system_settings" => "System Settings",
        "email_sms_settings" => "Email/SMS Configuration",
        "backup" => "Database Backup",
        // "language" => "Language Settings",
    ],

    // Frontend Pages
    "page" => [
        "create_page" => "Create page",
        "manage_page" => "Manage pages"
    ],

    // media
    "media" => [
        "slider" => "Slider",
        "gallery" => "Gallery"
    ],

    // Public / External Access
    // "public" => [
    //     "admission_form" => "Online Admission Form",
    //     "results_portal" => "Results Portal",
    //     "downloads" => "Download Center",
    // ],

    // Menu builder
    "menu.add" => "Menu Builder",

];
const LANGUAGE = [
    "bn" => "বাংলা",
    "en" => "English"
];


const TIMEZONES = [
    // Asia
    'Asia/Dhaka' => 'Asia/Dhaka',
    'Asia/Kolkata' => 'Asia/Kolkata',
    'Asia/Karachi' => 'Asia/Karachi',
    'Asia/Kathmandu' => 'Asia/Kathmandu',
    'Asia/Dubai' => 'Asia/Dubai',
    'Asia/Riyadh' => 'Asia/Riyadh',
    'Asia/Singapore' => 'Asia/Singapore',
    'Asia/Tokyo' => 'Asia/Tokyo',
    'Asia/Shanghai' => 'Asia/Shanghai',

    // Europe
    'Europe/London' => 'Europe/London',
    'Europe/Paris' => 'Europe/Paris',
    'Europe/Berlin' => 'Europe/Berlin',
    'Europe/Rome' => 'Europe/Rome',
    'Europe/Moscow' => 'Europe/Moscow',

    // Africa
    'Africa/Cairo' => 'Africa/Cairo',
    'Africa/Nairobi' => 'Africa/Nairobi',
    'Africa/Johannesburg' => 'Africa/Johannesburg',

    // America
    'America/New_York' => 'America/New_York',
    'America/Chicago' => 'America/Chicago',
    'America/Denver' => 'America/Denver',
    'America/Los_Angeles' => 'America/Los_Angeles',
    'America/Toronto' => 'America/Toronto',
    'America/Sao_Paulo' => 'America/Sao_Paulo',

    // Australia
    'Australia/Sydney' => 'Australia/Sydney',
    'Australia/Melbourne' => 'Australia/Melbourne',
    'Australia/Perth' => 'Australia/Perth',
];


const FRONT_MENU=[
    "media" => [
        'title' => 'Media',
        'children' => [
            'gallery' => 'Gallery',
        ],
        'parameter' => 'type'
    ],
    "contact" => 'Contact us',
];
