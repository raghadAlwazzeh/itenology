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
								  <h1>Contact Us</h1>
								</div>
							</div>
						</div><!-- /.row -->
					</div><!-- /.container-fluid -->
				</section>


				<div class="container">
					<div class="content-wrapper">
						<div class="contact-us-wrapper">
							<div class="row">
								<div class="col-md-4">
									<div class="mini-contact">
										<h2>Email us</h2>
										{{-- <p>If you're encountering an issue or problem when working with ITENOLOGY you can always email us directly or via the form below</p> --}}

										<a href="mailto:info@itenology.com">info@itenology.com</a>
									</div>
								</div>
								<div class="col-md-4">
									<div class="mini-contact">
										<h2>Call us</h2>
										{{-- <p>If you're encountering an issue or problem when working with ITENOLOGY you can always Call us directly or via the form below</p> --}}

										<a href="tel:(410) 715-0100">(410) 715-0100</a>
									</div>
								</div>
								<div class="col-md-4">
									<div class="mini-contact">
										<h2>Tweet us</h2>
										<a href="https://twitter.com/itenology">Tweet us →</a>
									</div>
								</div>
							</div><!-- /.row -->



                            <div class="row">
                                <div class="col-md-6">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="map-wrapper">
                                                <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d6184.463934378784!2d-76.81835236245726!3d39.192177578324724!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89b7e07d3a914427%3A0xe582266d9f479015!2s8850%20Stanford%20Blvd%2C%20Columbia%2C%20MD%2021045!5e0!3m2!1sen!2sus!4v1671356896537!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                                            </div>
                                        </div>
                                    </div><!-- /.row -->
                                </div>
                                <div class="col-md-6">
							<div class="contact-us-form">
								<h2>Drop us a line</h2>
								<form id="contactForm" action="sendemail.php" method="POST">
									<div class="row">
										<div class="col-md-6">
										  <div class="input-group">
										    <label class="sr-only" for="name">Name</label>
										    <span class="input-group-addon" id="basic-addon1"><i class="fa fa-user"></i></span>
										    <input id="name" name="name" type="text" class="form-control"  required="" placeholder="Name">
										  </div>
										</div>
										<div class="col-md-6">
										  <div class="input-group">
										    <label class="sr-only" for="email">Email address</label>
										    <span class="input-group-addon" id="basic-addon2"><i class="fa fa-envelope"></i></span>
										    <input id="email" name="email" type="email" class="form-control" required="" placeholder="Email">
										  </div>
										</div>
									</div>
									<div class="input-group text-area">
										<label class="sr-only" for="message">Message</label>
										<span class="input-group-addon" id="basic-addon5"><i class="fa fa-file-text-o"></i></span>
										<textarea id="message" name="message" class="form-control" rows="6" required="" placeholder="Message"></textarea>
									</div>

									<button type="submit" class="btn btn-primary btn-lg">Send</button>
								</form>
							</div>
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
