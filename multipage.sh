#!/bin/bash
 function multipage() {
    $1mkdir "";
    cd "$1";
    touch "index.html";
    mkdir "scripts";
    cd "scripts";
    touch "scripts.js";
    cd ..;
    mkdir "styles";
    cd "styles";
    touch "styles.css";
    cd ..;
    code .
 }

