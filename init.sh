setgcc
cmake -B build -GNinja -D CMAKE_BUILD_TYPE=Release \
  -D CMAKE_CXX_COMPILER_LAUNCHER=ccache \
  -D CMAKE_ROOT:INTERNAL=$(brew --prefix)/opt/cmake/share/cmake \
  -D CMAKE_CXX_COMPILER:STRING=g++-11 \
  -D CMAKE_INSTALL_PREFIX:PATH=~ \
  -D CMAKE_INSTALL_INCLUDEDIR:PATH=include \
  -D CMAKE_CXX_FLAGS="-Wno-unused-local-typedefs -std=c++20 -fPIC -DARCH_ALLOWS_UNALIGNED=0"
