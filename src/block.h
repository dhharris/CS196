
#define BLOCK_SIZE 1.0f /* length of one side of the block */
#define INITIAL_BLOCKS 10000 /* number of blocks in initial memory allocation */

typedef struct {
    float x;
    float y;
    float z;
    float color_r;
    float color_g;
    float color_b;
    int visible; /* 1 or 0 depending on whether block is visible or not */
} Block;

Block* init_blocks(void);
void create_block(float x, float y, float z, Block *blocks, int *size);
void resize(Block **blocks, int *size, int offset);
void remove_blocks(Block *blocks);
void draw_block(Block *blocks, int index);
void draw_blocks(Block *blocks);

void create_blocks(
	float initial_x, float initial_y, float initial_z, 
	int length_x, int length_y, int length_z,
	Block *blocks, int *size);