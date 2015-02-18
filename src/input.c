#include "headers.h"

#define MOVE_SPEED 2
#define ROTATE_SPEED 3
#define ZOOM_MULTIPLIER 0.002

int action1; /* Camera rotation */
double action2; /* Scrolling */
int action3; /* Change location of camera */

void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods)
{
    if (key == GLFW_KEY_LEFT && (action == GLFW_PRESS || action == GLFW_REPEAT))
    	action1 = 2;
    else if (key == GLFW_KEY_RIGHT && (action == GLFW_PRESS || action == GLFW_REPEAT))
    	action1 = 3;
    else if (key == GLFW_KEY_DOWN && (action == GLFW_PRESS || action == GLFW_REPEAT))
    	action1 = 0;
    else if (key == GLFW_KEY_UP && (action == GLFW_PRESS || action == GLFW_REPEAT))
    	action1 = 1;
    else if (key == GLFW_KEY_W && (action == GLFW_REPEAT || action == GLFW_PRESS))
    	action3 = 0;
    else if (key == GLFW_KEY_A && (action == GLFW_REPEAT || action == GLFW_PRESS))
    	action3 = 1;
    else if (key == GLFW_KEY_D && (action == GLFW_REPEAT || action == GLFW_PRESS))
    	action3 = 2;
    else if (key == GLFW_KEY_S && (action == GLFW_REPEAT || action == GLFW_PRESS))
    	action3 = 3;
    else
    	action1 = action3 = -1;
 

}
void mouse_button_callback(GLFWwindow* window, int button, int action, int mods)
{
	if (button == GLFW_MOUSE_BUTTON_LEFT && action == GLFW_PRESS)
		printf("Left click!\n");
    if (button == GLFW_MOUSE_BUTTON_RIGHT && action == GLFW_PRESS)
        printf("Right click!\n");
}

void scroll_callback(GLFWwindow* window, double xoffset, double yoffset) {
	action2 = yoffset;
}

void input_init(GLFWwindow* window) {
	glfwSetMouseButtonCallback(window, mouse_button_callback);
	glfwSetKeyCallback(window, key_callback);
	glfwSetScrollCallback(window, scroll_callback);
}

void input_rotate(double *rotate_x, double *rotate_y) {
	
	switch(action1) {
		case -1: ;
			break;
		case 0: *rotate_x -= ROTATE_SPEED;
			break;
		case 1: *rotate_x += ROTATE_SPEED;
			break;
		case 2: *rotate_y -= ROTATE_SPEED;
			break;
		case 3: *rotate_y += ROTATE_SPEED;
			break;
		default: printf("How did that happen? ERROR!\n");
			return;
	}
}

void input_translate(float *x, float *y, float *z) {
	switch(action3) {
		case 0: *y += MOVE_SPEED;
			break;
		case 1: *x -= MOVE_SPEED;
			break;
		case 2: *x += MOVE_SPEED;
			break;
		case 3: *y -= MOVE_SPEED;
			break;
		default: 
			return;
	}
}

void input_main(float *x, float *y, float *z, double *zoom, double *rotate_x, double *rotate_y) {
	
	input_rotate(rotate_x, rotate_y);

	if (action2 > 0) /* Scroll up */
		*zoom += ZOOM_MULTIPLIER;
	else if (action2 < 0) /* Scroll down */
		*zoom -= ZOOM_MULTIPLIER;
	else; /* Do nothing */

	input_translate(x,y,z);

	action2 = 0;
	action3 = -1;
}