#include "world.h"



/* Generate random terrain using an integer parameter */
void gen_terrain(int seed, Blocks *bl) {
	
	/* Dirt */

	/* 
		Creates Dirt blocks spanning from 
		-WORLD_SIZE/2 < x < WORLD_SIZE/2
		-WORLD_SIZE/2 < y < WORLD_SIZE/2
		at z = 0
	*/
	for (int i = -WORLD_SIZE/2; i < WORLD_SIZE/2; i += BLOCK_SIZE) {
		for (int j = -WORLD_SIZE/2; j < WORLD_SIZE/2; j += BLOCK_SIZE) {
			create_block(i, 0, j, bl, 5);
		}
	}



	/* Stone */
	for (int i = -WORLD_SIZE/2; i < WORLD_SIZE/2; i += BLOCK_SIZE) {
		for (int j = -WORLD_SIZE/2; j < WORLD_SIZE/2; j += BLOCK_SIZE) {
			for (int k = -WORLD_HEIGHT; k < 0; k += BLOCK_SIZE) {
				create_block(i, k, j, bl, 1);
			}
		}
	}
}