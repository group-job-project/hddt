<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="Keywords" content="HTML,CSS,JavaScript,SQL,PHP,jQuery,XML,DOM,Bootstrap,Python,Java,Web development,W3C,tutorials,programming,training,learning,quiz,primer,lessons,references,examples,exercises,source code,colors,demos,tips">
    <meta name="Description" content="Well organized and easy to understand Web building tutorials with lots of examples of how to use HTML, CSS, JavaScript, SQL, PHP, Python, Bootstrap, Java and XML.">
    <!-- Bootstrap CSS -->
    <link href="{{ asset('assets/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">
    <!-- Fontawesome CSS -->
    <link href="{{ asset('assets/fontawesome/css/all.css') }}" rel="stylesheet">
    <!-- OUS CSS -->
    <link href="{{ asset('assets/config/css/style.css') }}" rel="stylesheet">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <!-- Title page -->
    <title>@yield('title')</title>
    <!--  Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}" />


</head>
<body class="bg-light">
@include('layouts/partials/nav_header')

@include('layouts/partials/nav_menu')

@yield('content')

<!-- Jquery -->
<script type="text/javascript" src="{{ asset('assets/jquery/jquery.min.js') }}"></script>
<!-- Popper core JavaScript -->
<script type="text/javascript" src="{{ asset('assets/popper/popper.min.js') }}"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="{{ asset('assets/bootstrap/js/bootstrap.min.js') }}"></script>
<!-- Moment JavaScript -->
<script type="text/javascript" src="{{ asset('assets/moment/moment.min.js') }}"></script>
<!-- Jquery UI -->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

@yield("javascript")
</body>
</html>
