Pod::Spec.new do |s|
    s.name             = 'ProbeImplementations'
    s.version          = '4.4.2'
    s.summary          = 'A brief description of StudyWiseKit.'
    s.homepage         = 'https://github.mheducation.com/MHEducation/studywisekit-ios'
    s.platform         = :ios, '14.0'
    s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
    s.author           = { 'Kiran Madhav' => 'kiran.madhav@mheducation.com' }
    s.source           = { :git => 'git@github.mheducation.com:MHEducation/studywisekit-ios.git', :tag => s.version.to_s }

    s.swift_version     = '5.0'


    s.source_files  = 'StudyWiseKit/ProbeImplementations/**/*.{swift,h,m}'
    s.exclude_files = 'StudyWiseKit/ProbeImplementationsTests/*.{swift,plist}'
    s.resources      = 'StudyWiseKit/ProbeImplementations/PackageResources/*'
    s.public_header_files = 'StudyWiseKit/ProbeRenderingSDK/**/*.h'
    s.dependency 'ProbeRenderingSDK', '~> 4.2.2'
    s.dependency 'Utilities', '~> 4.0.2'
    s.framework = ['ProbeRenderingSDK','Utilities']
    s.compiler_flags = '-DDEBUG'

    s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
end