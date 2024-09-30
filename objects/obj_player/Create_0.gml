/// @VARIABLES DEL PLAYER
// DECLARAR VARIABLES DEL PERSONAJE PLAYER

xspd=0;
yspd=0;

move_spd = 2;
move_dir = 0;

sprite[RIGHT] =spr_derecha;
sprite[UP] =spr_arriba;
sprite[LEFT] =spr_izquierda;
sprite[DOWN] =spr_abajo;

face =DOWN;

//saltos

gravedad = .275 //
saltoPixel = 10 //salto por pixel
jspd = -4.15; //velocidad de salto al caer

bono_collected = 0;
stars_collected = 0;
//has_won = false;

//vidas
lives = 3;            // El jugador empieza con 3 vidas
invulnerable = false;  // El jugador no es invulnerable al inicio


// Guardar posición inicial del jugador
start_x = x;
start_y = y;
 //sonido 
 audio_play_sound(snd_intro, 1, true); 
