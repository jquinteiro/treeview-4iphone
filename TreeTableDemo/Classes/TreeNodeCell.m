//
//  TreeNodeCell.m
//  TreeTableDemo
//
//  Created by simone on 9/25/09.
//  Copyright 2009 Simone Ardissone. All rights reserved.
//

#import "TreeNodeCell.h"


@implementation TreeNodeCell

@synthesize onExpandedButtonTouch,owner;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
		
    }
    return self;
}


- (id)initWithFrame:(CGRect)frame reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithFrame:frame reuseIdentifier:reuseIdentifier]) {
		
    }
    return self;
}

-(void)onExpandButtonTouch:(id)sender{

	if([[treeNode children] count] > 0){
		[treeNode setExpanded:![treeNode expanded]];
		
		if([treeNode expanded]==YES){
			[expandButton setImage:[UIImage imageNamed:@"minus.png"] forState:UIControlStateNormal];
		}else{
		
			[expandButton setImage:[UIImage imageNamed:@"plus.png"] forState:UIControlStateNormal];
		}
		
		if(owner!=nil && onExpandedButtonTouch!=nil){
		
			[owner performSelector:onExpandedButtonTouch withObject:treeNode];
		}
	}
}

-(void)setTreeNode:(TreeNode*)node{

	treeNode = node;

	if(label==nil){
		iconView = [[UIImageView alloc] initWithFrame:CGRectMake(20.f+(15.f*[treeNode nestingLevel]), 6.f, 32.f, 32.f)];
		label = [[UILabel alloc] initWithFrame:CGRectMake(50.f+(15.f*[treeNode nestingLevel]), 0.f, 200.f, 36.f)];
		expandButton = [[UIButton alloc] initWithFrame:CGRectMake(0.f, 5.f, 32.f, 32.f)];
		[expandButton addTarget:self action:@selector(onExpandButtonTouch:) forControlEvents:UIControlEventTouchUpInside];
		
		[iconView setImage:[UIImage imageNamed:@"folder_small.png"]];
		
		[self addSubview:label];
		[self addSubview:iconView];
		[self addSubview:expandButton];
	}else{
	
		[label setFrame:CGRectMake(50.f+(15.f*[treeNode nestingLevel]), 0.f, 200.f, 36.f)];
		[iconView setFrame:CGRectMake(20.f+(15.f*[treeNode nestingLevel]), 6.f, 32.f, 32.f)];
	}
	
	if([[treeNode children] count] > 0){
		
		if([treeNode expanded]==YES){
			
			[expandButton setImage:[UIImage imageNamed:@"minus.png"] forState:UIControlStateNormal];
		}else{
			[expandButton setImage:[UIImage imageNamed:@"plus.png"] forState:UIControlStateNormal];
		}
	}else{
		
		[expandButton setImage:nil forState:UIControlStateNormal];
	}
	
	[label setText:[node label]];
}

-(void)drawRect:(CGRect)rect{
	
	[super drawRect:rect];
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {

    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


- (void)dealloc {
    [super dealloc];
}


@end
