<?php

use App\Http\Controllers\Api\V1\AdmissionController;
use App\Http\Controllers\Api\V1\ExamAdmitCardController;
use App\Http\Controllers\Auth\AuthController;
use App\Http\Controllers\Site\SiteController;
use App\Models\District;
use App\Models\Division;
use App\Models\Thana;
use App\Models\Union;
use Illuminate\Support\Facades\Route;

Route::get('/', [SiteController::class, 'home'])->name('home');
Route::get('/language/{lang}', [SiteController::class, 'lang'])->name('lang');

Route::prefix('auth')->group(function(){
    Route::get('register', [SiteController::class, 'register'])->name('register');
    Route::get('login', [SiteController::class, 'login'])->name('login');
    Route::post('login', [AuthController::class, 'login'])->name('login.action');
});

Route::get('/admission', [AdmissionController::class, 'newAdmission'])->name('admission');

Route::get('admit/download/{id?}', [ExamAdmitCardController::class, 'download']);


Route::get('page/{slug?}', [SiteController::class, 'page'])->name('page');

Route::post('upload-quill-image', [SiteController::class, 'quillUpload']);


Route::get('json/{file}', function($file){
    $path = "static/json/{$file}.json";
    $files = json_decode(file_get_contents($path),true);

    $model = $file == 'division' ? Division::class : ($file == 'district' ? District::class : ($file == 'thana' ? Thana::class : Union::class));

    foreach($files as $key => $item){
        $model::create($item);
    }
});

Route::get('lang', function(){
// Start Frontend Translation
// Start Front end translation
$_lang['home'] = 'হোম';
$_lang['menu'] = 'মেনু';
$_lang['profile'] = 'প্রফাইল';
$_lang['password'] = 'পাসওয়ার্ড';
$_lang['password_recovery'] = 'পাসওয়ার্ড পুনরুদ্ধার';
$_lang['send_code'] = 'কোড পাঠান';
$_lang['select_account'] = 'আপনার অ্যাকাউন্ট নির্বাচন করুন';
$_lang['campus'] = "ক্যাম্পাস";
$_lang['about_us'] = 'আমাদের সম্পর্কে';
$_lang['history'] = "ইতিহাস";
$_lang['aim_objectiv'] = 'লক্ষ্য ও উদ্দেশ্য';
$_lang['institutional_structure'] = 'প্রাতিষ্ঠানিক কাঠামো';
$_lang['information_purity'] = 'শুদ্ধাচার সংক্রান্ত তথ্য';
$_lang['admission'] = 'ভর্তি';
$_lang['how_to_apply'] = 'কিভাবে আবেদন করতে হবে';
$_lang['application'] = 'আবেদন';
$_lang['admission_test'] = 'ভর্তি পরীক্ষা';
$_lang['admission_policy'] = 'ভর্তি নীতি';
$_lang['current_education_system'] = 'বর্তমান শিক্ষা ব্যবস্থা';
$_lang['departments'] = "বিভাগসমূহ ";
$_lang['department'] = 'বিভাগ';
$_lang['department_head'] = 'বিভাগিও প্রধান';
$_lang['administration'] = 'প্রশাসন';
$_lang['the_principal'] = 'অধ্যক্ষ';
$_lang['principal_name'] = 'অধ্যক্ষের নাম';
$_lang['vice_principal'] = 'সহ অধ্যক্ষ';
$_lang['our_teachers'] = 'আমাদের শিক্ষকগণ';
$_lang['governing_body'] = 'পরিচালনা পর্ষদ';
$_lang['chairman'] = 'চেয়ারম্যান';
$_lang['teacher'] = 'শিক্ষক';
$_lang['teachers'] = 'শিক্ষকগণ';
$_lang['staff'] = 'কর্মচারী';
$_lang['our_employees'] = "আমাদের কর্মচারী";
$_lang['academic_activities'] = "একাডেমিক কার্যক্রম";
$_lang['classification'] = 'শ্রেণিসূচি';
$_lang['online_class_schedule'] = 'অনলাইন শ্রেণিসূচি';
$_lang['exam_schedule'] = 'পরীক্ষার সময়সূচি';
$_lang['academic_syllabus'] = 'একাডেমিক সিলোবাস';
$_lang['education_calendar'] = 'শিক্ষা বর্ষপঞ্জি';
$_lang['student'] = "শিক্ষার্থী";
$_lang['student_uniform'] = 'শিক্ষার্থী ইউনিফর্ম';
$_lang['test_system'] = 'পরীক্ষা ব্যবস্থা';
$_lang['rules_and_regulation'] = 'নিয়ম এবং প্রবিধান';
$_lang['our_students'] = 'আমাদের শিক্ষার্থী';
$_lang['results'] = 'ফলাফল';
$_lang['internal_result'] = 'অভ্যন্তরীণ পরীক্ষার ফলাফল';
$_lang['board_result'] = 'বোর্ড পরীক্ষার ফলাফল';
$_lang['national_result'] = 'জাতীয় বিশ্ববিদ্যালয়ের ফলাফল';
$_lang['make_profile'] = 'প্রফাইল তৈরী করুন';
$_lang['login_profile'] = 'প্রফাইলে প্রবেশ করুন';
$_lang['more'] = 'আরও';
$_lang['gallery'] = 'গ্যালারি';
$_lang['photo_gallery'] = 'ফটো গ্যালারি';
$_lang['video_gallery'] = 'ভিডিও গ্যালারি';
$_lang['resource'] = 'সম্পদ';
$_lang['digital_class'] = 'ডিজিটাল ক্লাস';
$_lang['library'] = 'গ্রন্থাগার';
$_lang['computer_lab'] = 'কম্পিউটার ল্যাব';
$_lang['user_dashboard'] = 'User Dashboard';
$_lang['dashboard'] = 'ড্যাশবোর্ড';
$_lang['playground'] = 'খেলার মাঠ';
$_lang['all_notice'] = 'সকল নোটিশ';
$_lang['notice'] = 'নোটিশ';
$_lang['latest'] = 'সর্বশেষ';
$_lang['news'] = 'খবর';
$_lang['all_news'] = 'সকল খবর';
$_lang['all_assignments'] = 'সকল অ্যাসাইনমেন্ট';
$_lang['assignments'] = 'অ্যাসাইনমেন্ট';
$_lang['routine'] = 'রুটিন';
$_lang['download'] = 'ডাউনলোড';
$_lang['job_placement'] = 'জব প্লেসমেন্ট';
$_lang['events'] = 'ইভেন্টস';
$_lang['events_holidays'] = 'ইভেন্ট এবং ছুটির দিন';
$_lang['news_notice'] = 'খবর এবং বিজ্ঞপ্তি';
$_lang['contact_us'] = 'যোগাযোগ করুন';
$_lang['ministry_of_education'] = 'শিক্ষা মন্ত্রণালয় ';
$_lang['dir_seconday_higher_edu'] = 'মাধ্যমিক ও উচ্চশিক্ষা অধিদপ্তর ';
$_lang['national_university'] = 'জাতীয় বিশ্ববিদ্যালয় ';
$_lang['dir_seconday_higher_dep'] = 'মাধ্যমিক ও উচ্চ শিক্ষা বিভাগ ';
$_lang['bteb'] = 'বাংলাদেশ কারিগরি শিক্ষা বোর্ড ';
$_lang['pm_office'] = 'প্রধানমন্ত্রীর কার্যালয়';
$_lang['cabinet'] = 'মন্ত্রিপরিষদ বিভাগ ';
$_lang['importance_link'] = 'গুরুত্বপূর্ণ লিঙ্ক';
$_lang['national_antham'] = 'জাতীয় সংগীত';
$_lang['emergency_line'] = 'জরুরি হটলাইন';
$_lang['my_government'] = 'আমার সরকার';
$_lang['send_message'] = 'বার্তা পাঠান';
$_lang['message'] = 'বার্তা';
$_lang['copy'] = 'কপিরাইট';
$_lang['bangla'] = 'বাংলা';
$_lang['english'] = 'ইংরেজি';
$_lang['language'] = 'ভাষা';
$_lang['names'] = 'নাম';
$_lang['age'] = 'বয়স';
$_lang['sex'] = 'লিঙ্গ';
$_lang['religion'] = 'ধর্ম';
$_lang['phones'] = 'মুঠোফোন';
$_lang['email'] = 'ইমেইল';
$_lang['addres'] = 'ঠিকানা';
$_lang['birthday'] = 'জন্ম তারিখ';
$_lang['joining_day'] = 'যোগদানের তারিখ';
$_lang['department'] = 'বিভাগ';
$_lang['ask_him_her'] = 'তাকে জিজ্ঞাসা করুন';
$_lang['details'] = 'বিস্তারিত';
$_lang['class'] = 'শ্রেণি';
$_lang['titles'] = 'শিরোনাম';
$_lang['subject'] = 'বিষয়';
$_lang['logout'] = 'লগআউট';
$_lang['author'] = 'লেখক';
$_lang['admin'] = 'এ্যাডমিন';
$_lang['commitee'] = 'কমিটি';
$_lang['publisher'] = 'প্রকাশক';
$_lang['asset_type'] = 'সম্পদের ধরন';
$_lang['purchase_date'] = 'ক্রয় তারিখ';
$_lang['price'] = 'মূল্য';
$_lang['status'] = 'অবস্থা';
$_lang['co_curricular'] = 'সহপাঠ্যক্রম';



// application form
$_lang['application_title'] = 'শিক্ষার্থীর আবেদনপত্র';
$_lang['student_information'] = 'শিক্ষার্থীদের তথ্য';
$_lang['student_name'] = 'শিক্ষার্থীর নাম';
$_lang['student_father'] = 'পিতার নাম';
$_lang['student_mother'] = 'মাতার নাম ';
$_lang['student_birth_certificate'] = 'জন্ম সনদের নম্বর';
$_lang['student_father_nid'] = 'পিতার এনআইডি নম্বর';
$_lang['student_mother_nid'] = 'মাতার এনআইডি নম্বর';
$_lang['student_father_mobile'] = 'পিতার মোবাইল নম্বর ';
$_lang['student_mother_mobile'] = 'মাতার মোবাইল নম্বর';
$_lang['fathers'] = 'পিতার';
$_lang['mothers'] = 'মাতার';
$_lang['birth_date'] = 'জন্ম তারিখ';
$_lang['present_address'] = 'স্থায়ী ঠিকানা';
$_lang['current_address'] = 'বর্তমান ঠিকানা';
$_lang['division'] = 'বিভাগ';
$_lang['zilla'] = 'জেলা';
$_lang['thana'] = 'উপজেলা';
$_lang['area'] = 'পৌরসভা/ইউনিয়ন/সিটি কর্পোরেশন';
$_lang['post_code'] = 'ডাকঘর';
$_lang['village'] = 'ঠিকানা/গ্রাম';
$_lang['previous_education'] = 'পূর্ববর্তী শিক্ষা তথ্য';
$_lang['passed_year'] = 'উত্তীর্ণ হওয়ার বছর';
$_lang['technology'] = 'টেকনোলজি/ট্রেড';
$_lang['previous_exam'] = 'পূর্ববর্তী পরীক্ষার নাম ';
$_lang['institute_name'] = 'প্রতিষ্ঠানের নাম';
$_lang['board_university'] = 'বোর্ড/বিশ্ববিদ্যালয়';
$_lang['registration_number'] = 'নিবন্ধন নম্বর';
$_lang['roll'] = 'রোল';
$_lang['session'] = 'সেশন';
$_lang['registration_date'] = 'নিবন্ধনের তারিখ';
$_lang['blood_group'] = 'রক্তের গ্রুপ';
$_lang['result'] = 'ফলাফল প্রদান করুন';
$_lang['result_type'] = 'ফলাফলের ধরন';
$_lang['parent_information'] = 'অভিভাবকের তথ্য';
$_lang['student_relation'] = 'সম্পর্ক';
$_lang['gurdian_name'] = 'অভিভাবকের নাম';
$_lang['gurdian_nid'] = 'অভিভাবকের এনআইডি নম্বর';
$_lang['gurdian_phone'] = 'অভিভাবকের মোবাইল নম্বর';
$_lang['gurdian_birth_date'] = 'অভিভাবকের জন্ম তারিখ';
$_lang['eligibility_condition'] = 'যোগ্যতার শর্ত এবং সংযুক্তি';
$_lang['cost_bear'] = 'পড়াশুনার খরচ বহন করবে কে?';
$_lang['freedom_family'] = 'আবেদনকারী কি মুক্তিযোদ্ধা পরিবারের সন্তান (মুক্তিযোদ্ধা প্রজন্ম)?';
$_lang['physical_disability'] = 'আবেদনকারীর কি কোন শারীরিক প্রতিবন্ধকতা আছে?';
$_lang['ethinic_minority'] = 'আবেদনকারী কি বাংলাদেশের কোনও ক্ষুদ্র নৃগোষ্ঠীর অন্তর্ভুক্ত?';
$_lang['is_stipend'] = 'আবেদনকারী কি অন্য কোন উৎস হতে বৃত্তি/উপবৃত্তি পান?';
$_lang['applicant_photo'] = 'আবেদনকারীর ছবি';
$_lang['relevent_certificate'] = 'সংশ্লিষ্ট সনদ বা প্রয়োজনীয় সনদ';
$_lang['attach_applicant_photo'] = 'আবেদনকারীর ছবি সংযুক্ত করুন ';
$_lang['attach_file'] = 'ফাইল সংযুক্ত করুন';
$_lang['attached_file'] = 'সংযুক্ত ফাইল';
$_lang['max_size'] = '(সর্বাধিক অনুমোদিত সাইজ ৫১২ কে.বি এবং কেবলমাত্র .jpg, .jpeg এবং .png ফর্ম্যাটটি সমর্থিত।)';
$_lang['psc'] = 'পিএসসি';
$_lang['jsc'] = 'জেএসসি';
$_lang['ssc'] = 'এসএসসি';
$_lang['hsc'] = 'এইচএসসি';
$_lang['degree'] = 'ডিগ্রী';
$_lang['honours'] = 'অনার্স';
$_lang['bsc'] = 'বিএসসি';
$_lang['mother'] = 'মাতা';
$_lang['father'] = 'পিতা';
$_lang['gurdian'] = 'অভিভাবক';
$_lang['brother'] = 'ভাই';
$_lang['sister'] = 'বোন';
$_lang['others'] = 'অন্যান্য';
$_lang['yes'] = 'হ্যা';
$_lang['no'] = 'না';
$_lang['men'] = 'পুরুষ';
$_lang['women'] = 'মহিলা';
$_lang['gpa'] = "জিপিএ";
$_lang['cgpa'] = 'সিজিপিএ';
$_lang['submits'] = 'জমা দিন';
$_lang['new_password'] = 'নতুন পাসওয়ার্ড';
$_lang['confirm_password'] = 'পাসওয়ার্ড পুনরায় লিখুন';
$_lang['create'] = "তৈরী করুন";
$_lang['cancel'] = 'বাতিল করুন';
$_lang['save_changes'] = 'সংরক্ষণ করুন';
$_lang['already_have_account'] = "ইতিমধ্যে একটি সদস্যপদ আছে";
$_lang['login_here'] = "এখানে লগইন করুন";
$_lang['forgot_password'] = "পাসওয়ার্ড ভুলে গেছেন";
$_lang['retrieve_here'] = "এখানে পুনরুদ্ধার করুন";



// boards
$_lang['bteb'] = 'বাংলাদেশ কারিগরি শিক্ষা বোর্ড';
$_lang['bmeb'] = 'বাংলাদেশ মাদ্রাসা শিক্ষা বোর্ড';
$_lang['din'] = 'মাধ্যমিক ও উচ্চ মাধ্যমিক শিক্ষা বোর্ড, দিনাজপুর';
$_lang['dhk'] = 'মাধ্যমিক ও উচ্চমাধ্যমিক শিক্ষা বোর্ড, ঢাকা';
$_lang['ctg'] = 'মাধ্যমিক ও উচ্চ মাধ্যমিক শিক্ষা বোর্ড, চট্টগ্রাম';
$_lang['cml'] = 'মাধ্যমিক ও উচ্চমাধ্যমিক শিক্ষা বোর্ড, কুমিল্লা';
$_lang['raj'] = 'মাধ্যমিক ও উচ্চ মাধ্যমিক শিক্ষা বোর্ড, রাজশাহী';
$_lang['jsh'] = 'মাধ্যমিক ও উচ্চ মাধ্যমিক শিক্ষা বোর্ড, যশোর';
$_lang['brl'] = 'মাধ্যমিক ও উচ্চ মাধ্যমিক শিক্ষা বোর্ড, বরিশাল';
$_lang['syl'] = 'মাধ্যমিক ও উচ্চমাধ্যমিক শিক্ষা বোর্ড,সিলেট';

// End Frontend Translation

// Start Admin Translation
$_lang['admin'] = 'অ্যাডমিন';
$_lang['root_information'] = 'প্রধান তথ্য';
$_lang['commities'] = 'কমিটি';
$_lang['students'] = 'শিক্ষার্থী';
$_lang['pages'] = 'পৃষ্ঠা';
$_lang['edit'] = 'সম্পাদনা করুন';
$_lang['open'] = 'দেখুন';
$_lang['invoice'] = 'চালান';
$_lang['sms'] = 'এস এম এস';
$_lang['payments'] = 'পেমেন্ট';
$_lang['salary'] = 'বেতন';
$_lang['address'] = 'ঠিকানা';
$_lang['slogan'] = 'স্লোগান';
$_lang['institute_code'] = 'ইনস্টিটিউট কোড';
$_lang['eiin'] = 'ইআাইআইএন কোড';
$_lang['first_name'] = 'নামের প্রথম অংশ';
$_lang['last_name'] = 'নামের শেষাংশ';
$_lang['designation'] = 'উপাধি';
$_lang['upload_photo'] = 'ছবি আপলোড';
$_lang['education'] = 'শিক্ষাগত যোগ্যতা';
$_lang['add_new'] = 'নতুন যোগ করুন';
$_lang['identity'] = 'পরিচয় সংখ্যা';
$_lang['page_content'] = 'পৃষ্ঠা বিষয়বস্তু';
$_lang['title'] = 'শিরোনাম';
$_lang['year'] = 'বছর';
$_lang['type'] = 'প্রকার';
$_lang['user_id'] = 'ব্যবহারকারীর আইডি';
$_lang['starting_year'] = 'শুরুর বছর';
$_lang['student_capacity'] = 'শিক্ষার্থীর ধারণক্ষমতা';
$_lang['shift'] = 'শিফট';
$_lang['date'] = 'তারিখ';
$_lang['head_person'] = 'প্রধান ব্যক্তি';
$_lang['exam'] = 'পরীক্ষা';
$_lang['attendence'] = 'উপস্থিতি';
$_lang['exam_name'] = 'পরীক্ষার নাম';
$_lang['examinee'] = 'পরীক্ষার্থী';
$_lang['section'] = 'শাখা';
$_lang['result_in_cgpa'] = 'সিজিপিএ-তে ফলাফল যোগ করুন';
$_lang['result_in_gpa'] = 'জিপিএ-তে ফলাফল যোগ করুন';
$_lang['subject_name'] = 'বিষয়ের নাম';
$_lang['subject_code'] = 'বিষয় কোড';
$_lang['student_id'] = 'শিক্ষার্থী আইডি';
$_lang['written_mark'] = 'লিখিত মার্ক';
$_lang['mcq_mark'] = 'এমসিকিউ মার্ক';
$_lang['practical'] = 'ব্যবহারিক';
$_lang['credit'] = 'ক্রেডিট';
$_lang['grade'] = 'গ্রেড';
$_lang['remove'] = 'মুছুন';
$_lang['album'] = 'অ্যালবাম';
$_lang['slider'] = 'স্লাইডার';
$_lang['group'] = 'গ্রুপ';
$_lang['start_date'] = "শুরু তারিখ";
$_lang['submit_date'] = "জমা দেওয়ার তারিখ";
$_lang['end_date'] = "শেষ তারিখ";
$_lang['received_at'] = "গৃহীত তারিখ";
$_lang['trxn'] = "টিআরএক্সএন";
$_lang['amount'] = 'মোট মূল্য';
$_lang['invoice_status'] = 'চালানের স্থিতি';
$_lang['payment_status'] = 'লেনদেনের অবস্থা';
$_lang['fee'] = 'ফি';
$_lang['payment'] = "পেমেন্ট";
$_lang['all'] = 'সব দেখুন';
$_lang['inbox'] = 'ইনবক্স';
$_lang['refference'] = 'রেফারেন্স';


$data  = [];
foreach($_lang as $key => $value){
    $data[] = "$key => $value";
}

return response($_lang);
});
