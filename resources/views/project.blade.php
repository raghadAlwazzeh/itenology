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
                              <h1>Work Details</h1>
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
                                <h2>{{$project->project_name}}</h2>
                                <img class="service-image" src="\storage\{{$project->project_image_url}}" alt="service-image">
                                <div class="service-details">
                                    <p class="main-desc">{!! $project->project_description !!}</p>

                                    @foreach ($subtitles as $subtitle)
                                    <dl>
                                        <dt>{{$subtitle->subtitle_name}}</dt>
                                        <dd>{{$subtitle->subtitle_description}}</dd>
                                    </dl>
                                    @endforeach
                                   
                                    
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