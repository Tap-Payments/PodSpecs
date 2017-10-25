Pod::Spec.new do |nibView|
    
    nibView.platform = :ios
    nibView.ios.deployment_target = '8.0'
    nibView.name = 'TapNibView'
    nibView.summary = 'Base View That is loading from the nib.'
    nibView.requires_arc = true
    nibView.version = '1.1'
    nibView.license = { :type => 'MIT', :file => 'LICENSE' }
    nibView.author = { 'Dennis Pashkov' => 'd.pashkov@tap.company' }
    nibView.homepage = 'https://github.com/Tap-Payments/NibView'
    nibView.source = { :git => 'https://github.com/Tap-Payments/NibView.git', :tag => "#{nibView.version}"}
    nibView.source_files = 'NibView/Source/*.swift'
    
    nibView.dependency 'TapAdditionsKit/ObjectiveC/NSObject'
    nibView.dependency 'TapAdditionsKit/UIKit/UIView'
    
end
