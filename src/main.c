#include "main.h"
#include "block.h"
#include "input.h"

double rotate_x = 0;
double rotate_y = 0;

static Global global;
Global *g = &global;

void error_callback(int error, const char* description)
{
    fputs(description, stderr);
}

int create_window() {
	
    /* Notifies you of any errors */
    glfwSetErrorCallback(error_callback);

    /* Initialize GLFW window */
    if (!glfwInit())
        return -1; // -1 means that there was an error

    g->window = glfwCreateWindow(WINDOW_WIDTH, WINDOW_HEIGHT, GAME_NAME, NULL, NULL);
    
    if (!g->window) {
        glfwTerminate();
        return -1;
    }

    glfwMakeContextCurrent(g->window);
    glfwSwapInterval(1);

    /* Init user input */
    input_init(g->window);

    /* Get info of GPU and supported OpenGL version */
    printf("Renderer: %s\n", glGetString(GL_RENDERER));
    printf("OpenGL version supported %s\n", glGetString(GL_VERSION));

    /* OpenGL Initializations */
    glEnable(GL_DEPTH_TEST); // Allows us to use Z axis
    glMatrixMode( GL_PROJECTION );

    return 1;


}
/* Test - just renders a cube with input */
void gl_test(void) {

    input_rotate(&rotate_x,&rotate_y);

    //  Clear screen and Z-buffer
    glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT);

    // Reset transformations
    glLoadIdentity();

    // Other Transformations
    // glTranslatef( 0.1, 0.0, 0.0 );      // Not included
    // glRotatef( 180, 0.0, 1.0, 0.0 );    // Not included

    // Rotate when user changes rotate_x and rotate_y
    glRotatef( rotate_x, 1.0, 0.0, 0.0 );
    glRotatef( rotate_y, 0.0, 1.0, 0.0 );

    // Other Transformations
    // glScalef( 2.0, 2.0, 0.0 );          // Not included

    //Multi-colored side - FRONT
    glBegin(GL_POLYGON);

    glColor3f( 1.0, 0.0, 0.0 );     glVertex3f(  0.5, -0.5, -0.5 );      // P1 is red
    glColor3f( 0.0, 1.0, 0.0 );     glVertex3f(  0.5,  0.5, -0.5 );      // P2 is green
    glColor3f( 0.0, 0.0, 1.0 );     glVertex3f( -0.5,  0.5, -0.5 );      // P3 is blue
    glColor3f( 1.0, 0.0, 1.0 );     glVertex3f( -0.5, -0.5, -0.5 );      // P4 is purple

    glEnd();

    // White side - BACK
    glBegin(GL_POLYGON);
    glColor3f(   1.0,  1.0, 1.0 );
    glVertex3f(  0.5, -0.5, 0.5 );
    glVertex3f(  0.5,  0.5, 0.5 );
    glVertex3f( -0.5,  0.5, 0.5 );
    glVertex3f( -0.5, -0.5, 0.5 );
    glEnd();

    // Purple side - RIGHT
    glBegin(GL_POLYGON);
    glColor3f(  1.0,  0.0,  1.0 );
    glVertex3f( 0.5, -0.5, -0.5 );
    glVertex3f( 0.5,  0.5, -0.5 );
    glVertex3f( 0.5,  0.5,  0.5 );
    glVertex3f( 0.5, -0.5,  0.5 );
    glEnd();

    // Green side - LEFT
    glBegin(GL_POLYGON);
    glColor3f(   0.0,  1.0,  0.0 );
    glVertex3f( -0.5, -0.5,  0.5 );
    glVertex3f( -0.5,  0.5,  0.5 );
    glVertex3f( -0.5,  0.5, -0.5 );
    glVertex3f( -0.5, -0.5, -0.5 );
    glEnd();

    // Blue side - TOP
    glBegin(GL_POLYGON);
    glColor3f(   0.0,  0.0,  1.0 );
    glVertex3f(  0.5,  0.5,  0.5 );
    glVertex3f(  0.5,  0.5, -0.5 );
    glVertex3f( -0.5,  0.5, -0.5 );
    glVertex3f( -0.5,  0.5,  0.5 );
    glEnd();

    // Red side - BOTTOM
    glBegin(GL_POLYGON);
    glColor3f(   1.0,  0.0,  0.0 );
    glVertex3f(  0.5, -0.5, -0.5 );
    glVertex3f(  0.5, -0.5,  0.5 );
    glVertex3f( -0.5, -0.5,  0.5 );
    glVertex3f( -0.5, -0.5, -0.5 );
    glEnd();


    glfwSwapBuffers(g->window);  // Swap the front and back frame buffers (double buffering)
    glfwPollEvents(); // Check for any events

}

void input() {

    input_main(&g->translate_x, &g->translate_y, &g->translate_z, &g->zoom, &rotate_x, &rotate_y);

    glOrtho( -WINDOW_WIDTH/2*g->zoom, WINDOW_WIDTH/2*g->zoom, -WINDOW_HEIGHT/2*g->zoom, WINDOW_HEIGHT/2*g->zoom, -100, 100 );

    glTranslatef(g->translate_x, g->translate_y, g->translate_z);
}

void render(Block *blocks, int block_count) {


    /* OpenGL rendering */
    glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT);

    /* Reset transformations */
    glLoadIdentity();

    input();

    /* Rotate using arrow keys */
    glRotatef( rotate_x, 1.0, 0.0, 0.0 );
    glRotatef( rotate_y, 0.0, 1.0, 0.0 );

    

    draw_blocks(blocks, block_count);

    glfwSwapBuffers(g->window);  // Swap the front and back frame buffers (double buffering)
    glfwPollEvents(); // Check for any events
}

int main(int argc, char **argv) {

    srand(time(NULL)); /* Seed random numbers for block color */

    /* Block variables */
    int block_array_size = INITIAL_BLOCKS;
    int block_count = 0;

    g->translate_x = 0.0;
    g->translate_y = 0.0;
    g->translate_z = 0.0;
    g->zoom = 0.0;

   

    Block *blocks = init_blocks();


    create_blocks(
    0.0, 0.0, 0.0, 
    5, 5, 5,
    blocks, &block_array_size, &block_count);


    
    if (!create_window())
        return -1;

    /* Game Loop */
    while (!glfwWindowShouldClose(g->window)) {
    	
        /*gl_test();*/
        render(blocks, block_count);
        
    }
    remove_blocks(blocks);
    glfwTerminate();
    return 0;
}
