function cmakes -w cmake
    command cmake -S . -B build -D CMAKE_BUILD_TYPE=Release
    command cmake --build build
    set CURRENT_DIR (basename $PWD)
    echo $CURRENT_DIR
    cd build
    commandline -i "./$CURRENT_DIR"
end
