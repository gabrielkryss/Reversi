EXEC = ./main.exe

SRC_DIR_PATH = ./src
BIN_DIR_PATH = ./bin
BUILD_DIR_PATH = ./build

CXX = g++
CFLAGS = -Wall -Wextra -pedantic -std=c++17 -MMD -Og 
OBJS = ${BIN_DIR_PATH}/reversi.o  ${BIN_DIR_PATH}/timer.o ${BIN_DIR_PATH}/main.o 
DEL_ITEMS = ${BIN_DIR_PATH}/*.o ${BIN_DIR_PATH}/*.d ${EXEC} 

${EXEC}: ${OBJS}
	${CXX} ${CFLAGS} ${OBJS} -o ${EXEC}

${BIN_DIR_PATH}/timer.o: ${SRC_DIR_PATH}/timer.cpp
	${CXX} ${CFLAGS} -I ${SRC_DIR_PATH} -o ${BIN_DIR_PATH}/timer.o -c ${SRC_DIR_PATH}/timer.cpp

${BIN_DIR_PATH}/reversi.o: ${SRC_DIR_PATH}/reversi.cpp
	${CXX} ${CFLAGS} -I ${SRC_DIR_PATH} -o ${BIN_DIR_PATH}/reversi.o -c ${SRC_DIR_PATH}/reversi.cpp

${BIN_DIR_PATH}/main.o: ${SRC_DIR_PATH}/main.cpp 
	$(CXX) ${CFLAGS} -I ${SRC_DIR_PATH} -o ${BIN_DIR_PATH}/main.o -c ${SRC_DIR_PATH}/main.cpp

.PHONY: clean

clean: 
	-rm -f ${DEL_ITEMS} ./-Wall

# -include $(DEPS)

# MKDIR_P ?= mkdir -p
