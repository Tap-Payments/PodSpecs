Pod::Spec.new do |tapGLKit|

    tapGLKit.platform = :ios
    tapGLKit.ios.deployment_target = '8.0'
    tapGLKit.name = "TapGLKit"
    tapGLKit.summary = "Kit with GL views"
    tapGLKit.requires_arc = true
    tapGLKit.version = "1.2"
    tapGLKit.license = { :type => "MIT", :file => "LICENSE" }
    tapGLKit.author = { "Dennis Pashkov" => "d.pashkov@tap.com.kw" }
    tapGLKit.homepage = "https://github.com/Tap-Payments/TapGLKit"
    tapGLKit.source = { :git => "https://github.com/Tap-Payments/TapGLKit.git", :tag => "#{tapGLKit.version}"}
    tapGLKit.frameworks = "GLKit", "OpenGLES", "CoreGraphics", "UIKit", "Foundation"
    tapGLKit.default_subspec = 'Core', 'TapActivityIndicatorView', 'QuadGradientView'
    
    tapGLKit.subspec 'Core' do |core|
    
        core.source_files = "TapGLKit/Source/*.{swift}", "TapGLKit/Source/Extensions/*.{swift}"
    
    end
    
    tapGLKit.subspec 'TapActivityIndicatorView' do |activityIndicator|
        
        activityIndicator.source_files = "TapGLKit/Source/TapActivityIndicatorView/*.{swift}"
        activityIndicator.resources = "TapGLKit/Shaders/TapActivityIndicatorView/*.{vsh,fsh}"
        activityIndicator.dependency 'TapGLKit/Core'
        
    end
    
    tapGLKit.subspec 'QuadGradientView' do |gradientView|
        
        gradientView.source_files = "TapGLKit/Source/QuadGradientView/*.{swift}"
        gradientView.resources = "TapGLKit/Shaders/QuadGradientView/*.{vsh,fsh}"
        gradientView.dependency 'TapGLKit/Core'
        
    end

end
