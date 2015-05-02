#include "movement.h"

int isJumping =0;
void jump(Blocks *blocks ,int indexPlayer){
	if(!isJumping){ 
		isJumping =1;
		blocks->arr[indexPlayer].v[1] +=JUMP_HEIGHT;
	}
}

void move(Blocks *blocks , float stepsX , float stepsZ ,int indexPlayer){
	blocks->arr[indexPlayer].v[0] = STEP_DISTANCE*stepsX;
	blocks->arr[indexPlayer].v[2] = STEP_DISTANCE*stepsZ;
}

void fake_Gravity(Blocks *blocks, int indexPlayer){
	blocks->arr[indexPlayer].v[1] -= 1.0;
	if(blocks->arr[indexPlayer].y<=0){
		blocks->arr[indexPlayer].v[1]=0;
		isJumping=0;
	}
}

void motionResistance(Blocks *blocks, int indexPlayer){
	blocks->arr[indexPlayer].v[0] = blocks->arr[indexPlayer].v[0]/1.5;
	if(blocks->arr[indexPlayer].v[0] < 0.1 && blocks->arr[indexPlayer].v[0]>-0.1 ){
		blocks->arr[indexPlayer].v[0]=0;
	}
	blocks->arr[indexPlayer].v[2] = blocks->arr[indexPlayer].v[2]/1.5;
	if(blocks->arr[indexPlayer].v[2] < 0.1 && blocks->arr[indexPlayer].v[2]>-0.1){
		blocks->arr[indexPlayer].v[2]=0;
	}
}

void movement(Blocks *blocks, int indexPlayer){
    blocks->arr[indexPlayer].x += blocks->arr[indexPlayer].v[0];
    blocks->arr[indexPlayer].y += blocks->arr[indexPlayer].v[1];
    blocks->arr[indexPlayer].z += blocks->arr[indexPlayer].v[2];
	fake_Gravity(blocks, indexPlayer);
	motionResistance(blocks, indexPlayer);
	//printf("%2.2f \n", (float)(blocks->arr[indexPlayer].v[1]));
}