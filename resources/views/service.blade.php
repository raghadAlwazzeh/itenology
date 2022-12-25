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
                              <h1>Service Details</h1>
                            </div>
                        </div>
                    </div><!-- /.row -->
                </div><!-- /.container-fluid -->
            </section>


            <div class="container">
                <div class="content-wrapper">
                    <div class="service-page-wrapper">
                        <div class="row">
                            <div class="col-md-12">
                                <h2>Traffic Engineering</h2>
                                <img class="service-image" src="{{ asset('img/service-1.jpg') }}" alt="service-image">
                                <div class="service-details">
                                    <p class="main-desc">Itenology Corporation's staff includes registered professional traffic engineers specializing in the performance of Traffic Operations Analyses and development of Traffic Engineering Studies.</p>
                                    <dl>
                                        <dt>Traffic Engineering Studies:</dt>
                                        <dd>Itenology Corporation's staff members are experienced in the performance of a wide variety of Traffic Engineering Studies including Traffic Impact Studies, Before & After Studies, Candidate Safety Improvement Intersection Studies, etc. These studies may be conducted to identify safety conditions or operational constraints, to assess the potential effects of a new development, or to identify potential improvement concepts.</dd>
                                    </dl>
                                    <dl>
                                        <dt>Traffic Operations Analyses: </dt>
                                        <dd>Itenology Corporation's Traffic Engineering staff is well versed in the use of a variety of traffic operations analysis tools and techniques including Critical Lane Volume Analyses and Highway Capacity Manual 2010 techniques, as well as SidraIntersection, Synchro/SimTraffic and Vissim software tools. Analyses may be conducted as either static or simulation, and may be performed for stop-controlled intersections, signalized intersections, roundabouts, interchanges, freeway segments, and arterial corridors.</dd>
                                    </dl>
                                    <dl>
                                        <dt>Traffic Volumes:</dt>
                                        <dd>Itenology Corporation's Traffic Engineers are also experienced in the development of balanced turning movement volumes for existing and future conditions. Traffic volume data developed typically includes AM and PM peak hour data, Average Daily Traffic (ADT) volume data, and vehicle classification data. Accurate traffic volume data yields reliable results.</dd>
                                    </dl>
                                    <dl>
                                        <dt>Presentations and Reports:</dt>
                                        <dd>Itenology Corporation's staff includes well-trained writers, experienced in the development of presentation materials for both client and public meetings. Moreover, our Traffic Engineering Studies, analyses results, and improvement concepts are presented in concise, easy to follow reports.</dd>
                                    </dl>

                                </div>
                                <div class="our-work">
                                    <h3>OUR WORK</h3>
                                    <div class="row">

                                        <div class="col-md-4">
                                            <a href="#">
                                                <div class="image-wrapper">
                                                    <h5>Congestion Management</h5>
                                                    <img class="service-image" src="{{ asset('img/work-1.jpg') }}" alt="service-image">
                                                </div>
                                            </a>
                                        </div>

                                        <div class="col-md-4">
                                            <a href="#">
                                                <div class="image-wrapper">
                                                    <h5>Congestion Management</h5>
                                                    <img class="service-image" src="{{ asset('img/work-1.jpg') }}" alt="service-image">
                                                </div>
                                            </a>
                                        </div>

                                        <div class="col-md-4">
                                            <a href="#">
                                                <div class="image-wrapper">
                                                    <h5>Congestion Management</h5>
                                                    <img class="service-image" src="{{ asset('img/work-1.jpg') }}" alt="service-image">
                                                </div>
                                            </a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!-- /.service-page-wrapper -->
                </div><!-- /.content-wrapper -->
            </div><!-- /.container -->
    <!-- Preloader -->
    <div id="preloader">
        <div id="status">
            <div class="status-mes"></div>
        </div>
    </div>


@stop
