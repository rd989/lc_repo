#import <Foundation/Foundation.h>

/****************
 YourClass
 *****************/

@interface YourClass : NSObject
{
}

- (NSString*)  goodbye;

@end

@implementation YourClass

- (id) init
{
	self = [super init];
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

/****************
MyClass
*****************/

@interface MyClass : NSObject
{
	float myFloat;
	YourClass *friend;
	
}

- (void) hello;

@end

@implementation MyClass

- (id) init
{
	self = [super init];
	if(self != nil) //Sometimes the NSObject has no memory to allocate the object so it'll return null (nil)
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

- (void) setFriend:(YourClass*)val
{
	[friend release];
	friend = val;
	[friend retain];
}

- (YourClass*) friend
{
	return friend;
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