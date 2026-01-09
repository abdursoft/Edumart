@extends(theme('layouts.teacher'))

@section('title', 'Teacher Dashboard')

@section('content')

<div class="min-h-screen bg-gray-100 p-6">

<!-- Main Content -->
<main class="max-w-7xl mx-auto">

    <!-- Stats -->
    <div class="grid grid-cols-1 md:grid-cols-4 gap-6 mb-8">
        <div class="bg-white p-6 rounded-xl shadow">
            <p class="text-gray-500">Total Classes</p>
            <div class="flex items-center justify-between w-full">
                <p class="text-xl font-semibold">8</p>
                <a href="" class="p-2 bg-green-500 hover:bg-green-700 transition-all rounded-md text-white text-sm">View</a>
            </div>
        </div>
        <div class="bg-white p-6 rounded-xl shadow">
            <p class="text-gray-500">Total Students</p>
            <div class="flex items-center justify-between w-full">
                <p class="text-xl font-semibold">8</p>
                <a href="" class="p-2 bg-green-500 hover:bg-green-700 transition-all rounded-md text-white text-sm">View</a>
            </div>
        </div>
        <div class="bg-white p-6 rounded-xl shadow">
            <p class="text-gray-500">Assignments</p>
            <div class="flex items-center justify-between w-full">
                <p class="text-xl font-semibold">8</p>
                <a href="" class="p-2 bg-green-500 hover:bg-green-700 transition-all rounded-md text-white text-sm">View</a>
            </div>
        </div>
        <div class="bg-white p-6 rounded-xl shadow">
            <p class="text-gray-500">Pending Reviews</p>
            <div class="flex items-center justify-between w-full">
                <p class="text-xl font-semibold">8</p>
                <a href="" class="p-2 bg-green-500 hover:bg-green-700 transition-all rounded-md text-white text-sm">View</a>
            </div>
        </div>
    </div>

    <!-- Two Columns -->
    <div class="grid grid-cols-1 lg:grid-cols-3 gap-6">

        <!-- Class Schedule -->
        <div class="lg:col-span-2 bg-white rounded-xl shadow p-6">
            <h3 class="text-xl font-semibold mb-4">Today's Classes</h3>
            <table class="w-full text-left">
                <thead>
                    <tr class="text-gray-500 border-b">
                        <th class="py-2">Class</th>
                        <th>Subject</th>
                        <th>Time</th>
                        <th>Room</th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="border-b">
                        <td class="py-2">Class 9</td>
                        <td>Mathematics</td>
                        <td>9:00 AM - 10:00 AM</td>
                        <td>201</td>
                    </tr>
                    <tr class="border-b">
                        <td class="py-2">Class 10</td>
                        <td>Physics</td>
                        <td>11:00 AM - 12:00 PM</td>
                        <td>305</td>
                    </tr>
                    <tr>
                        <td class="py-2">Class 8</td>
                        <td>General Science</td>
                        <td>2:00 PM - 3:00 PM</td>
                        <td>104</td>
                    </tr>
                </tbody>
            </table>
        </div>

        <!-- Announcements -->
        <div class="bg-white rounded-xl shadow p-6">
            <h3 class="text-xl font-semibold mb-4">Announcements</h3>
            <ul class="space-y-4">
                <li class="p-4 bg-gray-50 rounded">
                    <p class="font-medium">Staff Meeting</p>
                    <p class="text-sm text-gray-600">Friday at 3:00 PM</p>
                </li>
                <li class="p-4 bg-gray-50 rounded">
                    <p class="font-medium">Exam Schedule</p>
                    <p class="text-sm text-gray-600">Final exams start next week</p>
                </li>
            </ul>
        </div>

    </div>

    <!-- Recent Assignments -->
    <div class="bg-white rounded-xl shadow p-6 mt-8">
        <h3 class="text-xl font-semibold mb-4">Recent Assignments</h3>
        <table class="w-full">
            <thead>
                <tr class="text-gray-500 border-b">
                    <th class="py-2">Title</th>
                    <th>Class</th>
                    <th>Due Date</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <tr class="border-b">
                    <td class="py-2">Algebra Worksheet</td>
                    <td>Class 9</td>
                    <td>12 Feb 2026</td>
                    <td class="text-green-600 font-medium">Active</td>
                </tr>
                <tr class="border-b">
                    <td class="py-2">Motion & Force</td>
                    <td>Class 10</td>
                    <td>14 Feb 2026</td>
                    <td class="text-green-600 font-medium">Active</td>
                </tr>
                <tr>
                    <td class="py-2">Plant Cell</td>
                    <td>Class 8</td>
                    <td>10 Feb 2026</td>
                    <td class="text-gray-500 font-medium">Closed</td>
                </tr>
            </tbody>
        </table>
    </div>

</main>

    <!-- Notifications -->
    <div class="bg-white p-6 rounded-xl shadow mt-6">
        <h2 class="text-lg font-semibold mb-4">Notifications</h2>
        <ul class="space-y-3 text-sm">
            <li class="p-3 bg-yellow-50 border-l-4 border-yellow-400">Midterm exam starts on 20th March</li>
            <li class="p-3 bg-blue-50 border-l-4 border-blue-400">Assignment submission deadline tomorrow</li>
            <li class="p-3 bg-green-50 border-l-4 border-green-400">Fee payment successful</li>
        </ul>
    </div>

</div>
@endsection
