Pod::Spec.new do |s|

  s.name                  = 'goTapAPI'
  s.version               = '1.4.42'
  s.summary               = 'goTapAPI'
  s.description           = 'API Client for goTap'
  s.homepage              = 'https://github.com/Tap-Payments/goTapAPI_iOS'
  s.author                = { 'Dennis Pashkov' => 'd.pashkov@tap.company' }
  s.license               = { :type => 'MIT', :file => 'LICENSE' }
  s.platform              = :ios
  s.ios.deployment_target = '9.0'
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0' }
  s.requires_arc          = true
  s.source                = { :git => 'https://github.com/Tap-Payments/goTapAPI_iOS.git', :tag => s.version.to_s }
  s.source_files          = 'goTapAPI/**/*.{swift}', 'Frameworks/**/*'
  s.exclude_files         = 'goTapAPI/goTapAPI/*'
  
  s.dependency 'SDWebImage' , '~> 3.x'
  s.dependency 'SwiftFixes'
  s.dependency 'TapAdditionsKit/Contacts/CNInstantMessageAddress'
  s.dependency 'TapAdditionsKit/Contacts/CNPostalAddress'
  s.dependency 'TapAdditionsKit/Contacts/CNSocialProfile'
  s.dependency 'TapAdditionsKit/Foundation/URLSession'
  s.dependency 'TapAdditionsKit/ObjectiveC/NSObject'
  s.dependency 'TapAdditionsKit/SwiftStandartLibrary/String'
  s.dependency 'TapNetworkManager/Core'
  s.dependency 'TapNetworkManager/Reachability'

end
