<div class="w-full grid grid-cols-1 gap-4
    @if($cols == 1) md:grid-cols-1
    @elseif($cols == 2) md:grid-cols-2
    @elseif($cols == 3) md:grid-cols-3
    @elseif($cols == 4) md:grid-cols-4
    @endif">
    @foreach ($fields as $field)

        @php
            $type = $field['type'] ?? 'text';
            $name = $field['name'] ?? '';
            $capture = old($field['name']) ?? ($form[$name] ?? null);
            $value = ($type == 'date' && $capture) ? date('Y-m-d',strtotime($capture)) : ($capture ?? (($type == 'date') ? date('Y-m-d', strtotime('today')) : null));
            $place = $field['placeholder'] ?? '';
            $default = $field['default'] ?? '';
            $remark  = $field['remark'] ?? '';
            $step = $field['step'] ?? '';
        @endphp

        @if($type === 'break')
            @for($i=0; $i<$default;$i++)
                <div></div>
            @endfor
        @elseif($type === 'title')
            <h2 class="text-muted text-xl w-full inline-block mt-3">{{$default}}</h2>
        @else
            <div class="{{ $type == 'hidden' ? 'hidden' : '' }} {{ $type == 'textarea' ? 'md:col-span-2' : '' }}">
                @if(isset($field['label']))
                    <label for="{{ $field['name'] ?? '' }}" class="block text-sm font-medium text-gray-700 mb-1">
                        {{ $field['label'] }}
                        @if(!empty($field['required']))
                            <span class="text-red-500">*</span>
                        @endif
                    </label>
                @endif

                @if ($type === 'select')
                    <select
                        name="{{ $field['name'] }}"
                        id="{{ $field['name'] }}"
                        class="w-full border border-gray-300 rounded-md px-3 py-2 focus:ring-2 focus:ring-indigo-500"
                    >
                        @if(!empty($field['placeholder']))
                            <option value="">{{ $field['placeholder'] }}</option>
                        @endif

                        @foreach($field['options'] as $key => $option)
                            @php
                                $isAssoc = array_keys($field['options']) !== range(0, count($field['options']) - 1);
                                $optionValue = $isAssoc ? $key : $option;
                            @endphp

                            <option value="{{ $optionValue }}" @selected($value == $optionValue)>
                                {{ ucfirst($option) }}
                            </option>
                        @endforeach
                    </select>


                @elseif ($type === 'textarea')
                    <div
                        id="{{ $name }}"
                        name="{{ $name }}"
                        class=" py-2 px-1 quill-editor"
                        style="min-height:400px;"
                    >{{ $value ?? $default }}</div>
                    <input type="hidden" name="{{ $name }}" id="{{ $name }}_input">
                @else
                    <input
                        type="{{ $type }}"
                        id="{{ $name }}"
                        name="{{ $name }}"
                        {{ $step ? 'step='.$step : '' }}
                        value="{{ $type != 'password' ? ($value ?? $default) :  '' }}"
                        placeholder="{{$place}}"
                        @if(!empty($field['required'])) required @endif
                        class="block w-full rounded-md border-gray-100 bg-gray-100 text-gray-900 focus:ring-teal-500 focus:border-teal-500 py-2 px-1" />
                @endif

                @error($name)
                    <p class="text-sm text-red-500 mt-1">{{ $message }}</p>
                @enderror

                @if($type == 'select')
                    <script>
                        $(document).ready(function() {
                            $('#{{$name}}').select2({
                                placeholder: "Search a {{ucfirst($name)}}...",
                                allowClear: true,
                                width: '100%'
                            });
                        });
                    </script>
                @endif

                @if($type == 'date')
                    <script>
                        $(function() {
                            $("#{{$name}}").datepicker({
                            dateFormat: "yy-mm-dd",
                            changeMonth: true,
                            changeYear: true,
                            yearRange: "1971:2025",
                            showAnim: "fadeIn"
                            });
                        });
                    </script>
                @endif

                @if($type == 'textarea')

                    <div id="table-popup"
                        style="position:absolute; display:none; background:#fff; padding:10px; border:1px solid #ccc; border-radius:6px; z-index:9999;">
                    </div>

                    <script>
                        Quill.register({ 'modules/better-table': quillBetterTable }, true);

                        {{$name}} = new Quill('#{{$name}}', {
                            theme: 'snow',
                            modules: {
                                toolbar: {
                                    container: [
                                        [{ 'header': [1, 2, false] }],
                                        ['bold', 'italic', 'underline'],
                                        ['link', 'image'],
                                        [{ 'list': 'ordered' }, { 'list': 'bullet' }],
                                        ['table'] // 👈 add table button here
                                    ],
                                    handlers: {
                                        image: function () {
                                            selectLocalImage();
                                        },
                                        table: function () {
                                            tablePicker({{$name}});
                                        },
                                    }
                                },

                                'better-table': {
                                    operationMenu: {
                                        items: {
                                            insertColumnLeft: true,
                                            insertColumnRight: true,
                                            insertRowAbove: false,
                                            insertRowBelow: true,
                                            removeRow: true,
                                            removeColumn: true,
                                            removeTable: true,
                                        }
                                    }
                                },
                            }
                        });

                        setTimeout(() => {
                            const tableModule = {{$name}}.getModule('better-table');
                            if (tableModule && tableModule._initTableListeners) {
                                tableModule._initTableListeners(); // <-- enables resizing
                            }
                        }, 50);

                        quillContainer = {{$name}};

                        // Set the hidden input when typing
                        {{$name}}.on('text-change', function() {
                            document.getElementById("{{$name}}_input").value = {{$name}}.root.innerHTML;
                        });

                        @if($form)
                            // Load previous HTML content into Quill editor
                            {{$name}}.clipboard.dangerouslyPasteHTML(`{!! $value !!}`);
                            // Also update hidden input
                            document.getElementById("{{$name}}_input").value = `{!! $value !!}`;
                        @endif
                    </script>
                @endif
            </div>
        @endif
    @endforeach
</div>
