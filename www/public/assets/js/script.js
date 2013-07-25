$(function(){

	var promises_done = 20;
	var promises_inprogress = 22;
	var promises_todo = 12;

	var color_done = '#89a154';
	var color_inprogress = '#d6963b';
	var color_todo = '#984f3b';

	var month = 20;
	var period = 60;

	$('#time').html(month + ' out of ' + period + ' months<div></div>');
	$('#time > div').width(0);

	$('#time > div').animate({
		width: month/period*100 + '%',
	}, 2000);


	var chart = $('#chart').get(0).getContext('2d');

	var data = [
		{
			value: promises_done/(promises_done+promises_inprogress+promises_todo)*100,
			color: color_done
		},
		{
			value: promises_inprogress/(promises_done+promises_inprogress+promises_todo)*100,
			color : color_inprogress
		},
		{
			value: promises_todo/(promises_done+promises_inprogress+promises_todo)*100,
			color : color_todo
		}			
	];

	var options = {
		animationEasing : "easeOutQuart",
		animationSteps : 150,
	}

	var myPie = new Chart(chart).Pie(data, options);

	setTimeout(function(){
		$('#arrow').rotate({
			duration: 2000,
			angle: 0, 
			animateTo: promises_done/(promises_done+promises_inprogress+promises_todo)*360,
			center: ['50px', '73px'] 
		});
	}, 2500);
	
});