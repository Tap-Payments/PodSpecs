Pod::Spec.new do |s|

s.platform = :ios
s.ios.deployment_target = '8.0'
s.name = "TapActivityIndicator"
s.summary = "Tap-Style loading activity indicator view."
s.requires_arc = true
s.version = "1.2"
s.license = { :type => "MIT", :file => "LICENSE" }
s.author = { "Dennis Pashkov" => "d.pashkov@tap.com.kw" }
s.homepage = "https://github.com/Tap-Payments/TapActivityIndicator"
s.source = { :git => "https://github.com/Tap-Payments/TapActivityIndicator.git", :tag => "#{s.version}"}
s.frameworks = "GLKit", "OpenGLES", "CoreGraphics", "UIKit", "Foundation"
s.source_files = "TapActivityIndicator/*.{swift}"
s.resources = "TapActivityIndicator/Shaders/*.{vsh,fsh}"

end
