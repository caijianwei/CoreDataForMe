//
//  Photo+Flickr.m
//  CoreDataForMe
//
//  Created by 田地 on 13-7-19.
//  Copyright (c) 2013年 com.isoftstone. All rights reserved.
//

#import "Photo+Flickr.h"
#import "Photos+Flickr.h"
@implementation Photo (Flickr)
+(Photo *)photoWithFlickrInfo:(NSDictionary *) frikrIn inManagedObjectContext:(NSManagedObjectContext *)context{

    Photo *photo  =nil;

    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"Photo"];
    request.predicate = [NSPredicate predicateWithFormat:@"unqi = %@",frikrIn[ID]];
    NSSortDescriptor *sortDescriptor = [NSSortDescriptor sortDescriptorWithKey:@"title" ascending:YES];
    request.sortDescriptors = @[sortDescriptor];
    NSError *error = nil;
    NSArray *match = [context executeFetchRequest:request error:&error];
    if (!match || [match count] >1) {
        
    }else if([match count] == 0){
        
        photo = [NSEntityDescription insertNewObjectForEntityForName:@"Photo" inManagedObjectContext:context];
        photo.unqi = frikrIn[ID];
        photo.title = frikrIn[TITLE];
        photo.subTitle = frikrIn[SUBTITLE];
        photo.url = [[API urlForPhoto:frikrIn format:FlickrPhotoFormatLarge]absoluteString];
//        photo.latitude = photoDictionary[FLICKR_LATITUDE];
//        photo.longitude = photoDictionary[FLICKR_LONGITUDE];
//        photo.thumbnailURLString = [[FlickrFetcher urlForPhoto:photoDictionary format:FlickrPhotoFormatSquare] absoluteString];
        NSString *photographerName = [frikrIn[PHOTO_NAME] description];
        Photos *photos = [Photos photographerWithName:photographerName inManagedObjectContext:context ];
        photo.whoTook = photos;
        
    }else{
        photo = [match lastObject];
    
    }
    return photo;
}
@end
