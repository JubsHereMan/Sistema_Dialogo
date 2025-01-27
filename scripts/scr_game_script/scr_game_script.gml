///@param text_id

function scr_game_script(_text_id){
	
	switch(_text_id){
	
	case "npc 01":
			scr_text("Ola Emília como você esta?")
				scr_option("Yeah","npc 01 - yes")
				scr_option("Nah", "npc 01 - no")
	break;
		case "npc 01 - yes":
			scr_text("Poxa que bom que você está bem")
		
		break
		
		case "npc 01 - no":
			scr_text("Poxa triste")
			
		break
	
	case "npc 02":
			scr_text("Ola Júlio como você esta?")
			scr_text("que bom que você está bem :)")
	break;
	
	
	case "npc 03":
			scr_text("Ola Mauricio como você esta?")
			scr_text("que bom que você está bem :)")
	break;
	
	}

}