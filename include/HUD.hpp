//
// Created by Younes on 21/01/2018.
//

#pragma once

#include <SFML/Graphics.hpp>

#include "DEFINITIONS.hpp"
#include "Game.hpp"


namespace Younux {

    class HUD{
    public:
        HUD(GameDataRef data);

        void Draw();
        void UpdateScore(int score);

    private:
        GameDataRef _data;

        sf::Text _scoreText;

    };

}