cmake_minimum_required(VERSION 3.1)

find_package(jansson CONFIG)
if (TARGET jansson)
    set(JANSSON_LIBRARY jansson)
else()
    find_library(JANSSON_LIBRARY jansson REQUIRED)
endif()

add_library(Graph Graph.cpp Graph.h Node.cpp Node.h Edge.cpp Edge.h MetaDataContainer.cpp MetaDataContainer.h)

target_link_libraries(Graph PRIVATE "${JANSSON_LIBRARY}")
target_include_directories(Graph INTERFACE "${CMAKE_CURRENT_SOURCE_DIR}")
