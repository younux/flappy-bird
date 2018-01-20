//
// Created by Younes on 20/01/2018.
//


#include <sstream>
#include <iostream>
#include "GameOverState.hpp"
#include "DEFINITIONS.hpp"


namespace Younux {

    GameOverState::GameOverState(GameDataRef data) : _data(data) {

    }

    void GameOverState::Init() {

        _data->assets.LoadTexture(GAME_OVER_BACKGROUND_NAME, GAME_OVER_BACKGROUND_FILEPATH);
        _background.setTexture(this->_data->assets.GetTexture(GAME_OVER_BACKGROUND_NAME));

    }

    void GameOverState::HandleInput() {
        sf::Event event;

        while( this->_data->window.pollEvent(event)){
            if(sf::Event::Closed == event.type){
                this->_data->window.close();
            }
        }


    }

    void GameOverState::Update(float dt) {

    }

    void GameOverState::Draw(float dt) {
        this->_data->window.clear(sf::Color::Red);

        this->_data->window.draw(this->_background);

        this->_data->window.display();

    }



}
