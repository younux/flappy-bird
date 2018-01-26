set(SOURCE_FILES main.cpp StateMachine.cpp AssetManager.cpp InputManager.cpp
        Game.cpp SplashState.cpp MainMenuState.cpp GameState.cpp GameOverState.cpp Pipe.cpp Land.cpp Bird.cpp Collision.cpp Flash.cpp HUD.cpp)
add_executable(flappy_bird ${SOURCE_FILES})


# Detect and add SFML
# Add extrnal libraries include paths to cmake
set(CMAKE_INCLUDE_PATH ${CMAKE_INCLUDE_PATH} "${PROJECT_SOURCE_DIR}/extlibs/include")

MESSAGE("----> Used Compiler : ${CMAKE_CXX_COMPILER_ID}")
MESSAGE("----> Detecting SFML corresponding to ${CMAKE_CXX_COMPILER_ID} compiler ")

# Add library path to cmake depending on the compiler and the platform
if(${CMAKE_CXX_COMPILER_ID} STREQUAL "Clang")
	set(CMAKE_LIBRARY_PATH ${CMAKE_LIBRARY_PATH} "${PROJECT_SOURCE_DIR}/extlibs/macosx-clang/SFML")
elseif(MSVC)
	set(CMAKE_LIBRARY_PATH ${CMAKE_LIBRARY_PATH} "${PROJECT_SOURCE_DIR}/extlibs/win-msvc-32-bits/SFML")
elseif(MINGW)
	set(CMAKE_LIBRARY_PATH ${CMAKE_LIBRARY_PATH} "${PROJECT_SOURCE_DIR}/extlibs/win-mingw-w64-64-bits/SFML")
endif()

# Adding cmake_modules directory to CMAKE_MODULE_PATH directoires (list) (it is good to see how the library
# cmake module finds the library. FindSFML.cmake for example suppose that headers are inside a directory SFML 
# (SFML/Config.hpp), it also adds subdirecotories by suffixing by include, 
# it uses find_path(SFML_INCLUDE_DIR SFML/Config.hpp PATH_SUFFIXES include PATHS ${FIND_SFML_PATHS})
# That's why I added set(CMAKE_INCLUDE_PATH ${CMAKE_INCLUDE_PATH} "${PROJECT_SOURCE_DIR}/extlibs/include").
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake_modules")
# Find any version 2.X of SFML
# See the FindSFML.cmake file for additional details and instructions
find_package(SFML 2 COMPONENTS system window graphics network audio REQUIRED)
if(SFML_FOUND)
    include_directories(${SFML_INCLUDE_DIR})
    target_link_libraries(flappy_bird ${SFML_LIBRARIES} ${SFML_DEPENDENCIES})
endif()

