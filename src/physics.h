#ifndef _physics_h_
#define _physics_h_

#include "world.h"
#include "block.h"
#include "headers.h"
#define GRAVITIONAL_CONSTANT 5.0f

void calculate_acc(Blocks *blocks,float time_step);
void potato(Blocks *blocks);
void collision_check(Blocks *blocks ,int i,float x, float y, float z , int *hasCollided);
#endif