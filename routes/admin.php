<?php

use App\Http\Controllers\Api\V1\AddressController;
use App\Http\Controllers\Api\V1\Admin\AdminController;
use App\Http\Controllers\Api\V1\ClassPromotionController;
use App\Http\Controllers\Api\V1\ClassRoomController;
use App\Http\Controllers\Api\V1\ClassRoutineController;
use App\Http\Controllers\Api\V1\CommitteeController;
use App\Http\Controllers\Api\V1\DepartmentController;
use App\Http\Controllers\Api\V1\DesignationController;
use App\Http\Controllers\Api\V1\EduClassController;
use App\Http\Controllers\Api\V1\ExamAdmitCardController;
use App\Http\Controllers\Api\V1\ExamController;
use App\Http\Controllers\Api\V1\ExamSubjectController;
use App\Http\Controllers\Api\V1\ParentController;
use App\Http\Controllers\Api\V1\StaffController;
use App\Http\Controllers\Api\V1\StudentController;
use App\Http\Controllers\Api\V1\SubjectController;
use App\Http\Controllers\Api\V1\TeacherController;
use App\Http\Controllers\Api\V1\ExamFeeController;
use App\Http\Controllers\Api\V1\ExamResultController;
use App\Http\Controllers\Api\V1\MarkSheetController;
use App\Http\Controllers\Api\V1\MarkSheetItemController;
use App\Http\Controllers\Api\V1\MenuController;
use App\Http\Controllers\Api\V1\MenuItemController;
use App\Http\Controllers\Api\V1\NewsNoticeController;
use App\Http\Controllers\Api\V1\PageController;
use App\Http\Controllers\Api\V1\SiteSettingController;
use App\Http\Controllers\Api\V1\SliderContentController;
use App\Http\Controllers\Api\V1\SliderController;
use App\Http\Controllers\Api\V1\UploadController;
use Illuminate\Support\Facades\Route;

Route::get('dashboard',[AdminController::class, 'dashboard'])->name('dashboard');

/**
 * Academic Management
 */

// People Management
Route::prefix('academic/people')->name('academic.people.')->group(function () {
    // teacher routes
    Route::get('teachers', [TeacherController::class, 'index'])->name('teachers');
    Route::post('teachers', [TeacherController::class, 'store'])->name('teachers.add');
    Route::get('teachers/{id}/edit', [TeacherController::class, 'show'])->name('teachers.edit');
    Route::post('teachers/{id}/edit', [TeacherController::class, 'update'])->name('teachers.update');
    Route::get('teachers/{id}/delete', [TeacherController::class, 'destroy'])->name('teachers.delete');

    // student routes
    Route::get('students', [StudentController::class, 'index'])->name('students');
    Route::post('students', [StudentController::class, 'store'])->name('students.add');
    Route::get('students/{id}/edit', [StudentController::class, 'show'])->name('students.edit');
    Route::post('students/{id}/update', [StudentController::class, 'update'])->name('students.update');
    Route::get('students/{id}/delete', [StudentController::class, 'destroy'])->name('students.delete');

    // guardian management
    Route::get('parent', [ParentController::class, 'index'])->name('guardians');
    Route::post('parent', [ParentController::class, 'store'])->name('guardians.add');
    Route::get('parent/{id}/edit', [ParentController::class, 'show'])->name('guardians.edit');
    Route::post('parent/{id}/update', [ParentController::class, 'update'])->name('guardians.update');
    Route::get('parent/{id}/delete', [ParentController::class, 'destroy'])->name('guardians.delete');

    // staff management
    Route::get('staff', [StaffController::class, 'index'])->name('staff');
    Route::post('staff', [StaffController::class, 'store'])->name('staff.add');
    Route::get('staff/{id}/edit', [StaffController::class, 'show'])->name('staff.edit');
    Route::post('staff/{id}/update', [StaffController::class, 'update'])->name('staff.update');
    Route::get('staff/{id}/delete', [StaffController::class, 'destroy'])->name('staff.delete');

    // committee management
    Route::get('committees', [CommitteeController::class, 'index'])->name('committees');
    Route::post('committees', [CommitteeController::class, 'store'])->name('committees.add');
    Route::get('committees/{id}/edit', [CommitteeController::class, 'show'])->name('committees.edit');
    Route::post('committees/{id}/update', [CommitteeController::class, 'update'])->name('committees.update');
    Route::get('committees/{id}/delete', [CommitteeController::class, 'delete'])->name('committees.delete');

    // designation routes
    Route::get('designations', [DesignationController::class, 'index'])->name('designations');
    Route::get('designation/{id}/edit', [DesignationController::class, 'show'])->name('designations.edit');
    Route::post('designation/{id}/edit', [DesignationController::class, 'update'])->name('designations.edit');
    Route::get('designation/{id}/delete', [DesignationController::class, 'destroy'])->name('designations.delete');
    Route::post('designations', [DesignationController::class, 'store'])->name('designations.add');

    Route::get('profiles', function () { return 'Profiles'; })->name('profiles');
});

// Academic Structure {done}
Route::prefix('academic/structure')->name('academic.structure.')->group(function () {
    // department routes
    Route::get('departments', [DepartmentController::class, 'index'])->name('departments');
    Route::post('departments', [DepartmentController::class, 'store'])->name('departments.add');
    Route::get('departments/{id}/edit', [DepartmentController::class, 'show'])->name('departments.edit');
    Route::post('departments/{id}/update', [DepartmentController::class, 'update'])->name('departments.update');
    Route::get('departments/{id}/delete', [DepartmentController::class, 'destroy'])->name('departments.delete');

    // classes routes
    Route::get('classes', [EduClassController::class, 'index'])->name('classes');
    Route::post('classes', [EduClassController::class, 'store'])->name('classes.add');
    Route::get('classes/{id}/edit', [EduClassController::class, 'show'])->name('classes.edit');
    Route::post('classes/{id}/update', [EduClassController::class, 'update'])->name('classes.update');
    Route::get('classes/{id}/delete', [EduClassController::class, 'index'])->name('classes.delete');

    Route::get('sections', function () { return 'Sections'; })->name('sections');

    // subject routes
    Route::get('subjects', [SubjectController::class, 'index'])->name('subjects');
    Route::post('subjects', [SubjectController::class, 'store'])->name('subjects.add');
    Route::get('subjects/{id}/edit', [SubjectController::class, 'show'])->name('subjects.edit');
    Route::post('subjects/{id}/update', [SubjectController::class, 'update'])->name('subjects.update');
    Route::get('subjects/{id}/delete', [SubjectController::class, 'destroy'])->name('subjects.delete');

    // room routes
    Route::get('rooms', [ClassRoomController::class, 'index'])->name('rooms');
    Route::post('rooms', [ClassRoomController::class, 'store'])->name('rooms.add');
    Route::get('rooms/{id}/edit', [ClassRoomController::class, 'show'])->name('rooms.edit');
    Route::post('rooms/{id}/update', [ClassRoomController::class, 'update'])->name('rooms.update');
    Route::get('rooms/{id}/delete', [ClassRoomController::class, 'destroy'])->name('rooms.delete');

    // class routine routes
    Route::get('routines', [ClassRoutineController::class, 'index'])->name('routines');
    Route::post('routines', [ClassRoutineController::class, 'store'])->name('routines.add');
    Route::get('routines/{id}/edit', [ClassRoutineController::class, 'show'])->name('routines.edit');
    Route::post('routines/{id}/update', [ClassRoutineController::class, 'update'])->name('routines.update');
    Route::get('routines/{id}/delete', [ClassRoutineController::class, 'destroy'])->name('routines.delete');
});

// Learning Activities
Route::prefix('academic/activities')->name('academic.activities.')->group(function () {
    Route::get('attendance', function () { return 'Attendance'; })->name('attendance');
    Route::get('assignments', function () { return 'Assignments'; })->name('assignments');
    Route::get('homework', function () { return 'Homework'; })->name('homework');
    Route::get('lesson_plan', function () { return 'Lesson Plans'; })->name('lesson_plan');
    Route::get('syllabus', function () { return 'Syllabus'; })->name('syllabus');
});

// Evaluation & Examination
Route::prefix('academic/evaluation')->name('academic.evaluation.')->group(function () {
    // exam routes
    Route::get('exams', [ExamController::class, 'index'])->name('exams');
    Route::post('exams', [ExamController::class, 'store'])->name('exams.add');
    Route::get('exams/{id}/edit', [ExamController::class, 'show'])->name('exams.edit');
    Route::post('exams/{id}/update', [ExamController::class, 'update'])->name('exams.update');
    Route::get('exams/{id}/delete', [ExamController::class, 'destroy'])->name('exams.delete');

    // exam fees routes
    Route::get('exam-fee', [ExamFeeController::class, 'index'])->name('exam_fee');
    Route::post('exam-fee', [ExamFeeController::class, 'store'])->name('exam_fee.add');
    Route::get('exam-fee/{id}/edit', [ExamFeeController::class, 'show'])->name('exam_fee.edit');
    Route::post('exam-fee/{id}/update', [ExamFeeController::class, 'update'])->name('exam_fee.update');
    Route::get('exam-fee/{id}/delete', [ExamFeeController::class, 'destroy'])->name('exam_fee.delete');

    // exam subject routes
    Route::get('exam-subject', [ExamSubjectController::class, 'index'])->name('exam_subject');
    Route::post('exam-subject', [ExamSubjectController::class, 'store'])->name('exam_subject.add');
    Route::get('exam-subject/{id}/edit', [ExamSubjectController::class, 'show'])->name('exam_subject.edit');
    Route::post('exam-subject/{id}/update', [ExamSubjectController::class, 'update'])->name('exam_subject.update');
    Route::get('exam-subject/{id}/delete', [ExamSubjectController::class, 'destroy'])->name('exam_subject.delete');

    // admit card routes
    Route::get('admit-cards', [ExamAdmitCardController::class, 'index'])->name('admit_cards');
    Route::post('admit-cards', [ExamAdmitCardController::class, 'store'])->name('admit_cards.add');
    Route::get('admit-cards/{id}/edit', [ExamAdmitCardController::class, 'edit'])->name('admit_cards.edit');
    Route::get('admit-cards/{id}/print', [ExamAdmitCardController::class, 'show'])->name('admit_cards.print');
    Route::post('admit-cards/{id}/update', [ExamAdmitCardController::class, 'update'])->name('admit_cards.update');
    Route::get('admit-cards/{id}/delete', [ExamAdmitCardController::class, 'destroy'])->name('admit_cards.delete');

    // mark sheet routes
    Route::get('mark-sheet', [MarkSheetController::class, 'index'])->name('mark_sheet');
    Route::post('mark-sheet', [MarkSheetController::class, 'store'])->name('mark_sheet.add');
    Route::get('mark-sheet/{id}/edit', [MarkSheetController::class, 'show'])->name('mark_sheet.edit');
    Route::post('mark-sheet/{id}/update', [MarkSheetController::class, 'update'])->name('mark_sheet.update');
    Route::get('mark-sheet/{id}/delete', [MarkSheetController::class, 'destroy'])->name('mark_sheet.delete');
    Route::get('mark-sheet/{id}/print', [MarkSheetController::class, 'printMarkSheet'])->name('mark_sheet.print');
    Route::get('mark-sheet/{id}/student', [MarkSheetController::class, 'getStudent'])->name('mark_sheet.student');

    // marksheet items route
    Route::get('mark-sheet/item/{id}', [MarkSheetItemController::class, 'index'])->name('mark_sheet.item');
    Route::post('mark-sheet/item/{id}', [MarkSheetItemController::class, 'store'])->name('mark_sheet.item.add');
    Route::get('mark-sheet/item/{id}/edit', [MarkSheetItemController::class, 'show'])->name('mark_sheet.item.edit');
    Route::post('mark-sheet/item/{id}/update', [MarkSheetItemController::class, 'update'])->name('mark_sheet.item.update');
    Route::get('mark-sheet/item/{id}/delete', [MarkSheetItemController::class, 'destroy'])->name('mark_sheet.item.delete');

    // exam results routes
    Route::get('results', [ExamResultController::class, 'index'])->name('results');
    Route::post('results', [ExamResultController::class, 'store'])->name('results.add');
    Route::get('results/{id}/edit', [ExamResultController::class, 'show'])->name('results.edit');
    Route::post('results/{id}/update', [ExamResultController::class, 'update'])->name('results.update');
    Route::get('results/{id}/delete', [ExamResultController::class, 'destroy'])->name('results.delete');

    // student promotions routes
    Route::get('promotion', [ClassPromotionController::class, 'index'])->name('promotion');
    Route::post('promotion', [ClassPromotionController::class, 'store'])->name('promotion.add');
    Route::get('promotion/{id}/edit', [ClassPromotionController::class, 'show'])->name('promotion.edit');
    Route::post('promotion/{id}/update', [ClassPromotionController::class, 'update'])->name('promotion.update');
    Route::get('promotion/{id}/delete', [ClassPromotionController::class, 'destroy'])->name('promotion.delete');
    Route::get('promotion/{id}/student', [ClassPromotionController::class, 'getStudent'])->name('promotion.student');


    Route::get('certificates', function () { return 'Certificates'; })->name('certificates');
    // Route::get('promotion', function () { return 'Class Promotion'; })->name('promotion');
});

// Academic Resources
Route::prefix('academic/resources/library')->name('academic.resources.')->group(function () {
    Route::get('/', function () { return 'Library'; })->name('library');
    Route::get('author', function () { return 'Author'; })->name('author');
    Route::get('category', function () { return 'Category'; })->name('category');
    Route::get('shelf', function () { return 'Shelf'; })->name('shelf');
    Route::get('books', function () { return 'Books'; })->name('books');
    Route::get('book_issue', function () { return 'Book Issue'; })->name('book_issue');
    Route::get('book_return', function () { return 'Book Return'; })->name('book_return');
});

Route::prefix('academic/resources/room')->name('academic.resources.')->group(function () {
    Route::get('/', function () { return 'Hostel Rooms'; })->name('room');
});

// Administration
Route::prefix('administration')->name('administration.')->group(function () {
    Route::get('inventory', function () { return 'Inventory Management'; })->name('inventory');
    Route::get('assets', function () { return 'Asset Register'; })->name('assets');
    Route::get('suppliers', function () { return 'Suppliers'; })->name('suppliers');
    Route::get('leave_management', function () { return 'Leave Management'; })->name('leave_management');
    Route::get('attendance_staff', function () { return 'Staff Attendance'; })->name('attendance_staff');
});

// Finance & Accounts
Route::prefix('finance/fees')->name('finance.fees.')->group(function () {
    Route::get('fee_types', function () { return 'Fee Types'; })->name('fee_types');
    Route::get('fee_collection', function () { return 'Fee Collection'; })->name('fee_collection');
    Route::get('student_due', function () { return 'Student Due Reports'; })->name('student_due');
});

Route::prefix('finance/expenses')->name('finance.expenses.')->group(function () {
    Route::get('expense_heads', function () { return 'Expense Heads'; })->name('expense_heads');
    Route::get('expense_list', function () { return 'Expenses'; })->name('expense_list');
});

Route::prefix('finance/salary')->name('finance.salary.')->group(function () {
    Route::get('payroll', function () { return 'Payroll'; })->name('payroll');
    Route::get('salary_sheet', function () { return 'Salary Sheet'; })->name('salary_sheet');
});

Route::get('finance/accounts', function () { return 'Accounts Summary'; })->name('finance.accounts');
Route::get('finance/transactions', function () { return 'Transactions'; })->name('finance.transactions');

// Communication & Collaboration
Route::prefix('communication')->name('communication.')->group(function () {
    Route::get('sms', function () { return 'SMS'; })->name('sms');
    Route::get('email', function () { return 'Email'; })->name('email');
    Route::get('notifications', function () { return 'Notifications'; })->name('notifications');
});

// Reports
Route::prefix('reports')->name('reports.')->group(function () {
    Route::get('student_reports', function () { return 'Student Reports'; })->name('student_reports');
    Route::get('attendance_reports', function () { return 'Attendance Reports'; })->name('attendance_reports');
    Route::get('exam_reports', function () { return 'Exam Reports'; })->name('exam_reports');
    Route::get('finance_reports', function () { return 'Finance Reports'; })->name('finance_reports');
    Route::get('library_reports', function () { return 'Library Reports'; })->name('library_reports');
});

// General Information
Route::prefix('information')->name('information.')->group(function () {
    // site info routes
    Route::get('institute-info', [SiteSettingController::class, 'index'])->name('institute_info');
    Route::post('institute-info', [SiteSettingController::class, 'store'])->name('institute_info.update');

    // news and notices routes
    Route::get('notice-board', [NewsNoticeController::class, 'index'])->name('notice_board');
    Route::post('notice-board', [NewsNoticeController::class, 'store'])->name('notice_board.add');
    Route::get('notice-board/{id}/edit', [NewsNoticeController::class, 'show'])->name('notice_board.edit');
    Route::post('notice-board/{id}/update', [NewsNoticeController::class, 'update'])->name('notice_board.update');
    Route::get('notice-board/{id}/delete', [NewsNoticeController::class, 'destroy'])->name('notice_board.delete');

    // events routes
    Route::get('event-calendar', [NewsNoticeController::class, 'index'])->name('event_calendar');
    Route::post('event-calendar', [NewsNoticeController::class, 'store'])->name('event_calendar.add');
    Route::get('event-calendar/{id}/edit', [NewsNoticeController::class, 'show'])->name('event_calendar.edit');
    Route::post('event-calendar/{id}/update', [NewsNoticeController::class, 'update'])->name('event_calendar.update');
    Route::get('event-calendar/{id}/delete', [NewsNoticeController::class, 'destroy'])->name('event_calendar.delete');


    Route::get('news', [NewsNoticeController::class, 'index'])->name('news');
    Route::post('news', [NewsNoticeController::class, 'store'])->name('news.add');
    Route::get('news/{id}/edit', [NewsNoticeController::class, 'show'])->name('news.edit');
    Route::post('news/{id}/update', [NewsNoticeController::class, 'update'])->name('news.update');
    Route::get('news/{id}/delete', [NewsNoticeController::class, 'destroy'])->name('news.delete');
});

// System Settings
Route::prefix('settings')->name('settings.')->group(function () {
    Route::get('user_roles', function () { return 'User Roles & Permissions'; })->name('user_roles');
    Route::get('users', function () { return 'User Management'; })->name('users');
    Route::get('academic_year', function () { return 'Academic Year'; })->name('academic_year');
    Route::get('system_settings', function () { return 'System Settings'; })->name('system_settings');
    Route::get('email_sms_settings', function () { return 'Email/SMS Configuration'; })->name('email_sms_settings');
    Route::get('backup', function () { return 'Database Backup'; })->name('backup');
    Route::get('language', function () { return 'Language Settings'; })->name('language');
});

// Frontend Pages
Route::prefix('page')->name('page.')->group(function () {
    Route::get('create-page', [PageController::class, 'create'])->name('create_page');
    Route::post('create-page', [PageController::class, 'store'])->name('create_page.add');
    Route::get('create-page/{id}/edit', [PageController::class, 'show'])->name('create_page.edit');
    Route::post('create-page/{id}/update', [PageController::class, 'update'])->name('create_page.update');
    Route::get('create-page/{id}/delete', [PageController::class, 'destroy'])->name('create_page.delete');
    Route::get('manage-page', [PageController::class, 'index'])->name('manage_page');
});


// Menu
Route::prefix('menu')->name('menu.')->group(function () {
    // menu routes
    Route::post('nav', [MenuController::class, 'store'])->name('add');
    Route::get('nav/{id?}', [MenuController::class, 'index'])->name('create');
    Route::post('nav/{id}/update', [MenuController::class, 'update'])->name('update');
    Route::get('nav/{id}/delete', [MenuController::class, 'destroy'])->name('delete');

    Route::get('item/{id}', [MenuItemController::class, 'index'])->name('items');
    Route::post('item/{id}/add', [MenuItemController::class, 'store'])->name('items.add');
});


// Media routes
Route::prefix('media')->name('media.')->group(function(){
    // upload routes
    Route::post('upload', [UploadController::class, 'uploadMultiple'])->name('upload');
    // Sliders
    Route::prefix('slider')->group(function () {
        // slider routes
        Route::get('/', [SliderController::class, 'index'])->name('slider');
        Route::post('slider', [SliderController::class, 'store'])->name('slider.add');
        Route::get('slider/{id}/edit', [SliderController::class, 'show'])->name('slider.edit');
        Route::post('slider/{id}/update', [SliderController::class, 'update'])->name('slider.update');
        Route::get('slider/{id}/delete', [SliderController::class, 'destroy'])->name('slider.delete');

        // slider content routes
        Route::get('content/{slider}/{id?}', [SliderContentController::class, 'index'])->name('slider.content');
        Route::post('content/upload', [SliderContentController::class, 'store'])->name('slider.content.upload');
        Route::post('content/update/{id}', [SliderContentController::class, 'update'])->name('slider.content.update');
    });

    // Gallery
    Route::prefix('gallery')->group(function () {
        Route::get('gallery', function () { return 'Gallery'; })->name('gallery');
        Route::get('content', function () { return 'Gallery Content'; })->name('content');
    });
});



// Public / External Access
Route::prefix('public')->name('public.')->group(function () {
    Route::get('admission_form', function () { return 'Online Admission Form'; })->name('admission_form');
    Route::get('results_portal', function () { return 'Results Portal'; })->name('results_portal');
    Route::get('notices', function () { return 'Public Notices'; })->name('notices');
    Route::get('events', function () { return 'Events'; })->name('events');
    Route::get('downloads', function () { return 'Download Center'; })->name('downloads');
});

// Address routes
Route::prefix('address')->name('address.')->group(function(){
    Route::get('division/{id?}', [AddressController::class, 'division'])->name('division');
    Route::get('district/{id?}', [AddressController::class, 'district'])->name('district');
    Route::get('thana/{id?}', [AddressController::class, 'thana'])->name('thana');
    Route::get('union/{id?}', [AddressController::class, 'union'])->name('union');
});
