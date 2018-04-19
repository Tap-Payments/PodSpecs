Pod::Spec.new do |segmentedControl|
    
    segmentedControl.platform = :ios
    segmentedControl.ios.deployment_target = '8.0'
    segmentedControl.name = 'TapSegmentedControl'
    segmentedControl.summary = 'Custom Android-style segmented control for iOS'
    segmentedControl.requires_arc = true
    segmentedControl.version = '1.6.6'
    segmentedControl.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.1' }
    segmentedControl.license = { :type => 'MIT', :file => 'LICENSE' }
    segmentedControl.author = { 'Dennis Pashkov' => 'd.pashkov@tap.company' }
    segmentedControl.homepage = 'https://github.com/Tap-Payments/SegmentedControl-iOS'
    segmentedControl.source = { :git => 'https://github.com/Tap-Payments/SegmentedControl-iOS.git', :tag => segmentedControl.version.to_s }
    segmentedControl.source_files = 'SegmentedControl/Public Classes/*.{swift}', 'SegmentedControl/Internal Classes/*.{swift}'
    segmentedControl.resources = 'SegmentedControl/Resources/*.{xib}'
    
    segmentedControl.dependency 'TapAdditionsKit/CoreGraphics/CGSize'
    segmentedControl.dependency 'TapAdditionsKit/ObjectiveC/NSObject'
    segmentedControl.dependency 'TapAdditionsKit/SwiftStandartLibrary/Array'
    segmentedControl.dependency 'TapAdditionsKit/SwiftStandartLibrary/Numeric'
    segmentedControl.dependency 'TapAdditionsKit/UIKit/UIColor'
    segmentedControl.dependency 'TapAdditionsKit/UIKit/UIScrollView'
    segmentedControl.dependency 'TapAdditionsKit/UIKit/UIView'
    segmentedControl.dependency 'TapNibView'
    
end