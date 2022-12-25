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
								  <h1>About Us</h1>
								</div>
							</div>
						</div><!-- /.row -->
					</div><!-- /.container-fluid -->
				</section>


				<div class="container">
					<div class="content-wrapper">
						<section class="about-us-wrapper">
							<h2>Our Staff</h2>
							<div class="row">
								<div class="col-md-12">
									<p>Itenology Corporation's team includes professional engineers, engineering technicians, GIS analysts and developers, IT application developers and support personnel who provide high quality products to our clients. Staff members have years of experience and numerous qualifications which demonstrate their expertise in each discipline. Itenology Corporation is a women-owned small business certified by several agencies as an MBE/DBE/SBE/WBE firm.</p>
								</div>
							</div>
						</section>

						<section class="team-wrapper">
							<h2 class="section-title">Our Team</h2>
							<div class="css-team">
								<div class="row">
									<div class="col-md-4 col-sm-4 col-xs-12">
										<figure>
											<div class="css-team-avatar">
												<div class="css-overlay"></div>
												<img class="media-object img-responsive" src="img/team/tm1.jpg" alt="Image">
												<a class="readmore" href="#"><i class="flaticon-square57"></i></a>
											</div>
											<div class="css-team-info">
											<h3 class="css-team-heading">Rabih Najib<br> <small>Chief Operations Officer</small></h3>
											</div>
										</figure>
									</div><!-- /.col-md-4 -->
									<div class="col-md-4 col-sm-4 col-xs-12">
										<figure>
											<div class="css-team-avatar">
												<div class="css-overlay"></div>
												<img class="media-object img-responsive" src="img/team/tm2.jpg" alt="Image">
												<a class="readmore" href="#"><i class="flaticon-square57"></i></a>
											</div>
											<div class="css-team-info">
											<h3 class="css-team-heading">Morteza Tadayon<br> <small>Vice President</small></h3>
											</div>
										</figure>
									</div><!-- /.col-md-4 -->
									<div class="col-md-4 col-sm-4 col-xs-12">
										<figure>
											<div class="css-team-avatar">
												<div class="css-overlay"></div>
												<img class="media-object img-responsive" src="img/team/tm3.jpg" alt="Image">
												<a class="readmore" href="#"><i class="flaticon-square57"></i></a>
											</div>
											<div class="css-team-info">
											<h3 class="css-team-heading">Amal Abou-Sef<br> <small>President</small></h3>
											</div>
										</figure>
									</div><!-- /.col-md-4 -->
								</div><!-- /.row -->
							</div><!-- /.css-team -->

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
										<li><a href="#">Traffic/Transportation Engineers</a></li>
										<li><a href="#">Construction Inspectors</a></li>
										<li><a href="#">GIS Analysts</a></li>
										<li><a href="#">Construction Managers</a></li>
										<li><a href="#">Bridge Inspectors</a></li>
									</ul>
								</div>
							</div>
						</section>
					</div><!-- /.content-wrapper -->
				</div><!-- /.container -->

		<!-- Preloader -->
		<div id="preloader">
			<div id="status">
				<div class="status-mes"></div>
			</div>
        </div>


@stop
