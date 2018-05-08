Pod::Spec.new do |spec|
    
    spec.platform = :ios
    spec.ios.deployment_target = '8.0'
    spec.name                  = 'TapSwiftyCardIO'
    spec.summary               = 'Credit card scanning for mobile apps. Wrapper around original CardIO library to bring easy integration into Swift projects.'
    spec.static_framework      = true
    spec.requires_arc          = true
    spec.version               = '5.4.1'
    spec.license               = { :type => 'MIT', :file => 'LICENSE' }
    spec.authors               = { 'Tap Payments' => 'hello@tap.company', 'CardIO' => 'support@paypal.com' }
    spec.homepage              = 'https://github.com/Tap-Payments/TapSwiftyCardIO'
    spec.source                = { :git => 'https://github.com/Tap-Payments/TapSwiftyCardIO.git', :tag => spec.version.to_s }
    spec.preserve_paths        = 'TapSwiftyCardIO/CardIO/LICENSE.md'
    spec.source_files          = 'TapSwiftyCardIO/**/*.h'
    spec.frameworks            = 'Accelerate', 'AVFoundation', 'AudioToolbox', 'CoreGraphics', 'CoreMedia', 'CoreVideo', 'MobileCoreServices', 'OpenGLES', 'QuartzCore', 'Security', 'UIKit'
    spec.libraries             = 'c++'
    spec.vendored_libraries    = 'TapSwiftyCardIO/**/*.a'
    
end
