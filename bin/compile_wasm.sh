#!/bin/bash
HOME=$(pwd)

# Directory containing your C++ source files
SRC_DIR=$HOME/source/main

# Directory to output the compiled WebAssembly files
OUT_DIR=$HOME/out

# Create the output directory if it doesn't exist
mkdir -p ${OUT_DIR}

# Loop through all .cpp files in the source directory
for file in ${SRC_DIR}/*.cpp; do
    filename=$(basename -- "$file")
    basename="${filename%.*}"

    # Compile the C++ file to WebAssembly using Emscripten
    emcc "$file" -o "${OUT_DIR}/${basename}.wasm" -s WASM=1
done
