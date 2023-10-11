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

  s.subspec 'EPubFoundation' do |epubfoundation|
    epubfoundation.source_files = 'EPubFoundation/**/*.{c,h}', 'iOS/EPubFoundation/**/*.h'
    epubfoundation.public_header_files = 'EPubFoundation/publicHeaders/**/*.h'
    epubfoundation.libraries = 'xml2'
    epubfoundation.compiler_flags = '-DDEBUG'
  end

  s.subspec 'EPubReaderSDK' do |epubsdk|
    epubsdk.source_files = 'iOS/EPubReaderSDK/**/*.swift'

    epubsdk.dependency 'QBPopupMenu', '~> 0.1.0'
    epubsdk.dependency 'JTSImageViewController', '~> 0.1.0'
    epubsdk.dependency 'SVGKit', '~> 3.0.0'
    epubsdk.dependency 'SSZipArchive', '~> 2.3.0'
    epubsdk.dependency 'SwCrypt', '~> 5.1.3'
    epubsdk.dependency 'Utilities', '~> 4.0.1'

    epubsdk.resources = 'iOS/EPubReaderSDK/PackageResources/css',
                   'iOS/EPubReaderSDK/PackageResources/html',
                   'iOS/EPubReaderSDK/PackageResources/js',
                   'iOS/EPubReaderSDK/PackageResources/images'

    epubsdk.compiler_flags = '-DDEBUG'
  end
end
