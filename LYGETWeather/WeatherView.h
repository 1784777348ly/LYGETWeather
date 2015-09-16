//
//  WeatherView.h
//  LYGETWeather
//
//  Created by LY on 15/9/10.
//  Copyright (c) 2015年 LY. All rights reserved.
//

#import <UIKit/UIKit.h>

@class WeatherModel;

@interface WeatherView : UIView

@property(nonatomic)WeatherModel *model;


-(void)customWithModel:(WeatherModel *)modelToday andModel:(WeatherModel *)modelTomorrow;

@end
