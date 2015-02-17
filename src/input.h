#include "headers.h"

void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods);
void mouse_button_callback(GLFWwindow* window, int button, int action, int mods);
void input_init(GLFWwindow* window);
void input_rotate(double *rotate_x, double *rotate_y);
void input_main(float *x, float *y, float *z, double *zoom, double *rotate_x, double *rotate_y);