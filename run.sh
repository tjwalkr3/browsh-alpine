#!/bin/bash

docker build -t browsh-image . \
&& docker run -it --rm browsh-image
