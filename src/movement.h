#ifndef _movement_h_
#define _movement_h_

#include "world.h"
#include "block.h"
#include "headers.h"
#define STEP_DISTANCE 1.0f
#define JUMP_HEIGHT 10.0f

void jump(Blocks *blocks ,int indexPlayer);
void move(Blocks *blocks , float stepsX , float stepsY ,int indexPlayer);
void motionResistance(Blocks *blocks, int indexPlayer);
void movement(Blocks *blocks, int indexPlayer);
#endif