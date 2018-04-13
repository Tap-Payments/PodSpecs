Pod::Spec.new do |tapCountriesKitUI|
    
    tapCountriesKitUI.platform = :ios
    tapCountriesKitUI.ios.deployment_target = '8.0'
    tapCountriesKitUI.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.1' }
    tapCountriesKitUI.name = 'TapCountriesKit-UI'
    tapCountriesKitUI.summary = 'View controller managing countries selection.'
    tapCountriesKitUI.requires_arc = true
    tapCountriesKitUI.version = '1.0.3'
    tapCountriesKitUI.license = { :type => 'MIT', :file => 'LICENSE' }
    tapCountriesKitUI.author = { 'Dennis Pashkov' => 'd.pashkov@tap.company' }
    tapCountriesKitUI.homepage = 'https://github.com/Tap-Payments/TapCountriesKit-UI'
    tapCountriesKitUI.source = { :git => 'https://github.com/Tap-Payments/TapCountriesKit-UI.git', :tag => tapCountriesKitUI.version.to_s }
    tapCountriesKitUI.source_files = 'TapCountriesKit-UI/Source/*.swift'
    tapCountriesKitUI.ios.resource_bundle = { 'TapCountriesKitUIResources' => 'TapCountriesKit-UI/Resources/*.{xcassets,storyboard}' }
    
    tapCountriesKitUI.dependency 'TapAdditionsKit/UIKit/UIEdgeInsets'
    tapCountriesKitUI.dependency 'TapAdditionsKit/UIKit/UINavigationController'
    tapCountriesKitUI.dependency 'TapApplication'
    tapCountriesKitUI.dependency 'TapBrandBookIOS/UIBarButtonItem'
    tapCountriesKitUI.dependency 'TapBrandBookIOS/UINavigationBar'
    tapCountriesKitUI.dependency 'TapBrandBookIOS/UITextField'
    tapCountriesKitUI.dependency 'TapCountriesKit'
    tapCountriesKitUI.dependency 'TapGLKit/TapActivityIndicatorView'
    tapCountriesKitUI.dependency 'TapSwiftFixes/Appearance'
    tapCountriesKitUI.dependency 'TapSwiftFixes/Threading'
    tapCountriesKitUI.dependency 'TapViewController'
    tapCountriesKitUI.dependency 'TapVisualEffectView'
    
end
