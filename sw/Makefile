OBJDIR = obj
VPATH = ./src:./test:./mock
XIL_INC = ./include

CC=g++
CXXFLAGS+=-isystem ../gtest/include -isystem ../include -g -Wall -Wextra -pthread \
					-I${GTEST_DIR}/include \
          -I${GMOCK_DIR}/include \
					-I./test \
					-I./src \
					-I./mock \
					-I./${XIL_INC} \
					-I.
					
LDFLAGS+=${GTEST_DIR}/libgtest.a \
				 ${GMOCK_DIR}/libgmock.a


TESTOBJS=${OBJDIR}/Cell.o \
		     ${OBJDIR}/Board.o \
		     ${OBJDIR}/Drawing.o \
		     ${OBJDIR}/Display.o \
				 ${OBJDIR}/DisplayMock.o \
				 ${OBJDIR}/DisplayXilDriverMock.o \
				 ${OBJDIR}/DisplayXil.o \
				 ${OBJDIR}/DisplayXilDriver.o \
		     ${OBJDIR}/allTests.o

UNITTESTS=test/boardTest.cpp \
				  test/cellTest.cpp \
				  test/drawingTest.cpp \
				  test/displayXilTest.cpp \
				  test/displayXilDriverTest.cpp


test : ${OBJDIR} allTests

${OBJDIR}/%.o: %.c
	${CC} ${CFLAGS} ${CXXFLAGS} -c -o $@ $<

${OBJDIR}/%.o: %.cpp
	${CC} ${CFLAGS} ${CXXFLAGS} -c -o $@ $<

allTests : ${TESTOBJS} ${UNITTESTS}
	$(CC) ${LDFLAGS} ${TESTOBJS} -o allTests


GAMEOBJS=${OBJDIR}/Cell.o \
         ${OBJDIR}/Board.o \
         ${OBJDIR}/Drawing.o \
		     ${OBJDIR}/Display.o \
		     ${OBJDIR}/DisplayNCurses.o \
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
