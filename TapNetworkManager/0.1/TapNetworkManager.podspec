Pod::Spec.new do |tapNetworkManager|
    
    tapNetworkManager.platform = :ios
    tapNetworkManager.ios.deployment_target = '8.0'
    tapNetworkManager.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0' }
    tapNetworkManager.name = 'TapNetworkManager'
    tapNetworkManager.summary = 'Lightweight network manager for iOS.'
    tapNetworkManager.requires_arc = true
    tapNetworkManager.version = '0.1'
    tapNetworkManager.license = { :type => 'MIT', :file => 'LICENSE' }
    tapNetworkManager.author = { 'Dennis Pashkov' => 'd.pashkov@tap.company' }
    tapNetworkManager.homepage = 'https://github.com/Tap-Payments/TapNetworkManager-iOS'
    tapNetworkManager.source = { :git => 'https://github.com/Tap-Payments/TapNetworkManager-iOS.git', :tag => tapNetworkManager.version.to_s }
    tapNetworkManager.default_subspecs = 'Core'
    
    tapNetworkManager.subspec 'Core' do |core|
    
        core.source_files = 'TapNetworkManager/Source/Core/*.swift'
    
    end
end