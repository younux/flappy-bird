//
// Created by Younes on 20/01/2018.
//

#pragma once

#include <SFML/Graphics.hpp>
#include "Game.hpp"
#include <vector>

namespace Younux {
    class Land {
    public:
        Land(GameDataRef data);

        void MoveLand(float dt);
        void DrawLand();

    private:
        GameDataRef _data;

        std::vector<sf::Sprite> _landSprites;



    };

}