//
//  Photo.h
//  CoreDataForMe
//
//  Created by 田地 on 13-7-19.
//  Copyright (c) 2013年 com.isoftstone. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Photos;

@interface Photo : NSManagedObject

@property (nonatomic, retain) NSString * subTitle;
@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSString * unqi;
@property (nonatomic, retain) NSString * url;
@property (nonatomic, retain) NSNumber * longitude;
@property (nonatomic, retain) NSNumber * latitude;
@property (nonatomic, retain) NSString * thumbnailURLString;
@property (nonatomic, retain) Photos *whoTook;
@end

@interface Photo (CoreDataGeneratedAccessors)

- (void)addWhoTookObject:(Photos *)value;
- (void)removeWhoTookObject:(Photos *)value;
- (void)addWhoTook:(NSSet *)values;
- (void)removeWhoTook:(NSSet *)values;

@end
