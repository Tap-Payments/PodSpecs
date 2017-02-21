Pod::Spec.new do |tapGLKit|

    tapGLKit.platform = :ios
    tapGLKit.ios.deployment_target = '8.0'
    tapGLKit.name = "TapGLKit"
    tapGLKit.summary = "Kit with GL views"
    tapGLKit.requires_arc = true
    tapGLKit.version = "1.4.3"
    tapGLKit.license = { :type => "MIT", :file => "LICENSE" }
    tapGLKit.author = { "Dennis Pashkov" => "d.pashkov@tap.com.kw" }
    tapGLKit.homepage = "https://github.com/Tap-Payments/TapGLKit"
    tapGLKit.source = { :git => "https://github.com/Tap-Payments/TapGLKit.git", :tag => "#{tapGLKit.version}"}
    tapGLKit.frameworks = "GLKit", "OpenGLES", "CoreGraphics", "UIKit", "Foundation"
    tapGLKit.default_subspec = 'Core', 'AnimatedView', 'TapActivityIndicatorView', 'ArrowView', 'LinearGradientView', 'QuadGradientView'
    
    tapGLKit.subspec 'Core' do |core|
    
        core.source_files = "TapGLKit/Source/Core/*.{swift}", "TapGLKit/Source/Extensions/*.{swift}"
        core.dependency 'SwiftFixes'
    
    end

    tapGLKit.subspec 'AnimatedView' do |animatedView|

        animatedView.source_files = "TapGLKit/Source/AnimatedView/*.{swift}"
        animatedView.dependency 'TapGLKit/Core'

    end
    
    tapGLKit.subspec 'TapActivityIndicatorView' do |activityIndicator|
        
        activityIndicator.source_files = "TapGLKit/Source/TapActivityIndicatorView/*.{swift}"
        activityIndicator.resources = "TapGLKit/Shaders/TapActivityIndicatorView/*.{vsh,fsh}"
        activityIndicator.dependency 'TapGLKit/AnimatedView'
        
    end

    tapGLKit.subspec 'ArrowView' do |arrowView|

        arrowView.source_files = "TapGLKit/Source/ArrowView/*.{swift}"
        arrowView.resources = "TapGLKit/Shaders/ArrowView/*.{vsh,fsh}"
        arrowView.dependency 'TapGLKit/AnimatedView'

    end

    tapGLKit.subspec 'LinearGradientView' do |linearGradientView|

        linearGradientView.source_files = "TapGLKit/Source/LinearGradientView/*.{swift}"
        linearGradientView.resources = "TapGLKit/Shaders/LinearGradientView/*.{vsh,fsh}"
        linearGradientView.dependency 'TapGLKit/Core'

    end

    tapGLKit.subspec 'QuadGradientView' do |quadGradientView|
        
        quadGradientView.source_files = "TapGLKit/Source/QuadGradientView/*.{swift}"
        quadGradientView.resources = "TapGLKit/Shaders/QuadGradientView/*.{vsh,fsh}"
        quadGradientView.dependency 'TapGLKit/Core'
        
    end

end
