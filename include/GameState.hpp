//
// Created by Younes on 20/01/2018.
//


#pragma once

#include <SFML/Graphics.hpp>
#include <SFML/Audio.hpp>
#include "State.hpp"
#include "Game.hpp"
#include "Pipe.hpp"
#include "Land.hpp"
#include "Bird.hpp"
#include "Collision.hpp"
#include "Flash.hpp"
#include "HUD.hpp"

namespace Younux{

    class GameState : public State  {
    public:
        GameState(GameDataRef data);

        void Init();

        void HandleInput();
        void Update(float dt);
        void Draw(float dt);

    private:
        GameDataRef _data;

        sf::Sprite _background;

        Pipe *pipe;
        Land *land;
        Bird *bird;
        Collision collision;
        Flash *flash;
        HUD *hud;

        sf::Clock clock;

        int _gameState;

        int _score;

        sf::SoundBuffer _hitSoundBuffer;
        sf::SoundBuffer _pointSoundBuffer;
        sf::SoundBuffer _wingSoundBuffer;

        sf::Sound _hitSound;
        sf::Sound _pointSound;
        sf::Sound _wingSound;


    };
}


