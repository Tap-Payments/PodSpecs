Pod::Spec.new do |tapLogin|
    
    tapLogin.platform = :ios
    tapLogin.ios.deployment_target = '8.0'
    tapLogin.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0' }
    tapLogin.name = 'TapLogin'
    tapLogin.summary = 'Whole login flow for Tap iOS applications.'
    tapLogin.requires_arc = true
    tapLogin.version = '1.0.3'
    tapLogin.license = { :type => 'MIT', :file => 'LICENSE' }
    tapLogin.author = { 'Dennis Pashkov' => 'd.pashkov@tap.company' }
    tapLogin.homepage = 'https://github.com/Tap-Payments/TapLogin-iOS'
    tapLogin.source = { :git => 'https://github.com/Tap-Payments/TapLogin-iOS.git', :tag => tapLogin.version.to_s }
    tapLogin.source_files = 'TapLogin/Source/*.swift'
    tapLogin.ios.resource_bundle = { 'TapLoginResources' => 'TapLogin/Resources/*.{storyboard,xcassets}' }
    
    tapLogin.dependency 'BlockUIViewController'
    tapLogin.dependency 'EditableTextInsetsTextField'
    tapLogin.dependency 'TapAdditionsKit/SwiftStandartLibrary/CountableClosedRange'
    tapLogin.dependency 'TapAdditionsKit/UIKit/UIButton'
    tapLogin.dependency 'TapAdditionsKit/UIKit/UIEdgeInsets'
    tapLogin.dependency 'TapAdditionsKit/UIKit/UIView'
    tapLogin.dependency 'TapBrandBookIOS/ToastStyle'
    tapLogin.dependency 'TapBrandBookIOS/UIButton'
    tapLogin.dependency 'TapBrandBookIOS/UILabel'
    tapLogin.dependency 'TapCountriesKit-UI'
    tapLogin.dependency 'TapLocalization-UI'
    tapLogin.dependency 'TapMessaging'
    tapLogin.dependency 'TapVideoManager'
    tapLogin.dependency 'TapViewController'
    tapLogin.dependency 'Toast-Swift'
    
end
