//
//  HeFengTodayWeatherItemView.m
//  HeFengWeather
//
//  Created by he on 2019/3/29.
//  Copyright © 2019 HeFengTianQi. All rights reserved.
//

#import "HeFengTodayWeatherItemView.h"

@implementation HeFengTodayWeatherItemView
{
    NSArray *titlesArray;

}
-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self configUI];
    }
    return self;
}
-(void)configUI{
    titlesArray = @[@"hengfengLocalString_34",@"hengfengLocalString_35",@"hengfengLocalString_2",@"hengfengLocalString_3",@"hengfengLocalString_4",@"hengfengLocalString_5",@"hengfengLocalString_6"];
    self.imageView = [UIImageView new];
    [self addSubview:self.imageView];
    
    self.titleLabel = [HeFengBaseLabel new];
    self.titleLabel.hefengFontSize = HeFengFontSize_14;
    self.titleLabel.textColor = HeFengColor_A4A4A4;
    [self addSubview:self.titleLabel];
    
    self.contentLabel = [HeFengBaseLabel new];
    self.contentLabel.hefengFontSize = HeFengFontSize_14;
    self.contentLabel.textColor = HeFengColor_4A4A4A;
    [self addSubview:self.contentLabel];
    
}
-(void)layoutSubviews{
    [super layoutSubviews];
    [self.imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(0);
        make.centerY.equalTo(0);
        make.width.height.equalTo(20);
    }];
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.imageView.mas_right).offset(8);
        make.centerY.equalTo(0);
    }];
    [self.contentLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.titleLabel.mas_right).offset(8);
        make.centerY.equalTo(0);
    }];
}
- (void)setIdx:(NSInteger)idx{
    _idx = idx;
    self.titleLabel.hefengLocalString = titlesArray[idx];
    self.imageView.image = UIImageMake(HeFengStringFormat(@"todayItem_%ld",(long)idx));
}
-(void)reloadViewWithModel:(HeFengHomeTabelViewDataModel *)model{
    switch (_idx) {
        case 0:
            self.contentLabel.hefengTempString = model.dataModel.daily_forecast.firstObject.tmp_max;
            self.imageView.image = [HeFengWeatherTool getWeatherImageWithWeatherCode:model.dataModel.daily_forecast.firstObject.cond_code_d isDay:YES formatString:HeFengWeatherImageFormatString];
            break;
        case 1:
            self.contentLabel.hefengTempString = model.dataModel.daily_forecast.firstObject.tmp_min;
            self.imageView.image = [HeFengWeatherTool getWeatherImageWithWeatherCode:model.dataModel.daily_forecast.firstObject.cond_code_n isDay:NO formatString:HeFengWeatherImageFormatString];
            break;
        case 2:
            self.contentLabel.text = HeFengStringFormat(@"%@mm",model.dataModel.now.pcpn);
            break;
        case 3:
            self.contentLabel.text = HeFengStringFormat(@"%@%%",model.dataModel.now.hum);
            break;
        case 4:
            self.contentLabel.text = HeFengStringFormat(@"%@HPA",model.dataModel.now.pres);
            break;
        case 5:
            self.contentLabel.text = HeFengStringFormat(@"%@KM",model.dataModel.now.vis);
            break;
        case 6:
            self.titleLabel.text = HeFengStringFormat(@"%@",model.dataModel.now.wind_dir);
            self.contentLabel.text = HeFengStringFormat(@"%@%@",model.dataModel.now.wind_sc,HeFengLocal(@"hengfengLocalString_32"));
            break;

        default:
            break;
    }
}
@end
