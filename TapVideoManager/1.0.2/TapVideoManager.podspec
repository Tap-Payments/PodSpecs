Pod::Spec.new do |tapVideoManager|
    
    tapVideoManager.platform = :ios
    tapVideoManager.ios.deployment_target = '8.0'
    tapVideoManager.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0' }
    tapVideoManager.name = 'TapVideoManager'
    tapVideoManager.summary = 'Video Manager Interface + Video Player Controller'
    tapVideoManager.requires_arc = true
    tapVideoManager.version = '1.0.2'
    tapVideoManager.license = { :type => 'MIT', :file => 'LICENSE' }
    tapVideoManager.author = { 'Dennis Pashkov' => 'd.pashkov@tap.company' }
    tapVideoManager.homepage = 'https://github.com/Tap-Payments/TapVideoManager'
    tapVideoManager.source = { :git => 'https://github.com/Tap-Payments/TapVideoManager.git', :tag => tapVideoManager.version.to_s }
    tapVideoManager.source_files = 'TapVideoManager/Source/*.swift'
    tapVideoManager.ios.resource_bundle = { 'TapVideoManagerResources' => 'TapVideoManager/Resources/*.{storyboard,xcassets}' }
    
    tapVideoManager.dependency 'TapAdditionsKit/AVFoundation/AVPlayer'
    tapVideoManager.dependency 'TapAdditionsKit/Tap/ClassProtocol'
    tapVideoManager.dependency 'TapApplication'
    tapVideoManager.dependency 'TapGLKit/TapActivityIndicatorView'
    tapVideoManager.dependency 'TapViewController'
    
end
