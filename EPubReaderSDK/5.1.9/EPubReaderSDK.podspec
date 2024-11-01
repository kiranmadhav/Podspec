Pod::Spec.new do |s|
  s.name = 'EPubReaderSDK'
  s.version = '5.1.9'
  s.summary = 'EPubReaderSDK'

  s.homepage         = 'https://github.mheducation.com/MHEducation/epub-reader-sdk-ios'
  s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
  s.author           = { 'Kiran Madhav' => 'kiran.madhav@mheducation.com' }

  s.ios.deployment_target = '13.0'

  s.source = { :git => 'git@github.mheducation.com:MHEducation/epub-reader-sdk-ios.git', :tag => s.version.to_s }

  s.public_header_files = 'EPubFoundation/publicHeaders/**/*.h'

    s.source_files =  'iOS/EPubReaderSDK/**/*.{swift,h}',
                      'iOS/EPubFoundation/**/*.h',
                      'EPubFoundation/src/**/*.{c,h}',
                      'EPubFoundation/publicHeaders/**/*.{c,h}',
                      'EPubFoundation/privateHeaders/**/*.{c,h}',
                      'EPubFoundation/vendor/utf8proc.h',
                      'EPubFoundation/vendor/sha1.h',
                      'EPubFoundation/vendor/uthash.h',
                      'EPubFoundation/vendor/utf8proc.c',
                      'EPubFoundation/vendor/sha1.c'

    s.preserve_paths = 'EPubFoundation/vendor/utf8proc_data.c'

    s.dependency 'QBPopupMenu', '~> 0.1.0'
    s.dependency 'JTSImageViewController', '~> 0.1.0'
    s.dependency 'SVGKit', '~> 3.0.0'
    s.dependency 'SSZipArchive', '~> 2.3.0'
    s.dependency 'SwCrypt', '~> 5.1.3'
    s.dependency 'Utilities', '~> 4.0.2'
    s.dependency 'Alamofire', '~> 4.9.1'

    s.resources = 'iOS/EPubReaderSDK/PackageResources/css',
                   'iOS/EPubReaderSDK/PackageResources/html',
                   'iOS/EPubReaderSDK/PackageResources/js',
                   'iOS/EPubReaderSDK/PackageResources/images',
                   'iOS/EPubReaderSDK/PackageResources/Reader.storyboard',
                   'iOS/EPubReaderSDK/PackageResources/NavigationMenu.storyboard',
                   'iOS/EPubReaderSDK/PackageResources/Assets.xcassets'

    s.compiler_flags = '-DDEBUG'
    s.libraries = 'xml2'

    s.ios.public_header_files = 'EPubFoundation/publicHeaders/**/*.h'
    s.xcconfig  = {'HEADER_SEARCH_PATHS' => [
                                                '$(SDKROOT)/usr/include/libxml2',
                                                '$SRCROOT/EPubReaderSDK/EPubFoundation/vendor',
                                                '$SRCROOT/EPubReaderSDK/EPubFoundation/privateHeaders',
                                                '$SRCROOT/SSZipArchive/SSZipArchive/include'
                                            ],
                   'OTHER_LDFLAGS' => '-lxml2'}

    s.framework = ['QBPopupMenu','JTSImageViewController','SVGKit','SwCrypt','Utilities','Alamofire','SSZipArchive']
end
