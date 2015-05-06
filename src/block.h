#ifndef _block_h_
#define _block_h_

#define BLOCK_SIZE 16.0f /* length of one side of the block */
#define INITIAL_BLOCKS 100000 /* number of blocks in initial memory allocation */
#define SPHERE_THRESHOLD 0.1 / BLOCK_SIZE

typedef struct {
    float x;
    float y;
    float z;
    float v[3];
    float mass;
    float color_r;
    float color_g;
    float color_b;
    int visible; /* 1 or 0 depending on whether block is visible or not */
    int type;
    int special; /* If 1 then all the sides are the same texture */
} Block;

typedef struct {
    Block *arr; // Block array
    int size; // Size of the array
    int count; // How many blocks are actually visible
} Blocks;


Blocks* init_blocks(void);
void create_block(float x, float y, float z, Blocks *blocks, int type , float mass);
void resize(Block *blocks, int *size, int offset);
void remove_blocks(Blocks *blocks);
void draw_block(Blocks *blocks, int index);
void draw_blocks(Blocks *blocks);
int count_blocks(Blocks *blocks);

void create_blocks(
    float initial_x, float initial_y, float initial_z, 
    int length_x, int length_y, int length_z,
    Blocks *blocks, int block_type);

float distance(float x0, float y0, float z0, float x1, float y1, float z1);
void create_sphere(Blocks *sblocks, float x, float y, float z, float radius);
#endif