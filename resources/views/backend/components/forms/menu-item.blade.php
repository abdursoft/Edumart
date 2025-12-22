<div class="w-full min-h-screen bg-gray-100 p-6">

    <div class="grid grid-cols-1 md:grid-cols-4 gap-6">

        <!-- LEFT SIDEBAR -->
        <div class="space-y-6">

            <!-- Add Menu Form -->
            <form id="menu-add" method="post" class="space-y-4 bg-white p-5 rounded shadow">
                <h3 class="text-lg font-semibold mb-2">Add Menu</h3>

                <div>
                    <label class="block text-sm font-medium text-gray-700">Name</label>
                    <input id="addInputName" type="text" class="mt-1 w-full p-2 border rounded" required>
                </div>

                <div>
                    <label class="block text-sm font-medium text-gray-700">Attribute</label>
                    <select id="addInputAttribute" onchange="attributeHandler(this)"
                        class="mt-1 w-full p-2 border rounded" required>
                        <option value="" selected>Select Attribute</option>
                        <option value="page">Page</option>
                        <option value="url">URL</option>
                    </select>
                </div>

                <div id="page" class="hidden">
                    <label class="block text-sm font-medium text-gray-700">Page</label>
                    <select id="addInputPage" class="mt-1 w-full p-2 border rounded">
                        <option value="">Select Page</option>
                        @foreach ($pages as $key => $page)
                            <option value="{{ $key }}">{{ $page }}</option>
                        @endforeach
                    </select>
                </div>

                <div id="url" class="hidden">
                    <label class="block text-sm font-medium text-gray-700">URL</label>
                    <input id="addInputUrl" type="text" class="mt-1 w-full p-2 border rounded"
                        placeholder="https://...">
                </div>

                <div>
                    <label class="block text-sm font-medium text-gray-700">Target</label>
                    <select id="addInputTarget" class="mt-1 w-full p-2 border rounded" required>
                        <option value="_self">Self</option>
                        <option value="_blank">Blank</option>
                    </select>
                </div>

                <div>
                    <label class="block text-sm font-medium text-gray-700">Visibility</label>
                    <select id="addInputVisible" class="mt-1 w-full p-2 border rounded" required>
                        <option value="1">Visible</option>
                        <option value="0">Invisible</option>
                    </select>
                </div>

                <button type="button" id="addButton"
                    class="w-full bg-blue-600 text-white py-2 rounded cursor-pointer">Add Item</button>
            </form>
        </div>

        <!-- MENU BUILDER -->
        <div class="md:col-span-3">
            <form id="menu-save-form" method="POST" action="{{ route('admin.menu.items.add',['id' => $menu->id]) }}">
                @csrf
                <input type="hidden" id="menu_json" name="menu_json">
                <h3 class="text-xl font-semibold mb-3">Navigate Your Menu</h3>

                <div class="w-full px-3 py-5 bg-white shadow-md rounded-md min-h-[500px]">
                    <div class="dd nestable p-5" id="nestable">
                        <ol class="dd-list">
                            @foreach ($nav as $key => $item)
                                <li class="dd-item" data-id="{{ $item['id'] }}"
                                    data-name="{{ $item['name'] }}"
                                    data-attribute="{{ $item['attribute'] }}"
                                    data-page="{{ $item['url'] ?? '' }}"
                                    data-url="{{ $item['url'] }}"
                                    data-target="{{ $item['target'] }}"
                                    data-visible="{{ $item['visible'] }}"
                                    data-new="{{ $key }}"
                                    data-owner-id="item-{{$item['id']}}"
                                    data-deleted="1">
                                    <div class="dd-handle bg-gray-200 p-3 cursor-move">{{ $item['name'] }}
                                        ({{ $item['visible'] == 1 ? 'visible' : 'invisible' }})</div>
                                    <span
                                        class="button-delete px-2 py-1 rounded absolute right-[40px] cursor-pointer hover:text-red-500"
                                        data-owner-id="{{$item['id']}}"><svg xmlns="http://www.w3.org/2000/svg" width="22"
                                            height="22" viewBox="0 0 1024 1024">
                                            <path fill="currentColor"
                                                d="M512 0C229.232 0 0 229.232 0 512c0 282.784 229.232 512 512 512c282.784 0 512-229.216 512-512C1024 229.232 794.784 0 512 0m0 961.008c-247.024 0-448-201.984-448-449.01c0-247.024 200.976-448 448-448s448 200.977 448 448s-200.976 449.01-448 449.01m181.008-630.016c-12.496-12.496-32.752-12.496-45.248 0L512 466.752l-135.76-135.76c-12.496-12.496-32.752-12.496-45.264 0c-12.496 12.496-12.496 32.752 0 45.248L466.736 512l-135.76 135.76c-12.496 12.48-12.496 32.769 0 45.249c12.496 12.496 32.752 12.496 45.264 0L512 557.249l135.76 135.76c12.496 12.496 32.752 12.496 45.248 0c12.496-12.48 12.496-32.769 0-45.249L557.248 512l135.76-135.76c12.512-12.512 12.512-32.768 0-45.248" />
                                        </svg>
                                    </span>

                                    <span class="button-edit px-2 py-1 rounded absolute right-[5px] cursor-pointer hover:text-green-500"
                                        data-owner-id="{{$item['id']}}">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><g fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5"><path d="M9.533 11.15A1.82 1.82 0 0 0 9 12.438V15h2.578c.483 0 .947-.192 1.289-.534l7.6-7.604a1.82 1.82 0 0 0 0-2.577l-.751-.751a1.82 1.82 0 0 0-2.578 0z"/><path d="M21 12c0 4.243 0 6.364-1.318 7.682S16.242 21 12 21s-6.364 0-7.682-1.318S3 16.242 3 12s0-6.364 1.318-7.682S7.758 3 12 3"/></g></svg>
                                    </span>

                                    @if (count($item['children']) > 0)
                                        <ol class="dd-list">
                                            @foreach ($item['children'] as $key => $child)
                                                <li class="dd-item" data-id="{{ $child['id'] }}"
                                                    data-name="{{ $child['name'] }}"
                                                    data-attribute="{{ $child['attribute'] }}"
                                                    data-page="{{ $child['url'] ?? '' }}"
                                                    data-url="{{ $child['url'] }}"
                                                    data-target="{{ $child['target'] }}"
                                                    data-visible="{{ $child['visible'] }}"
                                                    data-owner-id="child-{{$child['id']}}"
                                                    data-new="{{ $key }}" data-deleted="">
                                                    <div class="dd-handle bg-gray-200 p-3 cursor-move">
                                                        {{ $child['name'] }}
                                                        ({{ $child['visible'] == 1 ? 'visible' : 'invisible' }})</div>
                                                    <span
                                                        class="button-delete px-2 py-1 rounded absolute right-[40px] cursor-pointer hover:text-red-500"
                                                        data-owner-id="{{$child['id']}}"><svg xmlns="http://www.w3.org/2000/svg" width="22"
                                                            height="22" viewBox="0 0 1024 1024">
                                                            <path fill="currentColor"
                                                                d="M512 0C229.232 0 0 229.232 0 512c0 282.784 229.232 512 512 512c282.784 0 512-229.216 512-512C1024 229.232 794.784 0 512 0m0 961.008c-247.024 0-448-201.984-448-449.01c0-247.024 200.976-448 448-448s448 200.977 448 448s-200.976 449.01-448 449.01m181.008-630.016c-12.496-12.496-32.752-12.496-45.248 0L512 466.752l-135.76-135.76c-12.496-12.496-32.752-12.496-45.264 0c-12.496 12.496-12.496 32.752 0 45.248L466.736 512l-135.76 135.76c-12.496 12.48-12.496 32.769 0 45.249c12.496 12.496 32.752 12.496 45.264 0L512 557.249l135.76 135.76c12.496 12.496 32.752 12.496 45.248 0c12.496-12.48 12.496-32.769 0-45.249L557.248 512l135.76-135.76c12.512-12.512 12.512-32.768 0-45.248" />
                                                        </svg>
                                                    </span>

                                                    <span class="button-edit px-2 py-1 rounded absolute right-[5px] cursor-pointer hover:text-green-500"
                                                        data-owner-id="{{$child['id']}}">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><g fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5"><path d="M9.533 11.15A1.82 1.82 0 0 0 9 12.438V15h2.578c.483 0 .947-.192 1.289-.534l7.6-7.604a1.82 1.82 0 0 0 0-2.577l-.751-.751a1.82 1.82 0 0 0-2.578 0z"/><path d="M21 12c0 4.243 0 6.364-1.318 7.682S16.242 21 12 21s-6.364 0-7.682-1.318S3 16.242 3 12s0-6.364 1.318-7.682S7.758 3 12 3"/></g></svg>
                                                    </span>


                                                    @if (count($child['children']) > 0)
                                                        <ol class="dd-list">
                                                            @foreach ($child['children'] as $key => $children)
                                                                <li class="dd-item" data-id="{{ $children['id'] }}"
                                                                    data-name="{{ $children['name'] }}"
                                                                    data-attribute="{{ $children['attribute'] }}"
                                                                    data-page="{{ $children['url'] ?? '' }}"
                                                                    data-url="{{ $children['url'] }}"
                                                                    data-target="{{ $children['target'] }}"
                                                                    data-visible="{{ $children['visible'] }}"
                                                                    data-owner-id="children-{{$children['id']}}"
                                                                    data-new="{{ $key }}" data-deleted="1">
                                                                    <div class="dd-handle bg-gray-200 p-3 cursor-move">
                                                                        {{ $children['name'] }}
                                                                        ({{ $children['visible'] == 1 ? 'visible' : 'invisible' }})
                                                                    </div>
                                                                    <span
                                                                        class="button-delete px-2 py-1 rounded absolute right-[40px] cursor-pointer hover:text-red-500"
                                                                        data-owner-id="{{$children['id']}}"><svg xmlns="http://www.w3.org/2000/svg" width="22"
                                                                            height="22" viewBox="0 0 1024 1024">
                                                                            <path fill="currentColor"
                                                                                d="M512 0C229.232 0 0 229.232 0 512c0 282.784 229.232 512 512 512c282.784 0 512-229.216 512-512C1024 229.232 794.784 0 512 0m0 961.008c-247.024 0-448-201.984-448-449.01c0-247.024 200.976-448 448-448s448 200.977 448 448s-200.976 449.01-448 449.01m181.008-630.016c-12.496-12.496-32.752-12.496-45.248 0L512 466.752l-135.76-135.76c-12.496-12.496-32.752-12.496-45.264 0c-12.496 12.496-12.496 32.752 0 45.248L466.736 512l-135.76 135.76c-12.496 12.48-12.496 32.769 0 45.249c12.496 12.496 32.752 12.496 45.264 0L512 557.249l135.76 135.76c12.496 12.496 32.752 12.496 45.248 0c12.496-12.48 12.496-32.769 0-45.249L557.248 512l135.76-135.76c12.512-12.512 12.512-32.768 0-45.248" />
                                                                        </svg>
                                                                    </span>

                                                                    <span class="button-edit px-2 py-1 rounded absolute right-[5px] cursor-pointer hover:text-green-500"
                                                                        data-owner-id="{{$children['id']}}">
                                                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><g fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5"><path d="M9.533 11.15A1.82 1.82 0 0 0 9 12.438V15h2.578c.483 0 .947-.192 1.289-.534l7.6-7.604a1.82 1.82 0 0 0 0-2.577l-.751-.751a1.82 1.82 0 0 0-2.578 0z"/><path d="M21 12c0 4.243 0 6.364-1.318 7.682S16.242 21 12 21s-6.364 0-7.682-1.318S3 16.242 3 12s0-6.364 1.318-7.682S7.758 3 12 3"/></g></svg>
                                                                    </span>

                                                                </li>
                                                            @endforeach
                                                        </ol>
                                                    @endif

                                                </li>
                                            @endforeach
                                        </ol>
                                    @endif
                                </li>
                            @endforeach
                        </ol>
                    </div>
                </div>

                <button type="submit"
                    class="mt-5 w-auto bg-green-600 text-white rounded float-right py-2 px-3 cursor-pointer">Save
                    Menu</button>
            </form>
        </div>
    </div>

</div>

<script src="{{ asset('ui/nested.js') }}"></script>

<script>
    let editable = false;

    $('#add-menu').click(function() {

        if(editable) return;

        let id = Date.now(); // temporary unique ID

        let name = $('#name').val();
        let slug = $('#slug').val();
        let type = $('#attribute').val();
        let page = $('#page').val();
        let url = $('#url').val();
        let target = $('#target').val();
        let visible = $('#visible').is(':checked') ? 1 : 0;

        let newItem = $(`
        <li class="dd-item" data-id="${id}">
            <div class="dd-handle">${name}</div>
        </li>
    `);

        // Add ALL form fields to item
        newItem.data({
            id: id,
            name: name,
            slug: slug,
            type: type,
            page: page,
            url: url,
            target: target,
            visible: visible,
            deleted: 0,
            new: 1
        });

        $('#nestable').nestable('add', newItem);

        updateOutput($('#nestable').data('output'));
    });


    $('.dd').nestable().on('change', updateOutput);

    updateOutput($('#nestable').data('output'));


    $('#nestable').nestable({
        maxDepth: 5
    }).on('change', updateOutput);

    function updateOutput(e) {
        var list = e?.length ? e : $(e?.target);
        var output = JSON.stringify(list.nestable('serialize'));
        $('#menu_json').val(output);
        console.log(output);
    }

    var newIdCount = 1;
    var nestableList = $("#nestable > .dd-list");

    // ADD ITEM
    $('#addButton').on('click', function() {
        // EDIT ITEM
        if (editable) {
            const item = $('[data-id="' + editable + '"]');
            const visible = $('#addInputVisible').val() == 1 ? 'visible' : 'invisible';

            // Update HTML attributes for Nestable
            item.attr('data-name', $('#addInputName').val());
            item.attr('data-url', $('#addInputUrl').val());
            item.attr('data-target', $('#addInputTarget').val());
            item.attr('data-visible', $('#addInputVisible').val());
            item.attr('data-page', $('#addInputPage').val());
            item.attr('data-attribute', $('#addInputAttribute').val());

            // Update jQuery cache (for editing later)
            item.data('name', $('#addInputName').val());
            item.data('url', $('#addInputUrl').val());
            item.data('target', $('#addInputTarget').val());
            item.data('visible', $('#addInputVisible').val());
            item.data('page', $('#addInputPage').val());
            item.data('attribute', $('#addInputAttribute').val());

            // Update the visible text
            item.find('.dd-handle').text(`${$('#addInputName').val()} (${visible})`);

            editable = false;

            // Force Nestable to register the update
            $('#nestable').trigger('change');

            // Reset form
            $('#menu-add')[0].reset();

            // Update serialized JSON
            updateOutput($('#nestable'));
            return;
        }


        var name = $('#addInputName').val();
        var attribute = $('#addInputAttribute').val();
        var page = $('#addInputPage').val();
        var url = $('#addInputUrl').val();
        var target = $('#addInputTarget').val();
        var visible = $('#addInputVisible').val();

        var newId = 'new-' + newIdCount;

        nestableList.append(`
        <li class="dd-item" data-id="${newId}" data-name="${name}" data-attribute="${attribute}" data-page="${page}" data-url="${url}" data-target="${target}" data-visible="${visible}" data-new="1" data-deleted="0">
            <div class="dd-handle bg-gray-200 p-3 cursor-move">${name} (${visible == 1 ? 'visible' : 'invisible'})</div>
            <span class="button-delete px-2 py-1 rounded absolute right-[40px] cursor-pointer hover:text-red-500" data-owner-id="${newId}"><svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="0 0 1024 1024"><path fill="currentColor" d="M512 0C229.232 0 0 229.232 0 512c0 282.784 229.232 512 512 512c282.784 0 512-229.216 512-512C1024 229.232 794.784 0 512 0m0 961.008c-247.024 0-448-201.984-448-449.01c0-247.024 200.976-448 448-448s448 200.977 448 448s-200.976 449.01-448 449.01m181.008-630.016c-12.496-12.496-32.752-12.496-45.248 0L512 466.752l-135.76-135.76c-12.496-12.496-32.752-12.496-45.264 0c-12.496 12.496-12.496 32.752 0 45.248L466.736 512l-135.76 135.76c-12.496 12.48-12.496 32.769 0 45.249c12.496 12.496 32.752 12.496 45.264 0L512 557.249l135.76 135.76c12.496 12.496 32.752 12.496 45.248 0c12.496-12.48 12.496-32.769 0-45.249L557.248 512l135.76-135.76c12.512-12.512 12.512-32.768 0-45.248"/></svg></span>
            <span class="button-edit px-2 py-1 rounded absolute right-[5px] cursor-pointer hover:text-green-500"
                data-owner-id="${newId}">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><g fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5"><path d="M9.533 11.15A1.82 1.82 0 0 0 9 12.438V15h2.578c.483 0 .947-.192 1.289-.534l7.6-7.604a1.82 1.82 0 0 0 0-2.577l-.751-.751a1.82 1.82 0 0 0-2.578 0z"/><path d="M21 12c0 4.243 0 6.364-1.318 7.682S16.242 21 12 21s-6.364 0-7.682-1.318S3 16.242 3 12s0-6.364 1.318-7.682S7.758 3 12 3"/></g></svg>
            </span>
        </li>
    `);

        newIdCount++;
        updateOutput($('#nestable'));
    });


    // EDIT ITEM
    $(document).on('click', '.button-edit', function() {
        var id = $(this).data('owner-id');
        const item = $('[data-id="' + id + '"]');
        editable = id ?? false;
        $('#addInputName').val(item.data('name'));
        $('#addInputUrl').val(item.data('url'));
        $('#addInputTarget').val(item.data('target'));
        $('#addInputVisible').val(Number(item.data('visible')));
        $('#addInputPage').val(item.data('page')).trigger('change');
        $('#addInputAttribute').val(item.data('attribute')).trigger('change');
    });

    // DELETE ITEM
    $(document).on('click', '.button-delete', function() {
        var id = $(this).data('owner-id');
        $('[data-id="' + id + '"]').remove();
        updateOutput($('#nestable'));
    });


    // attribute handler
    function attributeHandler(item) {
        console.log(item.value)
        if (item?.value == 'page') {
            $('#page').removeClass('hidden');
            $('#url').addClass('hidden');
        } else {
            $('#page').addClass('hidden');
            $('#url').removeClass('hidden');
        }
    }

    $(document).ready(function() {
        $('#addInputAttribute').select2({
            placeholder: ['Search attributes', 'Search page...'],
            allowClear: true,
            width: '100%'
        });
        $('#addInputPage').select2({
            placeholder: 'Search page...',
            allowClear: true,
            width: '100%'
        });
    });
</script>
