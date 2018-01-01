//
// Created by Younes on 01/01/2018.
//

#pragma once

namespace Younux{

    class State{
    public:
        virtual void Init();

        virtual void HandleInput();
        virtual void Update();
        virtual void Draw(float dt);

        virtual void Pause();
        virtual void Resume();

    };
}
