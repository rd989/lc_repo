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


int main(int argc, char** argv)
{
  printf("Hello, world!\n");
  printf("A new line!\n"); 
printf("Added on the develop branch!\n");
  return 0;
}