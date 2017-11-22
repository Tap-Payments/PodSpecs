Pod::Spec.new do |s|

    s.platform = :ios
    s.ios.deployment_target = '8.0'
    s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0' }
    s.name = 'SwiftFixes'
    s.summary = 'Useful additions that are missing in Swift.'
    s.requires_arc = true
    s.version = '1.4.4'
    s.license = { :type => 'MIT', :file => 'LICENSE' }
    s.author = { 'Dennis Pashkov' => 'd.pashkov@tap.company' }
    s.homepage = 'https://github.com/Tap-Payments/SwiftFixes'
    s.source = { :git => 'https://github.com/Tap-Payments/SwiftFixes.git', :tag => s.version.to_s }
    s.source_files = 'SwiftFixes/Source/*.{h,m,swift}'
    s.requires_arc = true

end
