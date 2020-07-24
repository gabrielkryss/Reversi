#pragma once 

#include <vector>

class Reversi
{
private:
    std::vector<int> state;
public:
    Reversi();
    Reversi(std::vector<int> state);
};