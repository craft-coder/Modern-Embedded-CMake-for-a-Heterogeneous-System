#include "print.hpp"
#include <iostream>

#define xstr(s) str(s)
#define str(s) #s

namespace embo {

void print(const std::string& message) { 

    #if defined(A)
        std::cout << "Compiled for A";
    #elif defined(B)
        std::cout << "Compiled for B";
    #else 
        std::cout << "Compiled for Undefined";
    #endif
    std::cout << " - " << xstr(VARIANT) <<std::endl; 

    std::cout << "Hello from \"" << message << "\"" <<std::endl; 

}

} // namespace embo
