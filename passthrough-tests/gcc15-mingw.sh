#!/usr/bin/bash

echo "Preprocessing all-std.cxx"
g++ all-std.cxx -std=c++20 -E > gcc-15-libstdc++-e.cpp2
echo "Passing through cppfront"
../cppfront gcc-15-libstdc++-e.cpp2
echo "Running diff"
diff -s -Z gcc-15-libstdc++-e.cpp2 gcc-15-libstdc++-e.cpp