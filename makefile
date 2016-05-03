test: setup.o rummy.o main.o
	g++ -std=c++11 setup.o rummy.o main.o -o test

setup.o: setup.cpp
	g++ -c -std=c++11 setup.cpp
main.o: main.cpp
	g++ -c -std=c++11 main.cpp 
rummy.o:rummy.cpp
	g++ -c -std=c++11 rummy.cpp 
run:
	./test
clean:
	rm -f test
	rm -f *.o
