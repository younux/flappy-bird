//
// Created by Younes on 21/01/2018.
//

#pragma once

#include <SFML/Graphics.hpp>
#include "Game.hpp"
#include "DEFINITIONS.hpp"


namespace Younux{

    class Flash{
    public:
        Flash(GameDataRef data);

        void Show(float dt);
        void  Draw();

    private:
        GameDataRef _data;

        sf::RectangleShape _shape;

        bool _flashOn;

    };

}