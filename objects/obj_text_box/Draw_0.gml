
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
				//linkar os textos para as opções
					if option_number > 0{
						create_textbox(option_link_id[option_pos])
						
					}
				instance_destroy()
			}
		//não terminou de escrever
		}else{
		
			draw_char= text_lenght[page]
		
		}

}






//----------------desenhar a caixa de texto----------------------//
var _txtb_x=textbox_x + text_x_offset[page];
var _txtb_y=textbox_y;

txtb_img += txtb_img_spd;
txtb_spr_w = sprite_get_width(txtb_spr);
txtb_spr_h = sprite_get_height(txtb_spr)

draw_sprite_ext(txtb_spr,txtb_img, _txtb_x,_txtb_y,textbox_width/txtb_spr_w,textbox_x/txtb_spr_h,0,c_white,1);



//-------------------opções----------------------//

if(draw_char == text_lenght[page] && page == page_number-1 )
{

//desenho de escolha
	option_pos += keyboard_check_pressed(vk_down)- keyboard_check_pressed(vk_up);
	option_pos = clamp(option_pos,0,option_number -1)
	



//desenhar as opções
	var _op_space = 40;
	var _op_bord =4;
	for (var op=0;op<option_number;op++)
	{
	
		//caixa de opção
		var _o_w= string_width(option[op]) + _op_bord *2;
		draw_sprite_ext(txtb_spr,txtb_img,_txtb_x + 16, _txtb_y - _op_space *option_number +  _op_space*op,_o_w/txtb_spr_w,(_op_space -3)/txtb_spr_h,0,c_white,1);
		
		
		
		//seletor de opção
		
		if option_pos == op{
			draw_sprite(Spr_selector,0,_txtb_x,  _txtb_y - _op_space *option_number +  _op_space*op )	;
		}
		
		
		//o texto de opção
		
		
		draw_text( _txtb_x +16 + _op_bord, _txtb_y - _op_space *option_number +  _op_space*op + 2, option[op])
		
	
	}

}


//------------------desenhar o texto--------------------------//


var _drawtext = string_copy(text[page],1,draw_char)
draw_text_ext( textbox_x + text_x_offset[page] + border,textbox_y + border, _drawtext, line_sep, line_width )
