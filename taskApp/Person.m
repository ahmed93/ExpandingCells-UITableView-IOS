//
//  Person.m
//  taskApp
//
//  Created by Ahmed Mohamed Fareed on 3/26/15.
//  Copyright (c) 2015 Ahmed Mohamed Fareed. All rights reserved.
//

#import "Person.h"

@implementation Person

+(instancetype)initWithName:(NSString*)name biography:(NSString*)bio
{
    Person* p = [[Person alloc]init];
    
    [p setName:name];
    [p setBiography:bio];
    
    return p;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"{\n\tName:%@,\n\tBiography:%@\n}", _name,_biography];
}

@end
