
KANTAN_FILES = $(shell find . -name '*.kan')

snake: $(KANTAN_FILES)
	echo $^ && \
	Kantan $(KANTAN_FILES) -o snake.o -g && \
	gcc snake.o $(shell pkg-config sdl2 --libs) -o Snake
