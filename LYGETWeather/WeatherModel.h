//
//  WeatherModel.h
//  weatherTest
//
//  Created by LY on 15/9/10.
//  Copyright (c) 2015年 LY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WeatherModel : NSObject

@property(nonatomic,copy)NSString *city;
@property(nonatomic,copy)NSString *temp1;
@property(nonatomic,copy)NSString *temp2;
@property(nonatomic,copy)NSString *weather;
@property(nonatomic,copy)NSString *ptime;


/**weatherinfo": {
 "city": "北京",
 "cityid": "101010100",
 "temp1": "15℃",
 "temp2": "5℃",
 "weather": "多云",
 "img1": "d1.gif",
 "img2": "n1.gif",
 "ptime": "08:00"
 }
 }*/
@end
