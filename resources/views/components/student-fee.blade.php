<div class="max-w-4xl mx-auto bg-white p-6 rounded-lg shadow-md text-sm">

    <!-- Header -->
    <div class="flex items-center justify-between border-b pb-4 mb-4">
        <div>
            <h2 class="text-xl font-bold text-gray-800">Student Fee Collection Preview</h2>
            <p class="text-gray-500">Academic Year: 2025</p>
        </div>
        <div class="text-right">
            <p class="font-semibold">EduMart Institute</p>
            <p class="text-gray-500 text-xs">Dhaka, Bangladesh</p>
        </div>
    </div>

    <!-- Student Info -->
    <div class="grid grid-cols-1 md:grid-cols-3 gap-4 mb-6">
        <div class="flex items-center gap-4">
            <img src=""
                 class="w-20 h-20 rounded border"
                 alt="Student Photo">
        </div>

        <div class="md:col-span-2 grid grid-cols-2 gap-x-4 gap-y-2">
            <p><span class="font-semibold">Student Name:</span> John Doe</p>
            <p><span class="font-semibold">Student ID:</span> STD-1023</p>
            <p><span class="font-semibold">Class:</span> 8</p>
            <p><span class="font-semibold">Section:</span> A</p>
            <p><span class="font-semibold">Roll No:</span> 15</p>
            <p><span class="font-semibold">Contact:</span> 017XXXXXXXX</p>
        </div>
    </div>

    <!-- Fee Table -->
    <div class="overflow-x-auto">
        <table class="w-full border border-gray-300 text-left">
            <thead class="bg-gray-100">
                <tr>
                    <th class="border px-3 py-2">Fee Type</th>
                    <th class="border px-3 py-2 text-right">Amount</th>
                    <th class="border px-3 py-2 text-right">Paid</th>
                    <th class="border px-3 py-2 text-right">Due</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td class="border px-3 py-2">Tuition Fee</td>
                    <td class="border px-3 py-2 text-right">5,000</td>
                    <td class="border px-3 py-2 text-right">3,000</td>
                    <td class="border px-3 py-2 text-right">2,000</td>
                </tr>
                <tr>
                    <td class="border px-3 py-2">Exam Fee</td>
                    <td class="border px-3 py-2 text-right">1,000</td>
                    <td class="border px-3 py-2 text-right">1,000</td>
                    <td class="border px-3 py-2 text-right">0</td>
                </tr>
                <tr>
                    <td class="border px-3 py-2">Library Fee</td>
                    <td class="border px-3 py-2 text-right">500</td>
                    <td class="border px-3 py-2 text-right">0</td>
                    <td class="border px-3 py-2 text-right">500</td>
                </tr>
            </tbody>
            <tfoot class="bg-gray-50 font-semibold">
                <tr>
                    <td class="border px-3 py-2 text-right">Total</td>
                    <td class="border px-3 py-2 text-right">6,500</td>
                    <td class="border px-3 py-2 text-right">4,000</td>
                    <td class="border px-3 py-2 text-right">2,500</td>
                </tr>
            </tfoot>
        </table>
    </div>

    <!-- Payment Summary -->
    <div class="grid grid-cols-1 md:grid-cols-2 gap-4 mt-6">
        <div class="border p-4 rounded">
            <p><span class="font-semibold">Payment Date:</span> 20 Jan 2026</p>
            <p><span class="font-semibold">Payment Method:</span> Cash</p>
            <p><span class="font-semibold">Collected By:</span> Admin</p>
        </div>

        <div class="border p-4 rounded text-right">
            <p class="text-lg font-bold">Payable Amount</p>
            <p class="text-2xl font-bold text-green-600">৳ 2,500</p>
        </div>
    </div>

    <!-- Footer -->
    <div class="mt-8 flex justify-between text-xs text-gray-500">
        <p>Printed on: {{ date('d M Y') }}</p>
        <p>Signature: _____________________</p>
    </div>
</div>
