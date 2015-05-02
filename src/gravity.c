#include "physics.h"


void calculate_acc(Blocks *blocks,float time_step){
    float accx; float accy; float accz; int i=0; int j=0;
    for(i =0; i< INITIAL_BLOCKS;i++){
        accx =0;accy =0;accz =0;

        //collider var
        int hasCollided[6]; // first 2 are x left and right boolean checkers and so on.
        int count;
        for(count=0;count<6;count++){
            hasCollided[count] = 0;
        }

        if(blocks->arr[i].visible == 1){
            for(j =0; j< INITIAL_BLOCKS;j++){

                if(i!=j && blocks->arr[j].visible == 1){
    	            float x = blocks->arr[j].x - blocks->arr[i].x;
                    float y =  blocks->arr[j].y - blocks->arr[i].y;
                    float z = blocks->arr[j].z - blocks->arr[i].z; // calculating distance between blocks
                    float l =(x*x + y*y + z*z);// this is acutually l^2 // type name[num_elements];
    	            float acc =0;
    	            if(l>0.01){
    	            	acc = (GRAVITIONAL_CONSTANT)/(l); // 5 is g const for now
    	        	}
    	            l = sqrt(l);// add in proper math operator here/
    	            accx += acc*x/l;
    	            accy += acc*y/l;
    	            accz += acc*z/l;

                    //collision code
                    collisionCheck(blocks ,i, x, y,z,hasCollided);
            	}
            }
            blocks->arr[i].v[0] += accx;
            blocks->arr[i].v[1] += accy;
            blocks->arr[i].v[2] += accz;
            //stopIfCollided(blocks , i,hasCollided);
            blocks->arr[i].x += blocks->arr[i].v[0];
            blocks->arr[i].y += blocks->arr[i].v[1];
            blocks->arr[i].z += blocks->arr[i].v[2];
            //printf("%2.2f \n", (float)(blocks->arr[i].v[0]));
    	}

    }
        //printf("%2.2f \n", (float)(count));
} //look if it should be void or should return the object blocks.

// void calcGravity(){

// }

// void stopIfCollided(Blocks *blocks ,int i, int *hasCollided){
//      printf("%2.2f \n", (float)(hasCollided[0] + hasCollided[1]));
//     if(hasCollided[0]==1 || hasCollided[1]==1){
//         blocks->arr[i].v[0] =0;
//     }

//     if(hasCollided[2]==1 || hasCollided[3]==1){
//         blocks->arr[i].v[1] =0;
//     }
//     if(hasCollided[4]==1 || hasCollided[5]==1){
//         blocks->arr[i].v[2] =0;
//     }
// }

// inputs x y and z are the differences in distances between the start points of all objects
void collisionCheck(Blocks *blocks ,int i,float x, float y, float z , int *hasCollided){

    if(x <= BLOCK_SIZE/2 && x >= 0.0 && hasCollided[0]==0 &&(y<=BLOCK_SIZE && z<=BLOCK_SIZE)){
        blocks->arr[i].v[0] = -blocks->arr[i].v[0];
        hasCollided[0]=1;
    }else if(x >BLOCK_SIZE/2 && x <=16.0 && hasCollided[1]==0&&(y<=BLOCK_SIZE && z<=BLOCK_SIZE)){
        blocks->arr[i].v[0] = -blocks->arr[i].v[0];
        hasCollided[1]=1;
    }

    if(x <= BLOCK_SIZE/2 && x >= 0.0 && hasCollided[2]==0&&(x<=BLOCK_SIZE && z<=BLOCK_SIZE)){
        blocks->arr[i].v[1] =-blocks->arr[i].v[1];
        hasCollided[2]=1;
    }else if(x >BLOCK_SIZE/2 && x <=16.0 && hasCollided[3]==0&&(x<=BLOCK_SIZE && z<=BLOCK_SIZE)){
        blocks->arr[i].v[1] =-blocks->arr[i].v[1];
        hasCollided[3]=1;
    }

    if(x <= BLOCK_SIZE/2 && x >= 0.0 && hasCollided[4]==0&&(x<=BLOCK_SIZE && y<=BLOCK_SIZE)){
        blocks->arr[i].v[2] =-blocks->arr[i].v[2];
        hasCollided[4]=1;
    }else if(x >BLOCK_SIZE/2 && x <=16.0 && hasCollided[5]==0 &&(x<=BLOCK_SIZE && y<=BLOCK_SIZE)){
        blocks->arr[i].v[2] =-blocks->arr[i].v[2];
        hasCollided[5]=1;
    }
}
