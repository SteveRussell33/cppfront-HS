#!/usr/bin/bash

g++ cppfront.cpp -O3 -pg -std=c++20 -Wa,-mbig-obj -o cppfront