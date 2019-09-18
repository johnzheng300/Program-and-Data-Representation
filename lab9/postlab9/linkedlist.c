/*
John Zheng
jz5pt
linkedlist.c
4/12/19
*/

#include <stdio.h>

struct list_item {
	struct list_item *next;
	int val;
};

struct list {
	struct list_item *head;
};

int main() {
	struct list *theList;
	struct list_item *node;
	int n;
	printf("Enter how many values to input: ");
	scanf("%d", &n);	
	theList = (struct list*) malloc(sizeof(struct list));
	theList->head = NULL;
	int num;
	//adds node to list
	for (int i = 0; i < n; i++) {
		printf("Enter value: ");
		scanf("%d", &num);
		node = (struct list_item*) malloc(sizeof(struct list_item));
		node->val = num;
		node->next = theList->head;
		theList->head = node;
	}
	
	//prints list
	struct list_item *itr;
	itr = theList->head;
	for (int i = 0; i < n; i++) {
		printf("%d\n",itr->val);
		itr = itr->next;
	}

	free(theList);
	free(node);

	return 0;
}
