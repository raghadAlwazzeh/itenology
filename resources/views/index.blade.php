@extends('app')
@section('css')
    <link rel="stylesheet" href="{{ asset('css/style.css') }}">
@stop
@section('main')
            <div id="x-corp-carousel" class="carousel slide hero-slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#x-corp-carousel" data-slide-to="0" class="active"></li>
                    <li data-target="#x-corp-carousel" data-slide-to="1"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img src="img/slider-bg2.png" alt="Hero Slide">
                        <!--Slide Image-->

                        <div class="container">
                            <div class="carousel-caption">
                                <small class="animated fadeIn">CALL US TODAY</small>
                                <div class="phone animated lightSpeedIn">(410) 715-0100</div>
                                <h1 class="animated lightSpeedIn">Engineers | Planners | Innovators </h1>
                                <p class="lead animated lightSpeedIn">AUTOMATING YOUR BUSINESS PROCESS <br> DEVELOPING GREEN SOLUTIONS.</p>
                                <a class="btn btn-primary animated lightSpeedIn" href="#">Work With Us Today</a>
                            </div>
                            <!--.carousel-caption-->
                        </div>
                        <!--.container-->
                    </div>

                </div>
                <!--.carousel-inner-->

                <!-- Controls -->
                <a class="left carousel-control" href="#x-corp-carousel" role="button" data-slide="prev">
                    <i class="fa fa-angle-left" aria-hidden="true"></i>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#x-corp-carousel" role="button" data-slide="next">
                    <i class="fa fa-angle-right" aria-hidden="true"></i>
                    <span class="sr-only">Next</span>
                </a>
            </div>
            <!-- #x-corp-carousel-->


            <div class="container">
                <div class="content-wrapper">
                    <section class="intro-wrapper">
                        <div class="row">
                            <div class="col-lg-6 col-md-8">
                                <h2 class="wow fadeInDown">Overview</h2>
                                <p class="wow fadeInDown">Established in 2001, Itenology Corporation offers full Transportation Engineering, Transportation Planning, Construction Inspection and Management, GIS and IT application developments to Government and private sectors.</p>

                                <h3 class="wow fadeInDown">Engineering Services</h3>
                                <p class="wow fadeInDown">Itenology offers extensive knowledge and expertise in traffic engineering including data collection, studies and analysis, travel forecasting, demand modeling, and operational and capacity analyses.
                                    <br>
                                    Itenology Corporation employs Professional Engineers who are registered in multiple states and who possess more than 60 years of experience in the inspection of bridges and ancillary structures.
                                    <br>
                                    Itenology Team Leaders are NBIS certified and have performed hands-on inspection on over 1000 bridges and more than 5000 ancillary structures including sign structures, signal structures, and high-mast lighting poles. Itenology also has professional engineers who have performed construction inspection on roadway infrastructures, new bridge construction, caisson drilling/pouring, and rehab of historic structures; and prepared training material and certificates for the inspection of the installation of sign structures.
                                </p>
                                <h3 class="wow fadeInDown">Information Technology</h3>
                                <p class="wow fadeInDown">Itenology provides its clients with state-of-the-art technology services and innovative solutions that aid them in solving their business challenges.
                                    <br>
                                    Through the use of web, desktop and mobile technologies, we make it possible for our clients to access and visualize their data spatially thus enabling them to raise and respond to questions that would otherwise not be possible.
                                    <br>
                                    Itenology utilizes the latest technology and is expert in Dot NET Application Development, Mobile Application Development, SharePoint Solutions, Enterprise Database Applications, Oracle Database and SQL Database Management and Development.
                                </p>
                            </div>

                            <div class="col-lg-6 col-md-4"></div>
                        </div><!-- /.row -->
                    </section><!-- /.intro-wrapper -->


                    <section class="service-wrapper">
                        <h2 class="section-title wow fadeInDown">Our Services</h2>
                        <div class="row">
                          <div class="col-md-6 wow fadeInRight">
                            <div class="media">
                              <a class="media-left" href="#">
                                <span class="icon bg1 flaticon-increasing5"></span>
                              </a>
                              <div class="media-body">
                                <h3 class="media-heading"><a href="#">Traffic Engineering</a></h3>
                                <p>Assertively target turnkey technologies whereas covalent ROI. Distinctively grow viral mindshare rather than collaborative meta-services redibly initiate.</p>
                              </div> <!-- /.media-body -->
                            </div> <!-- /.media -->
                          </div> <!-- /.col-md-6 -->

                          <div class="col-md-6 wow fadeInRight">
                            <div class="media">
                              <a class="media-left" href="#">
                                <span class="icon bg2 flaticon-syncing"></span>
                              </a>
                              <div class="media-body">
                                <h3 class="media-heading"><a href="#">Inspection</a></h3>
                                <p>Assertively target turnkey technologies whereas covalent ROI. Distinctively grow viral mindshare rather than collaborative meta-services redibly initiate.</p>
                              </div> <!-- /.media-body -->
                            </div> <!-- /.media -->
                          </div> <!-- /.col-md-6 -->

                          <div class="col-md-6 wow fadeInRight">
                            <div class="media">
                              <a class="media-left" href="#">
                                <span class="icon bg3 flaticon-file24"></span>
                              </a>
                              <div class="media-body">
                                <h3 class="media-heading"><a href="#">Construction Management and Inspection</a></h3>
                                <p>Assertively target turnkey technologies whereas covalent ROI. Distinctively grow viral mindshare rather than collaborative meta-services redibly initiate.</p>
                              </div> <!-- /.media-body -->
                            </div> <!-- /.media -->
                          </div> <!-- /.col-md-6 -->

                          <div class="col-md-6 wow fadeInRight">
                            <div class="media">
                              <a class="media-left" href="#">
                                <span class="icon bg4 flaticon-royalty"></span>
                              </a>
                              <div class="media-body">
                                <h3 class="media-heading"><a href="#">Web Development</a></h3>
                                <p>Assertively target turnkey technologies whereas covalent ROI. Distinctively grow viral mindshare rather than collaborative meta-services redibly initiate.</p>
                              </div> <!-- /.media-body -->
                            </div> <!-- /.media -->
                          </div> <!-- /.col-md-6 -->
                        </div> <!-- /.row -->
                    </section>

                    <section class="handover-wrapper">
                        <h2 class="section-title wow fadeInDown">Our Work</h2>
                        <div id="css-handover-carousel" class="carousel slide" data-ride="carousel">
                          <!-- Indicators -->
                          <ol class="carousel-indicators">
                            <li data-target="#css-handover-carousel" data-slide-to="0" class="active"></li>
                            <li data-target="#css-handover-carousel" data-slide-to="1"></li>
                            <li data-target="#css-handover-carousel" data-slide-to="2"></li>
                          </ol>

                          <!-- Wrapper for slides -->
                          <div class="carousel-inner" role="listbox">
                            <div class="item active">
                                <div class="row">
                                    <div class="col-md-6 col-md-push-6 wow fadeRight">
                                        <div class="handover-work-thumb">
                                            <img src="{{ asset('img/work-1.jpg') }}" alt="">
                                        </div><!-- /.client-thumb -->
                                    </div><!-- /.col-md-6 -->

                                    <div class="col-md-6 col-md-pull-6 work-col">
                                        <div class="handover-project">
                                            <h3>Proactively productivate e-business e-commerce</h3>
                                            <p>Efficiently communicate installed base leadership skills with extensible testing procedures. Enthusiastically evolve leading-edge scenarios.</p>
                                            <a class="btn btn-primary" href="portfolio-single.html" role="button">Read More</a>
                                        </div><!-- /.handover-project -->
                                    </div><!-- /.col-md-6 -->
                                </div><!-- /.row -->
                            </div><!-- /.item -->

                            <div class="item">
                                <div class="row">
                                    <div class="col-md-6 col-md-push-6 wow fadeRight">
                                        <div class="handover-work-thumb">
                                            <img src="{{ asset('img/work-1.jpg') }}" alt="">
                                        </div><!-- /.client-thumb -->
                                    </div><!-- /.col-md-6 -->

                                    <div class="col-md-6 col-md-pull-6 work-col">
                                        <div class="handover-project">
                                            <h3>Proactively productivate e-business e-commerce</h3>
                                            <p>Efficiently communicate installed base leadership skills with extensible testing procedures. Enthusiastically evolve leading-edge scenarios.</p>
                                            <a class="btn btn-primary" href="portfolio-single.html" role="button">Read More</a>
                                        </div><!-- /.handover-project -->
                                    </div><!-- /.col-md-6 -->
                                </div><!-- /.row -->
                            </div><!-- /.item -->

                            <div class="item">
                                <div class="row">
                                    <div class="col-md-6 col-md-push-6 wow fadeRight">
                                        <div class="handover-work-thumb">
                                            <img src="{{ asset('img/work-1.jpg') }}" alt="">
                                        </div><!-- /.client-thumb -->
                                    </div><!-- /.col-md-6 -->

                                    <div class="col-md-6 col-md-pull-6 work-col">
                                        <div class="handover-project">
                                            <h3>Proactively productivate e-business e-commerce</h3>
                                            <p>Efficiently communicate installed base leadership skills with extensible testing procedures. Enthusiastically evolve leading-edge scenarios.</p>
                                            <a class="btn btn-primary" href="portfolio-single.html" role="button">Read More</a>
                                        </div><!-- /.handover-project -->
                                    </div><!-- /.col-md-6 -->
                                </div><!-- /.row -->
                            </div><!-- /.item -->

                          </div><!-- /.carousel-inner -->
                        </div><!-- /.carousel -->
                    </section>


                    <section class="testimonial-wrapper">
                        <h2 class="section-title wow fadeInDown">What our Clients Say</h2>
                        <div id="css-testimonial-carousel" class="carousel slide" data-ride="carousel">
                          <!-- Indicators -->
                          <ol class="carousel-indicators">
                            <li data-target="#css-testimonial-carousel" data-slide-to="0" class="active"></li>
                            <li data-target="#css-testimonial-carousel" data-slide-to="1"></li>
                            <li data-target="#css-testimonial-carousel" data-slide-to="2"></li>
                          </ol>

                          <!-- Wrapper for slides -->
                          <div class="carousel-inner">
                            <div class="item active">
                                <div class="row">
                                    <div class="col-md-8 col-sm-7 wow fadeInLeft">
                                        <div class="client-testimonial">
                                          <p>Your efficiency is just impressive! Thanks a lot for you and your team's hard work.</p>
                                          <span class="client-name">JIANYANG (JAY) ZHENG</span>, <span class="client-org">STATE HIGHWAY ADMINISTRATION</span>
                                        </div>
                                    </div><!-- /.col-md-8 -->
                                    <div class="col-md-4 col-sm-5 wow fadeInRight">
                                        <div class="client-thumb">
                                            <img src="img/tm-4.png" alt="">
                                        </div><!-- /.client-thumb -->
                                    </div><!-- /.col-md-4 -->
                                </div><!-- /.row -->
                            </div><!-- /.item -->
                            <div class="item">
                                <div class="row">
                                    <div class="col-md-8 col-sm-7">
                                        <div class="client-testimonial">
                                          <p>Thanks for your quick response and excellent customer service.</p>
                                          <span class="client-name">DONNA BUSCEMI</span>, <span class="client-org">STATE HIGHWAY ADMINISTRATION</span>
                                        </div>
                                    </div><!-- /.col-md-8 -->
                                    <div class="col-md-4 col-sm-5">
                                        <div class="client-thumb">
                                            <img src="img/tm-4.png" alt="">
                                        </div><!-- /.client-thumb -->
                                    </div><!-- /.col-md-4 -->
                                </div><!-- /.row -->
                            </div><!-- /.item -->
                            <div class="item">
                                <div class="row">
                                    <div class="col-md-8 col-sm-7">
                                        <div class="client-testimonial">
                                          <p>You and your team did a great job making sure everything stays consistent. Great working with you, as always.</p>
                                          <span class="client-name">JON SCHMIDT</span>, <span class="client-org">STATE HIGHWAY ADMINISTRATION</span>
                                        </div>
                                    </div><!-- /.col-md-8 -->
                                    <div class="col-md-4 col-sm-5">
                                        <div class="client-thumb">
                                            <img src="img/tm-4.png" alt="">
                                        </div><!-- /.client-thumb -->
                                    </div><!-- /.col-md-4 -->
                                </div><!-- /.row -->
                            </div><!-- /.item -->
                          </div><!-- /.carousel-inner -->
                        </div><!-- /.carousel -->
                    </section><!-- /.testimonial-wrapper -->


                    {{-- <section class="trusted-client-wrapper">
                        <h2 class="section-title wow fadeInDown">We are Trusted by</h2>
                        <ul class="partner-logo">
                            <li class="wow zoomIn"><a href="#"><img src="img/partner/partner-logo-1.png" alt=""></a></li>
                            <li class="wow zoomIn"><a href="#"><img src="img/partner/partner-logo-2.png" alt=""></a></li>
                            <li class="wow zoomIn"><a href="#"><img src="img/partner/partner-logo-3.png" alt=""></a></li>
                            <li class="wow zoomIn"><a href="#"><img src="img/partner/partner-logo-4.png" alt=""></a></li>
                            <li class="wow zoomIn"><a href="#"><img src="img/partner/partner-logo-5.png" alt=""></a></li>
                            <li class="wow zoomIn"><a href="#"><img src="img/partner/partner-logo-6.png" alt=""></a></li>
                            <li class="wow zoomIn"><a href="#"><img src="img/partner/partner-logo-7.png" alt=""></a></li>
                            <li class="wow zoomIn"><a href="#"><img src="img/partner/partner-logo-8.png" alt=""></a></li>
                            <li class="wow zoomIn"><a href="#"><img src="img/partner/partner-logo-9.png" alt=""></a></li>
                        </ul>
                    </section> --}}

                    <section class="support-wrapper">
                        <div class="row">
                            <div class="col-lg-8 col-lg-offset-1">
                                <h2 class="wow fadeInDown">We have 24/7 dedicated support team</h2>
                                <p class="wow fadeInDown">Proactively negotiate interdependent quality vectors for cross functional collaboration and idea-sharing. Dynamically myocardinate business quality vectors for web-enabled leadership. Synergistically simplify world-class alignments whereas extensible.</p>

                                <a class="btn btn-primary btn-lg wow fadeInDown" href="#">Get Instant Support</a>
                            </div>
                        </div>
                    </section>
                </div><!-- /.content-wrapper -->
            </div><!-- /.container -->


            {{-- <section class="footer-widget-wrapper">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 col-sm-12">
                            <div class="footer-widget">
                                <p class="subcsribe-text wow fadeInDown">Quickly utilize installed base channels before premier expertise. Conveniently extend web-enabled niche markets without 2.0 e-markets. Collaboratively incentivize .</p>

                                <h3 class="wow fadeInDown">Subscribe to newsletter</h3>

                                <form class="wow fadeInDown">
                                  <div class="form-group">
                                    <label class="sr-only" for="exampleInputEmail1">Email address</label>
                                    <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email">
                                  </div>
                                  <button type="submit" class="btn btn-primary">Subscribe</button>
                                </form>

                                <div class="social-link wow fadeInDown">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-rss"></i></a></li>
                                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                        <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                        <li><a href="#"><i class="fa fa-youtube"></i></a></li>
                                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                        <li><a href="#"><i class="fa fa-flickr"></i></a></li>
                                    </ul>
                                </div>
                            </div><!-- /.footer-widget -->
                        </div><!-- /.col-md-6 -->
                        <div class="col-md-2 col-sm-4 col-xs-4">
                            <div class="footer-widget">
                                <h3 class="wow fadeInDown">Customer Care</h3>
                                <ul class="wow fadeInDown">
                                    <li><a href="#">Customer Support</a></li>
                                    <li><a href="#">Platinum Support</a></li>
                                    <li><a href="#">Gold Support</a></li>
                                    <li><a href="#">Standard Support</a></li>
                                    <li><a href="#">Training</a></li>
                                    <li><a href="#">Online Training</a></li>
                                    <li><a href="#">Custom Training</a></li>
                                </ul>
                            </div><!-- /.footer-widget -->
                        </div><!-- /.col-md-2 -->
                        <div class="col-md-2 col-sm-4 col-xs-4">
                            <div class="footer-widget">
                                <h3 class="wow fadeInDown">Information</h3>
                                <ul class="wow fadeInDown">
                                    <li><a href="#">Press</a></li>
                                    <li><a href="#">Articles</a></li>
                                    <li><a href="#">Reviews</a></li>
                                    <li><a href="#">Testimonials</a></li>
                                    <li><a href="#">Awards</a></li>
                                    <li><a href="#">Video Clips</a></li>
                                    <li><a href="#">Blog</a></li>
                                </ul>
                            </div><!-- /.footer-widget -->
                        </div><!-- /.col-md-2 -->
                        <div class="col-md-2 col-sm-4 col-xs-4">
                            <div class="footer-widget">
                                <h3 class="wow fadeInDown">Solutions</h3>
                                <ul class="wow fadeInDown">
                                    <li><a href="#">Contact Center</a></li>
                                    <li><a href="#">Knowledge</a></li>
                                    <li><a href="#">Management</a></li>
                                    <li><a href="#">Web Self-Service</a></li>
                                    <li><a href="#">Performance Metrics</a></li>
                                </ul>
                            </div><!-- /.footer-widget -->
                        </div><!-- /.col-md-2 -->
                    </div><!-- /.row -->
                </div><!-- /.container -->
            </section> --}}
    <!-- Preloader -->
    <div id="preloader">
        <div id="status">
            <div class="status-mes"></div>
        </div>
    </div>

@stop
