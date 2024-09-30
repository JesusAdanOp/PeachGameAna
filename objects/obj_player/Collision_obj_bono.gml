// Incrementar el contador de monedas en el objeto jugador
obj_player.bono_collected += 1; 

with (other )
{
instance_destroy();
}

// Sonido para moneda
audio_play_sound(snd_bono, 1, false);