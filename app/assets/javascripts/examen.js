var cont = 1;

$('.show-hint').on('click',function(){
	if (cont === 1 ) {
		$($(this).parent().siblings().children('.alert-box')[0]).show();
		cont = 2;
	}else{
		$($(this).parent().siblings().children('.alert-box')[1]).show();
		cont = 1;
	}
});

$('.close').on('click',function(){
	$(this).parent().hide();
});

var shuffleArray = function (array) {
    for (var i = array.length - 1; i > 0; i--) {
        var j = Math.floor(Math.random() * (i + 1));
        var temp = array[i];
        array[i] = array[j];
        array[j] = temp;
    }
    return array;
}

//pendiente shufulear todos los elementos del group list de las respuestas

$.each($('.select_opt'), function(ps,el){
	var $tmp = shuffleArray($(el).children());
	$(el).children().replaceWith($tmp);
});

$('#submit_btn').on('click',function(){
	$(this).attr('disabled',true);
	var $arr = $('.select_opt :selected').parent();
	$.post( "/verify", function( data ) {
		$.each($arr, function(index, element){
			if (data[index].answer === $($arr[index]).children(':selected').text()) {
				$($arr[index]).parent().siblings().find('.subheader').prepend('<i class="fi-check"> </i>');
				$('.score').text($('.fi-check').length + "/" + $('.panel').length );
			}else{
				$($arr[index]).parent().siblings().find('.subheader').prepend('<i class="fi-x"> </i>');
			}
		});
	});

	setTimeout(updateScore(),1000);
	
});

var updateScore = function(){
	
	$('.alert-box.success.radius').show();
}