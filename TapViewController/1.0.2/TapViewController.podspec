Pod::Spec.new do |tapViewController|
    
    tapViewController.platform = :ios
    tapViewController.ios.deployment_target = '8.0'
    tapViewController.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0' }
    tapViewController.name = 'TapViewController'
    tapViewController.summary = 'Set of Base View Controllers.'
    tapViewController.requires_arc = true
    tapViewController.version = '1.0.2'
    tapViewController.license = { :type => 'MIT', :file => 'LICENSE' }
    tapViewController.author = { 'Dennis Pashkov' => 'd.pashkov@tap.company' }
    tapViewController.homepage = 'https://github.com/Tap-Payments/TapViewController'
    tapViewController.source = { :git => 'https://github.com/Tap-Payments/TapViewController.git', :tag => "#{tapViewController.version}"}
    tapViewController.source_files = 'TapViewController/Source/*.swift'
    
    tapViewController.dependency 'TapAdditionsKit/UIKit/UIView'
    tapViewController.dependency 'TapApplication'
    tapViewController.dependency 'TapLocalization'
    tapViewController.dependency 'TapLogger'
    
end
