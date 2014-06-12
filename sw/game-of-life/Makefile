OBJDIR = obj
VPATH = ./src:./test:./mock

CC=g++
allTests : CXXFLAGS+=-I${GTEST_DIR}/include \
        						 -I${GMOCK_DIR}/include \
										 -I./test \
										 -I./src \
										 -I./mock \
										 -I./include \
										 -I.

LDFLAGS+=${GTEST_DIR}/libgtest.a \
				 ${GMOCK_DIR}/libgmock.a


TESTOBJS=                        ${OBJDIR}/Cell.o \
                                 ${OBJDIR}/Board.o \
		                 ${OBJDIR}/Drawing.o \
		                 ${OBJDIR}/Display.o \
				 ${OBJDIR}/DisplayMock.o \
				 ${OBJDIR}/xdriverMock.o \
				 ${OBJDIR}/video_resolution.o \
				 ${OBJDIR}/video_frame_buffer.o \
				 ${OBJDIR}/DisplayXil.o \
				 ${OBJDIR}/IicCtrl.o \
				 ${OBJDIR}/IicCtrlMock.o \
				 ${OBJDIR}/boardTest.o \
				 ${OBJDIR}/cellTest.o \
				 ${OBJDIR}/drawingTest.o \
				 ${OBJDIR}/displayXilTest.o \
				 ${OBJDIR}/iicCtrlTest.o \
                                 ${OBJDIR}/xvtcMock.o \
                                 ${OBJDIR}/video_generator.o \
		                 ${OBJDIR}/allTests.o
				 

test : ${OBJDIR} allTests

${OBJDIR}/%.o: %.c
	${CC} ${CFLAGS} ${CXXFLAGS} -c -o $@ $<

${OBJDIR}/%.o: %.cpp
	${CC} ${CFLAGS} ${CXXFLAGS} -c -o $@ $<

allTests : CXXFLAGS+=-DREFRESH_RATE=1
allTests : ${TESTOBJS}
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
		    		${OBJDIR}/DisplayXil.o \
						${OBJDIR}/xilgame.o

xilgame : CXXFLAGS+=-DREFRESH_RATE=500000 \
                    -I${XIL_INC} \
xilgame : LDFLAGS+=-l${XIL_LIB}
xilgame : xil_temp_target ${OBJDIR} ${XILGAMEOBJS}
	$(CC) ${XILGAMEOBJS} -o xilgame

xil_temp_target :
	@if [ "${XIL_INC}" == "" ]; then \
		echo ERROR: we need a real path to XIL_INC \(i.e. for the include file headers\); \
		exit 1; \
	fi
	@if [ "${XIL_LIB}" == "" ]; then \
		echo ERROR: we need a real path to XIL_LIB \(i.e. a compiled xil library\); \
		exit 1; \
	fi

${OBJDIR} :
	mkdir ${OBJDIR}

clean :
	rm -rf obj
	rm -rf allTests
	rm -rf game xilgame
