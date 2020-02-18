CXX = clang++-9
CXXFLAGS1 = -g -O3 
CXXFLAGS2 = -I/usr/lib/llvm-9/include -std=c++17 -fno-exceptions -D_GNU_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_LIMIT_MACROS -L/usr/lib/llvm-9/lib -lLLVM-9
SRC_FILES = ast.cpp

CC=$(CXX)
OUT=kal

all: $(O_FILES)
	$(CC) $(CXXFLAGS1) $(SRC_FILES) $(CXXFLAGS2) -o $(OUT)

#clang++-9 -g -O3 ast.cpp -I/usr/lib/llvm-9/include -std=c++11
#-fno-exceptions -D_GNU_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_LIMIT_MACROS
#-L/usr/lib/llvm-9/lib
#-lLLVM-9 -std=c++17 -o kal
