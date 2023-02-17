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
                                <h2>{{$service->name}}</h2>
                                <img class="service-image" src="\storage\{{$service->image_url}}" alt="service-image">
                                <div class="service-details">
                                    <p class="main-desc">{!! $service->description !!}</p>

                                    @foreach ($subtitles as $subtitle)
                                    <dl>
                                        <dt>{{$subtitle->subtitle_name}}</dt>
                                        <img src="{{ asset('img/service-subtitle.jpg') }}" alt="">
                                        <dd>{!! $subtitle->subtitle_description !!}</dd>
                                    </dl>
                                    @endforeach



                                </div>
                                @if(empty($projects))
                                <div class="our-work">
                                    <h3>OUR WORK</h3>
                                    <div class="row">

                                    @foreach ($projects as $project)
                                    <div class="col-md-4">
                                            <a href="/project/{{$project->id}}">
                                                <div class="image-wrapper">
                                                    <h5>{{$project->project_name}}</h5>
                                                    <img class="service-image" src="\storage\{{$project->project_image_url}}" alt="service-image">
                                                </div>
                                            </a>
                                        </div>

                                    @endforeach





                                        </div>

                                    </div>
                                </div>
                                @endif
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
