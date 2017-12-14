Pod::Spec.new do |tapBrandBook|
    
    tapBrandBook.platform = :ios
    tapBrandBook.ios.deployment_target = '8.0'
    tapBrandBook.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0' }
    tapBrandBook.name = 'TapBrandBookIOS'
    tapBrandBook.summary = 'BrandBook for iOS'
    tapBrandBook.requires_arc = true
    tapBrandBook.version = '1.0.6'
    tapBrandBook.license = { :type => 'MIT', :file => 'LICENSE' }
    tapBrandBook.author = { 'Dennis Pashkov' => 'd.pashkov@tap.company' }
    tapBrandBook.homepage = 'https://github.com/Tap-Payments/TapBrandBook-iOS'
    tapBrandBook.source = { :git => 'https://github.com/Tap-Payments/TapBrandBook-iOS.git', :tag => tapBrandBook.version.to_s }
    tapBrandBook.default_subspecs = 'Core', 'UIBarButtonItem', 'UIButton', 'UILabel', 'UINavigationBar', 'UITextField'
    
    tapBrandBook.subspec 'Core' do |core|
        
        core.dependency 'TapAdditionsKit/Tap/ClassProtocol'
        core.dependency 'TapAdditionsKit/UIKit/UIColor'
        
        core.source_files = 'TapBrandBookIOS/Source/Core/*.swift'
    
    end
    
    tapBrandBook.subspec 'ToastStyle' do |toastStyle|
    
        toastStyle.dependency 'TapBrandBookIOS/Core'
        toastStyle.dependency 'TapFontsKit'
        toastStyle.dependency 'Toast-Swift'
        
        toastStyle.source_files = 'TapBrandBookIOS/Source/ToastStyle/*.swift'
    
    end
    
    tapBrandBook.subspec 'UIBarButtonItem' do |uiBarButtonItem|
        
        uiBarButtonItem.dependency 'TapBrandBookIOS/Core'
        uiBarButtonItem.dependency 'TapFontsKit'
        
        uiBarButtonItem.source_files = 'TapBrandBookIOS/Source/UIBarButtonItem/*.swift'
    
    end
    
    tapBrandBook.subspec 'UIButton' do |uiButton|
    
        uiButton.dependency 'TapBrandBookIOS/Core'
        uiButton.dependency 'TapFontsKit'
        
        uiButton.source_files = 'TapBrandBookIOS/Source/UIButton/*.swift'
    
    end
    
    tapBrandBook.subspec 'UILabel' do |uiLabel|
        
        uiLabel.dependency 'TapBrandBookIOS/Core'
        uiLabel.dependency 'TapFontsKit'
        
        uiLabel.source_files = 'TapBrandBookIOS/Source/UILabel/*.swift'
        
    end
    
    tapBrandBook.subspec 'UINavigationBar' do |uiNavigationBar|
        
        uiNavigationBar.dependency 'TapBrandBookIOS/Core'
        uiNavigationBar.dependency 'TapFontsKit'
        
        uiNavigationBar.source_files = 'TapBrandBookIOS/Source/UINavigationBar/*.swift'
        
    end
    
    tapBrandBook.subspec 'UITextField' do |uiTextField|
        
        uiTextField.dependency 'TapBrandBookIOS/Core'
        uiTextField.dependency 'TapFontsKit'
        
        uiTextField.source_files = 'TapBrandBookIOS/Source/UITextField/*.swift'
        
    end
    
end
