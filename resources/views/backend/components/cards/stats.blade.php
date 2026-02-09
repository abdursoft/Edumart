<div class="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-5 gap-6 mb-8">
        <div class="bg-white p-6 rounded-xl shadow">
            <p class="text-gray-500">Total Departments</p>
            <div class="flex items-center justify-between w-full">
                <p class="text-xl font-semibold">{{$departments}}</p>
                <a href="{{route('admin.academic.structure.departments')}}" class="p-1 md:p-2 bg-green-500 hover:bg-green-700 transition-all rounded-md text-white text-sm">View</a>
            </div>
        </div>
        <div class="bg-white p-6 rounded-xl shadow">
            <p class="text-gray-500">Total classes</p>
            <div class="flex items-center justify-between w-full">
                <p class="text-xl font-semibold">{{$classes}}</p>
                <a href="{{route('admin.academic.structure.classes')}}" class="p-1 md:p-2 bg-green-500 hover:bg-green-700 transition-all rounded-md text-white text-sm">View</a>
            </div>
        </div>
        <div class="bg-white p-6 rounded-xl shadow">
            <p class="text-gray-500">Teachers</p>
            <div class="flex items-center justify-between w-full">
                <p class="text-xl font-semibold">{{$teachers}}</p>
                <a href="{{route('admin.academic.people.teachers')}}" class="p-1 md:p-2 bg-green-500 hover:bg-green-700 transition-all rounded-md text-white text-sm">View</a>
            </div>
        </div>
        <div class="bg-white p-6 rounded-xl shadow">
            <p class="text-gray-500">Staffs</p>
            <div class="flex items-center justify-between w-full">
                <p class="text-xl font-semibold">{{$staffs}}</p>
                <a href="{{route('admin.academic.people.staff')}}" class="p-1 md:p-2 bg-green-500 hover:bg-green-700 transition-all rounded-md text-white text-sm">View</a>
            </div>
        </div>
        <div class="bg-white p-6 rounded-xl shadow">
            <p class="text-gray-500">Committee</p>
            <div class="flex items-center justify-between w-full">
                <p class="text-xl font-semibold">{{$committee}}</p>
                <a href="{{route('admin.academic.people.committees')}}" class="p-1 md:p-2 bg-green-500 hover:bg-green-700 transition-all rounded-md text-white text-sm">View</a>
            </div>
        </div>
        <div class="bg-white p-6 rounded-xl shadow">
            <p class="text-gray-500">Students</p>
            <div class="flex items-center justify-between w-full">
                <p class="text-xl font-semibold">{{$students}}</p>
                <a href="" class="p-1 md:p-2 bg-green-500 hover:bg-green-700 transition-all rounded-md text-white text-sm">View</a>
            </div>
        </div>
        <div class="bg-white p-6 rounded-xl shadow">
            <p class="text-gray-500">Subjects</p>
            <div class="flex items-center justify-between w-full">
                <p class="text-xl font-semibold">{{$subjects}}</p>
                <a href="{{route('admin.academic.people.students')}}" class="p-1 md:p-2 bg-green-500 hover:bg-green-700 transition-all rounded-md text-white text-sm">View</a>
            </div>
        </div>
        <div class="bg-white p-6 rounded-xl shadow">
            <p class="text-gray-500">Exams</p>
            <div class="flex items-center justify-between w-full">
                <p class="text-xl font-semibold">{{$exams}}</p>
                <a href="{{route('admin.academic.evaluation.exams')}}" class="p-1 md:p-2 bg-green-500 hover:bg-green-700 transition-all rounded-md text-white text-sm">View</a>
            </div>
        </div>
        <div class="bg-white p-6 rounded-xl shadow">
            <p class="text-gray-500">Invoice</p>
            <div class="flex items-center justify-between w-full">
                <p class="text-xl font-semibold">{{$invoices}}</p>
                <a href="" class="p-1 md:p-2 bg-green-500 hover:bg-green-700 transition-all rounded-md text-white text-sm">View</a>
            </div>
        </div>
        <div class="bg-white p-6 rounded-xl shadow">
            <p class="text-gray-500">Admission request</p>
            <div class="flex items-center justify-between w-full">
                <p class="text-xl font-semibold">{{$admissions}}</p>
                <a href="{{route('admin.admission.request')}}" class="p-1 md:p-2 bg-green-500 hover:bg-green-700 transition-all rounded-md text-white text-sm">View</a>
            </div>
        </div>
    </div>
