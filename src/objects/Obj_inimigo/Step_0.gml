
if(place_free(x,y+spd))
{
y+=spd;	
}

if(dir == 1)
{
	if(place_free(x+spd,y) && (place_meeting(x+45,y+spd,Obj_terraalta) || place_meeting(x+45,y+spd,Obj_grama)))
	{
	x+=spd;	 
	
	}else
	{
		dir = -1;
		image_xscale = 1;
	}
	
}
if(dir == -1){
	
	if(place_free(x-spd,y)  && (place_meeting(x-45,y+spd,Obj_terraalta )|| place_meeting(x-45,y+spd,Obj_grama)))
	{
	x-=spd;	 
	
	}else
	{
		dir = 1;
		image_xscale = -1;
	}
	
}



