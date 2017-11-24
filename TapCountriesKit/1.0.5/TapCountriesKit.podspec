Pod::Spec.new do |tapCountriesKit|
    
    tapCountriesKit.platform = :ios
    tapCountriesKit.ios.deployment_target = '8.0'
    tapCountriesKit.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0' }
    tapCountriesKit.name = 'TapCountriesKit'
    tapCountriesKit.summary = 'Kit with countries loaded from Firebase + View controller managing their selection.'
    tapCountriesKit.requires_arc = true
    tapCountriesKit.version = '1.0.5'
    tapCountriesKit.license = { :type => 'MIT', :file => 'LICENSE' }
    tapCountriesKit.author = { 'Dennis Pashkov' => 'd.pashkov@tap.company' }
    tapCountriesKit.homepage = 'https://github.com/Tap-Payments/TapCountriesKit'
    tapCountriesKit.source = { :git => 'https://github.com/Tap-Payments/TapCountriesKit.git', :tag => tapCountriesKit.version.to_s }
    tapCountriesKit.source_files = 'TapCountriesKit/Source/*.swift'
    tapCountriesKit.ios.resource_bundle = { 'Resources' => 'TapCountriesKit/Resources/*.{xcassets,storyboard}' }
    
    tapCountriesKit.dependency 'SwiftFixes'
    tapCountriesKit.dependency 'TapAdditionsKit/Foundation/Bundle'
    tapCountriesKit.dependency 'TapAdditionsKit/SwiftStandartLibrary/String'
    tapCountriesKit.dependency 'TapAdditionsKit/Tap/TypeAlias'
    tapCountriesKit.dependency 'TapAdditionsKit/UIKit/UIColor'
    tapCountriesKit.dependency 'TapAdditionsKit/UIKit/UINavigationController'
    tapCountriesKit.dependency 'TapApplication'
    tapCountriesKit.dependency 'TapDatabase'
    tapCountriesKit.dependency 'TapFlagsKit'
    tapCountriesKit.dependency 'TapFontsKit'
    tapCountriesKit.dependency 'TapGLKit'
    tapCountriesKit.dependency 'TapLocalization'
    tapCountriesKit.dependency 'TapViewController'
    tapCountriesKit.dependency 'TapVisualEffectView'
    
end
