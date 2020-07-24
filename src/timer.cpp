#include "timer.h"
#include <iostream>

Timer::Timer()
{
    start = std::chrono::high_resolution_clock::now();
}

Timer::~Timer()
{
    end = std::chrono::high_resolution_clock::now();
    duration = std::chrono::duration_cast<std::chrono::seconds>( end - start );
    float ms = duration.count() * 1000.0f; // convert seconds to milli-seconds
    std::cout << "Timer took " << ms << "ms" << std::endl;
}
