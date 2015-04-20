#ifndef _textures_h_
#define _textures_h_

#include "block.h"

#define DEFAULT_TEXTURE (const char*)"src/textures/a_terrain.png"

const char* block_type_to_filename(int block_type);
int load_gl_texture(const char *filename, unsigned char *image, unsigned width, unsigned height);
void draw_texture(unsigned char *image, Blocks *blocks, int index);
void draw_textures(unsigned char *image, Blocks *blocks);


#endif