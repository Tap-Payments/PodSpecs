Pod::Spec.new do |tapFlagsKit|
    
    tapFlagsKit.platform = :ios
    tapFlagsKit.ios.deployment_target = '8.0'
    tapFlagsKit.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0' }
    tapFlagsKit.name = 'TapFlagsKit'
    tapFlagsKit.summary = 'Kit with country flags.'
    tapFlagsKit.requires_arc = true
    tapFlagsKit.version = '1.0.2'
    tapFlagsKit.license = { :type => 'MIT', :file => 'LICENSE' }
    tapFlagsKit.author = { 'Dennis Pashkov' => 'd.pashkov@tap.company' }
    tapFlagsKit.homepage = 'https://github.com/Tap-Payments/TapFlagsKit'
    tapFlagsKit.source = { :git => 'https://github.com/Tap-Payments/TapFlagsKit.git', :tag => tapFlagsKit.version.to_s }
    tapFlagsKit.source_files = 'TapFlagsKit/Source/*.swift'
    tapFlagsKit.ios.resource_bundle = { 'Flags' => 'TapFlagsKit/Resources/Flags.xcassets' }
    tapFlagsKit.dependency 'TapAdditionsKit/Foundation/Bundle'
    
end
