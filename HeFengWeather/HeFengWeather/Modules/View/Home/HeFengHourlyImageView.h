//
//  HeFengHourlyImageView.h
//  HeFengWeather
//
//  Created by he on 2019/3/29.
//  Copyright © 2019 HeFengTianQi. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HeFengHourlyImageView : UIView
@property (nonatomic,assign) NSInteger progress;
@property (nonatomic,strong) UIImageView *imageView;
@property (nonatomic,strong) CAShapeLayer *vlineLayer;
@property (nonatomic,strong) CAGradientLayer *backLayer;
@end

NS_ASSUME_NONNULL_END
