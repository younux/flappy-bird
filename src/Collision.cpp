//
// Created by Younes on 21/01/2018.
//

#include "Collision.hpp"

namespace Younux{

    Collision::Collision() {

    }

    bool Collision::CheckSpriteCollision(sf::Sprite sprite1, sf::Sprite sprite2) {
        sf::Rect<float> rect1 = sprite1.getGlobalBounds();
        sf::Rect<float> rect2 = sprite2.getGlobalBounds();
        if(rect1.intersects(rect2)){
            return true;
        } else{
            return false;
        }
    }

    bool Collision::CheckSpriteCollision(sf::Sprite sprite1, float scale1,
                                         sf::Sprite sprite2, float scale2) {

        sprite1.scale(scale1, scale2);
        sprite2.scale(scale1, scale2);
        sf::Rect<float> rect1 = sprite1.getGlobalBounds();
        sf::Rect<float> rect2 = sprite2.getGlobalBounds();
        if(rect1.intersects(rect2)){
            return true;
        } else{
            return false;
        }
    }

}