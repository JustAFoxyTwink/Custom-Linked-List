CC = g++
GFLAGS = -std=c++11 -g

output: main.o linked_list.o node.o
	$(CC) $(GFLAGS) main.o linked_list.o node.o -o output

main.o: main.cpp
	$(CC) $(GFLAGS) -c main.cpp

linked_list.o: linked_list.cpp linked_list.h
	$(CC) $(GFLAGS) -c linked_list.cpp

node.o: node.cpp node.h
	$(CC) $(GFLAGS) -c node.cpp

clean:
	rm *.o output