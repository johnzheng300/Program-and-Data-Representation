/*
John Zheng
jz5pt
4/28/19
linkedlist.m
*/
#import <stdio.h>
#import <Foundation/NSObject.h>

//ListNode interface set up
@interface ListNode : NSObject {
	@private
		int val;
		ListNode* next;
}
- (id) val: (int) val_value;
- (int) val;
- (id) next: (ListNode*) nextPtr;
- (ListNode*) next;
@end

//implementing the ListNode methods
@implementation ListNode
//val setter
- (id) val: (int) val_value {
	val = val_value;
	return self;
}
//val getter
- (int) val {
	return val;
}
//next pointer setter
- (id) next: (ListNode*) nextPtr {
	next = nextPtr;
	return self;
}
//next pointer getter
- (ListNode*) next {
	return next;
}
@end

//List interface set up
@interface ListClass : NSObject {
	@private 
		ListNode* head;
}
- (id) head: (ListNode*) headPtr;
- (ListNode*) head;
@end

//implementing List 
@implementation ListClass
//head setter
- (id) head: (ListNode*) headPtr {
	head = headPtr;
	return self;
}
//head getter
- (ListNode*) head {
	return head;
}
@end

int main (void) {
	ListClass *list = [ListClass new];
	[list head: nil];
	int n;
	printf("Enter how many values to input:	");
	scanf("%d", &n);
	int num;
	for (int i = 0; i < n; i++) {
		printf("Enter value:	");
		scanf("%d", &num);
		ListNode *node = [ListNode new];
		[node val: num];
		[node next: [list head]];
		[list head: node];
	}
	ListNode* itr = [list head];
	for (int i = 0; i < n; i++) {
		printf("%d\n", [itr val]);
		itr = [itr next];
	}
	
	[list release];
	[itr release];
    return 0;
}

