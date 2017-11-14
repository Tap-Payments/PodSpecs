Pod::Spec.new do |tapDatabase|
    
    tapDatabase.platform = :ios
    tapDatabase.ios.deployment_target = '8.0'
    tapDatabase.name = 'TapDatabase'
    tapDatabase.summary = 'Very simple and useful Firebase Database wrapper.'
    tapDatabase.requires_arc = true
    tapDatabase.version = '1.0.3'
    tapDatabase.license = { :type => 'MIT', :file => 'LICENSE' }
    tapDatabase.author = { 'Dennis Pashkov' => 'd.pashkov@tap.company' }
    tapDatabase.homepage = 'https://github.com/Tap-Payments/TapDatabase'
    tapDatabase.source = { :git => 'https://github.com/Tap-Payments/TapDatabase.git', :tag => "#{tapDatabase.version}" }
    tapDatabase.source_files = 'TapDatabase/Source/*.swift'
    
    tapDatabase.dependency 'FirebaseCommunity/Database'
    tapDatabase.dependency 'TapAdditionsKit/SwiftStandartLibrary/Dictionary'
    
end
