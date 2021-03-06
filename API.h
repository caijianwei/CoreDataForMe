//
//  API.h
//  CoreDataForMe
//
//  Created by 田地 on 13-7-19.
//  Copyright (c) 2013年 com.isoftstone. All rights reserved.
//

#import <Foundation/Foundation.h>
#define SUBTITLE @"description._content"
#define ID @"id"
#define TITLE  @"title"
#define PHOTO_NAME @"ownername"
#define MD @"changeMe"
#define TOUCH @"onClick"
#define HHHH @"HHHHH"
typedef enum {
	FlickrPhotoFormatSquare = 1,
	FlickrPhotoFormatLarge = 2,
	FlickrPhotoFormatOriginal = 64
} FlickrPhotoFormat;

//dfldsjflsdjflds
@interface API : NSObject
+(NSURL *)urlForPhoto:(NSDictionary *)photo format:(FlickrPhotoFormat)format;
@end
