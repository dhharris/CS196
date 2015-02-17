#include "headers.h"

/* Game constants */
#define GAME_NAME "Game"
#define WINDOW_WIDTH 854 // Same dimensions as Minecraft
#define WINDOW_HEIGHT 480


/* structs */
typedef struct {
	GLFWwindow *window;
	 /* Movement variables */
    float translate_x;
    float translate_y;
    float translate_z;

    /* Zoom variables */
    GLdouble zoom;

} Global; // Contains all the globals
