#import "NewAndroidService_Private.h"
#import "Logger/Logger-Swift.h"

@interface NewAndroidService ()

@end

@implementation NewAndroidService


+ (NSDictionary *) discoveryParameters
{
    [[LoggerManager instance] log: @"NewAndroidService discoveryParameters"];
    return @{
        @"serviceId" : kConnectSDKNewAndroidServiceId,
        @"zeroconf" : @{
                @"filter" : @"_androidtvremote2._tcp"
        }
    };
}

- (BOOL) isConnectable
{
    return YES;
}

- (void) connect
{
    self.connected = YES;
}

- (void) disconnect
{
    self.connected = NO;
}

//- (BOOL) connected
//{
//    return self.connected;
//}

@end
