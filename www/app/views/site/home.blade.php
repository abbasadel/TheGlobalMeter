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
    <div class="span4" id="meter-description"><blockquote>{{$meter->description}}</blockquote></div>
    <div class="span4"><img src="{{ '/' . $meter->logo}}" title="{{$meter->title}}" /></div>
    <div class="span4" id="meter-info">
        <div class="done"> 
            <span class="number">8</span> Overall promises <b>achieved</b>
        </div>
        <div class="inprogress"> 
            <span class="number">12</span> Overall promises <b>in progress</b>
        </div>
        <div class="notdone"> 
            <span class="number">22</span> Overall promises <b>not done</b>
        </div>

    </div>
</div>

<div class="row-fluid">


    <div class="tabbable" id="catsTabs">
        <div>
            <ul class="nav nav-tabs" style="overflow: hidden">
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
                    <tr class="promise">
                        <td class="{{$promise->statusText()}} ">

                            <p><i class="{{$promise->statusIcon()}}"></i>
                                {{$promise->name}}</p>
                            <blockquote class="description">
                                {{$promise->description}}
                            </blockquote>
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
        $('#catsTabs a span.title').fadeOut(300);
        $(this).find('span.title').show(1000);
    })
    $('#catsTabs a:first').tab('show'); // Select first tab
    $('#catsTabs a:first span.title').fadeIn(500);


    //promise description effect

    $('tr.promise').click(
            function() {
                var status = $(this).find('.description').is(":visible")
                if(status){
                    $(this).find('.description').hide(200);
                }else{
                    $(this).find('.description').show(200);
                }
            });



</script>
@stop

@section('meter-name')
{{$meter->title}}
@stop