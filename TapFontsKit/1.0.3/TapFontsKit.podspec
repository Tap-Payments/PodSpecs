Pod::Spec.new do |tapFontsKit|
    
    tapFontsKit.platform = :ios
    tapFontsKit.ios.deployment_target = '8.0'
    tapFontsKit.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0' }
    tapFontsKit.name = 'TapFontsKit'
    tapFontsKit.summary = 'Kit with fonts used in Tap mobile apps.'
    tapFontsKit.requires_arc = true
    tapFontsKit.version = '1.0.3'
    tapFontsKit.license = { :type => 'MIT', :file => 'LICENSE' }
    tapFontsKit.author = { 'Dennis Pashkov' => 'd.pashkov@tap.company' }
    tapFontsKit.homepage = 'https://github.com/Tap-Payments/TapFontsKit'
    tapFontsKit.source = { :git => 'https://github.com/Tap-Payments/TapFontsKit.git', :tag => tapFontsKit.version.to_s }
    tapFontsKit.source_files = 'TapFontsKit/Source/*.swift'
    tapFontsKit.ios.resource_bundle = { 'Fonts' => 'TapFontsKit/Resources/*.ttf' }
    
    tapFontsKit.dependency 'SwiftFixes'
    tapFontsKit.dependency 'TapAdditionsKit/Foundation/Bundle'
    tapFontsKit.dependency 'TapLocalization'
    
end