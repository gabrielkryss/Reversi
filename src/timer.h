#pragma once

#include <chrono>

class Timer
{
private:
    std::chrono::time_point<std::chrono::high_resolution_clock> start, end;
    std::chrono::duration<float> duration;
public:
    Timer();
    ~Timer();
};