.PHONY: all
all : libaaron.a

libaaron.a : 
	make --directory=../AaronLibrary/
	cp ../AaronLibrary/libaaron.a libaaron.a

.PHONY: clean
clean :
	rm -f aaron_test libaaron.a *.o *~

clear_tests : 
	rm -f testfile*