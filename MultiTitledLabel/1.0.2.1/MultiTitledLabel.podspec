Pod::Spec.new do |mtlabel|
    
    mtlabel.platform = :ios
    mtlabel.ios.deployment_target = '8.0'
    mtlabel.name = "MultiTitledLabel"
    mtlabel.summary = "Control to display title in segmented environment."
    mtlabel.requires_arc = true
    mtlabel.version = "1.0.2.1"
    mtlabel.license = { :type => "MIT", :file => "LICENSE" }
    mtlabel.author = { "Dennis Pashkov" => "d.pashkov@tap.company" }
    mtlabel.homepage = "https://github.com/Tap-Payments/MultiTitledLabel"
    mtlabel.source = { :git => "https://github.com/Tap-Payments/MultiTitledLabel.git", :tag => "#{mtlabel.version}"}
    mtlabel.frameworks = "Foundation", "UIKit"
    mtlabel.source_files = 'MultiTitledLabel/Public Classes/*.{swift}', 'MultiTitledLabel/Internal Classes/*.{swift}'
    mtlabel.resources = 'MultiTitledLabel/Resources/*.{xib}'
    
    mtlabel.dependency 'TapAdditionsKit/ObjectiveC/NSObject'
    mtlabel.dependency 'TapAdditionsKit/UIKit/UIView'
    
end
