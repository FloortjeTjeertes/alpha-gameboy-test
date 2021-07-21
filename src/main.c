#include <gb/gb.h>
#include <gb/cgb.h>
#include <stdint.h>
#include <stdio.h>
//sprite struct
#include "character.c"
 

//grafix
// #include "../rec/duckie_data.c"
// #include "../rec/duckie_map.c"
#include "../rec/devil_data.c"
#include "../rec/devil_map.c"


#include "../rec/Chibi_babie_alpha2_data.c"

   struct character alpha;
    UBYTE  spritesize = 8;

 void sound(){
    
        NR52_REG = 0x80; 
        NR50_REG = 0x77; 
        NR51_REG = 0xFF;


            NR10_REG = 0x16;
            NR11_REG = 0x40;
            NR12_REG = 0x73; 
            NR13_REG = 0x00;   
            NR14_REG = 0xC3;
    }
         
        

  
    
void MoveSprite(struct character* characterstruct,UINT8 x,UINT8 y){
  
//layer 1 

move_sprite(characterstruct->spriteids[0],x,y);
move_sprite(characterstruct->spriteids[1],x+spritesize,y);
move_sprite(characterstruct->spriteids[2],x+spritesize*2,y);
move_sprite(characterstruct->spriteids[3],x+spritesize*3,y);
move_sprite(characterstruct->spriteids[3],x+spritesize*4,y);

//layer 2
move_sprite(characterstruct->spriteids[4],x,y+spritesize);
move_sprite(characterstruct->spriteids[5],x+spritesize,y+spritesize*1);
move_sprite(characterstruct->spriteids[6],x+spritesize*2,y+spritesize*1);
move_sprite(characterstruct->spriteids[7],x+spritesize*3,y+spritesize*1);
move_sprite(characterstruct->spriteids[3],x+spritesize*4,y+spritesize*1);

//layer 3
move_sprite(characterstruct->spriteids[8],x,y+spritesize*2);
move_sprite(characterstruct->spriteids[9],x+spritesize,y+spritesize*2);
move_sprite(characterstruct->spriteids[10],x+spritesize*2,y+spritesize*2);
move_sprite(characterstruct->spriteids[11],x+spritesize*3,y+spritesize*2);
move_sprite(characterstruct->spriteids[12],x+spritesize*4,y+spritesize*2);

//layer 4
move_sprite(characterstruct->spriteids[13],x,y+spritesize*3);
move_sprite(characterstruct->spriteids[14],x+spritesize,y+spritesize*3);
move_sprite(characterstruct->spriteids[15],x+spritesize*2,y+spritesize*3);
move_sprite(characterstruct->spriteids[16],x+spritesize*3,y+spritesize*3);
move_sprite(characterstruct->spriteids[17],x+spritesize*4,y+spritesize*3);

//layer 5
move_sprite(characterstruct->spriteids[3],x,y+spritesize*4);
move_sprite(characterstruct->spriteids[18],x+spritesize,y+spritesize*4);
move_sprite(characterstruct->spriteids[19],x+spritesize*2,y+spritesize*4);
move_sprite(characterstruct->spriteids[20],x+spritesize*3,y+spritesize*4);
move_sprite(characterstruct->spriteids[3],x+spritesize*4,y+spritesize*4);

// face
//layer 1

move_sprite(characterstruct->spriteids[21+0],x+spritesize+2,y+spritesize);
move_sprite(characterstruct->spriteids[21+1],x+(spritesize*2)+2,y+spritesize);

//layer 2
move_sprite(characterstruct->spriteids[21+3],x+spritesize+2,y+spritesize*2);
move_sprite(characterstruct->spriteids[21+4],x+(spritesize*2)+2,y+spritesize*2);
move_sprite(characterstruct->spriteids[21+5],x+(spritesize*4)+2,y+spritesize*2);

//layer 3
move_sprite(characterstruct->spriteids[21+6],x+spritesize+2,y+spritesize*3);

move_sprite(characterstruct->spriteids[21+7],x+(spritesize*2)+2,y+spritesize*3);
move_sprite(characterstruct->spriteids[21+8],x+(spritesize*4)+2,y+spritesize*3);


}


//use for face sprite
    void MakeSprite(){
    alpha.x=80;
    alpha.y=80;
    alpha.width=40;
    alpha.height=40;

    for(int i=0;i<30;i++){
        set_sprite_tile(i,i);
        alpha.spriteids[i]=i;
        }
    for(int j=0;j<9;j++){
        set_sprite_prop(21+j, S_PALETTE); 


        }       
        MoveSprite(&alpha,alpha.x,alpha.y);
    } 
 
void main(){

        set_bkg_data(0, 153, devil_data);
        set_bkg_tiles(0, 0, 20, 18, devil_map);
        SHOW_BKG;
        set_sprite_data(0, 30, Chibi_babies2_data);

        MakeSprite();

        SHOW_SPRITES;

        DISPLAY_ON;
    while(1) {
	



 
       


        int8_t  directionVertical=0;
        int8_t  directionHorizontal=0;


        if(joypad()&J_LEFT){
                for(int i=0; i<=5; i=i+1) {
                     alpha.x-=5;

                       
                        
                       delay(20);
                }
        }


        if(joypad()&J_RIGHT){
                for(int i=0; i<=5; i=i+1) {
                     alpha.x+=5;

                        
                       delay(20);
                }
        }
        if(joypad()&J_A){
                for(int i=0; i<=5; i=i+1) {
                            wait_vbl_done();

                     alpha.y-=1;

                      
                    //    delay(20);
                }
        }
        

   


   

           
        
        MoveSprite(&alpha,alpha.x,alpha.y);


        scroll_bkg(directionVertical,directionHorizontal);

		// Done processing, yield CPU and wait for start of next frame
        wait_vbl_done();
    }
}