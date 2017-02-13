Pod::Spec.new do |s|

    s.platform = :ios
    s.ios.deployment_target = '8.0'
    s.name = "TapSecurity"
    s.summary = "Tap Security framework."
    s.requires_arc = true
    s.version = "1.1.2"
    s.license = { :type => "MIT", :file => "LICENSE" }
    s.author = { "Dennis Pashkov" => "d.pashkov@tap.com.kw" }
    s.homepage = "https://github.com/Tap-Payments/TapSecurity.git"
    s.source = { :git => "https://github.com/Tap-Payments/TapSecurity.git", :tag => "#{s.version}"}
    s.source_files = "TapSecurity/*.{h,swift}"
    s.frameworks = "Foundation", "TapSecurityImplementation"
    s.vendored_frameworks = "TapSecurity/Frameworks/TapSecurityImplementation.framework"

    s.preserve_paths = 'CommonCrypto/**/*'
    s.pod_target_xcconfig = {

        'SWIFT_INCLUDE_PATHS[sdk=macosx*]'           => '$(PODS_ROOT)/TapSecurity/CommonCrypto/macosx',
        'SWIFT_INCLUDE_PATHS[sdk=iphoneos*]'         => '$(PODS_ROOT)/TapSecurity/CommonCrypto/iphoneos',
        'SWIFT_INCLUDE_PATHS[sdk=iphonesimulator*]'  => '$(PODS_ROOT)/TapSecurity/CommonCrypto/iphonesimulator',
        'SWIFT_INCLUDE_PATHS[sdk=appletvos*]'        => '$(PODS_ROOT)/TapSecurity/CommonCrypto/appletvos',
        'SWIFT_INCLUDE_PATHS[sdk=appletvsimulator*]' => '$(PODS_ROOT)/TapSecurity/CommonCrypto/appletvsimulator',
        'SWIFT_INCLUDE_PATHS[sdk=watchos*]'          => '$(PODS_ROOT)/TapSecurity/CommonCrypto/watchos',
        'SWIFT_INCLUDE_PATHS[sdk=watchsimulator*]'   => '$(PODS_ROOT)/TapSecurity/CommonCrypto/watchsimulator'
    }

end
