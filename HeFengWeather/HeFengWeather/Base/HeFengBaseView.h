//
//  HeFengBaseView.h
//  HeFengWeather
//
//  Created by he on 2019/3/29.
//  Copyright © 2019 HeFengTianQi. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HeFengBaseView : UIView
-(void)reloadViewWithModel:(HeFengHomeTabelViewDataModel *)model;
@end

NS_ASSUME_NONNULL_END
