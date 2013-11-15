
//
//  API.m
//  CoreDataForMe
//
//  Created by 田地 on 13-7-19.
//  Copyright (c) 2013年 com.isoftstone. All rights reserved.
//

#import "API.h"

@implementation API
+(NSURL *)urlForPhoto:(NSDictionary *)photo format:(FlickrPhotoFormat)format{
    return [NSURL URLWithString:[self urlStringForPhoto:photo format:format]];
    
}

+(NSString *)urlStringForPhoto:(NSDictionary *)photo format:(FlickrPhotoFormat) format{
    id farm = [photo objectForKey:@"farm"];
	id server = [photo objectForKey:@"server"];
	id photo_id = [photo objectForKey:@"id"];
	id secret = [photo objectForKey:@"secret"];
    if (format == FlickrPhotoFormatOriginal) secret = [photo objectForKey:@"originalsecret"];
    
    NSString *fileType = @"jpg";
	if (format == FlickrPhotoFormatOriginal) fileType = [photo objectForKey:@"originalformat"];
    if (!farm || !server || !photo_id || !secret) return nil;
    NSString *formatString = @"s";
	switch (format) {
		case FlickrPhotoFormatSquare:    formatString = @"s"; break;
		case FlickrPhotoFormatLarge:     formatString = @"b"; break;
            // case FlickrPhotoFormatThumbnail: formatString = @"t"; break;
            // case FlickrPhotoFormatSmall:     formatString = @"m"; break;
            // case FlickrPhotoFormatMedium500: formatString = @"-"; break;
            // case FlickrPhotoFormatMedium640: formatString = @"z"; break;
		case FlickrPhotoFormatOriginal:  formatString = @"o"; break;
	}
    
	return [NSString stringWithFormat:@"http://farm%@.static.flickr.com/%@/%@_%@_%@.%@", farm, server, photo_id, secret, formatString, fileType];


}


@end
