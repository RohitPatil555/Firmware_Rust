
LIB_INTF=intf/target/debug/libintf.a
LIB_SRC=intf/src/lib.rs

final: main.o $(LIB_INTF) 
	gcc -o final main.o $(LIB_INTF)

main.o: main.c
	gcc -c -o main.o main.c

$(LIB_INTF): ${LIB_SRC}
	cd intf && cargo build

clean:
	rm -f main.o
	cd intf && cargo clean

