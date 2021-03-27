#!/bin/bash
set -Eeuo pipefail
CURRENT_DIRECTORY="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
cd $CURRENT_DIRECTORY

##############################################
# Example script to build different variants #
##############################################

for VARIANT in Variant1 Variant2
do
    BUILD_KIT="GCC C++17 C11"
    printf "\n== ${BUILD_KIT} ==\n"
    cmake -S . -DCMAKE_TOOLCHAIN_FILE=submodules/polly/gcc-cxx17-c11.cmake -DVARIANT=$VARIANT -B _build/"$BUILD_KIT"
    cmake --build _build/"$BUILD_KIT" --target allSystemA --config Release
    cmake --install _build/"$BUILD_KIT" --prefix installed-$VARIANT --component allSystemA --config Release

    BUILD_KIT="Linux GCC armhf"
    printf "\n== ${BUILD_KIT} ==\n"
    cmake -S . -DCMAKE_TOOLCHAIN_FILE=submodules/polly/linux-gcc-armhf.cmake -DVARIANT=$VARIANT -B _build/"$BUILD_KIT"
    cmake --build _build/"$BUILD_KIT" --target allSystemB --config Release
    cmake --install _build/"$BUILD_KIT" --prefix installed-$VARIANT --component allSystemB --config Release

    BUILD_KIT="Clang C++20"
    printf "\n== ${BUILD_KIT} ==\n"
    cmake -S . -DCMAKE_TOOLCHAIN_FILE=submodules/polly/clang-cxx20.cmake -DVARIANT=$VARIANT -B _build/"$BUILD_KIT" 
    cmake --build _build/"$BUILD_KIT" --target allTests --config Release 
    (cd _build/"$BUILD_KIT" && ctest --test-dir _build/"$BUILD_KIT" --config Release )

done