JSON11_DIR?=json11
INCLUDES += -I./$(JSON11_DIR)/include
JSON11_OBJS:= \
	objs/json11.o

objs/json11.o: $(JSON11_DIR)/src/json11.cpp
	$(CXX) $(CXXFLAGS) $(INCLUDES) -c -o $@ $<;
