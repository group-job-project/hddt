<nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark">
	<a class="navbar-brand mr-lg-0" href="#"><b>A.T&T</b> </a>
	<button class="navbar-toggler p-0 border-0" type="button"
		data-toggle="offcanvas">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="navbar-collapse offcanvas-collapse"
		id="navbarsExampleDefault">
		<ul class="navbar-nav mr-auto">
			@isset($main)
				@for ($i = 0; $i < count($main); $i++)
					@if($main[$i]->sub_menu_name == "")
						<li class="nav-item"><a class="nav-link" href="#" title="Profile"><i
										class="fas fa-info-circle"></i> {{$main[$i]->alias}}</a></li>
					@else
						<li class="nav-item dropdown"><a class="nav-link dropdown-toggle"
														 href="#" id="dropdown01" data-toggle="dropdown" aria-haspopup="true"
														 aria-expanded="false">{{$main[$i]->alias}}</a>

							<div class="dropdown-menu" aria-labelledby="dropdown01">
								@for($j = $i; $j < count($main) && $main[$j]->menu_id == $main[$i]->menu_id; $j++)
									<a class="dropdown-item" href="#">{{$main[$j]->sub_menu_name}}</a>
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

