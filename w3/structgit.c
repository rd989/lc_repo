#include <stdio.h>

// Define Vector
typedef struct Vector
{
  float x;
  float y;
} Vector;
 
typedef Vector* VectorRef;
 
// Define LinkedVector
typedef struct LinkedVector
{
  Vector point;
  struct LinkedVector* next;
} LinkedVector;

typedef LinkedVector* LinkedVectorRef;

// function to create linked vectors
LinkedVectorRef CreateLinkedVector(float x, float y)
{
	LinkedVectorRef newLinkedVector = malloc(sizeof(LinkedVector));
	
	newLinkedVector->point.x = x;
	newLinkedVector->point.y = y;
	
	return newLinkedVector;
}

void DestroyLinkedVector(LinkedVectorRef v)
{
	v->next = NULL;
	free(v);
}
 


int main(int argc, char** argv)
{
	Vector v1 = { 5.0f, 2.5f };
	LinkedVector vref = { v1, NULL };
	
	printf("<%f, %f>\n", v1.x, v1.y);
	printf("%p\n", vref.next);
	
	return 0;
}