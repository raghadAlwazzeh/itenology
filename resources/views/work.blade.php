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
                              <h1>WORK Details</h1>
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
                                <h2>MD 202 from MD 450 to I-95/I-495 Roadway Diet Lane Configuration</h2>
                                <img class="service-image" src="{{ asset('img/work-2.png') }}" alt="work-image">
                                <div class="service-details">
                                    <p class="main-desc">
                                        MD 202 connects major communities along the center of Prince George's County. This corridor was studied for a roadway diet lane configuration from MD 450 to I-95/I-495 to create an exclusive lane for bus travels.
                                        Itenology Corporation performed a comprehensive data collection and field observation along the corridor and provided the final technical report which included capacity analysis, crash analysis, field observation, data collection and traffic volumes, and description of the corridor study, as well as recommendations on the roadway diet lane configuration.
                                    </p>
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
