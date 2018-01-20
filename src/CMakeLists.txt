set(SOURCE_FILES main.cpp StateMachine.cpp AssetManager.cpp InputManager.cpp
        Game.cpp SplashState.cpp MainMenuState.cpp GameState.cpp GameOverState.cpp Pipe.cpp Land.cpp Bird.cpp)
add_executable(flappy_bird ${SOURCE_FILES})


# Detect and add SFML
# Add include and library paths to cmake
set(CMAKE_INCLUDE_PATH ${PROJECT_SOURCE_DIR} "${PROJECT_SOURCE_DIR}/extlibs/SFML/include")
#set(CMAKE_FRAMEWORK_PATH ${CMAKE_FRAMEWORK_PATH} "${PROJECT_SOURCE_DIR} /extlibs/SFML/extlibs")
set(CMAKE_LIBRARY_PATH ${CMAKE_LIBRARY_PATH} "${PROJECT_SOURCE_DIR}/extlibs/SFML/lib")
# Adding cmake_modules directory to CMAKE_MODULE_PATH directoires (list)
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake_modules")
# Find any version 2.X of SFML
# See the FindSFML.cmake file for additional details and instructions
find_package(SFML 2 COMPONENTS system window graphics network audio REQUIRED)
if(SFML_FOUND)
    include_directories(${SFML_INCLUDE_DIR})
    target_link_libraries(flappy_bird ${SFML_LIBRARIES} ${SFML_DEPENDENCIES})
endif()

