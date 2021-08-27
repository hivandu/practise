//
//  UTAnimal.h
//  UTDemo02_practice
//
//  Created by Hivan Du on 13-5-13.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UTAnimal : NSObject
{
    NSString    *_species;
    NSString    *_name;
    NSInteger   _age;
    NSString    *_color;
    NSInteger   _lenger;
}

-(id)initWiteSpecies:(NSString *)species name:(NSString *)name age:(NSInteger)age color:(NSString *)color lenger:(NSInteger)lenger;
-(void)sayMyInfo;
+(void)printMessage:(NSString *)message;


@end
