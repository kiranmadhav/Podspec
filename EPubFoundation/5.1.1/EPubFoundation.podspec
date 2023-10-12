Pod::Spec.new do |s|
  s.name = 'EPubFoundation'
  s.version = '5.1.1'
  s.summary = 'EPubFoundation'

  s.homepage         = 'https://github.mheducation.com/MHEducation/epub-reader-sdk-ios'
  s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
  s.author           = { 'Kiran Madhav' => 'kiran.madhav@mheducation.com' }

  s.ios.deployment_target = '11.0'

#  s.static_framework = true

  # Specify the source and the files
  s.source = { :git => 'git@github.mheducation.com:MHEducation/epub-reader-sdk-ios.git', :tag => s.version.to_s }

    s.source_files = 'EPubFoundation/**/*.{c,h}', 'iOS/EPubFoundation/**/*.h'
    s.public_header_files = 'EPubFoundation/publicHeaders/**/*.h'
    s.libraries = 'xml2'
    s.compiler_flags = '-DDEBUG'

end
