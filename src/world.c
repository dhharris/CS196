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

	int i, j, k;

	for (i = -WORLD_SIZE/2; i < 64; i += BLOCK_SIZE) {
		for (j = -WORLD_SIZE/2; j < 64; j += BLOCK_SIZE) {
			create_block(i, -16, j, bl, 0 ,1.0);
		}
	}

	
	for (i = -WORLD_SIZE; i < WORLD_SIZE* 2; i += BLOCK_SIZE) {
		for (j = -WORLD_SIZE; j < WORLD_SIZE * 2; j += BLOCK_SIZE) {
			create_block(i, j, -64, bl, 69 ,0.0);
		}
	}
	for (i = -WORLD_SIZE; i < WORLD_SIZE* 2; i += BLOCK_SIZE) {
		for (j = -WORLD_SIZE; j < WORLD_SIZE * 2; j += BLOCK_SIZE) {
			create_block(-64, j, i, bl, 69, 0.0);
		}
	}

	for (i = -WORLD_SIZE/2; i < WORLD_SIZE/2; i += BLOCK_SIZE) {
		for (j = -WORLD_SIZE/2; j < WORLD_SIZE/2-32; j += BLOCK_SIZE) {
			create_block(i, -64, j, bl, 69,0.0);
		}
	}

}