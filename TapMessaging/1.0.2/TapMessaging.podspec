Pod::Spec.new do |tapMessaging|
    
    tapMessaging.platform = :ios
    tapMessaging.ios.deployment_target = '8.0'
    tapMessaging.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0' }
    tapMessaging.name = 'TapMessaging'
    tapMessaging.summary = 'Helper library to manager Message/Mail compose controllers.'
    tapMessaging.requires_arc = true
    tapMessaging.version = '1.0.2'
    tapMessaging.license = { :type => 'MIT', :file => 'LICENSE' }
    tapMessaging.author = { 'Dennis Pashkov' => 'd.pashkov@tap.company' }
    tapMessaging.homepage = 'https://github.com/Tap-Payments/TapMessaging-iOS'
    tapMessaging.source = { :git => 'https://github.com/Tap-Payments/TapMessaging-iOS.git', :tag => tapMessaging.version.to_s }
    tapMessaging.source_files = 'TapMessaging/Source/*.swift'
    
    tapMessaging.dependency 'TapAdditionsKit/Tap/TypeAlias'
end
