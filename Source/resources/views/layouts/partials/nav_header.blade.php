<nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark">
	<a class="navbar-brand mr-lg-0" href="#"><b>A.T&T</b> </a>
	<button class="navbar-toggler p-0 border-0" type="button"
		data-toggle="offcanvas">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="navbar-collapse offcanvas-collapse"
		id="navbarsExampleDefault">
		<ul class="navbar-nav mr-auto">
			@isset($nav_header)
				@for ($i = 0; $i < count($nav_header); $i++)
					@if($nav_header[$i]->sub_menu_name == "")
						<li class="nav-item"><a class="nav-link" href="{{$nav_header[$i]->menu_link}}{{$nav_header[$i]->menu_parameter}}" title="{{$nav_header[$i]->menu_tooltip}}">
						<i class="{{$nav_header[$i]->icon}}"></i> {{$nav_header[$i]->alias}}</a></li>
					@else
						<li class="nav-item dropdown"><a class="nav-link dropdown-toggle"
														 href="" id="dropdown01" data-toggle="dropdown" aria-haspopup="true"
														 aria-expanded="false">{{$nav_header[$i]->alias}}</a>

							<div class="dropdown-menu" aria-labelledby="dropdown01">
								@for($j = $i; $j < count($nav_header) && $nav_header[$j]->menu_id == $nav_header[$i]->menu_id; $j++)
									<a class="dropdown-item" href="{{$nav_header[$j]->sub_menu_link}}{{$nav_header[$j]->sub_menu_parameter}}" title="{{$nav_header[$j]->sub_menu_tooltip}}" >
									<i class="{{$nav_header[$j]->sub_icon}}"></i> {{$nav_header[$j]->sub_menu_name}}</a>
									@php
										$i = $j;
									@endphp
								@endfor
							</div>
						</li>
					@endif
				@endfor
			@endisset
		</ul>
	</div>
</nav>

