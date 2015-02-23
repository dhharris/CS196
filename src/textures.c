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

int load_gl_texture(int block_type, unsigned char *image, unsigned width, unsigned height) {
	int status = 0;
	const char *filename = block_type_to_filename(block_type);

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

void draw_texture(unsigned char *image, Block *blocks, int index) {


	GLfloat vertices[8][3] = {

		/* Bottom Vertices */
		{blocks[index].x + BLOCK_SIZE / 2, blocks[index].y - BLOCK_SIZE / 2, blocks[index].z + BLOCK_SIZE / 2 }, // 0 Bottom front right
		{blocks[index].x - BLOCK_SIZE / 2, blocks[index].y - BLOCK_SIZE / 2, blocks[index].z + BLOCK_SIZE / 2}, // 1 Bottom front left
		{blocks[index].x + BLOCK_SIZE / 2, blocks[index].y - BLOCK_SIZE / 2, blocks[index].z - BLOCK_SIZE / 2}, // 2 Bottom back right
		{blocks[index].x - BLOCK_SIZE / 2, blocks[index].y - BLOCK_SIZE / 2, blocks[index].z - BLOCK_SIZE / 2}, // 3 Bottom back left

		/* Top vertices */
		{blocks[index].x + BLOCK_SIZE / 2, blocks[index].y + BLOCK_SIZE / 2, blocks[index].z + BLOCK_SIZE / 2}, // 4 Top front right
		{blocks[index].x - BLOCK_SIZE / 2, blocks[index].y + BLOCK_SIZE / 2, blocks[index].z + BLOCK_SIZE / 2}, // 5 Top front left
		{blocks[index].x + BLOCK_SIZE / 2, blocks[index].y + BLOCK_SIZE / 2, blocks[index].z - BLOCK_SIZE / 2}, // 6 Top back right
		{blocks[index].x - BLOCK_SIZE / 2, blocks[index].y + BLOCK_SIZE / 2, blocks[index].z - BLOCK_SIZE / 2} // 7 Top back left


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

void draw_textures(unsigned char *image, Block *blocks) {
	int i;
	int count = count_blocks(blocks);
	load_gl_texture(blocks[0].type, image, BLOCK_SIZE, BLOCK_SIZE);
	int last_block_type = blocks[0].type;

	for (i = 0; i < count; ++i) {
		if (blocks[i].type != last_block_type) {
			load_gl_texture(blocks[i].type, image, BLOCK_SIZE, BLOCK_SIZE);
			last_block_type = blocks[i].type;
		}
		draw_texture(image, blocks,i);

	}
}