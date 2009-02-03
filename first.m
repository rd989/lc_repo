#import <Foundation/Foundation.h>

/***************************
 SORRY I COULDN'T DO THE SECOND PART OF THE ASSIGNMENT YET!
 ***************************/

@interface YourClass : NSObject
{
	float myFloat;
}

- (NSString*)  goodbye;

@end

@implementation YourClass

- (id) init
{
	self = [super init];
	if(self != nil)
	{
		myFloat = 5.0;
	}
	return self;
}

- (NSString*) goodbye
{
	return @"Goodbye, nice seeing you!";
}

- (void) dealloc
{
	// release any retained objects here.
	[super dealloc];
}

@end


@interface MyClass : NSObject
{
	float myFloat;
}

- (void) hello;

@end

@implementation MyClass

- (id) init
{
	self = [super init];
	if(self != nil)
	{
		myFloat = 5.0;
	}
	return self;
}

- (void) hello
{
	NSLog(@"Hello, I'm your first Objective-C program!");
}

- (void) setMyFloat:(float)val
{
	myFloat = val;
}

- (float) myFloat
{
	return myFloat;
}

- (void) dealloc
{
	// release any retained objects here.
	[super dealloc];
}

@end

int main(int argc, char**argv)
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	// allocate an instance
	YourClass *instance = [[YourClass alloc] init];
	NSLog([instance goodbye]);
	
	/*MyClass *instance = [[MyClass alloc] init];
	 [instance hello];
	 
	 [instance setMyFloat: 10.0f];
	 NSLog(@"new value is %f", [instance myFloat]);*/
	
	[pool release];
	
	return 0;
}