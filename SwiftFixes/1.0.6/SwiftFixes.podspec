Pod::Spec.new do |s|

    s.platform = :ios
    s.ios.deployment_target = '8.0'
    s.name = "SwiftFixes"
    s.summary = "Useful additions that are missing in Swift."
    s.requires_arc = true
    s.version = "1.0.6"
    s.license = { :type => "MIT", :file => "LICENSE" }
    s.author = { "Dennis Pashkov" => "d.pashkov@tap.com.kw" }
    s.homepage = "https://github.com/Tap-Payments/SwiftFixes.git"
    s.source = { :git => "https://github.com/Tap-Payments/SwiftFixes.git", :tag => "#{s.version}"}
    s.source_files = "SwiftFixes/*.{h, m, swift}"
    s.frameworks = "CoreGraphics", "UIKit", "Foundation"

end
