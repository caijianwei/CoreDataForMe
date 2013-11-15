//
//  Photo+Flickr.h
//  CoreDataForMe
//
//  Created by 田地 on 13-7-19.
//  Copyright (c) 2013年 com.isoftstone. All rights reserved.
//

#import "Photo.h"

@interface Photo (Flickr)
+(Photo *)photoWithFlickrInfo:(NSDictionary *) frikrIn inManagedObjectContext:(NSManagedObjectContext *)context;
@end
