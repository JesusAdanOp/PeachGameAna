/// @description Direccion del personaje
//Llamamos la funcion y asignamos las teclas para direccion
right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);
jump_key = keyboard_check_pressed(vk_up);

// Inicializar algunas variables faltantes
move_spd = 4;  // Velocidad de movimiento
gravedad = 0.5; // Gravedad
jspd = -10; // Velocidad de salto
face = DOWN;  // Dirección inicial (hacia abajo)

// Calculamos la velocidad de movimiento 
xspd = (right_key - left_key) * move_spd;

// Asignamos sprites y máscaras
mask_index = sprite[DOWN]; 

if yspd == 0 {
    if xspd > 0 { face = RIGHT; }
    if xspd < 0 { face = LEFT; }
}

if xspd == 0 {
    if yspd > 0 { face = DOWN; }
    if yspd < 0 { face = UP; }
}

sprite_index = sprite[face];

// Colisión horizontal
var _sub_pixel = 0.5;
if place_meeting(x + xspd, y, obj_wall)  // Verificación de colisión con la pared
{
	show_debug_message("Colision X! ");
    var _pixel_check = _sub_pixel * sign(xspd);
    while !place_meeting(x + _pixel_check, y, obj_wall)
    {
        x += _pixel_check;
    }
    xspd = 0;  // xspd con valor 0 al momento de colisionar
}
x += xspd;

// Movimiento de Y (Gravedad)
yspd += gravedad;

// Salto
if jump_key && place_meeting(x, y + 1, obj_wall)  // Verificación de colisión con la pared para el salto
{
    yspd = jspd;
}

// Colisión vertical
if place_meeting(x, y + yspd, obj_wall)  // Verificación de colisión con la pared
{
	show_debug_message("Colision Y! ");
    var _pixel_check = _sub_pixel * sign(yspd);
    while !place_meeting(x, y + _pixel_check, obj_wall)
    {
        y += _pixel_check;
    }
    yspd = 0;  // yspd a 0 cuando colisione
}

y += yspd;

// Animación del personaje
if xspd == 0 && yspd == 0 
{
    image_index = 0;
}


