#include "block.h"
#include "headers.h"

Block* init_blocks(void) {
	int i;
	Block *blocks = malloc(INITIAL_BLOCKS * sizeof(Block));

	for (i = 0; i < INITIAL_BLOCKS; ++i)
		blocks[i].visible = 0; /* All blocks are not enabled to start off */
	return blocks;
}

void remove_blocks(Block *blocks) {
	free(blocks);
}

// TODO - refine count_blocks algorithm
int count_blocks(Block *blocks) {
	int i, count = 0;

	for (i = 0; i < INITIAL_BLOCKS; ++i) {
		if (blocks[i].visible)
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
void create_block(float x, float y, float z, Block *blocks, int *size) {
	int count = count_blocks(blocks);

	if (count == *size)
		resize(&blocks, size, 1);

	blocks[count].x = x;
	blocks[count].y = y;
	blocks[count].z = z; 
	blocks[count].visible = 1;
	blocks[count].color_r = (float)(rand() % 4) - 0.5;
	blocks[count].color_g = (float)(rand() % 4) - 0.5;
	blocks[count].color_b = (float)(rand() % 4) - 0.5;

	if (blocks[count].color_r <= 0.3 && blocks[count].color_g <= 0.3 && blocks[count].color_b <= 0.3)
		blocks[count].color_r = blocks[count].color_b = blocks[count].color_g = 1.0;

}

void create_blocks(
	float initial_x, float initial_y, float initial_z, 
	int length_x, int length_y, int length_z,
	Block *blocks, int *size) {

	int i ,j, k;

	for (i = 0; i < length_x; ++i) {
		for (j = 0; j < length_z; ++j) {
			for (k = 0; k < length_y; ++k) {
				create_block(initial_x + i, initial_y + k, initial_z + j, blocks, size);
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

	/* Front side  */
	glColor3f( blocks[index].color_r, blocks[index].color_g, blocks[index].color_b );     
	glVertex3fv(  vertices[0] );       
    glVertex3fv( vertices[4] );        
    glVertex3fv( vertices[5] );         
    glVertex3fv( vertices[1] ); 

    /* Right side  */
    glVertex3fv(vertices[2]);
    glVertex3fv(vertices[6]);
    glVertex3fv(vertices[4]);
    glVertex3fv(vertices[0]);  

    /* Left side */
    glVertex3fv(vertices[1]);
    glVertex3fv(vertices[5]);  
    glVertex3fv(vertices[7]);  
    glVertex3fv(vertices[3]); 
    
    /* Right side */
	glVertex3fv(  vertices[3] );       
    glVertex3fv( vertices[7] );        
    glVertex3fv( vertices[6] );         
    glVertex3fv( vertices[2] ); 

    /* Top side */
    glVertex3fv(vertices[4]);
    glVertex3fv(vertices[6]);  
    glVertex3fv(vertices[7]);  
    glVertex3fv(vertices[5]);

    /* Bottom side */
    glVertex3fv(vertices[0]);
    glVertex3fv(vertices[2]);  
    glVertex3fv(vertices[3]);  
    glVertex3fv(vertices[1]);

	glEnd(); /* Stop drawing */
}

void draw_blocks(Block *blocks) {
	int i;
	int count = count_blocks(blocks);

	for (i = 0; i < count; ++i) {
		draw_block(blocks,i);

	}
}

float distance(float x0, float y0, float z0, float x1, float y1, float z1) {

	return sqrt(pow((x1-x0),2)+pow((y1-y0),2)+pow((z1-z0),2));
}

void create_sphere(Block *blocks, float x, float y, float z, float radius, int *size) {

	int i, j, k;

	for (j = z - radius; j <= z + radius; j++) {
		for (i = x - radius; i <= x + radius; i++ ) {
			for (k = z - radius; k <= z + radius; k++) {
				if (distance(i,j,k,x,y,z) <= (radius + SPHERE_THRESHOLD) && distance(i,j,k,x,y,z) >= (radius - SPHERE_THRESHOLD)) {
					create_block(i,j,k,blocks,size);
				}
			}
		}
	}
}