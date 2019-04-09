//
//  HeFengSettingModel.h
//  HeFengWeather
//
//  Created by he on 2019/3/29.
//  Copyright © 2019 HeFengTianQi. All rights reserved.
//
//  When I wrote this, only God and I understood what I was doing
//  Now, God only knows

#import "HeFengBaseModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface HeFengSettingModel : HeFengBaseModel
@property (nonatomic,assign) NSInteger unitType;
@property (nonatomic,assign) NSInteger fontType;
@property (nonatomic,assign) NSInteger languageType;
@property (nonatomic,assign) BOOL isFirstOpenApp;
@end

NS_ASSUME_NONNULL_END
