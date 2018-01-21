//
// Created by Younes on 20/01/2018.
//


#include <sstream>
#include <iostream>
#include <fstream>
#include "GameOverState.hpp"
#include "DEFINITIONS.hpp"
#include "GameState.hpp"

namespace Younux {

    GameOverState::GameOverState(GameDataRef data, int score) : _data(data), _score(score) {

    }

    void GameOverState::Init() {

        std::ifstream readFile;
        readFile.open(HIGH_SCORE_FILEPATH);
        if(readFile.is_open()){
            while(!readFile.eof()){
                readFile >> _highScore;
            }
        }
        readFile.close();

        std::ofstream wrireFile(HIGH_SCORE_FILEPATH);
        if(wrireFile.is_open()){
            if(_score > _highScore){
                _highScore = _score;
            }
            wrireFile << _highScore;
        }
        wrireFile.close();


        _data->assets.LoadTexture(GAME_OVER_BACKGROUND_NAME, GAME_OVER_BACKGROUND_FILEPATH);
        _data->assets.LoadTexture(GAME_OVER_TITLE_NAME, GAME_OVER_TITLE_FILEPATH);
        _data->assets.LoadTexture(GAME_OVER_BODY_NAME, GAME_OVER_BODY_FILEPATH);
        _data->assets.LoadTexture(BRONZE_MEDAL_NAME, BRONZE_MEDAL_FILEPATH);
        _data->assets.LoadTexture(SILVER_MEDAL_NAME, SILVER_MEDAL_FILEPATH);
        _data->assets.LoadTexture(GOLD_MEDAL_NAME, GOLD_MEDAL_FILEPATH);
        _data->assets.LoadTexture(PLATINUM_MEDAL_NAME, PLATINUM_MEDAL_FILEPATH);


        _background.setTexture(this->_data->assets.GetTexture(GAME_OVER_BACKGROUND_NAME));
        _gameOverTitle.setTexture(this->_data->assets.GetTexture(GAME_OVER_TITLE_NAME));
        _gameOverContainer.setTexture(this->_data->assets.GetTexture(GAME_OVER_BODY_NAME));
        _retryButton.setTexture(this->_data->assets.GetTexture(PLAY_BUTTONN_NAME));

        _gameOverContainer.setPosition((_data->window.getSize().x / 2) - (_gameOverContainer.getGlobalBounds().width/2),
                                       (_data->window.getSize().y / 2) - (_gameOverContainer.getGlobalBounds().height/2));

        _gameOverTitle.setPosition((_data->window.getSize().x/2) - _gameOverTitle.getGlobalBounds().width/2,
                                   (_gameOverContainer.getGlobalBounds().width/2)
                                   - _gameOverTitle.getGlobalBounds().height * 1.2);

        _retryButton.setPosition((_data->window.getSize().x/2) - _retryButton.getGlobalBounds().width/2,
                                 _gameOverContainer.getPosition().y + _gameOverContainer.getGlobalBounds().height
                                 + (_retryButton.getGlobalBounds().height * 0.2));

        _scoreText.setFont(_data->assets.GetFont(FLAPPY_FONT_NAME));
        _scoreText.setString(std::to_string(_score));
        _scoreText.setCharacterSize(56);
        _scoreText.setFillColor(sf::Color::White);
        _scoreText.setOrigin(_scoreText.getGlobalBounds().width/2, _scoreText.getGlobalBounds().height/2);
        _scoreText.setPosition(_data->window.getSize().x / 10 * 7.25, _data->window.getSize().y / 2.15 );

        _highScoreText.setFont(_data->assets.GetFont(FLAPPY_FONT_NAME));
        _highScoreText.setString(std::to_string(_highScore));
        _highScoreText.setCharacterSize(56);
        _highScoreText.setFillColor(sf::Color::White);
        _highScoreText.setOrigin(_highScoreText.getGlobalBounds().width/2, _highScoreText.getGlobalBounds().height/2);
        _highScoreText.setPosition(_data->window.getSize().x / 10 * 7.25, _data->window.getSize().y / 1.78 );

        if(_score >= PLATINUM_MEDAL_SCORE){
            _medal.setTexture(_data->assets.GetTexture(PLATINUM_MEDAL_NAME));
        }
        else if(_score >= GOLD_MEDAL_SCORE){
            _medal.setTexture(_data->assets.GetTexture(GOLD_MEDAL_NAME));
        }
        else if(_score >= SILVER_MEDAL_SCORE){
            _medal.setTexture(_data->assets.GetTexture(SILVER_MEDAL_NAME));
        }
        else {
            _medal.setTexture(_data->assets.GetTexture(BRONZE_MEDAL_NAME));
        }
        _medal.setPosition(175, 465);

    }

    void GameOverState::HandleInput() {
        sf::Event event;

        while( this->_data->window.pollEvent(event)){
            if(sf::Event::Closed == event.type){
                this->_data->window.close();
            }
            if(_data->input.IsSpriteClicked(_retryButton, sf::Mouse::Left, _data->window)){
                _data->machine.AddState(StateRef(new GameState(_data)), true);
            }
        }


    }

    void GameOverState::Update(float dt) {

    }

    void GameOverState::Draw(float dt) {
        this->_data->window.clear(sf::Color::Red);

        this->_data->window.draw(this->_background);

        this->_data->window.draw(_gameOverTitle);
        this->_data->window.draw(_gameOverContainer);
        this->_data->window.draw(_retryButton);

        this->_data->window.draw(_scoreText);
        this->_data->window.draw(_highScoreText);

        this->_data->window.draw(_medal);

        this->_data->window.display();

    }



}
