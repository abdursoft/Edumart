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

    // 🎓 Academic Management
    "academic" => [

        // People Management
        "people" => [
            "designations" => "Designations",
            "teachers" => "Teachers",
            "staff" => "Staff",
            "committees" => "Committees",
            "guardians" => "Guardians",
            "students" => "Students",
            "profiles" => "Profiles",
        ],

        // Academic Structure
        "structure" => [
            "departments" => "Departments",
            "classes" => "Classes",
            "sections" => "Sections",
            "subjects" => "Subjects",
            "rooms" => "Rooms",
            "routines" => "Class Routines",
        ],

        // Learning Activities
        "activities" => [
            "attendance" => "Attendance",
            "assignments" => "Assignments",
            "homework" => "Homework",
            "lesson_plan" => "Lesson Plans",
            "syllabus" => "Syllabus",
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
        "resources" => [
            "library" => [
                "author" => "Author",
                "category" => "Category",
                "shelf" => "Shelf",
                "books" => "Books",
                "book_issue" => "Book Issue",
                "book_return" => "Book Return",
            ],
            "room" => [
                "rooms" => "Hostel Rooms",
            ],
        ],
    ],

    // Administration
    "administration" => [
        "inventory" => "Inventory Management",
        "assets" => "Asset Register",
        "suppliers" => "Suppliers",
        "leave_management" => "Leave Management",
        "attendance_staff" => "Staff Attendance",
    ],

    // Finance & Accounts
    "finance" => [
        "fees" => [
            "fee_types" => "Fee Types",
            "fee_collection" => "Fee Collection",
            "student_due" => "Student Due Reports",
        ],
        "expenses" => [
            "expense_heads" => "Expense Heads",
            "expense_list" => "Expenses",
        ],
        "salary" => [
            "payroll" => "Payroll",
            "salary_sheet" => "Salary Sheet",
        ],
        "accounts" => "Accounts Summary",
        "transactions" => "Transactions",
    ],

    // Communication & Collaboration
    "communication" => [
        "sms" => "SMS",
        "email" => "Email",
        "notifications" => "Notifications",
    ],

    //  Reports
    "reports" => [
        "student_reports" => "Student Reports",
        "attendance_reports" => "Attendance Reports",
        "exam_reports" => "Exam Reports",
        "finance_reports" => "Finance Reports",
        "library_reports" => "Library Reports",
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
        "system_settings" => "System Settings",
        "email_sms_settings" => "Email/SMS Configuration",
        "backup" => "Database Backup",
        "language" => "Language Settings",
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
    "public" => [
        "admission_form" => "Online Admission Form",
        "results_portal" => "Results Portal",
        "notices" => "Public Notices",
        "events" => "Events",
        "downloads" => "Download Center",
    ],

    // Menu builder
    "menu.add" => "Menu Builder",

];

const LANGUAGE = [
    "bn" => "বাংলা",
    "en" => "English"
];
