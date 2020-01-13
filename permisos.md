//// EJEMPLO

iMac-de-USRDEL:webnest usrdel$ npm i
npm ERR! code EACCES
npm ERR! syscall mkdir
npm ERR! path /Users/usrdel/.npm/_cacache/index-v5/b1/54
npm ERR! errno -13
npm ERR! 
npm ERR! Your cache folder contains root-owned files, due to a bug in
npm ERR! previous versions of npm which has since been addressed.
npm ERR! 
npm ERR! To permanently fix this problem, please run:
npm ERR!   sudo chown -R 501:20 "/Users/usrdel/.npm"
npm ERR! code EACCES
npm ERR! syscall mkdir
npm ERR! path /Users/usrdel/.npm/_cacache/index-v5/7c/dc
npm ERR! errno -13

// SOLUCION

sudo chown -R $(whoami) ~/.npm
