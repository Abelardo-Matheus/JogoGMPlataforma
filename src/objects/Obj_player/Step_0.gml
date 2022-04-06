
if(keyboard_check(vk_right) && place_free(x+spd,y)){
x+=spd;
image_xscale = +1;
}
else if(keyboard_check(vk_left) && place_free(x-spd,y)){
x-=spd;
image_xscale = -1;
}


if(keyboard_check(ord("X"))){
	
	if(!place_free(x,y+1)){
		jump = true;
	}
	
}if(jump)
{

	if(jumpframes < jumpaltura){
	
	if(place_free(x,y-spdjump)){
		jumpframes+=spdjump;
		y -=spdjump;
	}else{
		jump = false;
		jumpframes = 0;
	}
	}else{
		jump = false;
		jumpframes = 0;
		
	}
	
}
	
	
	


if(jump == false){
if(place_free(x,y+spdfall)){
	
	y+=spdfall;
	spdfall+=grvt;
	if(spdfall>maxspdfall){
		spdfall=maxspdfall;	
	}

}else{
	spdfall = 2;
	while(place_free(x, y+1)){
		y++;
	}
}
}
