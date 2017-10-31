.PHONY: all
all : 

DhtClient.o : DhtClient.h DhtClient.c
	gcc -g DhtClient.c -Wall -Werror -o DhtClient.o

DhtServer : DhtServer.h DhtServer.c ./Libraries/libaaron.a
	gcc -g DhtServer.c ./Libraries/libaaron.a -Wall -Werror -o DhtServer

DhtTest : DhtTest.c DhtTest.h DhtClient.o DhtServer
	gcc -g -fpic -c DhtTest.c DhtClient.o DhtServer.o -Wall -Werror -o DhtTest

.PHONY: clean
clean :
	rm -f *.o *~

clear_config : 
	rm -f cfg*