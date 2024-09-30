audio_play_sound(snd_intro,10,false)

global.Puntos = 0; //puntaje de videojuego
global.Vidas = 3; //vida del personaje
global.Power = false; //boost del npersonaje
global.Bonos = false; //bono para más puntos
global.Enemigo = false; //enemigos

alarm[0] = room_speed * 10;
