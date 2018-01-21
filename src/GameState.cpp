//
// Created by Younes on 20/01/2018.
//


#include <sstream>
#include <iostream>
#include "GameState.hpp"
#include "DEFINITIONS.hpp"
#include "GameOverState.hpp"

namespace Younux {

    GameState::GameState(GameDataRef data) : _data(data) {

    }

    void GameState::Init() {

        if(!_hitSoundBuffer.loadFromFile(HIT_SOUND_FILEPATH)){
            std::cout << "Error when lodaing Hit Sound Effect";

        }
        if(!_wingSoundBuffer.loadFromFile(WING_SOUND_FILEPATH)){
            std::cout << "Error when lodaing Wing Sound Effect";

        }
        if(!_pointSoundBuffer.loadFromFile(POINT_SOUND_FILEPATH)){
            std::cout << "Error when lodaing Point Sound Effect";

        }

        _hitSound.setBuffer(_hitSoundBuffer);
        _wingSound.setBuffer(_wingSoundBuffer);
        _pointSound.setBuffer(_pointSoundBuffer);


        _data->assets.LoadTexture(GAME_BACKGROUND_NAME, GAME_BACKGROUND_FILEPATH);
        _data->assets.LoadTexture(PIPE_UP_NAME, PIPE_UP_FILEPATH);
        _data->assets.LoadTexture(PIPE_DOWN_NAME, PIPE_DOWN_FILEPATH);
        _data->assets.LoadTexture(LAND_NAME, LAND_FILEPATH);
        _data->assets.LoadTexture(BIRD_FRAME_1_NAME, BIRD_FRAME_1_FILEPATH);
        _data->assets.LoadTexture(BIRD_FRAME_2_NAME, BIRD_FRAME_2_FILEPATH);
        _data->assets.LoadTexture(BIRD_FRAME_3_NAME, BIRD_FRAME_3_FILEPATH);
        _data->assets.LoadTexture(BIRD_FRAME_4_NAME, BIRD_FRAME_4_FILEPATH);
        _data->assets.LoadTexture(SCORING_PIPE_NAME, SCORING_PIPE_FILEPATH);
        _data->assets.LoadFont(FLAPPY_FONT_NAME, FLAPPY_FONT_FILEPATH);


        this->pipe = new Pipe(this->_data);
        this->land = new Land(this->_data);
        this->bird = new Bird(this->_data);
        this->flash = new Flash(this->_data);
        this->hud = new HUD(this->_data);

        _background.setTexture(this->_data->assets.GetTexture(GAME_BACKGROUND_NAME));

        _score = 0;
        hud->UpdateScore(_score);

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
                    _wingSound.play();


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
                pipe->SpawnScoringPipe();
            }

            bird->Update(dt);

            std::vector<sf::Sprite> landSprites = land->GetSprites();
            for(int i = 0; i < landSprites.size(); i++){
                if(collision.CheckSpriteCollision(bird->GetSprite(), 0.7f,
                                                  landSprites.at(i), 1.0f)){
                    _gameState = GameStates::eGameOver;
                    clock.restart();
                    _hitSound.play();
                }
            }

            std::vector<sf::Sprite> pipeSprites = pipe->GetSprites();
            for(int i = 0; i < pipeSprites.size(); i++){
                if(collision.CheckSpriteCollision(bird->GetSprite(), 0.625f,
                                                  pipeSprites.at(i), 1.0f)){
                    _gameState = GameStates::eGameOver;
                    clock.restart();
                    _hitSound.play();
                }
            }

            if(_gameState == GameStates::ePlaying){
                std::vector<sf::Sprite> &scoringSprites = pipe->GetScoringSprites();
                for(int i = 0; i < scoringSprites.size(); i++){
                    if(collision.CheckSpriteCollision(bird->GetSprite(), 0.625f,
                                                      scoringSprites.at(i), 1.0f)){
                        _score++;
                        hud->UpdateScore(_score);

                        scoringSprites.erase(scoringSprites.begin() + i);
                        _pointSound.play();
                    }
                }
            }

        }

        if(_gameState == GameStates::eGameOver){
            flash->Show(dt);
            if(clock.getElapsedTime().asSeconds() > TIME_BEFORE_GAME_OVER_APPEARS){
                _data->machine.AddState(StateRef(new GameOverState(_data, _score)), true);
            }
        }

    }

    void GameState::Draw(float dt) {
        this->_data->window.clear(sf::Color::Red);

        this->_data->window.draw(this->_background);

        this->pipe->DrawPipes();

        this->land->DrawLand();

        this->bird->Draw();

        this->flash->Draw();

        this->hud->Draw();

        this->_data->window.display();

    }



}
