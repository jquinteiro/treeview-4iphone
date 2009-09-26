//
//  TreeNodeCell.h
//  TreeTableDemo
//
//  Created by simone on 9/25/09.
//  Copyright 2009 Simone Ardissone. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TreeNode.h"

@interface TreeNodeCell : UITableViewCell {

	TreeNode* treeNode;
	UILabel* label;
	UIImageView* iconView;
	UIButton* expandButton;
	SEL onExpandedButtonTouch;
	id owner;
}

@property (assign) SEL onExpandedButtonTouch;
@property (assign) id owner;

-(void)setTreeNode:(TreeNode*)node;

@end
