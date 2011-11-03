cd slides
rm -r *
cd ~/appendto/conjoin-build/
node crosslink/build.js clean
node crosslink/build.js
open -a "Google Chrome.app" http://localhost:8888/slides.html