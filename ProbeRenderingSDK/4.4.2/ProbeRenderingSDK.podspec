Pod::Spec.new do |s|
    s.name             = 'ProbeRenderingSDK'
    s.version          = '4.4.2'
    s.summary          = 'A brief description of StudyWiseKit.'
    s.homepage         = 'https://github.mheducation.com/MHEducation/studywisekit-ios'
    s.platform         = :ios, '14.0'
    s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
    s.author           = { 'Kiran Madhav' => 'kiran.madhav@mheducation.com' }
    s.source           = { :git => 'git@github.mheducation.com:MHEducation/studywisekit-ios.git', :tag => s.version.to_s }

    s.swift_version     = '5.0'


    s.source_files  = 'StudyWiseKit/ProbeRenderingSDK/**/*.{swift,h,m}'
    s.exclude_files = 'StudyWiseKit/ProbeRenderingSDK/Info.plist'
    s.resources      = ['StudyWiseKit/ProbeRenderingSDK/ProbeConsumption/FillIn/fillin-template-style.html',
                               'StudyWiseKit/ProbeRenderingSDK/ProbeConsumption/FillIn/fillin-template-script.html',
                               'StudyWiseKit/ProbeRenderingSDK/ProbeConsumption/SelectText/select-text-js-module.html',
                               'StudyWiseKit/ProbeRenderingSDK/ProbeConsumption/SelectText/select-text-style.html',
                               'StudyWiseKit/ProbeRenderingSDK/ProbeConsumption/SelectText/select-text-native.html']
    s.public_header_files = 'StudyWiseKit/ProbeRenderingSDK/**/*.h'
    s.dependency 'JTSImageViewController', '~> 0.1.0'
    s.dependency 'Utilities', '~> 4.0.2'
    s.framework = ['JTSImageViewController','Utilities']
    s.compiler_flags = '-DDEBUG'

    s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
end
