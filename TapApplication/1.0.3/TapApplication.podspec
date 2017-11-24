Pod::Spec.new do |tapApplication|
    
    tapApplication.platform = :ios
    tapApplication.ios.deployment_target = '8.0'
    tapApplication.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0' }
    tapApplication.name = 'TapApplication'
    tapApplication.summary = 'Base Application interface.'
    tapApplication.requires_arc = true
    tapApplication.version = '1.0.3'
    tapApplication.license = { :type => 'MIT', :file => 'LICENSE' }
    tapApplication.author = { 'Dennis Pashkov' => 'd.pashkov@tap.company' }
    tapApplication.homepage = 'https://github.com/Tap-Payments/TapApplication-iOS'
    tapApplication.source = { :git => 'https://github.com/Tap-Payments/TapApplication-iOS.git', :tag => tapApplication.version.to_s }
    tapApplication.source_files = 'TapApplication/Source/*.swift'
    tapApplication.dependency 'SwiftFixes'
    tapApplication.dependency 'TapAdditionsKit/SwiftStandartLibrary/String'
    tapApplication.dependency 'TapAdditionsKit/Tap/TypeAlias'
    tapApplication.dependency 'TapAdditionsKit/UIKit/UIViewController'
    
end
