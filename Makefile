
KANTAN_FILES = $(shell find . -name '*.kan')

KANTAN_C=Kantan

snake: $(KANTAN_FILES)
	echo $^ && \
	$(KANTAN_C) $(KANTAN_FILES) -o snake.o -g && \
	gcc snake.o $(shell pkg-config sdl2 --libs) -o Snake
