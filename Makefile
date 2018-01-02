CC = g++
CFLAGS = -g -Wall -Wextra

SRCS = src/main.cpp src/game.cpp
PROG = bin/main

OPENCV = `pkg-config opencv --cflags --libs`
LIBS = $(OPENCV)

.PHONY: footage

$(PROG):$(SRCS)
	$(CC) $(CFLAGS) -o $(PROG) $(SRCS) $(LIBS)

footage:
	mkdir -p bin
	youtube-dl https://www.youtube.com/watch?v=unZPeg1zL3w -o "bin/footage0.%(ext)s"
	youtube-dl https://www.youtube.com/watch?v=fVLDUnI42f4 -o "bin/footage1.%(ext)s"

