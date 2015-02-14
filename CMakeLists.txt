cmake_minimum_required (VERSION 2.6)
project (game)


file(GLOB SOURCE_FILES src/*.c)

add_executable(game
	${SOURCE_FILES}
)

add_subdirectory(deps/glfw-3.1)

include_directories(
	deps/glfw-3.1/include
	.
)

find_package(OpenGL REQUIRED)


set(ALL_LIBS
	${OPENGL_LIBRARY}
	${GLFW_LIBRARIES}
)

if(UNIX)
target_link_libraries(game glfw
	${ALL_LIBS}
)
endif()

if(APPLE)
target_link_libraries(game glfw
	${ALL_LIBS}
	${COCOA_LIBRARY}
)

endif()




