#include "src/first_app.hpp"

// std lib
#include <iostream>
#include <stdexcept>
#include <cstdlib>

int main(){
    lve::FirstApp app{};

    try{
        app.run();
    } catch (const std::exception &e){
        std::cout << e.what() << std::endl;
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}