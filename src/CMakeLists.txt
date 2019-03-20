cmake_minimum_required(VERSION 3.1)

find_package(jansson REQUIRED)

add_library(Graph Graph.cpp Graph.h Node.cpp Node.h Edge.cpp Edge.h MetaDataContainer.cpp MetaDataContainer.h)

target_link_libraries(Graph PRIVATE jansson)
target_include_directories(Graph INTERFACE "${CMAKE_CURRENT_SOURCE_DIR}")
