
#import <Foundation/Foundation.h>
#import "ApiResult.h"
#import "SystemCheckApi.h"

/**
 * 系统检查API，在唯一入口splash页面进行调用，主要做两件事情
 * 1、检查客户端版本更新并返回
 * 2、返回用户信息（如果客户端需要强制更新，则不返回本段内容）
 * @author liqian
 */

@interface SystemCheckApi()

//客户端类型
@property(nonmatic, strong)(NSString *)clientType;
//客户端code
@property(nonmatic, strong)(NSString *)versionCode;
//客户端渠道
@property(nonmatic, strong)(NSString *)channel;

@end

@implementation SystemCheckApi




-(BOOL) needAuth{
    return NO;
}

/*抽象方法，apiMethodName*/
-(NSString *) getApiMethodName{
    return @"systemCheck.cmd";
}

-(id)initWithParam:(NSString *)clientType
                  versionCode:(NSString *)versionCode
               channel:(NSString *)channel{
    self = [super init];//[super init]就是将消息init发送给父类执行
    if(self != nil){
	_clientType = clientType;
	_versionCode = versionCode;
	_channel = channel;
    }
    return self;

}

/*abstract抽象方法，子类需要构造业务数据*/
-(NSDictionary *) getBusinessParamMap{
   NSMutableDictionary *businessMap = [NSMutableDictionary dictionary];
   //构造业务参数
   
}

//*abstract抽象方法，子类需要构造业务数据*/
//-(void) fillDataMap: (NSDictionary*) paramMap{
//    NSMutableDictionary *requestMap = [NSMutableDictionary dictionary];
//    [requestMap addEntriesFromDictionary:paramMap];
//}

@end
