# ==========================================
#   Unity Project - A Test Framework for C
#   Copyright (c) 2007 Mike Karlesky, Mark VanderVoord, Greg Williams
#   [Released under MIT License. Please refer to license.txt for details]
# ==========================================

UNITY_ROOT=../..
C_COMPILER=gcc
TARGET_BASE=all_tests
ifeq ($(OS),Windows_NT)
	TARGET_EXTENSION=.exe
else
	TARGET_EXTENSION=.out
endif
TARGET = $(TARGET_BASE)$(TARGET_EXTENSION)
SRC_FILES=\
  $(UNITY_ROOT)/src/unity.c \
  $(UNITY_ROOT)/extras/fixture/src/unity_fixture.c \
  src/ProductionCode.c \
  src/ProductionCode2.c \
  test/TestProductionCode.c \
  test/TestProductionCode2.c \
  test/test_runners/_all_tests.c \
  test/test_runners/_all_tests_main.c
INC_DIRS=-Isrc -I$(UNITY_ROOT)/src -I$(UNITY_ROOT)/extras/fixture/src
SYMBOLS=

ifeq ($(OS),Windows_NT)
	CLEANUP = del /F /Q $(TARGET)
else
	CLEANUP = rm -f build/*.o ; rm -f $(TARGET1)
endif

all: clean generate default

generate:
	_generate_test_runners.bat

default:
	$(C_COMPILER) $(INC_DIRS) $(SYMBOLS) $(SRC_FILES) -o $(TARGET)
	./$(TARGET)

clean:
	$(CLEANUP)

