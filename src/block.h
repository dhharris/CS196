
#define BLOCK_SIZE 1.0f /* length of one side of the block */
#define INITIAL_BLOCKS 100000 /* number of blocks in initial memory allocation */
#define SPHERE_THRESHOLD 0.5f

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

float distance(float x0, float y0, float z0, float x1, float y1, float z1);
void create_sphere(Block *blocks, float x, float y, float z, float radius, int *size);