//
//  TreeNode.m
//  TreeTableDemo
//
//  Created by simone on 9/25/09.
//  Copyright 2009 Simone Ardissone. All rights reserved.
//

#import "TreeNode.h"


@implementation TreeNode

@synthesize root,children,data,label,nestingLevel,expanded;

-(id)init{

	if(self=[super init]){
	
		root = nil;
		children = nil;
		expanded = NO;
	}
	
	return self;
}

-(void)addChildren:(TreeNode*)child{
	
	if(children==nil){
	
		children = [[NSMutableArray alloc] init];
	}
	
	[child setRoot:self];
	[children addObject:child];
}

-(int)childrenCount{

	return [children count];
}

@end
