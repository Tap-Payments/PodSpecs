Pod::Spec.new do |s|

    s.platform				= :ios
    s.ios.deployment_target	= '8.0'
	s.osx.deployment_target = '10.10'
    s.swift_version			= '4.2'
    s.name					= 'TapImageFilter'
    s.summary				= 'Image filters collection for iOS and OSX.'
    s.requires_arc			= true
    s.version				= '1.0'
    s.license				= { :type => 'MIT', :file => 'LICENSE' }
    s.author				= { 'Tap Payments' => 'hello@tap.company' }
    s.homepage				= 'https://github.com/Tap-Payments/TapImageFilter'
    s.source				= { :git => 'https://github.com/Tap-Payments/TapImageFilter.git', :tag => s.version.to_s }
    s.requires_arc			= true
	s.source_files			= 'Common/**/*.{swift}'
	
	s.dependency 'TapSwiftFixes/Threading'

end
