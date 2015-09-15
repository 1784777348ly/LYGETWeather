//
//  ViewController.m
//  LYGETWeather
//
//  Created by LY on 15/9/10.
//  Copyright (c) 2015年 LY. All rights reserved.
//

#import "ViewController.h"
#import "GetWeather.h"
#import "WeatherModel.h"
#import "WeatherView.h"



@interface ViewController ()


@property(nonatomic,strong)WeatherView  *Wview;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    GetWeather *weather = [[GetWeather alloc] init];
    
    
     __weak ViewController *weakSelf = self;
    
    weather.getWeatherFinished = ^ (WeatherModel *model){
    
       
        
       [weakSelf.Wview customWithModel:model];
       
       [weakSelf.view addSubview:_Wview];

    };
    
    
    

}

-(WeatherView *)Wview
{
    if (!_Wview) {
        _Wview = [[[NSBundle mainBundle] loadNibNamed:@"View" owner:nil options:nil] firstObject];
        
        //_Wview.frame = CGRectMake(0, 0, 0, 100);
        
       
    }
    return _Wview;
}


@end
