SRCS=$(wildcard *.erl)
OBJS=$(SRCS:.erl=.beam)

all: $(OBJS)

%.beam: %.erl
	erlc $<

.PHONY: clean prod

clean:
	rm -f $(OBJS)

prod:
	MIX_ENV=prod mix compile
	MIX_ENV=prod mix phoenix.digest
