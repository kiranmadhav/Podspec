Pod::Spec.new do |s|
    s.name             = 'StudyWiseKit'
    s.version          = '4.4.2'
    s.summary          = 'A brief description of StudyWiseKit.'
    s.homepage         = 'https://github.mheducation.com/MHEducation/studywisekit-ios'
    s.platform         = :ios, '14.0'
    s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
    s.author           = { 'Kiran Madhav' => 'kiran.madhav@mheducation.com' }
    s.source           = { :git => 'git@github.mheducation.com:MHEducation/studywisekit-ios.git', :tag => s.version.to_s }

  s.swift_version    = '5.0'
  s.requires_arc     = true

  s.source_files = 'StudyWiseKit/ProbeImplementations/**/*.{h,m,c,swift}', 'StudyWiseKit/ProbeRenderingSDK/**/*.{h,m,c,swift}'
  s.resources = 'StudyWiseKit/ProbeImplementations/PackageResources/**/*', 'StudyWiseKit/ProbeRenderingSDK/ProbeConsumption/**/*.{html,js}'
  s.exclude_files = ['StudyWiseKit/ProbeImplementations/Info.plist', 'StudyWiseKit/ProbeRenderingSDK/Info.plist']

  s.dependency 'JTSImageViewController', '~> 0.1.0'
  s.dependency 'Utilities', '~> 4.0.2'

    s.ios.public_header_files = 'StudyWiseKit/ProbeRenderingSDK/**/*.h'
    s.xcconfig  = {'HEADER_SEARCH_PATHS' => [
                                                '$SRCROOT/StudyWiseKit/ProbeRenderingSDK',
                                            ]}

#  s.vendored_frameworks = 'StudyWiseKit/ProbeImplementations/**/*.framework'
#  s.vendored_libraries = 'StudyWiseKit/ProbeImplementations/**/*.a'
end
