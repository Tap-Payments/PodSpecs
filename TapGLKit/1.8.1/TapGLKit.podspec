Pod::Spec.new do |tapGLKit|
    
    tapGLKit.platform = :ios
    tapGLKit.ios.deployment_target = '8.0'
    tapGLKit.name = 'TapGLKit'
    tapGLKit.summary = 'Kit with GL views'
    tapGLKit.requires_arc = true
    tapGLKit.version = '1.8.1'
    tapGLKit.license = { :type => 'MIT', :file => 'LICENSE' }
    tapGLKit.author = { 'Dennis Pashkov' => 'd.pashkov@tap.company' }
    tapGLKit.homepage = 'https://github.com/Tap-Payments/TapGLKit'
    tapGLKit.source = { :git => 'https://github.com/Tap-Payments/TapGLKit.git', :tag => "#{tapGLKit.version}"}
    tapGLKit.frameworks = 'CoreGraphics', 'Foundation', 'GLKit', 'OpenGLES', 'UIKit'
    tapGLKit.default_subspec = 'Core', 'AnimatedView', 'TapActivityIndicatorView', 'ArrowView', 'LinearGradientView', 'QuadGradientView'
    
    tapGLKit.subspec 'Core' do |core|
        
        core.dependency 'SwiftFixes'
        core.dependency 'TapAdditionsKit/CoreGraphics/CGPoint'
        core.dependency 'TapAdditionsKit/CoreGraphics/CGSize'
        core.dependency 'TapAdditionsKit/SwiftStandartLibrary/String'
        core.dependency 'TapAdditionsKit/UIKit/UIColor'
        core.dependency 'TapAdditionsKit/UIKit/UIView'
        
        core.source_files = 'TapGLKit/Source/Core/*.{swift}'
        
    end
    
    tapGLKit.subspec 'AnimatedView' do |animatedView|
        
        animatedView.source_files = 'TapGLKit/Source/AnimatedView/*.{swift}'
        animatedView.dependency 'TapGLKit/Core'
        
    end
    
    tapGLKit.subspec 'TapActivityIndicatorView' do |activityIndicator|
        
        activityIndicator.source_files = 'TapGLKit/Source/TapActivityIndicatorView/*.{swift}'
        activityIndicator.dependency 'TapGLKit/AnimatedView'
        
    end
    
    tapGLKit.subspec 'ArrowView' do |arrowView|
        
        arrowView.source_files = 'TapGLKit/Source/ArrowView/*.{swift}'
        arrowView.dependency 'TapGLKit/AnimatedView'
        
    end
    
    tapGLKit.subspec 'LinearGradientView' do |linearGradientView|
        
        linearGradientView.source_files = 'TapGLKit/Source/LinearGradientView/*.{swift}'
        linearGradientView.dependency 'TapGLKit/Core'
        
    end
    
    tapGLKit.subspec 'QuadGradientView' do |quadGradientView|
        
        quadGradientView.source_files = 'TapGLKit/Source/QuadGradientView/*.{swift}'
        quadGradientView.dependency 'TapGLKit/Core'
        
    end
    
end
