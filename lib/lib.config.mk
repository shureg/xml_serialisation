LIB_NAME_STEM ?= $(PROJECT_NAME)

LIB_SRC_SUFFIX ?= .cc

LIB_OBJ_SUFFIX ?= .o

LIB_SRC_DEP_SUFFIX ?= .d

LIB_EXT_DEPS ?= callback_log

#LIB_EXT_DEP_PATHS ?= /home/shureg/Projects/callback_log/install/lib

BOOST_INCLUDE_PATH ?= /usr/local/include/boost-1_39

LIB_INCLUDE_PATHS += $(BOOST_INCLUDE_PATH)

LIB_INCLUDE_PATHS += /home/shureg/Projects/callback_log/install/include

LIB_WARNINGS = all overloaded-virtual
