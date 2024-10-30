Pod::Spec.new do |s|
    s.name             = 'ProbeRenderingSDK'
    s.version          = '4.4.7'
    s.summary          = 'A brief description of StudyWiseKit.'
    s.homepage         = 'https://github.mheducation.com/MHEducation/studywisekit-ios'
    s.platform         = :ios, '14.0'
    s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
    s.author           = { 'Kiran Madhav' => 'kiran.madhav@mheducation.com' }
    s.source           = { :git => 'git@github.mheducation.com:MHEducation/studywisekit-ios.git', :tag => s.version.to_s }

    s.swift_version     = '5.0'

    s.source_files  = 'StudyWiseKit/ProbeRenderingSDK/**/*.{swift,h}'
    s.exclude_files = 'StudyWiseKit/ProbeRenderingSDK/Info.plist'

    s.resources      =  'StudyWiseKit/ProbeRenderingSDK/**/*.{xib,html,storyboard}',
                        'StudyWiseKit/ProbeRenderingSDK/PackageResources/Assets.xcassets',
                        'StudyWiseKit/ProbeConsumption/SelectText'
    s.dependency 'JTSImageViewController', '~> 0.1.0'
    s.dependency 'Utilities', '~> 4.0.2'
    s.compiler_flags = '-DDEBUG'
end
