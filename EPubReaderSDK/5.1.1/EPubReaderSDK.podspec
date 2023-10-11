Pod::Spec.new do |s|
  s.name = 'EPubReaderSDK'
  s.version = '5.1.1'
  s.summary = 'EPubReaderSDK'
  
  s.homepage         = 'https://github.mheducation.com/MHEducation/epub-reader-sdk-ios'
  s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
  s.author           = { 'Kiran Madhav' => 'kiran.madhav@mheducation.com' }

  s.ios.deployment_target = '11.0'
  
  # Specify the source and the files
  s.source = { :git => 'git@github.mheducation.com:MHEducation/epub-reader-sdk-ios.git', :tag => s.version.to_s }
  s.source_files = 'EPubFoundation/**/*.{c,h}', 'iOS/EPubReaderSDK/**/*.swift', 'iOS/EPubFoundation/**/*.h'
  
  # Specify the dependencies
  s.dependency 'QBPopupMenu', '~> 0.1.0'
  s.dependency 'JTSImageViewController', '~> 0.1.0'
  s.dependency 'SVGKit', '~> 3.0.0'
  s.dependency 'SSZipArchive', '~> 2.3.0'
  s.dependency 'SwCrypt', '~> 5.1.3'
  s.dependency 'Utilities', '~> 4.0.1'

  s.public_header_files = 'EPubFoundation/publicHeaders/**/*.h'
  
  s.resources = 'iOS/EPubReaderSDK/PackageResources/css',
               'iOS/EPubReaderSDK/PackageResources/html',
               'iOS/EPubReaderSDK/PackageResources/js',
               'iOS/EPubReaderSDK/PackageResources/images'

 EPubReaderSDKTests

  # Specify any additional settings
  s.compiler_flags = '-DDEBUG'
  s.libraries = 'xml2'
end
