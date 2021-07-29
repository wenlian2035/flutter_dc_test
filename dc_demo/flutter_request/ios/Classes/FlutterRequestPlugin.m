#import "FlutterRequestPlugin.h"
#if __has_include(<flutter_request/flutter_request-Swift.h>)
#import <flutter_request/flutter_request-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_request-Swift.h"
#endif

@implementation FlutterRequestPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterRequestPlugin registerWithRegistrar:registrar];
}
@end
