#/bin/bash

stdbuf -i0 -o0 -e0 xinput --test $1 |
stdbuf -i0 -o0 -e0 sed -e 's/key press   /+/' |
stdbuf -i0 -o0 -e0 sed -e 's/key release /-/'
