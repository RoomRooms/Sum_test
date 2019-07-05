all: sum

sum: sum.o main.o
	g++ -o sum sum.o main.o

sun.o: sum.h sum.cpp
	g++ -c -o sum.o sum.cpp

main.o: Main.cpp sum.h
	g++ -c -o main.o Main.cpp

clean:
	rm -f sum.o main.o sum
