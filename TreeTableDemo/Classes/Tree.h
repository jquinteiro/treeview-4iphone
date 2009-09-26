//
//  Tree.h
//  TreeTableDemo
//
//  Created by simone on 9/25/09.
//  Copyright 2009 Simone Ardissone. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TreeNode.h"
#import "Stack.h"

@interface Tree : NSObject {

	TreeNode* root;
	
	TreeNode* currentIteratorNode;
	
	int currentNestingLevel;
	int currentChildrenIndex;
	Stack* childrenIndexStack;
}

@property (assign) TreeNode* root;
@property (assign) int currentNestingLevel;

-(void)startTreeIteration;

-(TreeNode*)nextNode;

-(bool)hasMoreNode;

-(TreeNode*)findNode:(NSString*)label;

-(void)addChildren:(NSString*)label:(TreeNode*)childNode;

-(NSArray*)arrayRappresentation;

@end
