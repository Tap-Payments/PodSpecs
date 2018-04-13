Pod::Spec.new do |tapLocalizationUI|
    
    tapLocalizationUI.platform = :ios
    tapLocalizationUI.ios.deployment_target = '8.0'
    tapLocalizationUI.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.1' }
    tapLocalizationUI.name = 'TapLocalization-UI'
    tapLocalizationUI.summary = 'View controller managing language selection.'
    tapLocalizationUI.requires_arc = true
    tapLocalizationUI.version = '1.1.7'
    tapLocalizationUI.license = { :type => 'MIT', :file => 'LICENSE' }
    tapLocalizationUI.author = { 'Dennis Pashkov' => 'd.pashkov@tap.company' }
    tapLocalizationUI.homepage = 'https://github.com/Tap-Payments/TapLocalization-UI'
    tapLocalizationUI.source = { :git => 'https://github.com/Tap-Payments/TapLocalization-UI.git', :tag => tapLocalizationUI.version.to_s }
    tapLocalizationUI.source_files = 'TapLocalization-UI/Source/*.swift'
    tapLocalizationUI.ios.resource_bundle = { 'TapLocalizationUIResources' => 'TapLocalization-UI/Resources/*.{xcassets,storyboard,xib}' }
    
    tapLocalizationUI.dependency 'TapAdditionsKit/Tap/ClassProtocol'
    tapLocalizationUI.dependency 'TapAdditionsKit/UIKit/UINavigationController'
    tapLocalizationUI.dependency 'TapAdditionsKit/UIKit/UIScreen'
    tapLocalizationUI.dependency 'TapBrandBookIOS/UIBarButtonItem'
    tapLocalizationUI.dependency 'TapBrandBookIOS/UINavigationBar'
    tapLocalizationUI.dependency 'TapFlagsKit'
    tapLocalizationUI.dependency 'TapFontsKit'
    tapLocalizationUI.dependency 'TapLocalization'
    tapLocalizationUI.dependency 'TapNibView'
    tapLocalizationUI.dependency 'TapSwiftFixes/Threading'
    tapLocalizationUI.dependency 'TapViewController'
    
end
