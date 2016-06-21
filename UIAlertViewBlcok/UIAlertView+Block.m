//
//  UIAlertView+Block.m
//  UIAlertViewBlcok
//
//  Created by Jason on 16/6/21.
//  Copyright © 2016年 Jason. All rights reserved.
//

#import "UIAlertView+Block.h"
#import <objc/runtime.h>

const char *alertView_Block = "alertView_Block";

@implementation UIAlertView (Block)

-(void)setBlock:(ClickAtIndexBlock)block{
    objc_setAssociatedObject(self, alertView_Block, block, OBJC_ASSOCIATION_COPY_NONATOMIC);
}
-(ClickAtIndexBlock)block{
    return objc_getAssociatedObject(self, alertView_Block);
}
+ (id)initWithTitle:(NSString *)title message:(NSString *)message cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitles:(NSArray *)otherButtonTitles clickAtIndex:(ClickAtIndexBlock) clickAtIndex{
    
    
    UIAlertView * alertView = [[UIAlertView alloc]initWithTitle:title message:message delegate:self cancelButtonTitle:cancelButtonTitle otherButtonTitles: nil];
    for (NSString *otherTitle in otherButtonTitles) {
        [alertView addButtonWithTitle:otherTitle];
    }
    alertView.block = clickAtIndex;
    [alertView show];
    return alertView;
}
#pragma mark   UIAlertViewDelegate
+(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (alertView.block) {
        
        alertView.block(buttonIndex);
    }
}
//+(void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
//{
//    if (alertView.block) {
//        
//        alertView.block(buttonIndex);
//    }
//}


@end
