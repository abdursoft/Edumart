@extends('layouts.form')

@section('title', 'New admission')

@section('meta')
    {{ metaContent('Online admission', 'This is the admission page of the website.', theme_asset('images/home-banner.jpg'), 'admission, new admission, eduCraft') }}
@endsection

@section('content')

    <div class="w-full max-w-7xl">
        <div class="w-full px-2 md:px-5 rounded-md bg-white shadow-md py-5">
            <form method="post" enctype="multipart/form-data" id="applicationForm">
                <div class="row">
                    <div class="w-full">
                        <div class="w-full">
                            <h3 class="text-left text-lg md:text-xl lg:text:2xl ">{{ text('student_information') }}</h3>
                            <hr class="text-gray-300 mb-3">
                        </div>
                        <div class="w-full grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
                            <div class="w-full">
                                <div class="flex flex-col w-full">
                                    <label for="name_bangla"
                                        style="text-transform: capitalize !important;">{{ text('student_name') . '(' . text('bangla') . ')' }}*
                                    </label>
                                    <input type="text" required name="name_bangla"
                                        class="w-full border-[0.5px] border-gray-300 focus:outline-red-500 focus:outline-1 rounded-[4px] px-2 py-1"
                                        id="name_bangla">
                                </div>
                                <div class="flex flex-col w-full">
                                    <label for="name_english"
                                        style="text-transform: capitalize !important;">{{ text('student_name') . '(' . text('english') . ')' }}*
                                    </label>
                                    <input type="text" name="name_english" required
                                        class="w-full border-[0.5px] border-gray-300 focus:outline-red-500 focus:outline-1 rounded-[4px] px-2 py-1"
                                        id="name_english">
                                </div>
                                <div class="flex flex-col w-full">
                                    <label for="birth_certificate_number"
                                        style="text-transform: capitalize !important;">{{ text('student_birth_certificate') }}*
                                    </label>
                                    <input type="text" name="birth_certificate_number"
                                        class="w-full border-[0.5px] border-gray-300 focus:outline-red-500 focus:outline-1 rounded-[4px] px-2 py-1"
                                        id="birth_certificate_number">
                                </div>
                                <div class="flex flex-col w-full">
                                    <label for="birth_date"
                                        style="text-transform: capitalize !important;">{{ text('birth_date') }}
                                    </label>
                                    <input type="text" name="birth_date" required id="birth_date"
                                        class="w-full border-[0.5px] border-gray-300 focus:outline-red-500 focus:outline-1 rounded-[4px] px-2 py-1">
                                </div>
                                <div class="flex flex-col w-full">
                                    <label for="gender" style="text-transform: capitalize !important;"> {{ text('sex') }}*
                                    </label>
                                    <select
                                        class="w-full border-[0.5px] border-gray-300 focus:outline-red-500 focus:outline-1 rounded-[4px] px-2 py-1"
                                        id="gender" name="gender" required>
                                        <option value="men" selected>{{ text('men') }}</option>
                                        <option value="women">{{ text('women') }}</option>
                                        <option value="others">{{ text('others') }}</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="flex flex-col w-full">
                                    <label for="father_bangla"
                                        style="text-transform: capitalize !important;">{{ text('student_father') . '(' . text('bangla') . ')' }}*
                                    </label>
                                    <input type="text" name="father_bangla" required
                                        class="w-full border-[0.5px] border-gray-300 focus:outline-red-500 focus:outline-1 rounded-[4px] px-2 py-1"
                                        id="father_bangla">
                                </div>
                                <div class="flex flex-col w-full">
                                    <label for="father_english"
                                        style="text-transform: capitalize !important;">{{ text('student_father') . '(' . text('english') . ')' }}*
                                    </label>
                                    <input type="text" name="father_english" required
                                        class="w-full border-[0.5px] border-gray-300 focus:outline-red-500 focus:outline-1 rounded-[4px] px-2 py-1"
                                        id="father_english">
                                </div>
                                <div class="flex flex-col w-full">
                                    <label for="father_nid"
                                        style="text-transform: capitalize !important;">{{ text('student_father_nid') }}
                                    </label>
                                    <input type="text" name="father_nid" required
                                        class="w-full border-[0.5px] border-gray-300 focus:outline-red-500 focus:outline-1 rounded-[4px] px-2 py-1"
                                        id="father_nid">
                                </div>
                                <div class="flex flex-col w-full">
                                    <label for="father_birth_date"
                                        style="text-transform: capitalize !important;">{{ text('fathers') . '(' . text('birth_date') . ')' }}
                                    </label>
                                    <input type="text" name="father_birth_date" required id="father_birth_date"
                                        class="w-full border-[0.5px] border-gray-300 focus:outline-red-500 focus:outline-1 rounded-[4px] px-2 py-1">
                                </div>
                                <div class="flex flex-col w-full">
                                    <label for="father_mobile"
                                        style="text-transform: capitalize !important;">{{ text('student_father_mobile') }}
                                    </label>
                                    <input type="text" name="father_mobile" required
                                        class="w-full border-[0.5px] border-gray-300 focus:outline-red-500 focus:outline-1 rounded-[4px] px-2 py-1"
                                        id="father_mobile">
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="flex flex-col w-full">
                                    <label for="mother_bangla"
                                        style="text-transform: capitalize !important;">{{ text('student_mother') . '(' . text('bangla') . ')' }}*
                                    </label>
                                    <input type="text" name="mother_bangla" required
                                        class="w-full border-[0.5px] border-gray-300 focus:outline-red-500 focus:outline-1 rounded-[4px] px-2 py-1"
                                        id="mother_bangla">
                                </div>
                                <div class="flex flex-col w-full">
                                    <label for="mother_english"
                                        style="text-transform: capitalize !important;">{{ text('student_mother') . '(' . text('english') . ')' }}
                                        *
                                    </label>
                                    <input type="text" name="mother_english" required
                                        class="w-full border-[0.5px] border-gray-300 focus:outline-red-500 focus:outline-1 rounded-[4px] px-2 py-1"
                                        id="mother_english">
                                </div>
                                <div class="flex flex-col w-full">
                                    <label for="mother_nid"
                                        style="text-transform: capitalize !important;">{{ text('student_mother_nid') }}
                                    </label>
                                    <input type="text" name="mother_nid" required
                                        class="w-full border-[0.5px] border-gray-300 focus:outline-red-500 focus:outline-1 rounded-[4px] px-2 py-1"
                                        id="mother_nid">
                                </div>
                                <div class="flex flex-col w-full">
                                    <label for="mother_birth_date"
                                        style="text-transform: capitalize !important;">{{ text('mothers') . ' ' . text('birth_date') }}
                                    </label>
                                    <input type="text" name="mother_birth_date" required id="mother_birth_date"
                                        class="w-full border-[0.5px] border-gray-300 focus:outline-red-500 focus:outline-1 rounded-[4px] px-2 py-1">
                                </div>
                                <div class="flex flex-col w-full">
                                    <label for="mother_mobile"
                                        style="text-transform: capitalize !important;">{{ text('student_mother_mobile') }}
                                    </label>
                                    <input type="text" name="mother_mobile" required
                                        class="w-full border-[0.5px] border-gray-300 focus:outline-red-500 focus:outline-1 rounded-[4px] px-2 py-1"
                                        id="mother_mobile">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="w-full grid grid-cols-1 md:grid-cols-2 gap-6 mt-3">
                        <div class="w-full">
                            <h3 class="text-center text-lg md:text-xl lg:text:2xl ">{{ text('present_address') }}</h3>
                            <hr class="text-gray-300 mb-3">
                            <div class="w-full grid grid-cols-1 md:grid-cols-2 gap-3">
                                <div class="flex flex-col w-full">
                                    <label for="permanent_division"
                                        style="text-transform: capitalize !important;">{{ text('division') }}
                                    </label>
                                    <select
                                        class="w-full border-[0.5px] border-gray-300 focus:outline-red-500 focus:outline-1 rounded-[4px] px-2 py-1 permanent_division"
                                        id="permanent_division" name="permanent_division" required>
                                    </select>
                                </div>
                                <div class="flex flex-col w-full">
                                    <label for="permanent_zilla"
                                        style="text-transform: capitalize !important;">{{ text('zilla') }}
                                    </label>
                                    <select
                                        class="w-full border-[0.5px] border-gray-300 focus:outline-red-500 focus:outline-1 rounded-[4px] px-2 py-1 permanent_zilla"
                                        id="permanent_zilla" name="permanent_zilla" required>
                                    </select>
                                </div>
                                <div class="flex flex-col w-full">
                                    <label for="permanent_thana"
                                        style="text-transform: capitalize !important;">{{ text('thana') }}
                                    </label>
                                    <select
                                        class="w-full border-[0.5px] border-gray-300 focus:outline-red-500 focus:outline-1 rounded-[4px] px-2 py-1 permanent_thana"
                                        id="permanent_thana" name="permanent_thana" required>
                                    </select>
                                </div>
                                <div class="flex flex-col w-full">
                                    <label for="permanent_union" style="text-transform: capitalize !important;">
                                        {{ text('area') }}
                                    </label>
                                    <select
                                        class="w-full border-[0.5px] border-gray-300 focus:outline-red-500 focus:outline-1 rounded-[4px] px-2 py-1 permanent_union"
                                        id="permanent_union" name="permanent_union" required>
                                    </select>
                                </div>
                                <div class="flex flex-col w-full">
                                    <label for="permanent_post"
                                        style="text-transform: capitalize !important;">{{ text('post_code') }}
                                    </label>
                                    <input type="text" name="permanent_post" required
                                        class="w-full border-[0.5px] border-gray-300 focus:outline-red-500 focus:outline-1 rounded-[4px] px-2 py-1"
                                        id="">
                                </div>
                                <div class="flex flex-col w-full">
                                    <label for="permanent_address"
                                        style="text-transform: capitalize !important;">{{ text('village') }}
                                    </label>
                                    <input type="text" name="permanent_address" required
                                        class="w-full border-[0.5px] border-gray-300 focus:outline-red-500 focus:outline-1 rounded-[4px] px-2 py-1"
                                        id="permanent_address">
                                </div>
                            </div>
                        </div>
                        <div class="w-full">
                            <h3 class="text-center text-lg md:text-xl lg:text:2xl ">{{ text('current_address') }}</h3>
                            <hr class="text-gray-300 mb-3">
                            <div class="w-full grid grid-cols-1 md:grid-cols-2 gap-3">
                                <div class="flex flex-col w-full">
                                    <label for="current_division"
                                        style="text-transform: capitalize !important;">{{ text('division') }}
                                    </label>
                                    <select
                                        class="w-full border-[0.5px] border-gray-300 focus:outline-red-500 focus:outline-1 rounded-[4px] px-2 py-1 current_division"
                                        id="current_division" name="current_division" required>
                                    </select>
                                </div>
                                <div class="flex flex-col w-full">
                                    <label for="current_zilla"
                                        style="text-transform: capitalize !important;">{{ text('zilla') }}
                                    </label>
                                    <select
                                        class="w-full border-[0.5px] border-gray-300 focus:outline-red-500 focus:outline-1 rounded-[4px] px-2 py-1 current_zilla"
                                        id="current_zilla" name="current_zilla" required>
                                    </select>
                                </div>
                                <div class="flex flex-col w-full">
                                    <label for="current_thana"
                                        style="text-transform: capitalize !important;">{{ text('thana') }}
                                    </label>
                                    <select
                                        class="w-full border-[0.5px] border-gray-300 focus:outline-red-500 focus:outline-1 rounded-[4px] px-2 py-1 current_thana"
                                        id="current_thana" name="current_thana" required>
                                    </select>
                                </div>
                                <div class="flex flex-col w-full">
                                    <label for="current_union" style="text-transform: capitalize !important;">
                                        {{ text('area') }}
                                    </label>
                                    <select
                                        class="w-full border-[0.5px] border-gray-300 focus:outline-red-500 focus:outline-1 rounded-[4px] px-2 py-1 current_union"
                                        id="current_union" name="current_union" required>
                                    </select>
                                </div>
                                <div class="flex flex-col w-full">
                                    <label for="current_post"
                                        style="text-transform: capitalize !important;">{{ text('post_code') }}
                                    </label>
                                    <input type="text" name="current_post" required
                                        class="w-full border-[0.5px] border-gray-300 focus:outline-red-500 focus:outline-1 rounded-[4px] px-2 py-1"
                                        id="current_post">
                                </div>
                                <div class="flex flex-col w-full">
                                    <label for="current_address"
                                        style="text-transform: capitalize !important;">{{ text('village') }}
                                    </label>
                                    <input type="text" name="current_address" required
                                        class="w-full border-[0.5px] border-gray-300 focus:outline-red-500 focus:outline-1 rounded-[4px] px-2 py-1"
                                        id="current_address">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="w-full mt-3">
                        <div class="w-full">
                            <h3 class="text-center text-lg md:text-xl lg:text:2xl ">{{ text('previous_education') }}* </h3>
                            <hr class="text-gray-300 mb-3">
                            <div class="w-full">
                                <div class="w-full grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-2 md:gap-4">
                                    <div class="flex flex-col w-full">
                                        <label for="previous_division"
                                            style="text-transform: capitalize !important;">{{ text('division') }}
                                        </label>
                                        <select
                                            class="w-full border-[0.5px] border-gray-300 focus:outline-red-500 focus:outline-1 rounded-[4px] px-2 py-1 previous_division"
                                            id="previous_division" name="previous_division" required>
                                        </select>
                                    </div>
                                    <div class="flex flex-col w-full">
                                        <label for="previous_zill"
                                            style="text-transform: capitalize !important;">{{ text('zilla') }}
                                        </label>
                                        <select
                                            class="w-full border-[0.5px] border-gray-300 focus:outline-red-500 focus:outline-1 rounded-[4px] px-2 py-1 previous_zilla"
                                            id="previous_zilla" name="previous_zilla" required></select>
                                    </div>
                                    <div class="flex flex-col w-full">
                                        <label for="previous_thana"
                                            style="text-transform: capitalize !important;">{{ text('thana') }}
                                        </label>
                                        <select
                                            class="w-full border-[0.5px] border-gray-300 focus:outline-red-500 focus:outline-1 rounded-[4px] px-2 py-1 previous_thana"
                                            id="previous_thana" name="previous_thana" required> </select>
                                    </div>
                                    <div class="flex flex-col w-full">
                                        <label for="previous_institute" style="text-transform: capitalize !important;">-
                                            {{ text('institute_name') }} -
                                        </label>
                                        <input type="text" name="previous_institute" required
                                            class="w-full border-[0.5px] border-gray-300 focus:outline-red-500 focus:outline-1 rounded-[4px] px-2 py-1"
                                            id="previous_institute">
                                    </div>
                                    <div class="flex flex-col w-full">
                                        <label for="previous_board"
                                            style="text-transform: capitalize !important;">{{ text('board_university') }}*
                                        </label>
                                        <input type="text" name="previous_board" required
                                            class="w-full border-[0.5px] border-gray-300 focus:outline-red-500 focus:outline-1 rounded-[4px] px-2 py-1"
                                            id="previous_board">
                                    </div>
                                    <div class="flex flex-col w-full">
                                        <label for="previous_result_type" style="text-transform: capitalize !important;">
                                            {{ text('result_type') }}*
                                        </label>
                                        <select
                                            class="w-full border-[0.5px] border-gray-300 focus:outline-red-500 focus:outline-1 rounded-[4px] px-2 py-1"
                                            id="previous_result_type" name="previous_result_type" required>
                                            <option value="gpa">{{ text('gpa') }}</option>
                                            <option value="cgpa">{{ text('cgpa') }}</option>
                                        </select>
                                    </div>
                                    <div class="flex flex-col w-full">
                                        <label for="previous_passing_year"
                                            style="text-transform: capitalize !important;">-
                                            {{ text('passed_year') }} - *
                                        </label>
                                        <input type="text" name="previous_passing_year" required
                                            class="w-full border-[0.5px] border-gray-300 focus:outline-red-500 focus:outline-1 rounded-[4px] px-2 py-1"
                                            id="previous_passing_year">
                                    </div>
                                    <div class="flex flex-col w-full">
                                        <label for="previous_technology" style="text-transform: capitalize !important;">-
                                            {{ text('technology') }}*
                                        </label>
                                        <input type="text" name="previous_technology" required
                                            class="w-full border-[0.5px] border-gray-300 focus:outline-red-500 focus:outline-1 rounded-[4px] px-2 py-1"
                                            id="previous_technology">
                                    </div>
                                    <div class="flex flex-col w-full">
                                        <label for="previous_exam" style="text-transform: capitalize !important;">-
                                            {{ text('previous_exam') }}*
                                        </label>
                                        <input type="text" name="previous_exam" required placeholder=""
                                            class="w-full border-[0.5px] border-gray-300 focus:outline-red-500 focus:outline-1 rounded-[4px] px-2 py-1"
                                            id="previous_exam">
                                    </div>
                                    <div class="flex flex-col w-full">
                                        <label for="previous_registration"
                                            style="text-transform: capitalize !important;">{{ text('registration_number') }}*
                                        </label>
                                        <input type="text" name="previous_registration" required
                                            class="w-full border-[0.5px] border-gray-300 focus:outline-red-500 focus:outline-1 rounded-[4px] px-2 py-1"
                                            id="previous_registration">
                                    </div>
                                    <div class="flex flex-col w-full">
                                        <label for="previous_roll" style="text-transform: capitalize !important;">
                                            {{ text('roll') }}
                                        </label>
                                        <input type="text" name="previous_roll" required
                                            class="w-full border-[0.5px] border-gray-300 focus:outline-red-500 focus:outline-1 rounded-[4px] px-2 py-1"
                                            id="previous_roll">
                                    </div>
                                    <div class="flex flex-col w-full">
                                        <label for="previous_result"
                                            style="text-transform: capitalize !important;">{{ text('result') }}*
                                        </label>
                                        <input type="text" name="previous_result" required
                                            class="w-full border-[0.5px] border-gray-300 focus:outline-red-500 focus:outline-1 rounded-[4px] px-2 py-1"
                                            id="previous_result">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="w-full mt-3">
                        <div class="col-md-12">
                            <h3 class="text-center text-lg md:text-xl lg:text:2xl ">{{ text('parent_information') }}</h3>
                            <hr class="text-gray-300 mb-3">
                            <div class="w-full grid grid-cols-2 md:grid-cols-3 gap-2 md:gap-4">
                                <div class="flex flex-col w-full">
                                    <label for="gurdian_relation" required
                                        style="text-transform: capitalize !important;">{{ text('student_relation') }}*
                                    </label>
                                    <select
                                        class="w-full border-[0.5px] border-gray-300 focus:outline-red-500 focus:outline-1 rounded-[4px] px-2 py-1"
                                        id="gurdian_relation" name="gurdian_relation" required>
                                        <option value="father">{{ text('father') }}</option>
                                        <option value="mother">{{ text('mother') }}</option>
                                        <option value="brother">{{ text('brother') }}</option>
                                        <option value="sister">{{ text('sister') }}</option>
                                        <option value="others">{{ text('others') }}</option>
                                    </select>
                                </div>
                                <div class="flex flex-col w-full">
                                    <label for="gurdian_bangla"
                                        style="text-transform: capitalize !important;">{{ text('gurdian_name') . ' (' . text('bangla') . ')' }}*
                                    </label>
                                    <input type="text" name="gurdian_bangla" required
                                        class="w-full border-[0.5px] border-gray-300 focus:outline-red-500 focus:outline-1 rounded-[4px] px-2 py-1"
                                        id="gurdian_bangla">
                                </div>
                                <div class="flex flex-col w-full">
                                    <label for="gurdian_english"
                                        style="text-transform: capitalize !important;">{{ text('gurdian_name') . ' (' . text('english') . ')' }}*
                                    </label>
                                    <input type="text" required name="gurdian_english"
                                        class="w-full border-[0.5px] border-gray-300 focus:outline-red-500 focus:outline-1 rounded-[4px] px-2 py-1"
                                        id="gurdian_english">
                                </div>
                                <div class="flex flex-col w-full">
                                    <label for="gurdian_mobile"
                                        style="text-transform: capitalize !important;">{{ text('gurdian_phone') }}
                                    </label>
                                    <input type="text" required name="gurdian_mobile"
                                        class="w-full border-[0.5px] border-gray-300 focus:outline-red-500 focus:outline-1 rounded-[4px] px-2 py-1"
                                        id="gurdian_mobile">
                                </div>
                                <div class="flex flex-col w-full">
                                    <label for="gurdian_nid"
                                        style="text-transform: capitalize !important;">{{ text('gurdian_nid') }}
                                    </label>
                                    <input type="text" required name="gurdian_nid"
                                        class="w-full border-[0.5px] border-gray-300 focus:outline-red-500 focus:outline-1 rounded-[4px] px-2 py-1"
                                        id="gurdian_nid">
                                </div>
                                <div class="flex flex-col w-full">
                                    <label for="gurdian_birth_date"
                                        style="text-transform: capitalize !important;">{{ text('gurdian_birth_date') }}
                                    </label>
                                    <input type="text" required name="gurdian_birth_date" id="gurdian_date_picker"
                                        class="w-full border-[0.5px] border-gray-300 focus:outline-red-500 focus:outline-1 rounded-[4px] px-2 py-1">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="w-full mt-3">
                        <div class="w-full">
                            <h3 class="text-center text-lg md:text-xl lg:text:2xl ">{{ text('eligibility_condition') }}
                            </h3>
                            <hr class="text-gray-300 mb-3">
                            <div class="w-full grid grid-cols-1 md:grid-cols-3 gap-2 md:gap-4">
                                <div class="flex flex-col w-full">
                                    <label for="student_relation"
                                        style="text-transform: capitalize !important;">{{ text('cost_bear') }}
                                    </label>
                                    <select
                                        class="w-full border-[0.5px] border-gray-300 focus:outline-red-500 focus:outline-1 rounded-[4px] px-2 py-1"
                                        id="student_relation" name="student_relation" required>
                                        <option value="father">{{ text('father') }}</option>
                                        <option value="mother">{{ text('mother') }}</option>
                                        <option value="gurdian">{{ text('gurdian') }}</option>
                                    </select>
                                </div>
                                <div class="flex flex-col w-full">
                                    <label for="ethnic_child"
                                        style="text-transform: capitalize !important;">{{ text('ethinic_minority') }}
                                    </label>
                                    <select
                                        class="w-full border-[0.5px] border-gray-300 focus:outline-red-500 focus:outline-1 rounded-[4px] px-2 py-1"
                                        id="ethnic_child" name="ethnic_child" required>
                                        <option value="no">{{ text('no') }}</option>
                                        <option value="yes">{{ text('yes') }}</option>
                                    </select>
                                </div>
                                <div class="flex flex-col w-full">
                                    <label for="freedom_family"
                                        style="text-transform: capitalize !important;">{{ text('freedom_family') }}
                                    </label>
                                    <select
                                        class="w-full border-[0.5px] border-gray-300 focus:outline-red-500 focus:outline-1 rounded-[4px] px-2 py-1"
                                        id="freedom_family" name="freedom_family" required>
                                        <option value="no">{{ text('no') }}</option>
                                        <option value="yes">{{ text('yes') }}</option>
                                    </select>
                                </div>
                                <div class="flex flex-col w-full">
                                    <label for="stipend"
                                        style="text-transform: capitalize !important;">{{ text('is_stipend') }}
                                    </label>
                                    <select
                                        class="w-full border-[0.5px] border-gray-300 focus:outline-red-500 focus:outline-1 rounded-[4px] px-2 py-1"
                                        id="stipend" name="stipend" required>
                                        <option value="no">{{ text('no') }}</option>
                                        <option value="yes">{{ text('yes') }}</option>
                                    </select>
                                </div>
                                <div class="flex flex-col w-full">
                                    <label for="disability"
                                        style="text-transform: capitalize !important;">{{ text('physical_disability') }}
                                    </label>
                                    <select
                                        class="w-full border-[0.5px] border-gray-300 focus:outline-red-500 focus:outline-1 rounded-[4px] px-2 py-1"
                                        id="disability" name="disability" required>
                                        <option value="no">{{ text('no') }}</option>
                                        <option value="yes">{{ text('yes') }}</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="w-full grid grid-cols-1 md:grid-cols-2 gap-2 md:gap-4 mt-3">
                        <div class="col-md-6">
                            <h3 class="text-center text-lg md:text-xl lg:text:2xl "> {{ text('applicant_photo') }}</h3>
                            <hr class="text-gray-300 mb-3">
                            <div class="col-md-6">
                                <div class="flex flex-col w-full">
                                    <label for="aplicant_photo"
                                        style="text-transform: capitalize !important;">{{ text('attach_applicant_photo') }}
                                    </label>
                                    <input type="file" required id="aplicant_photo" name="aplicant_photo">
                                    <div class="form_label">{{ text('max_size') }}</div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <h3 class="text-center text-lg md:text-xl lg:text:2xl "> {{ text('relevent_certificate') }}</h3>
                            <hr class="text-gray-300 mb-3">
                            <div class="col-md-6">
                                <div class="flex flex-col w-full">
                                    <label for="documents"
                                        style="text-transform: capitalize !important;">{{ text('attach_file') }}
                                    </label>
                                    <input type="file" id="documents" name="documents">
                                    <div class="form_label">{{ text('max_size') }}</div>
                                </div>
                            </div>
                        </div>
                        <div class="row justify-content-center text-center">
                            <div class="status text-center"></div>
                        </div>
                    </div>
                    <div class="w-full">
                        <div class="flex flex-col w-full text-center text-lg md:text-xl lg:text:2xl">
                            <input type="submit" name="btn-save" class="cursor-pointer bg-green-400 text-white hover:bg-green-600 hover:shadow-md rounded-md px-3 py-2"
                                value="{{ text('submits') }}">
                        </div>
                    </div>
                </div>
            </form>
            <br>
        </div>
    </div>
@endsection
