#ifndef _world_h_
#define _world_h_

#include "block.h"
#include "headers.h"
#include "textures.h"

#define CHUNK_SIZE 16 * BLOCK_SIZE// Chunks are 8 x 8 blocks
#define WORLD_SIZE CHUNK_SIZE * 1  // x,y dimensions
#define WORLD_HEIGHT 5 * BLOCK_SIZE // z dimension

void gen_terrain(int seed, Blocks *bl);

#endif