<div class="flex items-center justify-{{$position}} space-x-2 mt-3" style="{{$style ?? ''}}">
    <!-- It always seems impossible until it is done. - Nelson Mandela -->
    @foreach($items as $item)
        <button class="p-2 {{$item['style'] ?? ''}}" @isset($item['click']) onclick="{{$item['click']}}" @endisset type="{{$item['type'] ?? ''}}">{{$item['label'] ?? ''}}</button>
    @endforeach
</div>
