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
								  <h1>Team Member</h1>
								</div>
							</div>
						</div><!-- /.row -->
					</div><!-- /.container-fluid -->
				</section>
				<div class="container">
					<div class="content-wrapper">
						<section class="about-us-wrapper">
							<div class="row margin-bottom-60 member-details-row">
								<div class="col-md-8">
									<h2>Rabih Najib</h2>
									<p>Dr. Najib is a licensed professional engineer in Maryland, Virginia, and Pennsylvania. Dr. Najib has more than 30 years of experience in the fields of transportation and information technology.</p>

								</div><!-- /.col-md-8 -->

								<div class="col-md-4">
									<div class="info-in-short">
										<img class="img-responsive" src="img/team/tm1.jpg" alt="">
									</div>
								</div><!-- /.col-md-4 -->
							</div><!-- /.row -->
						</section><!-- /.about-us-wrapper -->
					</div><!-- /.content-wrapper -->
				</div><!-- /.container -->

		<!-- Preloader -->
		<div id="preloader">
			<div id="status">
				<div class="status-mes"></div>
			</div>
        </div>


@stop
