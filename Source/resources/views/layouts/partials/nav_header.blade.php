<?php
use App\Http\BusinessLogic\NavigationMenu;
?>
<nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark">
	<a class="navbar-brand mr-lg-0" href="#"><b>A.T&T</b> </a>
	<button class="navbar-toggler p-0 border-0" type="button"
		data-toggle="offcanvas">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="navbar-collapse offcanvas-collapse"
		id="navbarsExampleDefault">
		<ul class="navbar-nav mr-auto">
			@foreach($main[0] as $menus) @empty($menus->sub_menu)
			<li class="nav-item"><a class="nav-link" href="#" title="Profile"><i
					class="fas fa-info-circle"></i> {{$menus->alias}}</a></li>
			@endempty @empty(!$menus->sub_menu)
			<li class="nav-item dropdown"><a class="nav-link dropdown-toggle"
				href="#" id="dropdown01" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false">{{$menus->alias}}</a>

				<div class="dropdown-menu" aria-labelledby="dropdown01">
					@foreach($menus->sub_menu as $sub) <a class="dropdown-item"
						href="#">{{$sub->sub_menu_name}}</a> @endforeach
				</div></li> @endempty @endforeach
		</ul>
	</div>
</nav>

