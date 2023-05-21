all: echo-server echo-client

echo-server: server.o
	g++ server.o -o echo-server

server.o: server.cpp
	g++ server.cpp -std=c++20 -c -o server.o

echo-client: client.o
	g++ client.o -o echo-client

client.o: client.cpp
	g++ client.cpp -std=c++20 -c -o client.o

clean:
	rm -f *.o
	rm -f echo-server
	rm -f echo-client