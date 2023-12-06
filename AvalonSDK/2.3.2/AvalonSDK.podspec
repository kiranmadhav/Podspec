Pod::Spec.new do |s|
s.name = 'AvalonSDK'
s.version = '2.3.2'
s.summary = 'AvalonSDK'

s.homepage         = 'https://github.mheducation.com/MHEducation/avalon-delivery-ios'
s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
s.author           = { 'Kiran Madhav' => 'kiran.madhav@mheducation.com' }

s.ios.deployment_target = '14.0'

s.source = { :git => 'git@github.mheducation.com:MHEducation/avalon-delivery-ios.git', :tag => s.version.to_s }

s.source_files =  'AvalonSDK/**/*.{swift,h}'
#    s.preserve_paths = 'AvalonSDK/Info.plist',
#                        'AvalonSDK/Shared/**/*'

s.dependency 'StudyWiseKit', '~> 4.4.2'
s.dependency 'Utilities', '~> 4.0.2'
s.dependency 'Alamofire', '~> 4.9.1'
s.dependency 'EPubReaderSDK', '~> 5.1.2'

s.resources = 'Tutorial/BundledFiles', 'Shared/Javascript/calculon.mobile.js'

s.exclude_files = 'AvalonSDK/Info.plist', 'Shared/Javascript/package.json'

s.compiler_flags = '-DDEBUG'

s.framework = ['StudyWiseKit', 'Utilities', 'Alamofire', 'EPubReaderSDK']
end
