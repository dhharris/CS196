#include "main.h"

static Global global;
Global *g = &global;

void create_window() {
	GLFWmonitor *monitor = NULL;
	g->window = glfwCreateWindow(WINDOW_WIDTH, WINDOW_HEIGHT, GAME_NAME, monitor, NULL);

}

void render(void) {

}

int main(int argc, char **argv) {

	/* Initialize GLFW window */
	if (!glfwInit())
		return -1; // -1 means that there was an error
	create_window();
	if (!g->window) {
		glfwTerminate();
		return -1;
	}
	glfwMakeContextCurrent(g->window);

    glEnable(GL_CULL_FACE);
    glEnable(GL_DEPTH_TEST);
    glLogicOp(GL_INVERT);
    glClearColor(0, 0, 0, 1);

    /* Game Loop */
    while (1) {
    	render();
    	glfwSwapBuffers(g->window);
        glfwPollEvents();
        if (glfwWindowShouldClose(g->window)) {
            break;
        }
    }
    glfwTerminate();
    return 0;
}
