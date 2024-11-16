#include "app.hpp"
#include <iostream>
#include <cstdlib>

int main() {
    lve::App app{};

    try {
        std::cout << "Running app" << std::endl;
        app.run();
    } catch (const std::exception &e) {
        std::cerr << e.what() << std::endl;
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}
