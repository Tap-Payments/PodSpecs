Pod::Spec.new do |tapCountriesKit|
    
    tapCountriesKit.platform = :ios
    tapCountriesKit.ios.deployment_target = '8.0'
    tapCountriesKit.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0' }
    tapCountriesKit.name = 'TapCountriesKit'
    tapCountriesKit.summary = 'Kit with countries loaded from Firebase.'
    tapCountriesKit.requires_arc = true
    tapCountriesKit.version = '1.1'
    tapCountriesKit.license = { :type => 'MIT', :file => 'LICENSE' }
    tapCountriesKit.author = { 'Dennis Pashkov' => 'd.pashkov@tap.company' }
    tapCountriesKit.homepage = 'https://github.com/Tap-Payments/TapCountriesKit'
    tapCountriesKit.source = { :git => 'https://github.com/Tap-Payments/TapCountriesKit.git', :tag => tapCountriesKit.version.to_s }
    tapCountriesKit.source_files = 'TapCountriesKit/Source/*.swift'
    
    tapCountriesKit.dependency 'TapDatabase'
    tapCountriesKit.dependency 'TapFlagsKit'
    tapCountriesKit.dependency 'TapLocalization'
    
end
