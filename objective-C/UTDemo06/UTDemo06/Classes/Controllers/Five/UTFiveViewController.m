//
//  UTFiveViewController.m
//  UTDemo06
//
//  Created by Hivan Du on 13-6-16.
//  Copyright (c) 2013年 Hivan Du. All rights reserved.
//

#import "UTFiveViewController.h"
#import "UTAnnotation.h"

@implementation UTFiveViewController

#pragma mark - view lifecycle methods

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        _annotations = [[NSMutableArray alloc] init];
        
        UTAnnotation *annotation1 = [[UTAnnotation alloc] init];
        annotation1.index = 1;
        CLLocationCoordinate2D coordinate1 = {31.19537, 121.42349};
        annotation1.coordinate = coordinate1;
        annotation1.title = @"阳光名牴大酒店";
        annotation1.subtitle = @"虹桥路888号";
        [_annotations addObject:annotation1];
        [annotation1 release];
        
        UTAnnotation *annotation2 = [[UTAnnotation alloc] init];
        CLLocationCoordinate2D coordinate2 = {31.19498, 121.42781};
        annotation2.index = 2;
        annotation2.coordinate = coordinate2;
        annotation2.title = @"梵语文化广场";
        annotation2.subtitle = @"虹桥路300号";
        [_annotations addObject:annotation2];
        [annotation2 release];
        
        UTAnnotation *annotation3 = [[UTAnnotation alloc] init];
        annotation3.index = 3;
        CLLocationCoordinate2D coordinate3 = {31.19371, 121.42570};
        annotation3.coordinate = coordinate3;
        annotation3.title = @"虹桥乐园";
        annotation3.subtitle = @"虹桥路500号";
        [_annotations addObject:annotation3];
        [annotation3 release];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Map";
    UIImageView *bgImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 367)];
    bgImageView.backgroundColor = [UIColor clearColor];
    bgImageView.image = [UIImage imageNamed:@"bg5.png"];
    [self.view addSubview:bgImageView];
    [bgImageView release];
    
    UIBarButtonItem *localtionButton
    = [[UIBarButtonItem alloc] initWithTitle:@"定位"
                                       style:UIBarButtonItemStyleBordered
                                      target:self
                                      action:@selector(localtionButtonClicked:)];
    
    self.navigationItem.leftBarButtonItem = localtionButton;
    [localtionButton release];
    
    UIBarButtonItem *flagButton = [[UIBarButtonItem alloc] initWithTitle:@"标注" style:UIBarButtonItemStyleBordered target:self action:@selector(flagButtonClicked:)];
    UIBarButtonItem *reverseButton = [[UIBarButtonItem alloc] initWithTitle:@"解析" style:UIBarButtonItemStyleBordered target:self action:@selector(reverseButtonClicked:)];
    
    self.navigationItem.rightBarButtonItems = [NSArray arrayWithObjects:flagButton, reverseButton, nil];
    
    [flagButton release];
    [reverseButton release];
    
    _mapView = [[MKMapView alloc] initWithFrame:CGRectMake(0, 0, 320, 320)];
    _mapView.delegate = self;
    [self.view addSubview:_mapView];
    [_mapView release];
    
    _maplabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 320, 320, 47)];
    _maplabel.backgroundColor = [UIColor cyanColor];
    _maplabel.textAlignment = UITextAlignmentCenter;
    _maplabel.numberOfLines = 0;
    _maplabel.text = @"位置信息";
    [self.view addSubview:_maplabel];
    [_maplabel release];
    
    CLLocationCoordinate2D coordinate = {31.19456, 121.42697};
    MKCoordinateSpan span = {0.005, 0.005};
    MKCoordinateRegion region = {coordinate, span};
    [_mapView setRegion:region];
}

#pragma mark - Custom methods

- (void)localtionButtonClicked:(id)sender
{
    if (self.locationManager == nil) {
        self.locationManager = [[[CLLocationManager alloc] init] autorelease];
        self.locationManager.delegate = self;
    }
    
    [self.locationManager startUpdatingLocation];
}

- (void)flagButtonClicked:(id)sender
{
    [_mapView removeAnnotations:_mapView.annotations];
    [_mapView addAnnotations:_annotations];
}


- (void)reverseButtonClicked:(id)sender
{
//    5.0之前的解析方式
//    
//    self.reverseGeocoder = [[MKReverseGeocoder alloc] initWithCoordinate:self.currentLocation.coordinate];
//    self.reverseGeocoder.delegate = self;
//    [self.reverseGeocoder start];
    
    //iOS 5.0 之后
//    以下是一种GCD编程结构
//    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0); // C风格的函数调用
//    dispatch_async(queue, ^{
//        写入自己要做的事情
//    });
    
//    dispatch_async_f(queue, 函数指针, 参数)
//    GCD编程演示end
    
    self.geocoder = [[[CLGeocoder alloc] init] autorelease];
    // 以下是一种结构，称之为block结构
    [self.geocoder reverseGeocodeLocation:self.currentLocation
                        completionHandler:^(NSArray *placemarks, NSError *error)
    {
        if (error) {
            _maplabel.text = error.description;
        }else{
            if ([placemarks count] > 0) {
                CLPlacemark *placemark = (CLPlacemark *)[placemarks objectAtIndex:0];
                                    
                if ([placemark.subAdministrativeArea length] > 0) {
                    _maplabel.text = [NSString stringWithFormat:@"%@, %@, %@, %@",
                                    placemark.country,
                                    placemark.administrativeArea,
                                    placemark.subAdministrativeArea,
                                    placemark.region];
                }else{
                    _maplabel.text = [NSString stringWithFormat:@"%@, %@",
                                    placemark.country,
                                    placemark.administrativeArea];
                }
            }
        }
    } ];
}

#pragma mark - MKMapViewDelegate methods

- (MKAnnotationView *)mapView:(MKMapView *)mapView
            viewForAnnotation:(id<MKAnnotation>)annotation
{
    if ([[annotation class] isSubclassOfClass:[MKUserLocation class]]) {
        return nil;
    }
    
    UTAnnotation *utAnnotation = (UTAnnotation *) annotation;
    
    static NSString *identifier = @"identifier";
    MKPinAnnotationView *pinAnnotationView
    = (MKPinAnnotationView *)[mapView dequeueReusableAnnotationViewWithIdentifier:identifier];
    if (pinAnnotationView == nil) {
        pinAnnotationView = [[[MKPinAnnotationView alloc] initWithAnnotation:utAnnotation reuseIdentifier:identifier] autorelease];
        
        pinAnnotationView.canShowCallout = YES;
        pinAnnotationView.animatesDrop = YES;
        
        UIView *leftView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
        leftView.backgroundColor = [UIColor redColor];
        pinAnnotationView.leftCalloutAccessoryView = leftView;
        [leftView release];
        
        UIButton *rightButton = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
        [rightButton addTarget:self action:@selector(rightButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
        pinAnnotationView.rightCalloutAccessoryView = rightButton;
    }
    
    pinAnnotationView.rightCalloutAccessoryView.tag = utAnnotation.index;
    if (utAnnotation.index == 1) {
        pinAnnotationView.pinColor = MKPinAnnotationColorGreen;
    }else if (utAnnotation.index == 2){
        pinAnnotationView.pinColor = MKPinAnnotationColorRed;
    }else if (utAnnotation.index == 3)
        pinAnnotationView.pinColor = MKPinAnnotationColorPurple;
    
    
    return pinAnnotationView;
}

- (void)mapView:(MKMapView *)mapView didSelectAnnotationView:(MKAnnotationView *)view
{
    UTAnnotation *utAnnotation = (UTAnnotation *)view.annotation;
    
    NSString *message
    = [NSString stringWithFormat:@"title = %@\nsubtitle = %@\nindex = %i",
       utAnnotation.title, utAnnotation.subtitle, utAnnotation.index];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:message delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    [alert show];
    [alert release];
}

- (void)rightButtonClicked:(UIButton *)button
{
    NSInteger index = button.tag;
    
    UTAnnotation *utAnnotation = (UTAnnotation *)[_annotations objectAtIndex:index - 1];
    
    NSString *message
    = [NSString stringWithFormat:@"title = %@\nsubtitle = %@\nindex = %i",
       utAnnotation.title, utAnnotation.subtitle, utAnnotation.index];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:message delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    
    [alert show];
    [alert release];
}

#pragma mark - MKReverseGeocoderDelegate methods

- (void)reverseGeocoder:(MKReverseGeocoder *)geocoder didFindPlacemark:(MKPlacemark *)placemark
{
    [self.reverseGeocoder cancel];
    if (placemark) {
        if ([placemark.subAdministrativeArea length] > 0) {
            _maplabel.text = [NSString stringWithFormat:@"%@, %@, %@, %@",
                              placemark.country,
                              placemark.administrativeArea,
                              placemark.subAdministrativeArea,
                              placemark.region];
        }else{
            _maplabel.text = [NSString stringWithFormat:@"%@, %@",
                              placemark.country,
                              placemark.administrativeArea];
        }
    }
}

- (void)reverseGeocoder:(MKReverseGeocoder *)geocoder didFailWithError:(NSError *)error
{
    [self.reverseGeocoder cancel];
    _maplabel.text = error.description;
}

#pragma mark - CLLocationManagerDelegate methods

- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation
{
    [self.locationManager stopUpdatingLocation];
    self.currentLocation = newLocation;
//    double distance = [newLocation distanceFromLocation:oldLocation];
    _maplabel.text = [NSString stringWithFormat:@"(%f, %f)", self.currentLocation.coordinate.latitude,
                      self.currentLocation.coordinate.longitude];
}

- (void)locationManager:(CLLocationManager *)manager
       didFailWithError:(NSError *)error
{
    [self.locationManager stopUpdatingLocation];
    _maplabel.text = error.description;
}

#pragma mark - memory managment methods

- (void)viewWillUnload
{
    [super viewWillUnload];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (void)dealloc
{
    [_annotations release];
    _annotations            = nil;
    self.geocoder           = nil;
    self.locationManager    = nil;
    self.reverseGeocoder    = nil;
    self.currentLocation    = nil;
    [super dealloc];
}

@end

