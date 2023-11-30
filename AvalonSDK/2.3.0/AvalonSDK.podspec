Pod::Spec.new do |s|
  s.name = 'AvalonSDK'
  s.version = '2.3.0'
  s.summary = 'AvalonSDK'

  s.homepage         = 'https://github.mheducation.com/MHEducation/avalon-sdk-plugin'
  s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
  s.author           = { 'Kiran Madhav' => 'kiran.madhav@mheducation.com' }

  s.ios.deployment_target = '13.0'

  s.source = { :git => 'git@github.mheducation.com:MHEducation/avalon-delivery-ios.git', :tag => s.version.to_s }

#   s.public_header_files = 'EPubFoundation/publicHeaders/**/*.h'
#
    s.source_files =  'AvalonSDK/**/*.{swift,h}'
    s.preserve_paths = 'AvalonSDK/Info.plist',
                       'AvalonSDK/Shared/**/*'

    s.dependency 'StudyWiseKit', '~> 4.4.2'
    s.dependency 'Utilities', '~> 4.0.2'
    s.dependency 'Alamofire', '~> 4.9.1'
    s.dependency 'EPubReaderSDK', '~> 5.1.2'

#     s.resources = 'iOS/EPubReaderSDK/PackageResources/css',
#                    'iOS/EPubReaderSDK/PackageResources/html',
#                    'iOS/EPubReaderSDK/PackageResources/js',
#                    'iOS/EPubReaderSDK/PackageResources/images',
#                    'iOS/EPubReaderSDK/PackageResources/Reader.storyboard',
#                    'iOS/EPubReaderSDK/PackageResources/NavigationMenu.storyboard',
#                    'iOS/EPubReaderSDK/PackageResources/Assets.xcassets'

     s.compiler_flags = '-DDEBUG'
#     s.libraries = 'xml2'

#     s.ios.public_header_files = 'EPubFoundation/publicHeaders/**/*.h'
#     s.xcconfig  = {'HEADER_SEARCH_PATHS' => [
#                                                 '$(SDKROOT)/usr/include/libxml2',
#                                                 '$SRCROOT/EPubReaderSDK/EPubFoundation/vendor',
#                                                 '$SRCROOT/EPubReaderSDK/EPubFoundation/privateHeaders',
#                                                 '$SRCROOT/SSZipArchive/SSZipArchive/include'
#                                             ],
#                    'OTHER_LDFLAGS' => '-lxml2'}

    s.framework = ['EPubReaderSDK','StudyWiseKit','Utilities','Alamofire']
end
