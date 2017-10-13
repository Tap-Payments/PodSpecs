Pod::Spec.new do |tapVisualEffectView|
    
    tapVisualEffectView.platform = :ios
    tapVisualEffectView.ios.deployment_target = '8.0'
    tapVisualEffectView.name = 'TapVisualEffectView'
    tapVisualEffectView.summary = 'UIVisualEffectView with support of Reduce Transparency Accessibility feature'
    tapVisualEffectView.requires_arc = true
    tapVisualEffectView.version = '1.3.1'
    tapVisualEffectView.license = { :type => 'MIT', :file => 'LICENSE' }
    tapVisualEffectView.author = { 'Dennis Pashkov' => 'd.pashkov@tap.company' }
    tapVisualEffectView.homepage = 'https://github.com/Tap-Payments/TapVisualEffectView'
    tapVisualEffectView.source = { :git => 'https://github.com/Tap-Payments/TapVisualEffectView.git', :tag => "#{tapVisualEffectView.version}"}
    tapVisualEffectView.source_files = 'TapVisualEffectView/Source/*.{swift}'
    tapVisualEffectView.resources = 'TapVisualEffectView/Resources/*.{xib}'
    
    tapVisualEffectView.dependency 'TapNibView'
    tapVisualEffectView.dependency 'TapAdditionsKit/ObjectiveC/NSObject'
    tapVisualEffectView.dependency 'TapAdditionsKit/UIKit/UIColor'
    tapVisualEffectView.dependency 'TapAdditionsKit/UIKit/UIDevice'
    tapVisualEffectView.dependency 'TapAdditionsKit/UIKit/UIView'

end
