Pod::Spec.new do |blockUIViewController|
    
    blockUIViewController.platform = :ios
    blockUIViewController.ios.deployment_target = '8.0'
    blockUIViewController.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0' }
    blockUIViewController.name = 'BlockUIViewController'
    blockUIViewController.summary = 'Block UI View Controller.'
    blockUIViewController.requires_arc = true
    blockUIViewController.version = '1.0'
    blockUIViewController.license = { :type => 'MIT', :file => 'LICENSE' }
    blockUIViewController.author = { 'Dennis Pashkov' => 'd.pashkov@tap.company' }
    blockUIViewController.homepage = 'https://github.com/Tap-Payments/BlockUIViewController'
    blockUIViewController.source = { :git => 'https://github.com/Tap-Payments/BlockUIViewController.git', :tag => blockUIViewController.version.to_s }
    blockUIViewController.source_files = 'BlockUIViewController/Source/*.swift'
    
    blockUIViewController.dependency 'TapGLKit/TapActivityIndicatorView'
    blockUIViewController.dependency 'TapViewController'
    
end
