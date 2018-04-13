Pod::Spec.new do |s|
    
    s.platform = :ios
    s.ios.deployment_target = '8.0'
    s.name = 'TapSecurityAppStore'
    s.summary = 'Tap Security framework.'
    s.requires_arc = true
    s.version = '1.0.3'
    s.license = { :type => 'Private', :file => 'LICENSE' }
    s.author = { 'Dennis Pashkov' => 'd.pashkov@tap.company' }
    s.homepage = 'https://github.com/Tap-Payments/TapSecurityAppStore'
    s.source = { :git => 'https://github.com/Tap-Payments/TapSecurityAppStore.git', :tag => s.version.to_s }
    s.source_files = 'TapSecurity/*.{h,swift}'
    
    s.dependency 'TapAdditionsKit/Foundation/JSONSerialization'
    s.dependency 'TapAdditionsKit/SwiftStandartLibrary/String'
    s.dependency 'TapAdditionsKit/SwiftStandartLibrary/UInt8'
    s.dependency 'TapSwiftFixes'
    
    s.xcconfig = {
        
        'SWIFT_INCLUDE_PATHS' => '$(PODS_TARGET_SRCROOT)/TapSecurityAppStore/CCommonCrypto'
    }
    
    s.preserve_paths = 'CommonCrypto/*/*','CCommonCrypto/*'
    
    s.pod_target_xcconfig = {
        
        'SWIFT_VERSION' => '4.1',
        'SWIFT_INCLUDE_PATHS[sdk=macosx*]'           => '$(PODS_TARGET_SRCROOT)/CommonCrypto/macosx',
        'SWIFT_INCLUDE_PATHS[sdk=iphoneos*]'         => '$(PODS_TARGET_SRCROOT)/CommonCrypto/iphoneos',
        'SWIFT_INCLUDE_PATHS[sdk=iphonesimulator*]'  => '$(PODS_TARGET_SRCROOT)/CommonCrypto/iphonesimulator',
        'SWIFT_INCLUDE_PATHS[sdk=appletvos*]'        => '$(PODS_TARGET_SRCROOT)/CommonCrypto/appletvos',
        'SWIFT_INCLUDE_PATHS[sdk=appletvsimulator*]' => '$(PODS_TARGET_SRCROOT)/CommonCrypto/appletvsimulator',
        'SWIFT_INCLUDE_PATHS[sdk=watchos*]'          => '$(PODS_TARGET_SRCROOT)/CommonCrypto/watchos',
        'SWIFT_INCLUDE_PATHS[sdk=watchsimulator*]'   => '$(PODS_TARGET_SRCROOT)/CommonCrypto/watchsimulator'
    }
    
end
