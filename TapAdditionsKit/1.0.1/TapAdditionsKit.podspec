Pod::Spec.new do |tapAdditionsKit|
    
    tapAdditionsKit.platform = :ios
    tapAdditionsKit.ios.deployment_target = '8.0'
    tapAdditionsKit.name = 'TapAdditionsKit'
    tapAdditionsKit.summary = 'Useful additions for native iOS frameworks'
    tapAdditionsKit.requires_arc = true
    tapAdditionsKit.version = '1.0.1'
    tapAdditionsKit.license = { :type => 'MIT', :file => 'LICENSE' }
    tapAdditionsKit.author = { 'Dennis Pashkov' => 'd.pashkov@tap.company' }
    tapAdditionsKit.homepage = 'https://github.com/Tap-Payments/TapAdditionsKit-iOS'
    tapAdditionsKit.source = { :git => 'https://github.com/Tap-Payments/TapAdditionsKit-iOS.git', :tag => "#{tapAdditionsKit.version}"}
    tapAdditionsKit.default_subspecs = 'Foundation', 'SwiftStandartLibrary', 'UIKit'
    
    tapAdditionsKit.subspec 'Foundation' do |foundation|
        
        foundation.framework = 'Foundation'
        
        foundation.subspec 'NumberFormatter' do |numberFormatter|
        
            numberFormatter.source_files = 'TapAdditionsKit/Foundation/NumberFormatter+Additions.swift'
        
        end
    
    end
    
    tapAdditionsKit.subspec 'SwiftStandartLibrary' do |swiftStandartLibrary|
        
        swiftStandartLibrary.subspec 'String' do |string|
            
            string.dependency 'TapAdditionsKit/Foundation/NumberFormatter'
            
            string.framework = 'Foundation'
            
            string.source_files = 'TapAdditionsKit/SwiftStandartLibrary/String+Additions.swift'
            
        end
        
    end
    
    tapAdditionsKit.subspec 'UIKit' do |uiKit|
    
        uiKit.framework = 'UIKit'
        
        uiKit.subspec 'UIColor' do |uiColor|
            
            uiColor.dependency 'TapAdditionsKit/SwiftStandartLibrary/String'
            
            uiColor.source_files = 'TapAdditionsKit/UIKit/UIColor+Additions.swift'
            
        end
        
    end
    
end
