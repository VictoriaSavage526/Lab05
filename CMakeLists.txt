make_minimum_required(VERSION 3.10)

# set the project name
project(LAB5)

# specify the C++ standard
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

target_link_libraries(LAB5 PUBLIC shared)
target_link_libraries(LAB5 PUBLIC dynamic)

#configure file
configure_file(block.h.in block.h)

# add the executable
add_executable(LAB5 dynamic_block program.c)
add_executable(LAB5 static_block program.c)


#include directories
target_include_directories(Tutorial PUBLIC
                           "${PROJECT_BINARY_DIR}"
                           "${PROJECT_SRC_DIR}"
                           )