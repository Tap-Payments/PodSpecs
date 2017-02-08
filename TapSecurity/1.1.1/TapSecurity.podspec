Pod::Spec.new do |s|

    s.platform = :ios
    s.ios.deployment_target = '8.0'
    s.name = "TapSecurity"
    s.summary = "Tap Security framework."
    s.requires_arc = true
    s.version = "1.1.1"
    s.license = { :type => "MIT", :file => "LICENSE" }
    s.author = { "Dennis Pashkov" => "d.pashkov@tap.com.kw" }
    s.homepage = "https://github.com/Tap-Payments/TapSecurity.git"
    s.source = { :git => "https://github.com/Tap-Payments/TapSecurity.git", :tag => "#{s.version}"}
    s.source_files = "TapSecurity/*.{h,swift}"
    s.frameworks = "Foundation", "TapSecurityImplementation"
    s.vendored_frameworks = "TapSecurity/Frameworks/TapSecurityImplementation.framework"

end
