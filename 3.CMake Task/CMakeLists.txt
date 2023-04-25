######################
##### Commands #####
#mkdir build
#cd build
#cmake -G "MinGW Makefiles" ..
#MinGW32-make
#.\calculator.exe add 6 12
#########################
cmake_minimum_required(VERSION 3.26.0)
project(Calculator)
add_executable(calculator main.c add.c divide.c multiply.c subtract.c)

