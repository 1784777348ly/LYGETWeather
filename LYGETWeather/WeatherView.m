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


@end


@implementation WeatherView

-(WeatherModel *)model
{

    if (!_model) {
        _model = [[WeatherModel alloc] init];
    }
    
    return _model;

}


-(void)customWithModel:(WeatherModel *)model
{
    _nameLable.text = model.city;
    
    NSString *tempStr = [NSString stringWithFormat:@"最低%@~最高%@",model.temp2,model.temp1];
    
    _tempLable.text = tempStr;
    
    
    _weatherLable.text = [NSString stringWithFormat:@"今天%@",model.weather];
    
    _weatherImage.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@",model.weather]];
    
    
}

@end
