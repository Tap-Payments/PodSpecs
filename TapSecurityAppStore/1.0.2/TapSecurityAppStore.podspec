Pod::Spec.new do |s|
    
    s.platform = :ios
    s.ios.deployment_target = '8.0'
    s.name = 'TapSecurityAppStore'
    s.summary = 'Tap Security framework.'
    s.requires_arc = true
    s.version = '1.0.2'
    s.license = { :type => 'Private', :file => 'LICENSE' }
    s.author = { 'Dennis Pashkov' => 'd.pashkov@tap.company' }
    s.homepage = 'https://github.com/Tap-Payments/TapSecurityAppStore'
    s.source = { :git => 'https://github.com/Tap-Payments/TapSecurityAppStore.git', :tag => "#{s.version}"}
    s.source_files = 'TapSecurity/*.{h,swift}'
    s.frameworks = 'Foundation'
    
    s.dependency 'SwiftFixes'
    s.dependency 'TapAdditionsKit/Foundation/JSONSerialization'
    s.dependency 'TapAdditionsKit/SwiftStandartLibrary/String'
    s.dependency 'TapAdditionsKit/SwiftStandartLibrary/UInt8'
    
    s.xcconfig = {
        
        'SWIFT_INCLUDE_PATHS' => '$(PODS_TARGET_SRCROOT)/TapSecurityAppStore/CCommonCrypto'
    }
    
    s.preserve_paths = 'CommonCrypto/*/*','CCommonCrypto/*'
    #s.resources = 'CCommonCrypto/module.modulemap'
    
    s.pod_target_xcconfig = {
        
        'SWIFT_INCLUDE_PATHS[sdk=macosx*]'           => '$(PODS_TARGET_SRCROOT)/CommonCrypto/macosx',
        'SWIFT_INCLUDE_PATHS[sdk=iphoneos*]'         => '$(PODS_TARGET_SRCROOT)/CommonCrypto/iphoneos',
        'SWIFT_INCLUDE_PATHS[sdk=iphonesimulator*]'  => '$(PODS_TARGET_SRCROOT)/CommonCrypto/iphonesimulator',
        'SWIFT_INCLUDE_PATHS[sdk=appletvos*]'        => '$(PODS_TARGET_SRCROOT)/CommonCrypto/appletvos',
        'SWIFT_INCLUDE_PATHS[sdk=appletvsimulator*]' => '$(PODS_TARGET_SRCROOT)/CommonCrypto/appletvsimulator',
        'SWIFT_INCLUDE_PATHS[sdk=watchos*]'          => '$(PODS_TARGET_SRCROOT)/CommonCrypto/watchos',
        'SWIFT_INCLUDE_PATHS[sdk=watchsimulator*]'   => '$(PODS_TARGET_SRCROOT)/CommonCrypto/watchsimulator'
    }
    
end
