CXX := x86_64-w64-mingw32-clang++
AR := llvm-ar

.PHONY: launch

launch: test test2
	@echo "test:"
	./test
	@echo "test2:"
	test2.exe

test: test.cpp cmdline.hpp
	$(CXX) -I. -o test test.cpp

test2: test2.cpp cmdline.hpp
	$(CXX) -I. -o test2 test2.cpp