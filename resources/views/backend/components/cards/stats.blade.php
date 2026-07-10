<div class="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-5 gap-6 mb-8">
    <x-admin-stats :total="$departments" title="Total Departments" icon="fa-solid fa-building-columns" color="from-emerald-500 via-green-500 to-green-600"
        route="{{ route('admin.academic.structure.departments') }}" />
    <x-admin-stats :total="$classes" title="Total Classes" icon="fa-solid fa-chalkboard" color="from-blue-500 via-blue-500 to-blue-600"
        route="{{ route('admin.academic.structure.classes') }}" />
    <x-admin-stats :total="$teachers" title="Teachers" icon="fa-solid fa-chalkboard-teacher" color="from-yellow-500 via-yellow-500 to-yellow-600"
        route="{{ route('admin.academic.people.teachers') }}" />
    <x-admin-stats :total="$staffs" title="Staffs" icon="fa-solid fa-user-tie" color="from-purple-500 via-purple-500 to-purple-600"
        route="{{ route('admin.academic.people.staff') }}" />
    <x-admin-stats :total="$committee" title="Committee" icon="fa-solid fa-users" color="from-pink-500 via-pink-500 to-pink-600"
        route="{{ route('admin.academic.people.committees') }}" />
    <x-admin-stats :total="$students" title="Students" icon="fa-solid fa-user-graduate" color="from-red-500 via-red-500 to-red-600"
        route="{{ route('admin.academic.people.students') }}" />
    <x-admin-stats :total="$subjects" title="Subjects" icon="fa-solid fa-book" color="from-indigo-500 via-indigo-500 to-indigo-600"
        route="{{ route('admin.academic.structure.subjects') }}" />
    <x-admin-stats :total="$exams" title="Exams" icon="fa-solid fa-file-pen" color="from-teal-500 via-teal-500 to-teal-600"
        route="{{ route('admin.academic.evaluation.exams') }}" />
    <x-admin-stats :total="$invoices" title="Invoice" icon="fa-solid fa-file-invoice-dollar" color="from-orange-500 via-orange-500 to-orange-600"
        route="" />
    <x-admin-stats :total="$admissions" title="Admission request" icon="fa-solid fa-user-plus" color="from-cyan-500 via-cyan-500 to-cyan-600"
        route="{{ route('admin.admission.request') }}" />
</div>
