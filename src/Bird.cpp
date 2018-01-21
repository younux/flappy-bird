//
// Created by Younes on 20/01/2018.
//

#include "Bird.hpp"


namespace Younux {

    Bird::Bird(GameDataRef data): _data(data) {
        _animationIterator = 0;
        _animationFrames.push_back(_data->assets.GetTexture(BIRD_FRAME_1_NAME));
        _animationFrames.push_back(_data->assets.GetTexture(BIRD_FRAME_2_NAME));
        _animationFrames.push_back(_data->assets.GetTexture(BIRD_FRAME_3_NAME));
        _animationFrames.push_back(_data->assets.GetTexture(BIRD_FRAME_4_NAME));

        _birdSprite.setTexture(_animationFrames.at(_animationIterator));

        _birdSprite.setPosition((_data->window.getSize().x / 4) - _birdSprite.getGlobalBounds().width / 2,
                                (_data->window.getSize().y / 2) - _birdSprite.getGlobalBounds().height / 2);
        _birdState = BIRD_STATE_STILL;
        sf::Vector2f origin(_birdSprite.getGlobalBounds().width/2, _birdSprite.getGlobalBounds().height/2);
        _birdSprite.setOrigin(origin);
        _rotation = 0;
    }

    void Bird::Draw() {
        _data->window.draw(_birdSprite);
    }

    void Bird::Animate(float dt) {
        if(_clock.getElapsedTime().asSeconds() > BIRD_ANIMATION_DURATION / _animationFrames.size()){
            _animationIterator = (_animationIterator + 1) % _animationFrames.size();
            _birdSprite.setTexture(_animationFrames.at(_animationIterator));
            _clock.restart();
        }

    }

    void Bird::Update(float dt) {
        if(_birdState == BIRD_STATE_FALLING){
            _birdSprite.move(0, GRAVITY * dt);
            _rotation += ROTATION_SPEED * dt;
            if(_rotation > 25.0f){
                _rotation = 25.0f;
            }
            _birdSprite.setRotation(_rotation);
        }
        else if(_birdState == BIRD_STATE_FLYINNG){
            _birdSprite.move(0, -FLYING_SPEED * dt);
            _rotation -= ROTATION_SPEED * dt;
            if(_rotation < -25.0f){
                _rotation = -25.0f;
            }
            _birdSprite.setRotation(_rotation);
        }
        if(_movemenntClock.getElapsedTime().asSeconds() > FLYINNG_DURATION ){
            _movemenntClock.restart();
            _birdState = BIRD_STATE_FALLING;

        }
    }

    void Bird::Tap() {
        _movemenntClock.restart();
        _birdState = BIRD_STATE_FLYINNG;
    }

    const sf::Sprite& Bird::GetSprite() const {
        return _birdSprite;
    }

}