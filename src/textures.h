#ifndef _textures_h_
#define _textures_h_

#include "block.h"

#define DEFAULT_TEXTURE 0

const char* block_type_to_filename(int block_type);
int load_gl_texture(int block_type, const char *filename, unsigned char *image, unsigned width, unsigned height);
void draw_texture(unsigned char *image, Blocks *blocks, int index);
void draw_textures(unsigned char *image, Blocks *blocks);

/* Block ID's */
#define NULL_BLOCK (const char*)"src/textures/null_block.png"
#define DIRT (const char*)"src/textures/dirt.png" // 0
#define STONE (const char*)"src/textures/stone.png" // 1
#define SAND (const char*)"src/textures/sand.png" // 2
#define PLANKS (const char*)"src/textures/planks.png" // 3
#define BRICKS (const char*)"src/textures/bricks.png" // 4
#define GRASS_TOP (const char*)"src/textures/grass_top.png" // 5
#define GRASS_SIDE (const char*)"src/textures/grass_side.png" // 6

#endif