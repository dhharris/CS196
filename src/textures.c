#include "headers.h"
#include "textures.h"

const char* block_type_to_filename(int block_type) {
	switch(block_type) {
		case 0: return DIRT;
		case 1: return STONE;
		case 2: return SAND;
		case 3: return PLANKS;
		case 4: return BRICKS;
		default: return NULL_BLOCK;
	}
}

int load_gl_texture(int block_type, const char *filename, unsigned char *image, unsigned width, unsigned height) {
	int status = 0;

	while(!lodepng_decode32_file(&image, &width, &height, filename)) {
		GLint texSize;
        glGetIntegerv(GL_MAX_TEXTURE_SIZE, &texSize);
       
        glGenTextures(1, &texture);
        glBindTexture(GL_TEXTURE_2D, texture);

        glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA8, width, height, 0, GL_RGBA,
                GL_UNSIGNED_BYTE, image);

        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
        glTexParameterf( GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);

        status = 1;
        break;
	}
	if (image)
		free(image);

	return status;
}

const char* change_texture(int type, int side) {
	switch(type) {
		case 5: 
			if (side != 2 && side != 3) // must be side of block
				return GRASS_SIDE;
			else if (side == 2) // top
				return GRASS_TOP;
			else 
				return DIRT;
		default: return NULL_BLOCK;
	}
}

void draw_texture(unsigned char *image, Blocks *blocks, int index) {

	int side = 0; /* Add one every time a side is drawn */

	GLfloat vertices[8][3] = {

		/* Bottom Vertices */
		{blocks->arr[index].x + BLOCK_SIZE / 2, blocks->arr[index].y - BLOCK_SIZE / 2, blocks->arr[index].z + BLOCK_SIZE / 2 }, // 0 Bottom front right
		{blocks->arr[index].x - BLOCK_SIZE / 2, blocks->arr[index].y - BLOCK_SIZE / 2, blocks->arr[index].z + BLOCK_SIZE / 2}, // 1 Bottom front left
		{blocks->arr[index].x + BLOCK_SIZE / 2, blocks->arr[index].y - BLOCK_SIZE / 2, blocks->arr[index].z - BLOCK_SIZE / 2}, // 2 Bottom back right
		{blocks->arr[index].x - BLOCK_SIZE / 2, blocks->arr[index].y - BLOCK_SIZE / 2, blocks->arr[index].z - BLOCK_SIZE / 2}, // 3 Bottom back left

		/* Top vertices */
		{blocks->arr[index].x + BLOCK_SIZE / 2, blocks->arr[index].y + BLOCK_SIZE / 2, blocks->arr[index].z + BLOCK_SIZE / 2}, // 4 Top front right
		{blocks->arr[index].x - BLOCK_SIZE / 2, blocks->arr[index].y + BLOCK_SIZE / 2, blocks->arr[index].z + BLOCK_SIZE / 2}, // 5 Top front left
		{blocks->arr[index].x + BLOCK_SIZE / 2, blocks->arr[index].y + BLOCK_SIZE / 2, blocks->arr[index].z - BLOCK_SIZE / 2}, // 6 Top back right
		{blocks->arr[index].x - BLOCK_SIZE / 2, blocks->arr[index].y + BLOCK_SIZE / 2, blocks->arr[index].z - BLOCK_SIZE / 2} // 7 Top back left


	};


	glBegin(GL_QUADS);
	
    // Front Face
    glTexCoord2f(0.0f, 0.0f); glVertex3fv(vertices[1]);  // Bottom Left Of The Texture and Quad
    glTexCoord2f(1.0f, 0.0f); glVertex3fv(vertices[0]);  // Bottom Right Of The Texture and Quad
    glTexCoord2f(1.0f, 1.0f); glVertex3fv( vertices[4]);  // Top Right Of The Texture and Quad
    glTexCoord2f(0.0f, 1.0f); glVertex3fv(vertices[5]);  // Top Left Of The Texture and Quad

    // Back Face
    glTexCoord2f(1.0f, 0.0f); glVertex3fv(vertices[2]);  // Bottom Right Of The Texture and Quad
    glTexCoord2f(1.0f, 1.0f); glVertex3fv(vertices[6]);  // Top Right Of The Texture and Quad
    glTexCoord2f(0.0f, 1.0f); glVertex3fv( vertices[7]);  // Top Left Of The Texture and Quad
    glTexCoord2f(0.0f, 0.0f); glVertex3fv( vertices[3]);  // Bottom Left Of The Texture and Quad

    // Top Face
    glTexCoord2f(0.0f, 1.0f); glVertex3fv(vertices[7]);  // Top Left Of The Texture and Quad
    glTexCoord2f(0.0f, 0.0f); glVertex3fv(vertices[5]);  // Bottom Left Of The Texture and Quad
    glTexCoord2f(1.0f, 0.0f); glVertex3fv( vertices[4]);  // Bottom Right Of The Texture and Quad
    glTexCoord2f(1.0f, 1.0f); glVertex3fv( vertices[6]);  // Top Right Of The Texture and Quad

    // Bottom Face
    glTexCoord2f(1.0f, 1.0f); glVertex3fv(vertices[0]);  // Top Right Of The Texture and Quad
    glTexCoord2f(0.0f, 1.0f); glVertex3fv( vertices[2]);  // Top Left Of The Texture and Quad
    glTexCoord2f(0.0f, 0.0f); glVertex3fv( vertices[3]);  // Bottom Left Of The Texture and Quad
    glTexCoord2f(1.0f, 0.0f); glVertex3fv(vertices[1]);  // Bottom Right Of The Texture and Quad

    // Right face
    glTexCoord2f(1.0f, 0.0f); glVertex3fv( vertices[2]);  // Bottom Right Of The Texture and Quad
    glTexCoord2f(1.0f, 1.0f); glVertex3fv( vertices[6]);  // Top Right Of The Texture and Quad
    glTexCoord2f(0.0f, 1.0f); glVertex3fv( vertices[4]);  // Top Left Of The Texture and Quad
    glTexCoord2f(0.0f, 0.0f); glVertex3fv( vertices[0]);  // Bottom Left Of The Texture and Quad

    // Left Face
    glTexCoord2f(0.0f, 0.0f); glVertex3fv(vertices[3]);  // Bottom Left Of The Texture and Quad
    glTexCoord2f(1.0f, 0.0f); glVertex3fv(vertices[1]);  // Bottom Right Of The Texture and Quad
    glTexCoord2f(1.0f, 1.0f); glVertex3fv(vertices[5]);  // Top Right Of The Texture and Quad
    glTexCoord2f(0.0f, 1.0f); glVertex3fv(vertices[7]);  // Top Left Of The Texture and Quad

	glEnd();
}

//TODO - Use sprite sheet instead of loading in individual textures. Too slow to load grass block separately 
void draw_textures(unsigned char *image, Blocks  *blocks) {
	int i;

	load_gl_texture(blocks->arr[0].type, block_type_to_filename(blocks->arr[0].type), image, BLOCK_SIZE, BLOCK_SIZE);
	int last_block_type = blocks->arr[0].type;

	for (i = 0; i < blocks->count; ++i) {
		if (blocks->arr[i].type != last_block_type) {
			load_gl_texture(blocks->arr[i].type, block_type_to_filename(blocks->arr[i].type), image, BLOCK_SIZE, BLOCK_SIZE);
			last_block_type = blocks->arr[i].type;
		}
		draw_texture(image, blocks,i);

	}
}