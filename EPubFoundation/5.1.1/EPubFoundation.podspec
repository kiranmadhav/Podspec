Pod::Spec.new do |s|
  s.name = 'EPubFoundation'
  s.version = '5.1.1'
  s.summary = 'EPubFoundation'

  s.homepage         = 'https://github.mheducation.com/MHEducation/epub-reader-sdk-ios'
  s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
  s.author           = { 'Kiran Madhav' => 'kiran.madhav@mheducation.com' }

  s.ios.deployment_target = '14.0'

  s.source = { :git => 'git@github.mheducation.com:MHEducation/epub-reader-sdk-ios.git', :tag => s.version.to_s }

    s.source_files = 'EPubFoundation/**/*.{c,h}', 'iOS/EPubFoundation/**/*.h'
    s.exclude_files = 'EPubFoundation/doxygen-config', 'EPubFoundation/Readme.md', 'EPubFoundation/vendor/utf8proc_data.c'
    s.public_header_files = 'EPubFoundation/publicHeaders/**/*.h'

    s.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PROJECT_DIR}/vendor' }
s.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PROJECT_DIR}/privateHeaders' }

           # cSettings: [
           #     .headerSearchPath("vendor"),
           #     .headerSearchPath("privateHeaders")
           # ],

    s.libraries = 'xml2'
  #  s.compiler_flags = '-DDEBUG'

end
