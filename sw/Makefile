OBJDIR = obj
VPATH = ./src:./test:./mock
XIL_INC = ./include

CC=g++
CXXFLAGS+=-I${GTEST_DIR}/include \
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
				 ${OBJDIR}/xdriverMock.o \
				 ${OBJDIR}/DisplayXil.o \
				 ${OBJDIR}/IicCtrl.o \
				 ${OBJDIR}/IicCtrlMock.o \
		     ${OBJDIR}/allTests.o

UNITTESTS=test/boardTest.cpp \
				  test/cellTest.cpp \
				  test/drawingTest.cpp \
				  test/displayXilTest.cpp \
				  test/allTests.cpp

test : ${OBJDIR} allTests

${OBJDIR}/%.o: %.c
	${CC} ${CFLAGS} ${CXXFLAGS} -c -o $@ $<

${OBJDIR}/%.o: %.cpp
	${CC} ${CFLAGS} ${CXXFLAGS} -c -o $@ $<

allTests : CXXFLAGS+=-DREFRESH_RATE=1
allTests : ${TESTOBJS} ${UNITTESTS}
	$(CC) ${TESTOBJS} -o allTests ${LDFLAGS} -pthread


GAMEOBJS=${OBJDIR}/Cell.o \
         ${OBJDIR}/Board.o \
         ${OBJDIR}/Drawing.o \
		     ${OBJDIR}/Display.o \
		     ${OBJDIR}/DisplayNCurses.o \
				 ${OBJDIR}/game.o

game : CXXFLAGS+=-DREFRESH_RATE=500000
game : LDFLAGS+=-lncurses
game : ${OBJDIR} ${GAMEOBJS}
	$(CC) ${GAMEOBJS} -o game ${LDFLAGS} -pthread


XILGAMEOBJS=${OBJDIR}/Cell.o \
        		${OBJDIR}/Board.o \
        		${OBJDIR}/Drawing.o \
		    		${OBJDIR}/Display.o \
		    		${OBJDIR}/DisplayDummy.o \
						${OBJDIR}/xilgame.o

xilgame : ${OBJDIR} ${XILGAMEOBJS}
	$(CC) ${XILGAMEOBJS} -o xilgame

${OBJDIR} :
	mkdir ${OBJDIR}

clean :
	rm -rf obj
	rm -rf allTests
	rm -rf game xilgame
