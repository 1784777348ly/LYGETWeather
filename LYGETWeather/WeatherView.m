//
//  WeatherView.m
//  LYGETWeather
//
//  Created by LY on 15/9/10.
//  Copyright (c) 2015年 LY. All rights reserved.
//

#import "WeatherView.h"
#import "WeatherModel.h"


@interface WeatherView ()

@property (weak, nonatomic) IBOutlet UILabel *nameLable;

@property (weak, nonatomic) IBOutlet UILabel *tempLable;

@property (weak, nonatomic) IBOutlet UILabel *weatherLable;


@property (weak, nonatomic) IBOutlet UIImageView *weatherImage;


@property (weak, nonatomic) IBOutlet UILabel *timeLable;



@end


@implementation WeatherView

-(WeatherModel *)model
{

    if (!_model) {
        _model = [[WeatherModel alloc] init];
    }
    
    return _model;

}


-(void)customWithModel:(WeatherModel *)model andModel:(WeatherModel *)modelTomorrow
{
    _nameLable.text = [model.area firstObject];
    _timeLable.text = model.date;

    NSString *tempStr = [NSString stringWithFormat:@"白天最高气温%@˚C~夜间最低气温%@˚C",[model.info[@"day"] objectAtIndex:2],[model.info[@"night"] objectAtIndex:2]];
    
    _tempLable.text = tempStr;
    
    if ([self catuteTimeChange:model.date]) {
        _weatherLable.text = [NSString stringWithFormat:@"今天白天%@ %@ %@",[model.info[@"day"] objectAtIndex:1],[model.info[@"day"] objectAtIndex:3],[model.info[@"day"] objectAtIndex:4]];
      
        _weatherImage.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@",[model.info[@"day"] objectAtIndex:1]]];
    }else{
        _weatherLable.text = [NSString stringWithFormat:@"今天夜间%@ %@ %@",[model.info[@"night"] objectAtIndex:1],[model.info[@"night"] objectAtIndex:3],[model.info[@"night"] objectAtIndex:4]];
        
        _weatherImage.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@",[model.info[@"night"] objectAtIndex:1]]];

    }
    
    //传了今天和明天的两个天气模型，读者，可以自己发挥
    
    
    
}
-(BOOL)catuteTimeChange:(NSString *)preDate
{
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    df.dateFormat = @"yyyy-MM-dd HH:mm:ss.0";
    NSString * preDateStr = [NSString stringWithFormat:@"%@ 7:00:00",preDate];
    NSString * sufDateStr = [NSString stringWithFormat:@"%@ 17:00:00",preDate];
    
    NSDate *preDatePoint = [df dateFromString:preDateStr];
    NSDate *sufDatePoint = [df dateFromString:sufDateStr];
    
    int subTime1 = [preDatePoint timeIntervalSinceNow];
    int subTime2 = [sufDatePoint timeIntervalSinceNow];
    
    
    
    if (subTime1 <= 0 && subTime2 >= 0) {
        return YES;
    }
    return NO;

}



@end
