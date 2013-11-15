//
//  Photos+Flickr.m
//  CoreDataForMe
//
//  Created by 田地 on 13-7-19.
//  Copyright (c) 2013年 com.isoftstone. All rights reserved.
//

#import "Photos+Flickr.h"

@implementation Photos (Flickr)
+ (Photos *)photographerWithName:(NSString *)name
          inManagedObjectContext:(NSManagedObjectContext *)context{
    Photos *photos = nil;
    if (name.length ) {
        NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"Photos"];
        request.sortDescriptors = @[[NSSortDescriptor sortDescriptorWithKey:@"name" ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)]];
        request.predicate = [NSPredicate predicateWithFormat:@"name = %@",name];
        NSError *error = nil;
        NSArray *matches = [context executeFetchRequest:request error:&error];
        if (!matches  || ([matches count ] >1)) {
        
        }  else if (![matches count]){
           photos = [NSEntityDescription insertNewObjectForEntityForName:@"Photos" inManagedObjectContext:context];
            photos.name = name;
        
        } else{
         
            photos = [matches lastObject];
        }
    }
return photos;
}
@end
