Pod::Spec.new do |spec|
    
    spec.platform = :ios
    spec.ios.deployment_target = '8.0'
    spec.name                  = 'CardIODynamic'
    spec.summary               = 'Credit card scanning for mobile apps. Wrapper around original CardIO library to bring easy integration into Swift projects.'
    spec.requires_arc          = true
    spec.version               = '5.4.1'
    spec.license               = { :type => 'MIT', :file => 'LICENSE' }
    spec.authors               = { 'Tap Payments' => 'hello@tap.company', 'CardIO' => 'support@paypal.com' }
    spec.homepage              = 'https://github.com/Tap-Payments/CardIODynamic-iOS'
    spec.source                = { :git => 'https://github.com/Tap-Payments/CardIODynamic-iOS.git', :tag => spec.version.to_s }
    spec.preserve_paths        = 'Carthage/Build/iOS/LICENSE.md'
    spec.source_files          = 'CardIODynamic/CardIODynamic.h'
    spec.vendored_framework    = 'Carthage/Build/iOS/CardIO.framework'
    
end
