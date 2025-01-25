
accept_key= keyboard_check_pressed(vk_space);

textbox_x = camera_get_view_x(view_camera[0])+100;
textbox_y = camera_get_view_y(view_camera[0])+450;


//-------------setup---------------//


if setup == false{

	setup = true;
	draw_set_font(fnt_dialog);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	
//-----------loop atraves das paginas-------------// 
	for(var p=0; p < page_number; p++){
	
		
		text_lenght[p] = string_length(text[p]);
		
		//pegar a posição x para a caixa de texto
			//sem personagem(centralizar a caixa na tela)
		text_x_offset[p] = 44;
	
	}

}
	

//---------------escrevendo o texto---------------//


if(draw_char < text_lenght[page])
{
	draw_char += text_spd;
	draw_char = clamp(draw_char,0,text_lenght[page]);
}



//---------------virar as paginas--------------//

if accept_key
{

	//se a escrita estiver pronta pode ir para a proxima pagina
	
	if draw_char == text_lenght[page]
		{
			//proxima pagina
			if page < page_number -1{
				page++;
				draw_char=0;
			}else
			{
				instance_destroy()
			}
		//não terminou de escrever
		}else{
		
			draw_char= text_lenght[page]
		
		}

}




//----------------desenhar a caixa de texto----------------------//

txtb_img += txtb_img_spd;
txtb_spr_w = sprite_get_width(txtb_spr);
txtb_spr_h = sprite_get_height(txtb_spr)

draw_sprite_ext(txtb_spr,txtb_img, textbox_x + text_x_offset[page],textbox_y,textbox_width/txtb_spr_w,textbox_x/txtb_spr_h,0,c_white,1);

//------------------desenhar o texto--------------------------//


var _drawtext = string_copy(text[page],1,draw_char)
draw_text_ext( textbox_x + text_x_offset[page] + border,textbox_y + border, _drawtext, line_sep, line_width )
