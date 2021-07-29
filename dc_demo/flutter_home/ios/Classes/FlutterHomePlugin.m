#import "FlutterHomePlugin.h"
#if __has_include(<flutter_home/flutter_home-Swift.h>)
#import <flutter_home/flutter_home-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_home-Swift.h"
#endif

@implementation FlutterHomePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterHomePlugin registerWithRegistrar:registrar];
}
@end
