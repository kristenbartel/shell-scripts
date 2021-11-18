#!/bin/bash
 function multipage() {
    mkdir "$1";
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
  


