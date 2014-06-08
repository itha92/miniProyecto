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