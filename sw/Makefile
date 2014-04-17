OBJDIR = obj
VPATH = ./src:./test

CC=g++
CXXFLAGS+=-I${GTEST_DIR}/include -I./test -I./src -I.
LDFLAGS+=${GTEST_DIR}/libgtest.a

TESTOBJS=${OBJDIR}/allTests.o \
		     ${OBJDIR}/life.o \
		     ${OBJDIR}/graphics.o \
		     ${OBJDIR}/graphicsMock.o

UNITTESTS=test/cellTest.cpp \
          test/boardTest.cpp \
          test/drawingTest.cpp

test : CXXFLAGS+=-DUTEST
test : ${OBJDIR} allTests

${OBJDIR}/%.o: %.c
	${CC} ${CFLAGS} ${CXXFLAGS} -c -o $@ $<

${OBJDIR}/%.o: %.cpp
	${CC} ${CFLAGS} ${CXXFLAGS} -c -o $@ $<

${OBJDIR}/allTests.o : ${UNITTESTS} ${OBJDIR}/graphics.o ${OBJDIR}/graphicsMock.o

allTests : ${TESTOBJS}
	$(CC) ${LDFLAGS} ${TESTOBJS} -o allTests


GAMEOBJS=${OBJDIR}/life.o \
		     ${OBJDIR}/graphicsNCurses.o \
		     ${OBJDIR}/graphics.o \
				 ${OBJDIR}/game.o

game : LDFLAGS+=-lncurses
game : ${OBJDIR} ${GAMEOBJS}
	$(CC) ${LDFLAGS} ${GAMEOBJS} -o game

${OBJDIR} :
	mkdir ${OBJDIR}

clean :
	rm -rf obj
	rm -rf allTests
	rm -rf game
