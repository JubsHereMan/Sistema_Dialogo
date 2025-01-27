
depth= -9999

//parametros caixa de texto


textbox_width=400;
textbox_height=120;
border = 8;
line_sep= 20;
line_width= textbox_width - border *4;
txtb_spr=spr_textbox;
txtb_img=0
txtb_img_spd=6/60;



// o texto


page=0;
page_number=0
text[0]="";
text_lenght[0]= string_length(text[0]);


char[0,0]= "";
char_x[0,0]=0;
char_y[0,0]=0;


draw_char=0;
text_spd=1;



//--------------opções-------------------------//
option[0]="";
option_link_id[0] =-1;
option_pos=0;
option_number=0;


setup= false;


//-------------------EFEITOS--------------------------//


scr_set_default_for_text();
last_free_space=0









