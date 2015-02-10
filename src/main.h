#include <GLFW/glfw3.h>
#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

/* Game constants */
#define GAME_NAME "Game"
#define WINDOW_WIDTH 854 // Same dimensions as Minecraft
#define WINDOW_HEIGHT 480

/* structs */
typedef struct {
	GLFWwindow *window;
} Global; // Contains all the globals
