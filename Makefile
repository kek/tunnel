SRCS=$(wildcard *.erl)
OBJS=$(SRCS:.erl=.beam)

all: $(OBJS)

%.beam: %.erl
	erlc $<

clean:
	rm -f $(OBJS)
