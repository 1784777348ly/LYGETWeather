//
//  GetWeather.h
//  LYGETWeather
//
//  Created by LY on 15/9/10.
//  Copyright (c) 2015年 LY. All rights reserved.
//

#import <Foundation/Foundation.h>

@class WeatherModel;

@interface GetWeather : NSObject

@property(nonatomic ,strong)void (^getWeatherFinished)(WeatherModel *model);

@end
