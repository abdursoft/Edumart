<fieldset class="border border-gray-100 rounded-xl p-6 bg-white shadow-sm h-auto">
    @if($title)
        <legend class="text-lg font-semibold text-gray-800 px-3">{{ $title }}</legend>
    @endif
    <div class="my-2">
        {{$slot}}
    </div>
</fieldset>
