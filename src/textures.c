#include "headers.h"
#include "textures.h"

void block_id_to_coordinates(int id, GLfloat tex[]) {
	tex[0] = (id % 16)/16.0;
	tex[1] = (id / 16)/16.0;
} 


int load_gl_texture(const char *filename, unsigned char *image, unsigned width, unsigned height) {
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

// const char* change_texture(int type, int side) {
// 	switch(type) {
// 		case 5: 
// 			if (side != 2 && side != 3) // must be side of block
// 				return GRASS_SIDE;
// 			else if (side == 2) // top
// 				return GRASS_TOP;
// 			else 
// 				return DIRT;
// 		default: return NULL_BLOCK;
// 	}
// }

void draw_special(unsigned char *image, Blocks *blocks, int index) {

	int top= 0, bottom = 0, sides = 0, front = 0;

	switch(blocks->arr[index].type) {

		case 0: top = 0, sides = 3, bottom = 2, front = 3;
			break;
		case 8: sides = 8, top = 9, bottom = 10, front = 8;
			break;
		case 14: front = 14, sides = 30, bottom = 46, top = 47;
			break;
		case 35: sides = 35, top = 4, bottom = 4, front = 35;
			break;
	}

	float type_top[2];
	block_id_to_coordinates(top, type_top);

	float type_front[2];
	block_id_to_coordinates(front, type_front); // Initialize array using the "constructor" function

	float type_sides[2];
	block_id_to_coordinates(sides, type_sides);

	float type_bottom[2];
	block_id_to_coordinates(bottom, type_bottom); 

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

	GLfloat tex_top[4][2] = {

		{type_top[0],type_top[1]},//Bottom left 0
		{type_top[0]+1.0/16.0, type_top[1]},// Bottom Right 1 
		{type_top[0]+1.0/16.0,type_top[1]+1.0/16.0},// Top right 2 
		{type_top[0],type_top[1]+1.0/16.0}// Top left 3
	};

	GLfloat tex_sides[4][2] = {

		{type_sides[0],type_sides[1]},//Bottom left 0
		{type_sides[0]+1.0/16.0, type_sides[1]},// Bottom Right 1 
		{type_sides[0]+1.0/16.0,type_sides[1]+1.0/16.0},// Top right 2 
		{type_sides[0],type_sides[1]+1.0/16.0}// Top left 3
	};

	GLfloat tex_front[4][2] = {

		{type_front[0],type_front[1]},//Bottom left 0
		{type_front[0]+1.0/16.0, type_front[1]},// Bottom Right 1 
		{type_front[0]+1.0/16.0,type_front[1]+1.0/16.0},// Top right 2 
		{type_front[0],type_front[1]+1.0/16.0}// Top left 3
	};

	GLfloat tex_bottom[4][2] = {

		{type_bottom[0],type_bottom[1]},//Bottom left 0
		{type_bottom[0]+1.0/16.0, type_bottom[1]},// Bottom Right 1 
		{type_bottom[0]+1.0/16.0,type_bottom[1]+1.0/16.0},// Top right 2 
		{type_bottom[0],type_bottom[1]+1.0/16.0}// Top left 3
	};

	glBegin(GL_QUADS);
	
    	// Front Face 
    	glTexCoord2fv(tex_front[3]); glVertex3fv(vertices[1]);  // Bottom Left Of The Texture and Quad
    	glTexCoord2fv(tex_front[2]); glVertex3fv(vertices[0]);  // Bottom Right Of The Texture and Quad
    	glTexCoord2fv(tex_front[1]); glVertex3fv(vertices[4]);  // Top Right Of The Texture and Quad
    	glTexCoord2fv(tex_front[0]); glVertex3fv(vertices[5]);  // Top Left Of The Texture and Quad

    	// Back Face 
    	glTexCoord2fv(tex_sides[3]); glVertex3fv(vertices[2]);  // Bottom Right Of The Texture and Quad
    	glTexCoord2fv(tex_sides[0]); glVertex3fv(vertices[6]);  // Top Right Of The Texture and Quad
    	glTexCoord2fv(tex_sides[1]); glVertex3fv( vertices[7]);  // Top Left Of The Texture and Quad
    	glTexCoord2fv(tex_sides[2]); glVertex3fv( vertices[3]);  // Bottom Left Of The Texture and Quad

    glEnd();
    
    glBegin(GL_QUADS);

    	// Top Face
    	glTexCoord2fv(tex_top[3]); glVertex3fv(vertices[7]);  // Top Left Of The Texture and Quad
    	glTexCoord2fv(tex_top[0]); glVertex3fv(vertices[5]);  // Bottom Left Of The Texture and Quad
    	glTexCoord2fv(tex_top[1]); glVertex3fv( vertices[4]);  // Bottom Right Of The Texture and Quad
    	glTexCoord2fv(tex_top[2]); glVertex3fv( vertices[6]);  // Top Right Of The Texture and Quad

    glEnd();
    
    glBegin(GL_QUADS);

    	// Bottom Face
    	glTexCoord2fv(tex_bottom[2]); glVertex3fv(vertices[0]);  // Top Right Of The Texture and Quad
    	glTexCoord2fv(tex_bottom[3]); glVertex3fv( vertices[2]);  // Top Left Of The Texture and Quad
    	glTexCoord2fv(tex_bottom[0]); glVertex3fv( vertices[3]);  // Bottom Left Of The Texture and Quad
    	glTexCoord2fv(tex_bottom[1]); glVertex3fv(vertices[1]);  // Bottom Right Of The Texture and Quad

    glEnd();
    
    glBegin(GL_QUADS);

    	// Right face
    	glTexCoord2fv(tex_sides[2]); glVertex3fv( vertices[2]);  // Bottom Right Of The Texture and Quad
    	glTexCoord2fv(tex_sides[1]); glVertex3fv( vertices[6]);  // Top Right Of The Texture and Quad
    	glTexCoord2fv(tex_sides[0]); glVertex3fv( vertices[4]);  // Top Left Of The Texture and Quad
    	glTexCoord2fv(tex_sides[3]); glVertex3fv( vertices[0]);  // Bottom Left Of The Texture and Quad

    	// Left Face
    	glTexCoord2fv(tex_sides[3]); glVertex3fv(vertices[3]);  // Bottom Left Of The Texture and Quad
    	glTexCoord2fv(tex_sides[2]); glVertex3fv(vertices[1]);  // Bottom Right Of The Texture and Quad
    	glTexCoord2fv(tex_sides[1]); glVertex3fv(vertices[5]);  // Top Right Of The Texture and Quad
    	glTexCoord2fv(tex_sides[0]); glVertex3fv(vertices[7]);  // Top Left Of The Texture and Quad

	glEnd();
}

void draw_texture(unsigned char *image, Blocks *blocks, int index) {

	float type[2];
	block_id_to_coordinates(blocks->arr[index].type, type);

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

	GLfloat tex[4][2] = {

		{type[0],type[1]},//Bottom left 0
		{type[0]+1.0/16.0, type[1]},// Bottom Right 1 
		{type[0]+1.0/16.0,type[1]+1.0/16.0},// Top right 2 
		{type[0],type[1]+1.0/16.0}// Top left 3
	};

	if (blocks->arr[index].type == 0 || blocks->arr[index].type ==8 || blocks->arr[index].type == 35 || blocks->arr[index].type == 14) {
		draw_special(image, blocks, index);
	} 

	else {
		glBegin(GL_QUADS);
	
    	// Front Face
    	glTexCoord2fv(tex[0]); glVertex3fv(vertices[1]);  // Bottom Left Of The Texture and Quad
    	glTexCoord2fv(tex[1]); glVertex3fv(vertices[0]);  // Bottom Right Of The Texture and Quad
    	glTexCoord2fv(tex[2]); glVertex3fv( vertices[4]);  // Top Right Of The Texture and Quad
    	glTexCoord2fv(tex[3]); glVertex3fv(vertices[5]);  // Top Left Of The Texture and Quad

    	// Back Face
    	glTexCoord2fv(tex[1]); glVertex3fv(vertices[2]);  // Bottom Right Of The Texture and Quad
    	glTexCoord2fv(tex[2]); glVertex3fv(vertices[6]);  // Top Right Of The Texture and Quad
    	glTexCoord2fv(tex[3]); glVertex3fv( vertices[7]);  // Top Left Of The Texture and Quad
    	glTexCoord2fv(tex[0]); glVertex3fv( vertices[3]);  // Bottom Left Of The Texture and Quad

    	// Top Face
    	glTexCoord2fv(tex[3]); glVertex3fv(vertices[7]);  // Top Left Of The Texture and Quad
    	glTexCoord2fv(tex[0]); glVertex3fv(vertices[5]);  // Bottom Left Of The Texture and Quad
    	glTexCoord2fv(tex[1]); glVertex3fv( vertices[4]);  // Bottom Right Of The Texture and Quad
    	glTexCoord2fv(tex[2]); glVertex3fv( vertices[6]);  // Top Right Of The Texture and Quad

    	// Bottom Face
    	glTexCoord2fv(tex[2]); glVertex3fv(vertices[0]);  // Top Right Of The Texture and Quad
    	glTexCoord2fv(tex[3]); glVertex3fv( vertices[2]);  // Top Left Of The Texture and Quad
    	glTexCoord2fv(tex[0]); glVertex3fv( vertices[3]);  // Bottom Left Of The Texture and Quad
    	glTexCoord2fv(tex[1]); glVertex3fv(vertices[1]);  // Bottom Right Of The Texture and Quad

    	// Right face
    	glTexCoord2fv(tex[1]); glVertex3fv( vertices[2]);  // Bottom Right Of The Texture and Quad
    	glTexCoord2fv(tex[2]); glVertex3fv( vertices[6]);  // Top Right Of The Texture and Quad
    	glTexCoord2fv(tex[3]); glVertex3fv( vertices[4]);  // Top Left Of The Texture and Quad
    	glTexCoord2fv(tex[0]); glVertex3fv( vertices[0]);  // Bottom Left Of The Texture and Quad

    	// Left Face
    	glTexCoord2fv(tex[0]); glVertex3fv(vertices[3]);  // Bottom Left Of The Texture and Quad
    	glTexCoord2fv(tex[1]); glVertex3fv(vertices[1]);  // Bottom Right Of The Texture and Quad
    	glTexCoord2fv(tex[2]); glVertex3fv(vertices[5]);  // Top Right Of The Texture and Quad
    	glTexCoord2fv(tex[3]); glVertex3fv(vertices[7]);  // Top Left Of The Texture and Quad

		glEnd();
	}
}

//TODO - Use sprite sheet instead of loading in individual textures. Too slow to load grass block separately 
void draw_textures(unsigned char *image, Blocks  *blocks) {
	int i;

	for (i = 0; i < blocks->count; ++i) {
		
		draw_texture(image, blocks,i);

	}
}