//
//  WeatherModel.h
//  weatherTest
//
//  Created by LY on 15/9/10.
//  Copyright (c) 2015年 LY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WeatherModel : NSObject

@property(nonatomic,copy)NSString *date;
@property(nonatomic,copy)NSString *temp1;
@property(nonatomic,copy)NSString *temp2;
@property(nonatomic,copy)NSString *weather;
@property(nonatomic,copy)NSString *ptime;

@property(nonatomic,retain)NSDictionary *info;

//@property(nonatomic,retain)NSArray *day;
//@property(nonatomic,retain)NSArray *night;
//
@property(nonatomic,retain)NSArray *area;

@property(nonatomic,retain)NSArray *pm25;



/*{
    "date": "2015-09-16",
    "info": {
        "day": [
                "1",
                "多云",
                "27",
                "东北风",
                "3-4 级"
                ],
        "night": [
                  "1",
                  "多云",
                  "17",
                  "东北风",
                  "微风"
                  ]
    }
},
 
 
 "area": [
 "南京",
 "101190101"
 ],
 "pm25": [
 43,
 "2015091610"
 ]
 
 
 */

@end
