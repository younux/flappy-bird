//
// Created by Younes on 07/01/2018.
//

#include "MainMenuState.hpp"
#include "DEFINITIONS.hpp"
#include <iostream>


namespace Younux {

    MainMenuState::MainMenuState(GameDataRef data) : _data(data) {

    }

    void MainMenuState::Init() {
        _data->assets.LoadTexture(MAIN_MENU_BACKGROUND_NAME, MAIN_MENU_BACKGROUND_FILEPATH);
        _data->assets.LoadTexture(GAME_TITLE_NAME, GAME_TITLE_FILEPATH);
        _data->assets.LoadTexture(PLAY_BUTTONN_NAME, PLAY_BUTTONN_FILEPATH);

        _background.setTexture(this->_data->assets.GetTexture(MAIN_MENU_BACKGROUND_NAME));
        _title.setTexture(this->_data->assets.GetTexture(GAME_TITLE_NAME));
        _playButton.setTexture(this->_data->assets.GetTexture(PLAY_BUTTONN_NAME));

        _title.setPosition((SCREEN_WIDTH/2)-(_title.getGlobalBounds().width/2),
                           _title.getGlobalBounds().height/2);

        _playButton.setPosition((SCREEN_WIDTH/2)-(_playButton.getGlobalBounds().width/2),
                                (SCREEN_HEIGHT/2)-(_playButton.getGlobalBounds().height/2));

    }

    void MainMenuState::HandleInput() {
        sf::Event event;

        while (_data->window.pollEvent(event)){
            if(sf::Event::Closed == event.type){
                _data->window.close();
            }

            if(_data->input.IsSpriteClicked(_playButton, sf::Mouse::Button::Left,
            _data->window)){
                std::cout << "Go To Game Screen" << std::endl;
            }
        }
    }

    void MainMenuState::Update(float dt) {

    }

    void MainMenuState::Draw(float dt) {
        this->_data->window.clear();

        this->_data->window.draw(this->_background);
        this->_data->window.draw(this->_title);
        this->_data->window.draw(this->_playButton);

        this->_data->window.display();

    }

}