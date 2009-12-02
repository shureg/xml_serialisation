, := ,
space :=
space +=
$(space) :=
$(space) +=

LIB_PATH = 
LIB_NAME = xml_serialisation
INCLUDE_PATH = $(BOOST_INCLUDE_PATH) 

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
