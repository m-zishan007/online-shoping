$(function(){
	//solving the active menu problem
	switch(menu){
		case 'About Us':
			$('#about').addClass('active');
			break;
		case 'Contact':
			$('#contact').addClass('active');
			break;
		/*case 'View Product':
			$('#listProducts').addClass('active');
			break;*/
		default:
			$('#home').addClass('active');
			break; 
	}
});	