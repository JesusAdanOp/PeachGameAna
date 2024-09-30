/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

#region  //Dibujar el score
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_score);
draw_text(32,16,"PUNTAJE:"+string(global.Puntos));
#endregion 

#region //Dibujar las vidas 
draw_text(room_width/2,16,"VIDAS:   " );
//Loop para verificar la cantidad de vidas que tiene
for (var i=0; i< global.Vidas; i+= 1)
 {
	 draw_sprite_stretched(spr_afk,2,room_width/2+string_width("VIDAS:   ")+ (i*32),16,32,32);
 }
#endregion


#region //Dibujar el ready 

#endregion 

#region//Dibujar el bono

#endregion

#region//Dibujar el GameOver

#endregion