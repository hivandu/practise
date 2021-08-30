//
//  UTFiveViewController.h
//  UTDemo06
//
//  Created by Hivan Du on 13-6-16.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UTBaseViewController.h"
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface UTFiveViewController : UIViewController
<CLLocationManagerDelegate, MKReverseGeocoderDelegate, MKMapViewDelegate>
{
    MKMapView               *_mapView;
    UILabel                 *_maplabel;
    CLLocationManager       *_locationManager;  //
    CLLocation              *_currentLocation;  //地图数据保存
    MKReverseGeocoder       *_reverseGeocoder;  //位置解析器
    
    CLGeocoder              *_geocoder;
    
    NSMutableArray          *_annotations;
}

@property (nonatomic, retain) CLLocationManager *locationManager;
@property (nonatomic, retain) CLLocation        *currentLocation;
@property (nonatomic, retain) MKReverseGeocoder *reverseGeocoder;
@property (nonatomic, retain) CLGeocoder        *geocoder;

@end
