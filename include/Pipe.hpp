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
        void SpawnScoringPipe();
        void MovePipes(float dt);
        void RandomisePipeOffset();

        const std::vector<sf::Sprite> & GetSprites() const;
        std::vector<sf::Sprite> & GetScoringSprites();

    private:
        GameDataRef _data;
        std::vector<sf::Sprite> pipeSprites;
        std::vector<sf::Sprite> scorinngPipes;

        int _landHeight;
        int _pipeSpawnYOffset;

    };
}