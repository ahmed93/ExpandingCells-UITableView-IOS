//
//  Person.h
//  taskApp
//
//  Created by Ahmed Mohamed Fareed on 3/26/15.
//  Copyright (c) 2015 Ahmed Mohamed Fareed. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property NSString* name;
@property NSString* biography;


+(instancetype)initWithName:(NSString*)name biography:(NSString*)bio;

@end

