//
//  TreeNode.h
//  TreeTableDemo
//
//  Created by simone on 9/25/09.
//  Copyright 2009 Simone Ardissone. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface TreeNode : NSObject {

	TreeNode* root;
	id data;
	NSString* label;
	int nestingLevel;
	NSMutableArray* children;
	BOOL expanded;
}

@property (assign) TreeNode* root;
@property (assign) id data;
@property (assign) NSString* label;
@property (assign) int nestingLevel;
@property (assign) NSMutableArray* children;
@property (assign) BOOL expanded;

-(void)addChildren:(TreeNode*)child;

-(int)childrenCount;

@end
