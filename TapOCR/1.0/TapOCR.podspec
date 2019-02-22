Pod::Spec.new do |ocr|

  ocr.name					= 'TapOCR'
  ocr.version				= '1.0'
  ocr.summary				= 'OCR framework'
  ocr.description			= 'OCR for iOS 8+'
  ocr.homepage				= 'https://github.com/Tap-Payments/TapOCR-iOS'
  ocr.license				= { :type => 'MIT', :file => 'LICENSE' }
  ocr.author				= { 'Tap Payments' => 'hello@tap.company' }
  ocr.platform				= :ios
  ocr.ios.deployment_target	= '8.0'
  ocr.swift_version			= '4.2'
  ocr.source				= { :git => 'https://github.com/Tap-Payments/TapOCR-iOS.git', :tag => ocr.version.to_s }
  ocr.source_files			= 'TapOCR/Source/**/*.{swift}'
  ocr.requires_arc			= true

end
