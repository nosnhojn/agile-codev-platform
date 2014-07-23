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
				 ${OBJDIR}/xil_cache.o \
				 ${OBJDIR}/xil_printf.o \
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
				 ${OBJDIR}/displayXilMainTest.o \
				 ${OBJDIR}/displayXilLiveCellsTest.o \
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
					  ${OBJDIR}/IicCtrl.o \
		    		${OBJDIR}/DisplayXil.o \
				 		${OBJDIR}/video_resolution.o \
				 		${OBJDIR}/video_frame_buffer.o \
            ${OBJDIR}/video_generator.o \
            ${OBJDIR}/platform.o \
						${OBJDIR}/xilgame.o

${OBJDIR}/xilgame.o : ${OBJDIR}
${OBJDIR}/xilgame.o : CFLAGS+=-I./src \
		      							 -I./mock \
		      							 -I./include

${OBJDIR}/nogame.o : ${OBJDIR}
${OBJDIR}/nogame.o : CFLAGS+=-I./src \
		      							 -I./mock \
		      							 -I./include

${OBJDIR} :
	mkdir ${OBJDIR}

clean :
	rm -rf obj
	rm -rf allTests
	rm -rf game xilgame
