all: world
CXX?=g++
CXXFLAGS?=--std=c++11 -Wall
INCLUDES:=-I./include -I.

OBJS:= \
	objs/test.o

JSON11_DIR:=.
include Makefile.inc

world: test

objs/test.o: test.cpp
	$(CXX) $(CXXFLAGS) $(INCLUDES) -c -o $@ $<;

test: $(JSON11_OBJS) $(OBJS)
	$(CXX) $(CXXFLAGS) $(LDFLAGS) $^ -o $@;

clean:
	rm -f objs/*.o test
