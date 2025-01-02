#include"crown.h"
#include<stdio.h>
#include<assert.h>
#define SIZE 12 
#define EMPTY 0

unsigned int q[SIZE],head,tail;

void enqueue(unsigned int x) {
    q[tail]=x;
    tail=(++tail)%SIZE;
}

unsigned int dequeue() {
    unsigned int ret;
    ret = q[head];
    q[head]=0;
    head= (++head)%SIZE;
    return ret;
}

// Initial random queue setting following the script
void environment_setup() { 
    int i;
    for(i=0;i<SIZE;i++) { q[i]=EMPTY;} 

    SYM_unsigned_int(head);
    SYM_assume(0<= head && head < SIZE); 

    SYM_unsigned_int(tail);
    SYM_assume(0<= tail && tail < SIZE); 


    if( head < tail) { 
		for(i=head; i < tail; i++) {
	    	SYM_unsigned_int(q[i]);
	    	SYM_assume(0< q[i]);
		}
	}
    else if(head > tail) {
		for(i=0; i < tail; i++) {
		    SYM_unsigned_int(q[i]); 
		    SYM_assume(0< q[i]);
		}
		for(i=head; i < SIZE; i++) {
		    SYM_unsigned_int(q[i]);
		    SYM_assume(0< q[i]);
		}
	}

	printf("head = %d\n", head);
	printf("tail = %d\n", tail);
	printf("q[] = ");

	for(i=0; i <SIZE ; i++) {
		printf("%u,",q[i]);
	}
	printf("\n");

    // We assume that q[] is empty if head==tail 
}


void enqueue_verify() {
    unsigned int x, old_head, old_tail, old_q[SIZE], i; 
    SYM_assume(x>0);

    for(i=0; i < SIZE; i++) old_q[i]=q[i];
    old_head=head; 
    old_tail=tail;

    enqueue(x);

    assert(q[old_tail]==x);
    assert(tail== ((old_tail +1) % SIZE));
    assert(head==old_head); 
    for(i=0; i < old_tail; i++) assert(old_q[i]==q[i]); 
    for(i=old_tail+1; i < SIZE; i++) assert(old_q[i]==q[i]); 
}
/*
void dequeue_verify() {
    unsigned int ret, old_head, old_tail, old_q[SIZE], i; 

    for(i=0; i < SIZE; i++) old_q[i]=q[i];
    old_head=head; 
    old_tail=tail;
    __CPROVER_assume(head != tail); // no empty queue

    ret=dequeue();

    assert(ret==old_q[old_head]);
    assert(q[old_head]== EMPTY);
    assert(head==(old_head+1)%SIZE);
    assert(tail==old_tail);
    for(i=0; i < old_head; i++) assert(old_q[i]==q[i]); 
    for(i=old_head+1; i < SIZE; i++) assert(old_q[i]==q[i]); 
}
*/



int main() { // cbmc queue.c --unwind SIZE+2
    environment_setup();
    enqueue_verify();

//    environment_setup();
 //   dequeue_verify();
}
