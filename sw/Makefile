OBJDIR = obj
VPATH = ./src:./test

CC=g++
CXXFLAGS+=-I${GTEST_DIR}/include -I./test -I./src -I.
LDFLAGS+=${GTEST_DIR}/libgtest.a

TESTOBJS=${OBJDIR}/allTests.o \
		     ${OBJDIR}/Cell.o \
		     ${OBJDIR}/Board.o \
		     ${OBJDIR}/Drawing.o \
		     ${OBJDIR}/Display.o \
		     ${OBJDIR}/DisplayMock.o

UNITTESTS=test/CellTest.cpp \
          test/BoardTest.cpp \
          test/DrawingTest.cpp

test : CXXFLAGS+=-DUTEST
test : ${OBJDIR} allTests

${OBJDIR}/%.o: %.c
	${CC} ${CFLAGS} ${CXXFLAGS} -c -o $@ $<

${OBJDIR}/%.o: %.cpp
	${CC} ${CFLAGS} ${CXXFLAGS} -c -o $@ $<

${OBJDIR}/allTests.o : ${UNITTESTS} ${OBJDIR}/Display.o ${OBJDIR}/DisplayMock.o

allTests : ${TESTOBJS}
	$(CC) ${LDFLAGS} ${TESTOBJS} -o allTests


GAMEOBJS=${OBJDIR}/Cell.o \
         ${OBJDIR}/Board.o \
         ${OBJDIR}/Drawing.o \
		     ${OBJDIR}/DisplayNCurses.o \
		     ${OBJDIR}/Display.o \
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
