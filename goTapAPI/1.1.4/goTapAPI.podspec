Pod::Spec.new do |s|

  s.name                  = "goTapAPI"
  s.version               = "1.1.4"
  s.summary               = "goTapAPI"
  s.description           = "API Client for goTap"
  s.homepage              = "https://github.com/Tap-Payments/goTapAPI_iOS"
  s.author                = { "Dennis Pashkov" => "d.pashkov@tap.com.kw" }
  s.license               = { :type => "MIT", :file => "LICENSE" }
  s.platform              = :ios
  s.platform              = :ios, "8.0"
  s.ios.deployment_target = "8.0"
  s.requires_arc          = true
  s.source                = { :git => "https://github.com/Tap-Payments/goTapAPI_iOS.git", :tag => "#{s.version}" }
  s.source_files          = "goTapAPI/**/*"
  s.exclude_files         = "goTapAPI/goTapAPI/*"
  s.public_header_files   = "goTapAPI/goTapAPI.h"
  s.frameworks            = "Foundation", "UIKit", "CFNetwork", "AddressBook"
  s.dependency 'AFNetworking'
  s.dependency 'HCYoutubeParser'
  s.dependency 'SDWebImage' , '~> 3.x'
  s.dependency 'SwiftFixes'

end
