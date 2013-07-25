@extends('site.layouts.meter')
{{-- Web site Title --}}
@section('title')
My Meter
@parent
@stop


{{-- Content --}}
@section('content')
<br />
<div class="row-fluid" id="header">
    <div class="span4" id="meter-description">{{$meter->description}}</div>
    <div class="span4"><img src="{{ '/' . $meter->logo}}" title="{{$meter->title}}" /></div>
    <div class="span4" id="meter-info">
        <div class="done"> 
            <span class="number">8</span> Overall promises achieved
        </div>
        <div class="inprogress"> 
            <span class="number">12</span> Overall promises in progress
        </div>
        <div class="notdone"> 
            <span class="number">22</span> Overall promises not done
        </div>

    </div>
</div>

<div class="row-fluid">


    <div class="tabbable" id="catsTabs">
        <div>
            <ul class="nav nav-tabs">
                @foreach ($meter->categories as $category)
                <li>
                    <a href="#tab{{ $category->id }}" title="{{ $category->name }}"><h3><i class="{{$category->icon}}"></i><span class="title"> {{ $category->name }}</span></h3></a>
                </li>
                @endforeach
            </ul>
        </div>
        <div class="tab-content">
            @foreach ($meter->categories as $category)
            <div class="tab-pane" id="tab{{ $category->id }}">

                <table class="table table-striped">
                    @foreach($category->promises as $promise)
                    <tr>
                        <td class="{{$promise->statusText()}}">
                            <i class="{{$promise->statusIcon()}}"></i>
                            {{$promise->name}}
                        </td>
                    </tr>
                    @endforeach
                </table>
            </div>
            @endforeach
        </div>
    </div>


</div>

@stop



@section('scripts')
<script>
    $('#catsTabs a span.title').hide();
    $('#catsTabs a').click(function(e) {
        e.preventDefault();
        $(this).tab('show');
        $('#catsTabs a span.title').fadeOut(500);
        $(this).find('span.title').fadeIn(1000);
    })
    $('#catsTabs a:first').tab('show'); // Select first tab
    $('#catsTabs a:first span.title').fadeIn(500);


    //tabs hide effect


</script>
@stop

@section('meter-name')
{{$meter->title}}
@stop