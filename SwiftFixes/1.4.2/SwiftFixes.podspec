Pod::Spec.new do |s|

    s.platform = :ios
    s.ios.deployment_target = '8.0'
    s.name = 'SwiftFixes'
    s.summary = 'Useful additions that are missing in Swift.'
    s.requires_arc = true
    s.version = '1.4.2'
    s.license = { :type => 'MIT', :file => 'LICENSE' }
    s.author = { 'Dennis Pashkov' => 'd.pashkov@tap.company' }
    s.homepage = 'https://github.com/Tap-Payments/SwiftFixes'
    s.source = { :git => 'https://github.com/Tap-Payments/SwiftFixes.git', :tag => "#{s.version}"}
    s.source_files = 'SwiftFixes/*.{h,m,swift}'
    s.frameworks = 'CoreGraphics', 'Foundation', 'UIKit'
    s.requires_arc = true
    
    s.dependency 'TapAdditionsKit/SwiftStandartLibrary/Comparable'

end
