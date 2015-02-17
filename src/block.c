#include "block.h"
#include "headers.h"

Block* init_blocks(void) {
	int i;
	Block *blocks = malloc(INITIAL_BLOCKS * sizeof(Block));

	for (i = 0; i < INITIAL_BLOCKS; ++i)
		blocks[i].enabled = 0; /* All blocks are not enabled to start off */
	return blocks;
}

void remove_blocks(Block *blocks) {
	free(blocks);
}

int count_blocks(Block *blocks) {
	int i, count = 0;

	for (i = 0; i < 100; ++i) {
		if (blocks[i].enabled)
			++count;
	}
	return count;
}

/* size is the size of blocks array, offset is how many you are adding/removing */
void resize(Block **blocks, int *size, int offset) {
	*blocks = realloc(*blocks, (*size + offset) * sizeof(*blocks[0]));
	*size += offset;
}

/* x, y, z are the coordinate location of the center of the block */
void create_block(float x, float y, float z, Block *blocks, int *size, int *count) {
	
	if (*count == *size)
		resize(&blocks, count, 1);

	blocks[*count].x = x;
	blocks[*count].y = y;
	blocks[*count].z = z; 
	blocks[*count].enabled = 1;
	blocks[*count].color_r = (float)(rand() % 4) - 0.5;
	blocks[*count].color_g = (float)(rand() % 4) - 0.5;
	blocks[*count].color_b = (float)(rand() % 4) - 0.5;


	++ *count;


}

void create_blocks(
	float initial_x, float initial_y, float initial_z, 
	int length_x, int length_y, int length_z,
	Block *blocks, int *size, int *count) {

	int i ,j, k;

	for (i = 0; i < length_x; ++i) {
		for (j = 0; j < length_z; ++j) {
			for (k = 0; k < length_y; ++k) {
				create_block(initial_x + i, initial_y + k, initial_z + j, blocks, size, count);
			}
		}
	}
	

}

void draw_block(Block *blocks, int index) {

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
	glBegin(GL_QUADS); /* Begin drawing */

	/* Front side - yellow */
	glColor3f( blocks[index].color_r, blocks[index].color_g, blocks[index].color_b );     
	glVertex3fv(  vertices[0] );       
    glVertex3fv( vertices[4] );        
    glVertex3fv( vertices[5] );         
    glVertex3fv( vertices[1] ); 

    /* Right side - purple */
    glColor3f( blocks[index].color_r, blocks[index].color_g, blocks[index].color_b ); 
    glVertex3fv(vertices[2]);
    glVertex3fv(vertices[6]);
    glVertex3fv(vertices[4]);
    glVertex3fv(vertices[0]);  

    /* Left side - green */
    glColor3f( blocks[index].color_r, blocks[index].color_g, blocks[index].color_b ); 
    glVertex3fv(vertices[1]);
    glVertex3fv(vertices[5]);  
    glVertex3fv(vertices[7]);  
    glVertex3fv(vertices[3]); 

    /* Back side - white */
    glColor3f( blocks[index].color_r, blocks[index].color_g, blocks[index].color_b );      
	glVertex3fv(  vertices[3] );       
    glVertex3fv( vertices[7] );        
    glVertex3fv( vertices[6] );         
    glVertex3fv( vertices[2] ); 

    /* Top side - blue */
    glColor3f( blocks[index].color_r, blocks[index].color_g, blocks[index].color_b ); 
    glVertex3fv(vertices[4]);
    glVertex3fv(vertices[6]);  
    glVertex3fv(vertices[7]);  
    glVertex3fv(vertices[5]);

    /* Bottom side - red */
    glColor3f( blocks[index].color_r, blocks[index].color_g, blocks[index].color_b ); 
    glVertex3fv(vertices[0]);
    glVertex3fv(vertices[2]);  
    glVertex3fv(vertices[3]);  
    glVertex3fv(vertices[1]);

	glEnd(); /* Stop drawing */
}

void draw_blocks(Block *blocks, int count) {
	int i;

	for (i = 0; i < count; ++i) {
		draw_block(blocks,i);

	}
}