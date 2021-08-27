//
//  UTAnnotation.h
//  UTDemo06
//
//  Created by Hivan Du on 13-6-30.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface UTAnnotation : NSObject <MKAnnotation>
{
    
}

@property (nonatomic, assign)CLLocationCoordinate2D coordinate;
@property (nonatomic, copy)NSString                 *title;
@property (nonatomic, copy)NSString                 *subtitle;

@property (nonatomic, assign)NSInteger              *index;

@end
