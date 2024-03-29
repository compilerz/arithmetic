build:
	@flex -o main.yy.cpp main.l
	@bison -o main.tab.cpp -d main.y
	@g++ --std=c++14 `llvm-config --cxxflags --ldflags --libs --libfiles --system-libs` main.cpp main.tab.cpp main.yy.cpp -ll

clean:
	@rm -f a.out main.tab.cpp main.tab.hpp main.yy.cpp
