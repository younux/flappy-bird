//
// Created by Younes on 20/01/2018.
//

#include "Pipe.hpp"

namespace Younux {

    Pipe::Pipe(GameDataRef data) : _data(data) {
        _landHeight = this->_data->assets.GetTexture(LAND_NAME).getSize().y;
        _pipeSpawnYOffset = 0;

    }


    void Pipe::SpawnBottomPipe(){
        sf::Sprite sprite(_data->assets.GetTexture(PIPE_UP_NAME));
        sprite.setPosition(_data->window.getSize().x, _data->window.getSize().y
                                                      - sprite.getGlobalBounds().height - _pipeSpawnYOffset);
        pipeSprites.push_back(sprite);

    };

    void Pipe::SpawnTopPipe(){
        sf::Sprite sprite(_data->assets.GetTexture(PIPE_DOWN_NAME));
        sprite.setPosition(_data->window.getSize().x, - _pipeSpawnYOffset);
        pipeSprites.push_back(sprite);

    };

    void Pipe::SpawnInvisiblePipe(){
        sf::Sprite sprite(_data->assets.GetTexture(PIPE_UP_NAME));
        sprite.setPosition(_data->window.getSize().x, _data->window.getSize().y - sprite.getGlobalBounds().height);
        sprite.setColor(sf::Color(0,0,0,0));
        pipeSprites.push_back(sprite);

    };

    void Pipe::SpawnScoringPipe(){
        sf::Sprite sprite(_data->assets.GetTexture(SCORING_PIPE_NAME));
        sprite.setPosition(_data->window.getSize().x, 0);
        scorinngPipes.push_back(sprite);

    };

    void Pipe::MovePipes(float dt){
        for(unsigned short int i = 0; i < this->pipeSprites.size(); i++){
            if(pipeSprites.at(i).getPosition().x < 0 - pipeSprites.at(i).getGlobalBounds().width){
                pipeSprites.erase(pipeSprites.begin() + i);
            } else {
                float movement = PIPE_MOVEMENT_SPEED * dt;
                pipeSprites.at(i).move(-movement, 0);
            }
        }

        for(unsigned short int i = 0; i < this->scorinngPipes.size(); i++){
            if(scorinngPipes.at(i).getPosition().x < 0 - scorinngPipes.at(i).getGlobalBounds().width){
                scorinngPipes.erase(scorinngPipes.begin() + i);
            } else {
                float movement = PIPE_MOVEMENT_SPEED * dt;
                scorinngPipes.at(i).move(-movement, 0);
            }
        }
    };

    void Pipe::DrawPipes() {
        for(unsigned short int i = 0; i < this->pipeSprites.size(); i++){
            this->_data->window.draw(pipeSprites.at(i));
        }

    }

    void Pipe::RandomisePipeOffset() {
        _pipeSpawnYOffset = rand() % (_landHeight + 1);

    }

    const std::vector<sf::Sprite> & Pipe::GetSprites() const {
        return pipeSprites;
    }

    std::vector<sf::Sprite> & Pipe::GetScoringSprites() {
        return scorinngPipes;
    }


}