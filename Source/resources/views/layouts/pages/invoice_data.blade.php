@extends('layouts.layout')

@section('title', 'Invoices')

@section('content')
    @isset($invoices)
        {{$invoices}}
    @endisset
@endsection