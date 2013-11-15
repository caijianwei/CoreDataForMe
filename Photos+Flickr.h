//
//  Photos+Flickr.h
//  CoreDataForMe
//
//  Created by 田地 on 13-7-19.
//  Copyright (c) 2013年 com.isoftstone. All rights reserved.
//

#import "Photos.h"

@interface Photos (Flickr)
+ (Photos *)photographerWithName:(NSString *)name
          inManagedObjectContext:(NSManagedObjectContext *)context;
@end
