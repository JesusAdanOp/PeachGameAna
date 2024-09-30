//Creamos variables y llamamos al metodo para indicar las teclas
rigth_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down); 

// Calculamos velocidad para el personaje 

xspd = (rigth_key - left_key) * move_spd;
yspd = (down_key - up_key) * move_spd;


// Asignamos sprites 
mask_index=sprite[DOWN];

if yspd == 0 
{
	if xspd > 0 {face=RIGHT};
	if xspd < 0 {face=LEFT};
}
if xspd == 0
{
	if yspd > 0 {face=DOWN};
	if yspd < 0 {face=UP};
}
sprite_index= sprite[face];


//Colision 
if place_meeting(x + xspd, y, obj_wall ) == true 
{
	xspd=0;
}

if place_meeting(x, y+yspd,obj_wall) == true
{
	yspd=0;
}

// Incrementar velocidad 
x = x + xspd; 
y += yspd; 

//Animacion del personaje
if xspd == 0 && yspd == 0 
{
	image_index = 0;
}

depth = - bbox_bottom;
	
