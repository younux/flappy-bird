//
// Created by Younes on 01/01/2018.
//

#pragma once

#include <SFML/Graphics.hpp>

namespace Younux {

    class InputManager{
    private:

    public:
        InputManager() { }
        ~InputManager() { }

        bool IsSpriteClicked(sf::Sprite object, sf::Mouse::Button button, sf::RenderWindow &window);

        sf::Vector2i GetMousePosition(sf::RenderWindow &window);

    };


}
