Pod::Spec.new do |tapDatabase|
    
    tapDatabase.platform = :ios
    tapDatabase.ios.deployment_target = '8.0'
    tapDatabase.name = 'TapDatabase'
    tapDatabase.summary = 'Very simple and useful Firebase Database wrapper.'
    tapDatabase.requires_arc = true
    tapDatabase.version = '1.0.1'
    tapDatabase.license = { :type => 'MIT', :file => 'LICENSE' }
    tapDatabase.author = { 'Dennis Pashkov' => 'd.pashkov@tap.company' }
    tapDatabase.homepage = 'https://github.com/Tap-Payments/TapDatabase'
    tapDatabase.source = { :git => 'https://github.com/Tap-Payments/TapDatabase.git', :tag => "#{tapDatabase.version}"}
    tapDatabase.source_files = 'TapDatabase/Source/*.swift'
    tapDatabase.pod_target_xcconfig = {
        
        'OTHER_LDFLAGS' => '$(inherited) -framework "FirebaseCore" -framework "FirebaseDatabase"',
        'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
        'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}/FirebaseCore/Frameworks" "${PODS_ROOT}/FirebaseDatabase/Frameworks"'
    }
    
    tapDatabase.dependency 'Firebase/Database'
    tapDatabase.dependency 'TapAdditionsKit/SwiftStandartLibrary/Dictionary'
    
end

