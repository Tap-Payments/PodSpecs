Pod::Spec.new do |tapAdditionsKit|
    
    tapAdditionsKit.platform = :ios
    tapAdditionsKit.ios.deployment_target = '8.0'
    tapAdditionsKit.name = 'TapAdditionsKit'
    tapAdditionsKit.summary = 'Useful additions for native iOS frameworks'
    tapAdditionsKit.requires_arc = true
    tapAdditionsKit.version = '1.0.18'
    tapAdditionsKit.license = { :type => 'MIT', :file => 'LICENSE' }
    tapAdditionsKit.author = { 'Dennis Pashkov' => 'd.pashkov@tap.company' }
    tapAdditionsKit.homepage = 'https://github.com/Tap-Payments/TapAdditionsKit-iOS'
    tapAdditionsKit.source = { :git => 'https://github.com/Tap-Payments/TapAdditionsKit-iOS.git', :tag => "#{tapAdditionsKit.version}"}
    tapAdditionsKit.default_subspecs = 'CoreGraphics', 'Foundation', 'ObjectiveC', 'QuartzCore', 'SwiftStandartLibrary', 'UIKit'
    
    tapAdditionsKit.subspec 'CoreGraphics' do |coreGraphics|
    
        coreGraphics.framework = 'CoreGraphics'
        
        coreGraphics.subspec 'CGFloat' do |cgFloat|
        
            cgFloat.source_files = 'TapAdditionsKit/CoreGraphics/CGFloat+Additions.swift'
        
        end
        
        coreGraphics.subspec 'CGPoint' do |cgPoint|
        
            cgPoint.framework = 'OpenGLES'
        
            cgPoint.source_files = 'TapAdditionsKit/CoreGraphics/CGPoint+Additions.swift'
        
        end
        
        coreGraphics.subspec 'CGRect' do |cgRect|
            
            cgRect.dependency 'TapAdditionsKit/CoreGraphics/CGPoint'
            cgRect.dependency 'TapAdditionsKit/CoreGraphics/CGSize'
            
            cgRect.source_files = 'TapAdditionsKit/CoreGraphics/CGRect+Additions.swift'
        
        end
        
        coreGraphics.subspec 'CGSize' do |cgSize|
        
            cgSize.framework = 'OpenGLES'
            
            cgSize.dependency 'TapAdditionsKit/CoreGraphics/CGFloat'
        
            cgSize.source_files = 'TapAdditionsKit/CoreGraphics/CGSize+Additions.swift'
        
        end
    
    end
    
    tapAdditionsKit.subspec 'Foundation' do |foundation|
        
        foundation.framework = 'Foundation'
        
        foundation.subspec 'DateFormatter' do |dateFormatter|
        
            dateFormatter.source_files = 'TapAdditionsKit/Foundation/DateFormatter+Additions.swift'
        
        end
        
        foundation.subspec 'NumberFormatter' do |numberFormatter|
        
            numberFormatter.source_files = 'TapAdditionsKit/Foundation/NumberFormatter+Additions.swift'
        
        end
    
    end
    
    tapAdditionsKit.subspec 'ObjectiveC' do |objectiveC|
    
        objectiveC.subspec 'NSObject' do |nsObject|
        
            nsObject.source_files = 'TapAdditionsKit/ObjectiveC/NSObject+Additions.swift'
        
        end
        
    end
    
    tapAdditionsKit.subspec 'QuartzCore' do |quartzCore|
        
        quartzCore.framework = 'QuartzCore'
        
        quartzCore.subspec 'CALayer' do |caLayer|
            
            caLayer.framework = 'QuartzCore'
            
            caLayer.source_files = 'TapAdditionsKit/QuartzCore/CALayer+Additions.swift'
            
        end
        
    end
    
    tapAdditionsKit.subspec 'SwiftStandartLibrary' do |swiftStandartLibrary|
        
        swiftStandartLibrary.subspec 'Array' do |array|
        
            array.dependency 'TapAdditionsKit/SwiftStandartLibrary/OptionSet'
            array.dependency 'TapAdditionsKit/SwiftStandartLibrary/String'
            
            array.framework = 'Foundation'
            
            array.source_files = 'TapAdditionsKit/SwiftStandartLibrary/Array+Additions.swift'
        
        end
        
        swiftStandartLibrary.subspec 'Bool' do |bool|
        
            bool.source_files = 'TapAdditionsKit/SwiftStandartLibrary/Bool+Additions.swift'
        
        end
        
        swiftStandartLibrary.subspec 'Comparable' do |comparable|
        
            comparable.source_files = 'TapAdditionsKit/SwiftStandartLibrary/Comparable+Additions.swift'
        
        end
        
        swiftStandartLibrary.subspec 'CountableClosedRange' do |countableClosedRange|
        
            countableClosedRange.source_files = 'TapAdditionsKit/SwiftStandartLibrary/CountableClosedRange+Additions.swift'
        
        end
        
        swiftStandartLibrary.subspec 'Dictionary' do |dictionary|
        
            dictionary.dependency 'TapAdditionsKit/SwiftStandartLibrary/OptionSet'
            dictionary.dependency 'TapAdditionsKit/SwiftStandartLibrary/String'
        
            dictionary.framework = 'Foundation'
        
            dictionary.source_files = 'TapAdditionsKit/SwiftStandartLibrary/Dictionary+Additions.swift'
        
        end
        
        swiftStandartLibrary.subspec 'Integer' do |integer|
        
            integer.source_files = 'TapAdditionsKit/SwiftStandartLibrary/Integer+Additions.swift'
        
        end
        
        swiftStandartLibrary.subspec 'OptionSet' do |optionSet|
        
            optionSet.source_files = 'TapAdditionsKit/SwiftStandartLibrary/OptionSet+Additions.swift'
         
        end
        
        swiftStandartLibrary.subspec 'Sequence' do |sequence|
        
            sequence.source_files = 'TapAdditionsKit/SwiftStandartLibrary/Sequence+Additions.swift'
        
        end
        
        swiftStandartLibrary.subspec 'String' do |string|
            
            string.dependency 'TapAdditionsKit/Foundation/NumberFormatter'
            
            string.frameworks = 'Foundation', 'UIKit'
            
            string.source_files = 'TapAdditionsKit/SwiftStandartLibrary/String+Additions.swift'
            
        end
        
        swiftStandartLibrary.subspec 'UInt8' do |uint8|
            
            uint8.source_files = 'TapAdditionsKit/SwiftStandartLibrary/UInt8+Additions.swift'
            
        end
        
    end
    
    tapAdditionsKit.subspec 'UIKit' do |uiKit|
    
        uiKit.framework = 'UIKit'
        
        uiKit.subspec 'UIColor' do |uiColor|
            
            uiColor.framework = 'OpenGLES'
            
            uiColor.dependency 'TapAdditionsKit/CoreGraphics/CGFloat'
            uiColor.dependency 'TapAdditionsKit/SwiftStandartLibrary/String'
            
            uiColor.source_files = 'TapAdditionsKit/UIKit/UIColor+Additions.swift'
            
        end
        
        uiKit.subspec 'UIDevice' do |uiDevice|
        
            uiDevice.framework = 'Foundation'
            
            uiDevice.source_files = 'TapAdditionsKit/UIKit/UIDevice+Additions.swift'
        
        end
        
        uiKit.subspec 'UIImage' do |uiImage|
          
            uiImage.frameworks = 'Accelerate', 'CoreGraphics', 'ImageIO', 'UIKit'
          
            uiImage.dependency 'TapAdditionsKit/CoreGraphics/CGSize'
            uiImage.dependency 'TapAdditionsKit/SwiftStandartLibrary/Sequence'
            uiImage.dependency 'TapAdditionsKit/UIKit/UIColor'
          
            uiImage.source_files = 'TapAdditionsKit/UIKit/UIImage+Additions.swift'
          
        end
        
        uiKit.subspec 'UIScreen' do |uiScreen|
            
            uiScreen.source_files = 'TapAdditionsKit/UIKit/UIScreen+Additions.swift'
            
        end
        
        uiKit.subspec 'UIScrollView' do |uiScrollView|
        
            uiScrollView.dependency 'TapAdditionsKit/SwiftStandartLibrary/Comparable'
        
            uiScrollView.source_files = 'TapAdditionsKit/UIKit/UIScrollView+Additions.swift'
        
        end
        
        uiKit.subspec 'UIView' do |uiView|
            
            uiView.frameworks = 'Foundation', 'UIKit'
            
            uiView.dependency 'TapAdditionsKit/QuartzCore/CALayer'
            uiView.dependency 'TapAdditionsKit/ObjectiveC/NSObject'
            uiView.dependency 'TapAdditionsKit/SwiftStandartLibrary/String'
            uiView.dependency 'TapAdditionsKit/UIKit/UIImage'
            uiView.dependency 'TapAdditionsKit/UIKit/UIScreen'
            
            uiView.source_files = 'TapAdditionsKit/UIKit/UIView+Additions.swift'
            
        end
        
    end
    
end
