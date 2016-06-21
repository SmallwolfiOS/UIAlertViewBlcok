//
//  UIAlertView+Block.h
//  UIAlertViewBlcok
//
//  Created by Jason on 16/6/21.
//  Copyright © 2016年 Jason. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ClickAtIndexBlock) (NSInteger buttonIndex);

@interface UIAlertView (Block)<UIAlertViewDelegate>

@property (nonatomic, strong )ClickAtIndexBlock block;

+ (id)initWithTitle:(NSString *)title message:(NSString *)message cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitles:(NSArray *)otherButtonTitles clickAtIndex:(ClickAtIndexBlock) clickAtIndex;



 


@end
