//
//  HeFengWeatherRequest.h
//  HeFengWeather
//
//  Created by he on 2019/3/29.
//  Copyright © 2019 HeFengTianQi. All rights reserved.
//
//  When I wrote this, only God and I understood what I was doing
//  Now, God only knows

#import <Foundation/Foundation.h>
#import "HeFengHomeTabelViewDataModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface HeFengWeatherRequest : NSObject
/**城市查询 传入@{@"location":@""} */
@property (nonatomic,strong,readonly) RACCommand *citySearchCommand;
/**首页数据 传入@{@"location":@"",@"cityId":@""}*/
@property (nonatomic,strong,readonly) RACCommand *homeDataCommand;
/**更新本地所有数据 无需参数*/
@property (nonatomic,strong,readonly) RACCommand *upDateHomeDataCommand;
@end

NS_ASSUME_NONNULL_END
