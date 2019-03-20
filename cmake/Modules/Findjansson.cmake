# Try to find Jansson
# Once done this will define
#  JANSSON_FOUND
#  JANSSON_INCLUDE_DIRS
#  JANSSON_LIBRARIES
#  JANSSON_DEFINITIONS

find_path(JANSSON_INCLUDE_DIR jansson.h)

find_library(JANSSON_LIBRARY NAMES jansson)

add_library(jansson INTERFACE IMPORTED)
set_target_properties(jansson PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "${JANSSON_INCLUDE_DIR}")
set_target_properties(jansson PROPERTIES INTERFACE_LINK_LIBRARIES "${JANSSON_LIBRARY}")

set(JANSSON_LIBRARIES ${JANSSON_LIBRARY})
set(JANSSON_INCLUDE_DIRS ${JANSSON_INCLUDE_DIR})

mark_as_advanced(JANSSON_INCLUDE_DIR JANSSON_LIBRARY)