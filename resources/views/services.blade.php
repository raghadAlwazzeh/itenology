@extends('app')
@section('css')
    <link rel="stylesheet" href="{{ asset('css/style.css') }}">
@stop
@section('main')
				<section class="page-header-wrapper">
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<div class="page-header">
								  <h1>Services</h1>
								</div>
							</div>
						</div><!-- /.row -->
					</div><!-- /.container-fluid -->
				</section>


				<div class="container">
					<div class="content-wrapper">
						<div class="services-wrapper">
							<div class="row">
                            @foreach ($services as $service)
                                <div class="col-md-4">
                                    <div class="service-card">
                                    
                                    
                                        <img src="/storage/{{$service->image_url}}" alt="">
                                        <div class="text-content">
                                            <h3>{{$service->service_name}}</h3>
                                            <p class="par">{{ strip_tags($service->description) }} </p>
                                            <a href="/service/{{$service->id}}">Read More!</a>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                                
                                
							</div><!-- /.row -->

						</div><!-- /.content-wrapper -->
					</div><!-- /.content-wrapper -->
				</div><!-- /.container -->
		<!-- Preloader -->
		<div id="preloader">
			<div id="status">
				<div class="status-mes"></div>
			</div>
        </div>


@stop
