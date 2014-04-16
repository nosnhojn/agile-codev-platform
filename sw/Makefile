OBJDIR = obj
VPATH = ./src:./test

CC=g++
CXXFLAGS+=-I${GTEST_DIR}/include -I./test -I./src -I.
LDFLAGS+=${GTEST_DIR}/libgtest.a

TESTOBJS=${OBJDIR}/life-unittest.o \
		     ${OBJDIR}/life.o \
		     ${OBJDIR}/graphics.o

UNITTESTS=test/life-cell-unittest.cpp \
          test/life-board-unittest.cpp \
          test/life-drawing-unittest.cpp

test : CXXFLAGS+=-DUTEST
test : ${OBJDIR} life-unittest

${OBJDIR}/%.o: %.c
	${CC} ${CFLAGS} ${CXXFLAGS} -c -o $@ $<

${OBJDIR}/%.o: %.cpp
	${CC} ${CFLAGS} ${CXXFLAGS} -c -o $@ $<

${OBJDIR}/life-unittest.o : ${UNITTESTS} ${OBJDIR}/graphics.o

life-unittest : ${TESTOBJS}
	$(CC) ${LDFLAGS} ${TESTOBJS} -o life-unittest


GAMEOBJS=${OBJDIR}/life.o \
				 ${OBJDIR}/game.o

game : LDFLAGS+=-lncurses
game : ${OBJDIR} ${GAMEOBJS}
	$(CC) ${LDFLAGS} ${GAMEOBJS} -o game

${OBJDIR} :
	mkdir ${OBJDIR}

clean :
	rm -rf obj
	rm -rf life-unittest
	rm -rf game
