//
//  ISSAppDelegate.h
//  CoreDataForMe
//
//  Created by 田地 on 13-7-19.
//  Copyright (c) 2013年 com.isoftstone. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ISSAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
+(NSString *)getFileDocumentDir;
@end
