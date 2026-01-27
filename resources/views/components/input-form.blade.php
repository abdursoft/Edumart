<div class="w-full grid grid-cols-1
    @if($cols > 1) gap-4 @else gap-2 @endif
    @if($cols == 1) lg:grid-cols-1
    @elseif($cols == 2) lg:grid-cols-2
    @elseif($cols == 3) lg:grid-cols-3
    @elseif($cols == 4) lg:grid-cols-4
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
            $margin = $field['margin'] ?? '0';
            $className = $field['className'] ?? '';
            $note = $field['note'] ?? null;
            $height = $field['height'] ?? '300px';
            $multiple = $field['multiple'] ?? '';
            $attributes = $field['attributes'] ?? [];

            $attr = '';
            foreach($attributes as $key=>$value){
                $attr .="$key=$value ";
            }
        @endphp

        @if($type === 'break')
            @for($i=0; $i<$default;$i++)
                <div style="margin-top:{{$margin}}px;"></div>
            @endfor
        @elseif($type === 'title')
            <h2 class="text-muted text-xl w-full inline-block mt-3">{{$default}}</h2>
        @else
            <div class="w-full {{ $type == 'hidden' ? 'hidden' : '' }} @if($type == 'textarea' && $span == '2') col-span-2 @endif {{ $className }}">
                @if(isset($field['label']))
                    <label for="{{ $field['name'] ?? '' }}" class="block text-sm font-medium text-gray-700 mb-1">
                        {{ $field['label'] }}
                        @if(!empty($field['required']))
                            <span class="text-red-500">*</span>
                        @endif
                        @if($note)
                            <small class="text-[10px] text-red-400">({{$note}})</small>
                        @endif
                    </label>
                @endif

                @if ($type === 'select')
                    <select
                        name="{{ $field['name'] }}"
                        id="{{ $field['name'] }}"
                        {{$attr}}
                        class="w-full border border-gray-300 rounded-md px-3 py-2 focus:ring-2 focus:ring-indigo-500"
                        {{$multiple}}
                    >
                        @if(!empty($field['placeholder']))
                            <option value=" ">{{ $field['placeholder'] }}</option>
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
                        style="min-height:{{$height}};"
                    >{{ $value ?? $default }}</div>
                    <input type="hidden" name="{{ $name }}" id="{{ $name }}_input">

                @elseif ($type === 'color')
                    <div class="flex items-center gap-1">
                        <input
                        type="text"
                        id="{{ $name }}"
                        name="{{ $name }}"
                        {{$attr}}
                        {{ $step ? 'step='.$step : '' }}
                        value="{{ $type != 'password' ? ($value ?? $default) :  '' }}"
                        placeholder="{{$place}}"
                        @if(!empty($field['required'])) required @endif
                        class="block w-full rounded-md border-gray-100 bg-gray-100 text-gray-900 focus:ring-teal-500 focus:border-teal-500 py-2 px-1" />
                        <input
                        type="color"
                        id="cl_render_{{ $name }}"
                        value="{{ $type != 'password' ? ($value ?? $default) :  '' }}"
                        placeholder="{{$place}}"
                        class="w-[40px] h-[40px] rounded shadow-md border-0 outline-0" />
                    </div>
                @else
                    <input
                        type="{{ $type }}"
                        id="{{ $name }}"
                        name="{{ $name }}"
                        {{$attr}}
                        {{ $step ? 'step='.$step : '' }}
                        value="{{ $type != 'password' ? ($value ?? $default) :  '' }}"
                        placeholder="{{$place}}"
                        capture="{{ $capture ?? '' }}"
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
                            yearRange: "1971:2050",
                            showAnim: "fadeIn"
                            });
                        });
                    </script>
                @endif

                @if($type === 'color')
                    <script>
                        $(function() {
                            $("#cl_render_{{$name}}").change(function(){
                                $("#{{$name}}").val(this.value)
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
