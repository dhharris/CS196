#include "headers.h"
#include "block.h"

Blocks* init_blocks(void) {
	int i;

	/* 
		Need two seperate memory allocations. One for Blocks struct, and other for the arr member of Blocks 
		See http://stackoverflow.com/questions/2060974/dynamic-array-in-struct-c 
		figuring this out took much longer than it should have...
	*/
	Blocks *bl = malloc(sizeof(Blocks) + sizeof(Block));
	bl->arr = malloc(INITIAL_BLOCKS * sizeof(Block));
	
	for (i = 0; i < INITIAL_BLOCKS; ++i) {
		bl->arr[i].visible = 0;   
	}
	bl->count = 0; // 0 blocks initially visible
	bl->size = INITIAL_BLOCKS;

	printf("Blocks initialized!\n");

	return bl;
}

void remove_blocks(Blocks *bl) {
	free(bl);
}

// TODO - refine count_blocks algorithm
int count_blocks(Blocks* bl) {
	int i, count = 0;

	for (i = 0; i < bl->size; ++i) {
		if (bl->arr[i].visible)
			++count;
	}
	return count;
}

/* size is the size of bl array, offset is how many you are adding/removing */
void resize(Block *bl, int *size, int offset) {
	int i;

	Block *blocks_temp = malloc((*size + offset) * sizeof(Block)); /* Create temporary array */

	for (i = 0; i < *size; ++i){
		blocks_temp[i].x = bl[i].x;
		blocks_temp[i].y = bl[i].y;
		blocks_temp[i].z = bl[i].z;
		blocks_temp[i].visible = bl[i].visible;
	} /* Put the elements of block array into temp array */
	bl = blocks_temp;
	*size += offset;
}

/* x, y, z are the coordinate location of the center of the block */
void create_block(float x, float y, float z, Blocks* bl, int type) {

	// if (count == bl.size)
	// 	resize(bl.arr, &bl.size, 1);

	bl->arr[bl->count].x = x;
	bl->arr[bl->count].y = y;
	bl->arr[bl->count].z = z; 
	bl->arr[bl->count].visible = 1;
	bl->arr[bl->count].type = type;
	bl->arr[bl->count].special = (type == 5);
	++bl->count;


	/*bl[count].color_r = (float)(rand() % 4) - 0.5;
	bl[count].color_g = (float)(rand() % 4) - 0.5;
	bl[count].color_b = (float)(rand() % 4) - 0.5;

	if (bl[count].color_r <= 0.3 && bl[count].color_g <= 0.3 && bl[count].color_b <= 0.3)
		bl[count].color_r = bl[count].color_b = bl[count].color_g = 1.0;*/

}

void create_blocks(
	float initial_x, float initial_y, float initial_z, 
	int length_x, int length_y, int length_z,
	Blocks *bl, int block_type) {

	int i ,j, k;

	for (i = 0; i < length_x; ++i) {
		for (j = 0; j < length_z; ++j) {
			for (k = 0; k < length_y; ++k) {
				create_block(initial_x + i*BLOCK_SIZE, initial_y + k*BLOCK_SIZE, initial_z + j*BLOCK_SIZE, bl, block_type);
			}
		}
	}
	

}

void draw_block(Blocks *bl, int index) {

	GLfloat vertices[8][3] = {

		/* Bottom Vertices */
		{bl->arr[index].x + BLOCK_SIZE / 2, bl->arr[index].y - BLOCK_SIZE / 2, bl->arr[index].z + BLOCK_SIZE / 2 }, // 0 Bottom front right
		{bl->arr[index].x - BLOCK_SIZE / 2, bl->arr[index].y - BLOCK_SIZE / 2, bl->arr[index].z + BLOCK_SIZE / 2}, // 1 Bottom front left
		{bl->arr[index].x + BLOCK_SIZE / 2, bl->arr[index].y - BLOCK_SIZE / 2, bl->arr[index].z - BLOCK_SIZE / 2}, // 2 Bottom back right
		{bl->arr[index].x - BLOCK_SIZE / 2, bl->arr[index].y - BLOCK_SIZE / 2, bl->arr[index].z - BLOCK_SIZE / 2}, // 3 Bottom back left

		/* Top vertices */
		{bl->arr[index].x + BLOCK_SIZE / 2, bl->arr[index].y + BLOCK_SIZE / 2, bl->arr[index].z + BLOCK_SIZE / 2}, // 4 Top front right
		{bl->arr[index].x - BLOCK_SIZE / 2, bl->arr[index].y + BLOCK_SIZE / 2, bl->arr[index].z + BLOCK_SIZE / 2}, // 5 Top front left
		{bl->arr[index].x + BLOCK_SIZE / 2, bl->arr[index].y + BLOCK_SIZE / 2, bl->arr[index].z - BLOCK_SIZE / 2}, // 6 Top back right
		{bl->arr[index].x - BLOCK_SIZE / 2, bl->arr[index].y + BLOCK_SIZE / 2, bl->arr[index].z - BLOCK_SIZE / 2} // 7 Top back left


	};

	
	glBegin(GL_QUADS); /* Begin drawing */

	/* Front side  */
	glColor3f( bl->arr[index].color_r, bl->arr[index].color_g, bl->arr[index].color_b );     
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

void draw_blocks(Blocks *bl) {
	int i;

	for (i = 0; i < bl->count; ++i) {
		draw_block(bl,i);

	}
}

float distance(float x0, float y0, float z0, float x1, float y1, float z1) {

	return sqrt(pow((x1-x0),2)+pow((y1-y0),2)+pow((z1-z0),2));
}

void create_sphere(Blocks *bl, float x, float y, float z, float radius) {

	int i, j, k;

	for (j = z - radius; j <= z + radius; j++) {
		for (i = x - radius; i <= x + radius; i++ ) {
			for (k = z - radius; k <= z + radius; k++) {
				if (distance(i,j,k,x,y,z) <= (radius + SPHERE_THRESHOLD) && distance(i,j,k,x,y,z) >= (radius - SPHERE_THRESHOLD)) {
					create_block(i,j,k,bl, 1);
				}
			}
		}
	}
}