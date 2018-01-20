//
// Created by Younes on 20/01/2018.
//

#pragma once

#include <SFML/Graphics.hpp>
#include "Game.hpp"
#include "DEFINITIONS.hpp"
#include <vector>
#include <iostream>


namespace Younux {

    class Pipe {
    public:
        Pipe(GameDataRef data);
        void DrawPipes();
        void SpawnBottomPipe();
        void SpawnTopPipe();
        void SpawnInvisiblePipe();
        void MovePipes(float dt);
        void RandomisePipeOffset();

    private:
        GameDataRef _data;
        std::vector<sf::Sprite> pipeSprites;

        int _landHeight;
        int _pipeSpawnYOffset;

    };
}