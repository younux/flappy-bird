//
// Created by Younes on 20/01/2018.
//


#include <sstream>
#include <iostream>
#include "GameState.hpp"
#include "DEFINITIONS.hpp"


namespace Younux {

    GameState::GameState(GameDataRef data) : _data(data) {

    }

    void GameState::Init() {
        std::cout << "Game State" << std::endl;

        _data->assets.LoadTexture(GAME_BACKGROUND_NAME, GAME_BACKGROUND_FILEPATH);
        _data->assets.LoadTexture(PIPE_UP_NAME, PIPE_UP_FILEPATH);
        _data->assets.LoadTexture(PIPE_DOWN_NAME, PIPE_DOWN_FILEPATH);
        _data->assets.LoadTexture(LAND_NAME, LAND_FILEPATH);
        _data->assets.LoadTexture(BIRD_FRAME_1_NAME, BIRD_FRAME_1_FILEPATH);
        _data->assets.LoadTexture(BIRD_FRAME_2_NAME, BIRD_FRAME_2_FILEPATH);
        _data->assets.LoadTexture(BIRD_FRAME_3_NAME, BIRD_FRAME_3_FILEPATH);
        _data->assets.LoadTexture(BIRD_FRAME_4_NAME, BIRD_FRAME_4_FILEPATH);


        this->pipe = new Pipe(this->_data);
        this->land = new Land(this->_data);
        this->bird = new Bird(this->_data);

        _background.setTexture(this->_data->assets.GetTexture(GAME_BACKGROUND_NAME));

        _gameState = GameStates::eReady;


    }

    void GameState::HandleInput() {
        sf::Event event;

        while( this->_data->window.pollEvent(event)){
            if(sf::Event::Closed == event.type){
                this->_data->window.close();
            }

            if(_data->input.IsSpriteClicked(_background, sf::Mouse::Button::Left,
                                            _data->window)){
                if(_gameState != GameStates::eGameOver){
                    _gameState = GameStates::ePlaying;
                    bird->Tap();

                }
            }

        }


    }

    void GameState::Update(float dt) {

        if(_gameState != GameStates::eGameOver){
            bird->Animate(dt);
            land->MoveLand(dt);
        }

        if(_gameState == GameStates::ePlaying){
            pipe->MovePipes(dt);

            if(this->clock.getElapsedTime().asSeconds() > PIPE_SPAWN_FREQUENCY) {
                pipe->RandomisePipeOffset();
                pipe->SpawnInvisiblePipe();
                pipe->SpawnBottomPipe();
                pipe->SpawnTopPipe();
                this->clock.restart();
            }

            bird->Update(dt);

            std::vector<sf::Sprite> landSprites = land->GetSprites();
            for(int i = 0; i < landSprites.size(); i++){
                if(collision.CheckSpriteCollision(bird->GetSprite(), 0.7f,
                                                  landSprites.at(i), 1.0f)){
                    _gameState = GameStates::eGameOver;
                }
            }

            std::vector<sf::Sprite> pipeSprites = pipe->GetSprites();
            for(int i = 0; i < pipeSprites.size(); i++){
                if(collision.CheckSpriteCollision(bird->GetSprite(), 0.625f,
                                                  pipeSprites.at(i), 1.0f)){
                    _gameState = GameStates::eGameOver;
                }
            }
        }

    }

    void GameState::Draw(float dt) {
        this->_data->window.clear(sf::Color::Red);

        this->_data->window.draw(this->_background);

        this->pipe->DrawPipes();

        this->land->DrawLand();

        this->bird->Draw();

        this->_data->window.display();

    }



}
