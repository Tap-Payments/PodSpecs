Pod::Spec.new do |tapViewController|
    
    tapViewController.platform = :ios
    tapViewController.ios.deployment_target = '8.0'
    tapViewController.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.1' }
    tapViewController.name = 'TapViewController'
    tapViewController.summary = 'Set of Base View Controllers.'
    tapViewController.requires_arc = true
    tapViewController.version = '1.1.10'
    tapViewController.license = { :type => 'MIT', :file => 'LICENSE' }
    tapViewController.author = { 'Dennis Pashkov' => 'd.pashkov@tap.company' }
    tapViewController.homepage = 'https://github.com/Tap-Payments/TapViewController'
    tapViewController.source = { :git => 'https://github.com/Tap-Payments/TapViewController.git', :tag => tapViewController.version.to_s }
    tapViewController.source_files = 'TapViewController/Source/*.swift'
    tapViewController.ios.resource_bundle = { 'TapViewControllerResources' => 'TapViewController/Resources/*.{storyboard,xcassets}' }
    
    tapViewController.dependency 'TapAdditionsKit/Foundation/Bundle'
    tapViewController.dependency 'TapAdditionsKit/QuartzCore/CAKeyframeAnimation'
    tapViewController.dependency 'TapAdditionsKit/Tap/TypeAlias'
    tapViewController.dependency 'TapAdditionsKit/UIKit/UIButton'
    tapViewController.dependency 'TapAdditionsKit/UIKit/UIResponder'
    tapViewController.dependency 'TapAdditionsKit/UIKit/UIView'
    tapViewController.dependency 'TapApplication'
    tapViewController.dependency 'TapFontsKit'
    tapViewController.dependency 'TapLocalization/Notifications'
    tapViewController.dependency 'TapLogger'
    tapViewController.dependency 'TapSwiftFixes/Threading'
    tapViewController.dependency 'TapVisualEffectView'
    
end
