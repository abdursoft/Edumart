@extends('backend.layouts.app')

@section('content')
<div class="container">
    <h2>Translation Manager</h2>

    @if(session('success'))
        <div class="alert alert-success">{{ session('success') }}</div>
    @endif

    <form method="POST" action="{{ route('translations.update') }}">
        @csrf

        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Key</th>
                    @foreach($languages as $lang)
                        <th>{{ strtoupper($lang) }}</th>
                    @endforeach
                </tr>
            </thead>
            <tbody>
                @foreach($allKeys as $key)
                    <tr>
                        <td>{{ $key }}</td>
                        @foreach($languages as $lang)
                            <td>
                                <input type="text" class="form-control" name="translations[{{ $lang }}][{{ $key }}]"
                                    value="{{ $translations[$lang][$key] ?? '' }}">
                            </td>
                        @endforeach
                    </tr>
                @endforeach
            </tbody>
        </table>

        <button class="btn btn-primary">Save Translations</button>
    </form>
</div>
@endsection
