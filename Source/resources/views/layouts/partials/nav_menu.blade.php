<div class="nav-scroller bg-white shadow-sm">
	<nav class="nav nav-underline">
		@isset($nav_menu) @for ($i = 0; $i < count($nav_menu); $i++)
		@if($nav_menu[$i]->sub_menu_name == "")
		<li class="nav-item"><a class="nav-link"
			href="{{$nav_menu[$i]->menu_link}}{{$nav_menu[$i]->menu_parameter}}"
			title="{{$nav_menu[$i]->tooltip}}"> <i
				class="{{$nav_menu[$i]->icon}}"></i> {{$nav_menu[$i]->alias}}
		</a></li> @else
		<div class="nav-item dropdown">
			<a class="nav-link dropdown-toggle" href="#" id="dropdown03"
				data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">{{$nav_menu[$i]->alias}}</a>
			<div class="dropdown-menu" aria-labelledby="dropdown01">
				@for($j = $i; $j < count($nav_menu) && $nav_menu[$j]->menu_id ==
				$nav_menu[$i]->menu_id; $j++) <a class="dropdown-item"
					href="{{$nav_menu[$j]->sub_menu_link}}{{$nav_menu[$j]->sub_menu_parameter}}"
					title="{{$nav_menu[$j]->sub_menu_tooltip}}"> <i
					class="{{$nav_menu[$j]->sub_icon}}"></i>
					{{$nav_menu[$j]->sub_menu_name}}
				</a> @php $i = $j; @endphp @endfor
			</div>
		</div>
		@endif @endfor @endisset
	</nav>
</div>