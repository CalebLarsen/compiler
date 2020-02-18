#include <memory>
#include <iostream>

namespace dumb { 

class B {
    int i;

    public:
    B(int i): i(i) {}
    int get(){ return i; }
};

}

using namespace dumb;

int main() {
    auto x = std::make_unique<B>(3);
    std::cout << x->get() << std::endl;
    std::cout << __cplusplus << std::endl;
    return 0;
}
