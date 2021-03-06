#include "physics.h"

int potatobool =0;
void potato(Blocks *blocks){
    float x = blocks->arr[1].x - blocks->arr[0].x;
    float y =  blocks->arr[1].y - blocks->arr[0].y;
    float z = blocks->arr[1].z - blocks->arr[0].z; // calculating distance between blocks
    float l =(x*x + y*y + z*z);
    if(l <BLOCK_SIZE*BLOCK_SIZE) potatobool=1;
    if(potatobool == 1) calculate_acc(blocks,1);

}



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

        if(blocks->arr[i].visible == 1 &&blocks->arr[i].mass >0.0){
            for(j =0; j< INITIAL_BLOCKS;j++){

                if(i!=j && blocks->arr[j].visible == 1 &&blocks->arr[j].mass >0.0){
    	            float x = blocks->arr[j].x - blocks->arr[i].x;
                    float y =  blocks->arr[j].y - blocks->arr[i].y;
                    float z = blocks->arr[j].z - blocks->arr[i].z; // calculating distance between blocks
                    float l =(x*x + y*y + z*z);// this is acutually l^2 // type name[num_elements];
    	            float acc =0;
    	            if(l>=1.0){
    	            	acc = (GRAVITIONAL_CONSTANT)/(l); // 5 is g const for now
    	        	}
    	            l = sqrt(l);// add in proper math operator here/
    	            accx += acc*x/l;
    	            accy += acc*y/l;
    	            accz += acc*z/l;

                    //collision code
                    //collision_check(blocks ,i, x, y,z,hasCollided);
            	}
            }
            blocks->arr[i].v[0] += accx;
            blocks->arr[i].v[1] += accy;
            blocks->arr[i].v[2] += accz;
            blocks->arr[i].x += blocks->arr[i].v[0];
            blocks->arr[i].y += blocks->arr[i].v[1];
            blocks->arr[i].z += blocks->arr[i].v[2];
            //printf("%2.2f \n", (float)(blocks->arr[i].v[0]));
    	}

    }
        //printf("%2.2f \n", (float)(count));
} //look if it should be void or should return the object blocks.


// inputs x y and z are the differences in distances between the start points of all objects
void collision_check(Blocks *blocks ,int i,float x, float y, float z , int *hasCollided){

    if(x <= BLOCK_SIZE/2 && x >= 0.0 && hasCollided[0]==0){
        blocks->arr[i].v[0] = -blocks->arr[i].v[0];
        hasCollided[0]=1;
    }else if(x >BLOCK_SIZE/2 && x <=16.0 && hasCollided[1]==0){
        blocks->arr[i].v[0] = -blocks->arr[i].v[0];
        hasCollided[1]=1;
    }

    if(x <= BLOCK_SIZE/2 && x >= 0.0 && hasCollided[2]==0){
        blocks->arr[i].v[1] =-blocks->arr[i].v[1];
        hasCollided[2]=1;
    }else if(x >BLOCK_SIZE/2 && x <=16.0 && hasCollided[3]==0){
        blocks->arr[i].v[1] =-blocks->arr[i].v[1];
        hasCollided[3]=1;
    }

    if(x <= BLOCK_SIZE/2 && x >= 0.0 && hasCollided[4]==0){
        blocks->arr[i].v[2] =-blocks->arr[i].v[2];
        hasCollided[4]=1;
    }else if(x >BLOCK_SIZE/2 && x <=16.0 && hasCollided[5]==0){
        blocks->arr[i].v[2] =-blocks->arr[i].v[2];
        hasCollided[5]=1;
    }
}
