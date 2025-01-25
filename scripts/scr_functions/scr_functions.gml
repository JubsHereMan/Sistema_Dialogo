
/// @param text
function scr_text(_text){
	
	text[page_number] = _text;
	
	page_number++;
	

}

/// @param text_id
function create_textbox(_text_id){
		with(instance_create_depth(0,0,-9999,obj_text_box))
			{	
				scr_game_script(_text_id)
			}
}
