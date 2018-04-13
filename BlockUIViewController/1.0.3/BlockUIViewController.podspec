Pod::Spec.new do |blockUIViewController|
    
    blockUIViewController.platform = :ios
    blockUIViewController.ios.deployment_target = '8.0'
    blockUIViewController.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.1' }
    blockUIViewController.name = 'BlockUIViewController'
    blockUIViewController.summary = 'Block UI View Controller.'
    blockUIViewController.requires_arc = true
    blockUIViewController.version = '1.0.3'
    blockUIViewController.license = { :type => 'MIT', :file => 'LICENSE' }
    blockUIViewController.author = { 'Dennis Pashkov' => 'd.pashkov@tap.company' }
    blockUIViewController.homepage = 'https://github.com/Tap-Payments/BlockUIViewController'
    blockUIViewController.source = { :git => 'https://github.com/Tap-Payments/BlockUIViewController.git', :tag => blockUIViewController.version.to_s }
    blockUIViewController.source_files = 'BlockUIViewController/Source/*.swift'
    blockUIViewController.ios.resource_bundle = { 'BlockUIViewControllerResources' => 'BlockUIViewController/Resources/*.{xib}' }
    
    blockUIViewController.dependency 'TapGLKit/TapActivityIndicatorView'
    blockUIViewController.dependency 'TapSwiftFixes/Threading'
    blockUIViewController.dependency 'TapViewController'
    
end
