#include "headers.h"

int action1;

void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods)
{
    if (key == GLFW_KEY_LEFT && action == GLFW_PRESS)
    	action1 = 2;
    else if (key == GLFW_KEY_RIGHT && action == GLFW_PRESS)
    	action1 = 3;
    else if (key == GLFW_KEY_DOWN && action == GLFW_PRESS)
    	action1 = 0;
    else if (key == GLFW_KEY_UP && action == GLFW_PRESS)
    	action1 = 1;
    else
    	action1 = -1;
    if (action1)
    	printf("Key pressed!\n");

}
void mouse_button_callback(GLFWwindow* window, int button, int action, int mods)
{
	if (button == GLFW_MOUSE_BUTTON_LEFT && action == GLFW_PRESS)
		printf("Left click!\n");
    if (button == GLFW_MOUSE_BUTTON_RIGHT && action == GLFW_PRESS)
        printf("Right click!\n");
}
void input_init(GLFWwindow* window) {
	glfwSetMouseButtonCallback(window, mouse_button_callback);
	glfwSetKeyCallback(window, key_callback);
}

void input_main(double *rotate_x, double *rotate_y) {
	
	switch(action1) {
		case -1: ;
			break;
		case 0: *rotate_x -= 5;
			break;
		case 1: *rotate_x += 5;
			break;
		case 2: *rotate_y -= 5;
			break;
		case 3: *rotate_y += 5;
			break;
		default: printf("How did that happen? ERROR!\n");
			return;
	}
}