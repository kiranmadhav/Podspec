Pod::Spec.new do |s|
  s.name = 'EPubReaderSDK'
  s.version = '5.1.1'
  s.summary = 'EPubReaderSDK'

  s.homepage         = 'https://github.mheducation.com/MHEducation/epub-reader-sdk-ios'
  s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
  s.author           = { 'Kiran Madhav' => 'kiran.madhav@mheducation.com' }

  s.ios.deployment_target = '14.0'

  s.source = { :git => 'git@github.mheducation.com:MHEducation/epub-reader-sdk-ios.git', :tag => s.version.to_s }

    s.public_header_files = 'EPubFoundation/publicHeaders/**/*.h'

    s.source_files = 'iOS/EPubReaderSDK/**/*.{swift,h}', 'EPubFoundation/**/*.{c,h}', 'iOS/EPubFoundation/**/*.h'

    s.dependency 'QBPopupMenu', '~> 0.1.0'
    s.dependency 'JTSImageViewController', '~> 0.1.0'
    s.dependency 'SVGKit', '~> 3.0.0'
    s.dependency 'SSZipArchive', '~> 2.3.0'
    s.dependency 'SwCrypt', '~> 5.1.3'
    s.dependency 'Utilities', '~> 4.0.1'

    s.resources = 'iOS/EPubReaderSDK/PackageResources/css',
                   'iOS/EPubReaderSDK/PackageResources/html',
                   'iOS/EPubReaderSDK/PackageResources/js',
                   'iOS/EPubReaderSDK/PackageResources/images'

    s.compiler_flags = '-DDEBUG'
    s.libraries = 'xml2'
    s.frameworks = 'SSZipArchive'

end
