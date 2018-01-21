//
// Created by Younes on 21/01/2018.
//

#include "HUD.hpp"


namespace Younux {

    HUD::HUD(GameDataRef data): _data(data) {
        _scoreText.setFont(_data->assets.GetFont(FLAPPY_FONT_NAME));

        _scoreText.setString("0");

        _scoreText.setCharacterSize(128);

        _scoreText.setFillColor(sf::Color::White);

        _scoreText.setOrigin(_scoreText.getGlobalBounds().width/2, _scoreText.getGlobalBounds().height/2);

        _scoreText.setPosition(_data->window.getSize().x/2, _data->window.getSize().y/5);
    }

    void HUD::Draw() {
        _data->window.draw(_scoreText);

    }

    void HUD::UpdateScore(int score) {
        _scoreText.setString(std::to_string(score));

    }

}