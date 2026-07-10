@props([
    'class' => '',
])

<div
    {{ $attributes->merge([
        'class' => 'skeleton rounded-xl '.$class
    ]) }}>
</div>