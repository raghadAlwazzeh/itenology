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
								  <h1>Career</h1>
								</div>
							</div>
						</div><!-- /.row -->
					</div><!-- /.container-fluid -->
				</section>


				<div class="container">
					<div class="content-wrapper">
						<div class="contact-us-wrapper">
                            <h2 class="section-title">Join Our Team</h2>
							<div class="row">
								<div class="col-sm-8">
									<p>Itenology Corporation is always looking for talented people who are self-motivated, ready to accept any challenge, and who take pride in their accomplishments. We provide competitive compensation and training while supporting our employees’ interests in professional organizations, licensing, certifications and continuing education.
                                        <br>
                                        Itenology Corporation provides full benfits including mediacal and dental insurance, paid holidays, paid time-off, and 401(k) with employer's matching contribution.
                                        <br>
                                        Apply now and join a team of people who truly care about your employment experience, career growth and longevity with the firm.
                                    </p>
								</div>
								<div class="col-sm-4">

									<ul class="joblist-link">
									@foreach ($services as $service)
										<li><a href="/service/{{$service->id}}">{{$service->service_name}}</a></li>
									@endforeach


									</ul>
								</div>
							</div>


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
