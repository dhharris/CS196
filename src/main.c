#include "main.h"
#include "block.h"
#include "input.h"
#include "textures.h"
#include "world.h"
#include "physics.h"
#include "movement.h"

double rotate_x = 0;
double rotate_y = 0;

static Global global;
Global *g = &global;

void error_callback(int error, const char* description) {
    fputs(description, stderr);
}

int create_window() {
	
    /* Notifies you of any errors */
    glfwSetErrorCallback(error_callback);

    /* Initialize GLFW window */
    if (!glfwInit())
        return -1; // -1 means that there was an error

    /* Create the window */
    g->window = glfwCreateWindow(WINDOW_WIDTH, WINDOW_HEIGHT, GAME_NAME, NULL, NULL);
    
    if (!g->window) {
        glfwTerminate();
        return -1;
    }

    glfwMakeContextCurrent(g->window);

    /* Rate at which buffers are swapped (best to keep at 1) */
    glfwSwapInterval(1);

    /* Init user input */
    input_init(g->window);

    /* Get info of GPU and supported OpenGL version */
    printf("Renderer: %s\n", glGetString(GL_RENDERER));
    printf("OpenGL version supported %s\n", glGetString(GL_VERSION));

    /* OpenGL Initializations */
    glEnable(GL_TEXTURE_2D);                        // Enable Texture Mapping ( NEW )
    glShadeModel(GL_SMOOTH);                       // Enable Smooth Shading
    glClearColor(0.0f, 0.0f, 0.0f, 0.5f);                   // Black Background
    glClearDepth(1.0f);                         // Depth Buffer Setup
    glEnable(GL_DEPTH_TEST);                        // Enables Depth Testing
    glDepthFunc(GL_LEQUAL);                         // The Type Of Depth Test To Do
    glHint(GL_PERSPECTIVE_CORRECTION_HINT, GL_NICEST);          // Really Nice Perspective Calculations





    return 1;


}

void input() {

    input_main(&g->translate_x, &g->translate_y, &g->translate_z, &g->zoom, &rotate_x, &rotate_y);

    glOrtho( -WINDOW_WIDTH/2*g->zoom, WINDOW_WIDTH/2*g->zoom, -WINDOW_HEIGHT/2*g->zoom, WINDOW_HEIGHT/2*g->zoom, -100, 100 );
    glViewport(0,0, WINDOW_WIDTH * g->zoom, WINDOW_HEIGHT * g->zoom);
    glTranslatef(g->translate_x, g->translate_y, g->translate_z);

}

void render(Blocks *blocks, unsigned char *image) {


    /* OpenGL rendering */
    glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT);



    /* Reset transformations */
    glMatrixMode(GL_PROJECTION);                        // Select The Projection Matrix
    glLoadIdentity();

    glMatrixMode(GL_MODELVIEW);                     // Select The Modelview Matrix
    glLoadIdentity();                           // Reset The Modelview Matrix

    input();

    /* Rotate using arrow keys */
    glRotatef( rotate_x, 1.0, 0.0, 0.0 );
    glRotatef( rotate_y, 0.0, 1.0, 0.0 );

    

    draw_textures(image, blocks);

    glfwSwapBuffers(g->window);  // Swap the front and back frame buffers (double buffering)
    glfwPollEvents(); // Check for any events
}

int main(int argc, char **argv) {

    srand(time(NULL)); /* Seed random numbers for block color */

    /* Block variables */
    Blocks *blocks = init_blocks();

    /* Image variables */
    unsigned char *image;

    g->translate_x = 0.0;
    g->translate_y = 0.0;
    g->translate_z = 0.0;
    g->zoom = INITIAL_ZOOM;
   
    // Generate terrain
         create_block(0.0, -16.0, 0.0, blocks, 14);
         gen_terrain(0, blocks);
       




    // Create window
    if (!create_window())
        return -1;

    // Load spritesheet 
    if (!load_gl_texture(DEFAULT_TEXTURE, image, BLOCK_SIZE, BLOCK_SIZE)) {
        printf("Program closed with an error\n");
        return -1;
    }

    /* Time variables */
    double last_time = glfwGetTime();
    int nb_frames = 0;

    /* Game Loop */
    while (!glfwWindowShouldClose(g->window)) {
    	
        /*  Measure FPS */
        double currentTime = glfwGetTime();
        nb_frames++;
        if ( currentTime - last_time >= 1.0 ) { // If last prinf() was more than 1 sec ago
            // printf and reset timer
            printf("%2.2f frames/sec\n", (double)(nb_frames));
            nb_frames = 0;
            last_time += 1.0;
        }
        movement(blocks,1);
        render(blocks, image);

        
    }
    remove_blocks(blocks);
    glfwTerminate();
    free(image);
    return 0;
}
