Pod::Spec.new do |segmentedControl|
    
    segmentedControl.platform = :ios
    segmentedControl.ios.deployment_target = '8.0'
    segmentedControl.name = 'TapSegmentedControl'
    segmentedControl.summary = 'Custom Android-style segmented control for iOS'
    segmentedControl.requires_arc = true
    segmentedControl.version = '1.4.3'
    segmentedControl.license = { :type => 'MIT', :file => 'LICENSE' }
    segmentedControl.author = { 'Dennis Pashkov' => 'd.pashkov@tap.company' }
    segmentedControl.homepage = 'https://github.com/Tap-Payments/SegmentedControl-iOS'
    segmentedControl.source = { :git => 'https://github.com/Tap-Payments/SegmentedControl-iOS.git', :tag => "#{segmentedControl.version}"}
    segmentedControl.frameworks = 'Foundation', 'UIKit'
    segmentedControl.source_files = 'SegmentedControl/Public Classes/*.{swift}', 'SegmentedControl/Internal Classes/*.{swift}'
    segmentedControl.resources = 'SegmentedControl/Resources/*.{xib}'
    
    segmentedControl.dependency 'SwiftFixes'
    segmentedControl.dependency 'TapAdditionsKit/CoreGraphics/CGFloat'
    segmentedControl.dependency 'TapAdditionsKit/CoreGraphics/CGSize'
    segmentedControl.dependency 'TapAdditionsKit/ObjectiveC/NSObject'
    segmentedControl.dependency 'TapAdditionsKit/UIKit/UIColor'
    segmentedControl.dependency 'TapAdditionsKit/UIKit/UIScrollView'
    segmentedControl.dependency 'TapAdditionsKit/UIKit/UIView'
    
end
