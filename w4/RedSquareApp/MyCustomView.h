//
//  MyCustomView.h
//  RedSquareApp
//
//  Created by Rodrigo on 2/20/09.
//  Copyright 2009 New York University. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface MyCustomView : UIView {
	CGFloat squareSize;
	CGFloat rotation;
	CGColorRef aColor;
	BOOL twoFingers;
	BOOL oneFinger;

	
	IBOutlet UILabel *xField;
	IBOutlet UILabel *yField;
	IBOutlet UILabel *zField;
	
}

@end
