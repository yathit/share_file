#import "ShareFilePlugin.h"
#import <share_file/share_file-Swift.h>

@implementation ShareFilePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftShareFilePlugin registerWithRegistrar:registrar];
}
@end
