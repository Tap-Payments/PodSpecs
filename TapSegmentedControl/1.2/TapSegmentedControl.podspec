Pod::Spec.new do |segmentedControl|

segmentedControl.platform = :ios
segmentedControl.ios.deployment_target = '8.0'
segmentedControl.name = "TapSegmentedControl"
segmentedControl.summary = "Custom Android-style segmented control for iOS"
segmentedControl.requires_arc = true
segmentedControl.version = "1.2"
segmentedControl.license = { :type => "MIT", :file => "LICENSE" }
segmentedControl.author = { "Dennis Pashkov" => "d.pashkov@tap.company" }
segmentedControl.homepage = "https://github.com/Tap-Payments/SegmentedControl-iOS"
segmentedControl.source = { :git => "https://github.com/Tap-Payments/SegmentedControl-iOS.git", :tag => "#{segmentedControl.version}"}
segmentedControl.frameworks = "Foundation", "UIKit"
segmentedControl.source_files = 'SegmentedControl/Extensions/*.{swift}', 'SegmentedControl/Public Classes/*.{swift}', 'SegmentedControl/Internal Classes/*.{swift}'
segmentedControl.resources = 'SegmentedControl/Resources/*.{xib}'

end
