Pod::Spec.new do |s|
  s.name = 'EPubReaderSDK'
  s.version = '5.1.1'
  s.summary = 'EPubReaderSDK'

  s.ios.deployment_target = '14.0'
  
  # Specify the source and the files
  s.source = { :git => 'git@github.mheducation.com:MHEducation/EPubReaderSDK.git', => s.version.to_s }
  s.source_files = 'EPubReaderSDK/**/*.swift'
  
  # Specify the dependencies
  s.dependency 'QBPopupMenu', '~> 0.1.0'
  s.dependency 'JTSImageViewController', '~> 0.1.0'
  s.dependency 'SVGKit', '~> 3.0.0'
  s.dependency 'SSZipArchive', '~> 2.3.0'
  s.dependency 'SwCrypt', '~> 5.1.3'
  s.dependency 'Utilities', '~> 4.0.1'

  # Specify the public header files
  
  s.public_header_files = 'EPubFoundation/publicHeaders/**/*.h'
  
  s.resources = 'iOS/EPubReaderSDK/PackageResources/css',
               'iOS/EPubReaderSDK/PackageResources/html',
               'iOS/EPubReaderSDK/PackageResources/js',
               'iOS/EPubReaderSDK/PackageResources/images'

  # Specify the test target(s)
  s.test_spec 'Tests' do |test_spec|
    test_spec.source_files = 'iOS/EPubFoundationTests/**/*.swift', 'iOS/EPubReaderSDKTests/**/*.swift'
    test_spec.dependency 'EPubFoundation'
    test_spec.dependency 'EPubReaderSDK'
  end

  # Specify any additional settings
  s.compiler_flags = '-DDEBUG'
  s.libraries = 'xml2'
end
