//
//  Stack.h
//  TreeTableDemo
//
//  Created by simone on 9/25/09.
//  Copyright 2009 Simone Ardissone. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Stack : NSObject {

	int* stack;
	int head;
}

-(int)pop;

-(int)peek;

-(void)reset;

-(void)push:(int)element;

@end
