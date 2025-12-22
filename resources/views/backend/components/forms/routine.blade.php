<form
    action="@if ($routine) {{ route('admin.academic.structure.routines.update', ['id' => $routine['id']]) }}@else{{ route('admin.academic.structure.routines.add') }} @endif"
    method="POST">
    @csrf

    <x-fieldset title="Routine">
        <!-- Select Class -->
        @if (!$routine)
            <div class="mb-4">
                <label class="font-semibold block mb-1">Select Class</label>
                <select name="edu_class_id" id="edu_class_id" class="border rounded p-2 w-full" required>
                    <option value="">-- Select Class --</option>
                    @foreach ($classes as $class)
                        <option value="{{ $class->id }}">{{ $class->name }} {{ $class->section }}</option>
                    @endforeach
                </select>
            </div>

            <!-- Routine Builder -->
            <div id="daysContainer"></div>

            <div class="mt-6 flex justify-end gap-4">
                <button type="button" id="addDayBtn" class="bg-green-500 cursor-pointer text-white px-4 py-2 rounded">
                    + Add Day
                </button>
                <button type="submit" class="bg-teal-600 cursor-pointer text-white px-4 py-2 rounded">
                    Save Routine
                </button>
            </div>
        @else
            <x-input-form :fields="[
                [
                    'label' => 'Class',
                    'name' => 'edu_class_id',
                    'type' => 'select',
                    'options' => $classes->pluck('name', 'id')->toArray(),
                    'placeholder' => 'Select Class',
                    'required' => true,
                ],

                [
                    'label' => 'Subject',
                    'name' => 'subject_id',
                    'type' => 'select',
                    'options' => $subjects->pluck('name', 'id')->toArray(),
                    'placeholder' => 'Select Subject',
                    'required' => true,
                ],

                [
                    'label' => 'Day',
                    'name' => 'day',
                    'type' => 'select',
                    'options' => ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'],
                    'placeholder' => 'Select Day',
                    'required' => true,
                ],

                ['label' => 'Start Time', 'name' => 'start_time', 'type' => 'time', 'required' => true],

                ['label' => 'End Time', 'name' => 'end_time', 'type' => 'time', 'required' => true],

                [
                    'label' => 'Room',
                    'name' => 'class_room_id',
                    'type' => 'select',
                    'placeholder' => '--Room--',
                    'options' => $rooms->pluck('name', 'id')->toArray(),
                    'required' => true,
                ],
            ]" :form="$routine" cols="2" />

            <x-button :items="[
                [
                    'label' => 'Cancel',
                    'type' => 'reset',
                    'style' =>
                        'bg-slate-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-slate-800 hover:text-white',
                ],
                [
                    'label' => 'Save',
                    'type' => 'submit',
                    'style' =>
                        'bg-teal-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-teal-800 hover:text-white',
                ],
                [
                    'label' => 'New',
                    'type' => 'button',
                    'style' =>
                        'bg-green-500 text-white rounded-md px-3 py-2 cursor-pointer hover:bg-green-800 hover:text-white',
                    'click' => 'window.location.href=`' . route('admin.academic.structure.routines') . '`',
                ],
            ]" position="end"></x-button>

        @endif
    </x-fieldset>
</form>


@if (!$routine)
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const daysContainer = document.getElementById('daysContainer');
            const addDayBtn = document.getElementById('addDayBtn');

            const daysOfWeek = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'];
            let dayIndex = 0;

            addDayBtn.addEventListener('click', () => {
                const dayBlock = document.createElement('div');
                dayBlock.classList.add('border', 'p-4', 'rounded', 'mb-4', 'bg-gray-50');
                dayBlock.setAttribute('data-day-index', dayIndex);

                // Day Select
                const daySelectHTML = `
            <label class="font-semibold block mb-2">Day</label>
            <select name="routines[${dayIndex}][day]" class="border rounded p-2 w-full mb-3" required>
                <option value="">-- Select Day --</option>
                ${daysOfWeek.map(day => `<option value="${day}">${day}</option>`).join('')}
            </select>
        `;

                // Subjects container
                const subjectsContainer = document.createElement('div');
                subjectsContainer.classList.add('subjects-container');
                subjectsContainer.innerHTML = generateSubjectRow(dayIndex, 0);

                // Add/remove buttons
                const addSubjectBtn = document.createElement('button');
                addSubjectBtn.type = 'button';
                addSubjectBtn.textContent = '+ Add Subject';
                addSubjectBtn.className = 'bg-green-500 text-white px-3 py-1 rounded text-sm';
                addSubjectBtn.addEventListener('click', () => {
                    const subjectCount = subjectsContainer.querySelectorAll('.subject-row').length;
                    subjectsContainer.insertAdjacentHTML('beforeend', generateSubjectRow(dayIndex,
                        subjectCount));
                });

                const removeDayBtn = document.createElement('button');
                removeDayBtn.type = 'button';
                removeDayBtn.textContent = 'Remove Day';
                removeDayBtn.className = 'bg-red-500 text-white px-3 py-1 rounded text-sm ml-2';
                removeDayBtn.addEventListener('click', () => dayBlock.remove());

                dayBlock.innerHTML = daySelectHTML;
                dayBlock.appendChild(subjectsContainer);
                dayBlock.appendChild(addSubjectBtn);
                dayBlock.appendChild(removeDayBtn);
                daysContainer.appendChild(dayBlock);

                dayIndex++;
            });

            // Generate subject row
            function generateSubjectRow(dayIndex, subjectIndex) {
                const subjects = @json($subjects);
                const rooms = @json($rooms);

                const subjectOptions = subjects.map(s => `<option value="${s.id}">${s.name}</option>`).join('');
                const roomOptions = rooms.map(r => `<option value="${r.id}">${r.name} (${r.type})</option>`).join(
                    '');

                // Add header only for the first subject of the day
                const headerRow = subjectIndex === 0 ? `
            <div class="grid grid-cols-5 gap-2 mb-1 text-sm font-semibold text-gray-600">
                <span>Subject</span>
                <span>Start Time</span>
                <span>End Time</span>
                <span>Room</span>
                <span>Action</span>
            </div>
        ` : '';

                const subjectRow = `
            <div class="subject-row grid grid-cols-5 gap-2 mb-2 items-start">
                <select name="routines[${dayIndex}][subjects][${subjectIndex}][subject_id]"
                        class="border rounded p-2 col-span-1" required>
                    <option value="">-- Subject --</option>
                    ${subjectOptions}
                </select>

                <input type="time"
                    name="routines[${dayIndex}][subjects][${subjectIndex}][start_time]"
                    class="border rounded p-2 col-span-1" required>

                <input type="time"
                    name="routines[${dayIndex}][subjects][${subjectIndex}][end_time]"
                    class="border rounded p-2 col-span-1" required>

                <select name="routines[${dayIndex}][subjects][${subjectIndex}][room]"
                        class="border rounded p-2 col-span-1">
                    <option value="">-- Room --</option>
                    ${roomOptions}
                </select>

                <button type="button"
                        class="text-red-500 text-sm font-bold hover:text-white w-[30px] h-[30px] bg-gray-200 hover:rounded-md hover:bg-gray-500 transition cursor-pointer"
                        onclick="this.closest('.subject-row').remove()">✕</button>
            </div>
        `;

                return headerRow + subjectRow;
            }
        });
    </script>
@endif
