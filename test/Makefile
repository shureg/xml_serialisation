, := ,
space :=
space +=
$(space) :=
$(space) +=

LIB_PATH = /home/shureg/Projects/xml_serialisation/install/lib
LIB_NAME = xml_serialisation
INCLUDE_PATH = $(BOOST_INCLUDE_PATH) /home/shureg/Projects/xml_serialisation/install/include /home/shureg/Projects/callback_log/install/include

INCLUDE_FLAGS = $(foreach i,$(INCLUDE_PATH),-I$i)

LIB_FLAGS = $(foreach l,$(LIB_NAME),-l$l)

LIB_PATH_FLAGS = $(foreach l,$(LIB_PATH),-L$l)

RPATH_FLAGS = $(subst $( ),$(,),$(foreach l,$(LIB_PATH),-rpath=$l))

test: test.o
	g++ -Wl -o$@ $(LIB_FLAGS) $+

clean:
	@rm -rfv *.o
	@rm -rfv test

%.o: %.cxx
	g++ -c -g -fPIC $(INCLUDE_FLAGS) -o$@ $<
