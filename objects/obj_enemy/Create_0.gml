/// @description Configuracion enemigo
randomize();
sprite_index = spr_enemy;
image_index = 0;

// Iniciamos el movimiento del enemigo

lives = 3; // Número inicial de vidas
speed = 2;        // Velocidad de movimiento
direction = 0;    // Inicialmente moviéndose a la derecha (0 grados)


start_x = x;   // Guardar la posición inicial en la variable start_x
distance_max = 200;  // Máxima distancia a recorrer antes de cambiar de dirección (ajústala a tu necesidad)
speed = 1;     // Velocidad de movimiento
direction = 0; // Comienza moviéndose a la derecha (0 grados)
sprite_index = spr_enemy;  // Sprite inicial
global.lives = 3; 
gravedad = .275 //
xspd = 0;
yspd = 0;