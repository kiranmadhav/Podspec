Pod::Spec.new do |s|
    s.name             = 'StudyWiseKit'
    s.version          = '4.4.2'
    s.summary          = 'A brief description of StudyWiseKit.'
    s.homepage         = 'https://github.mheducation.com/MHEducation/studywisekit-ios'
    s.platform         = :ios, '13.0'
    s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
    s.author           = { 'Kiran Madhav' => 'kiran.madhav@mheducation.com' }
    s.source           = { :git => 'git@github.mheducation.com:MHEducation/studywisekit-ios.git', :tag => s.version.to_s }

    s.swift_version     = '5.0'
    s.ios.deployment_target = '14.0'

    s.dependency 'JTSImageViewController', '~> 0.1.0'
    s.dependency 'Utilities', '~> 4.0.2'

    s.subspec 'ProbeImplementations' do |probe_impl|
        probe_impl.source_files  = 'StudyWiseKit/ProbeImplementations/**/*.{swift,h,m}'
        probe_impl.exclude_files = 'StudyWiseKit/ProbeImplementations/Info.plist'
        probe_impl.resources      = 'StudyWiseKit/ProbeImplementations/PackageResources/*'
        probe_impl.dependency 'Utilities'
        probe_impl.public_header_files = 'StudyWiseKit/**/*.h'
#         probe_impl.dependency 'ProbeRenderingSDK'
    end

    s.subspec 'ProbeRenderingSDK' do |probe_sdk|
        probe_sdk.source_files  = 'StudyWiseKit/ProbeRenderingSDK/**/.{swift,h,m}'
        probe_sdk.exclude_files = 'StudyWiseKit/ProbeRenderingSDK/Info.plist'
        probe_sdk.resources      = ['StudyWiseKit/ProbeRenderingSDK/ProbeConsumption/FillIn/fillin-template-style.html',
                                   'StudyWiseKit/ProbeRenderingSDK/ProbeConsumption/FillIn/fillin-template-script.html',
                                   'StudyWiseKit/ProbeRenderingSDK/ProbeConsumption/SelectText/select-text-js-module.html',
                                   'StudyWiseKit/ProbeRenderingSDK/ProbeConsumption/SelectText/select-text-style.html',
                                   'StudyWiseKit/ProbeRenderingSDK/ProbeConsumption/SelectText/select-text-native.html']
        probe_sdk.public_header_files = 'StudyWiseKit/ProbeRenderingSDK/**/*.h'
        probe_sdk.dependency 'JTSImageViewController'
        probe_sdk.dependency 'Utilities'
        probe_sdk.compiler_flags = '-DDEBUG'
    end


#   s.source_files = ['FileEncryptor/**/*.{swift,h,m}']

  s.public_header_files = 'StudyWiseKit/**/*.h'
#                           'FileEncryptor/**/*.h']

#   s.dependency 'JTSImageViewController', '~> 0.1.0'
#   s.dependency 'Utilities', '~> 4.0.2'

  s.resources = ['StudyWiseKit/ProbeImplementations/PackageResources',
                 'StudyWiseKit/ProbeRenderingSDK/ProbeConsumption/FillIn',
                 'StudyWiseKit/ProbeRenderingSDK/ProbeConsumption/SelectText',
                 'StudyWiseKit/ProbeConsumption/FillIn/fillin-template-style.html',
                 'StudyWiseKit/ProbeConsumption/FillIn/fillin-template-script.html',
                 'StudyWiseKit/ProbeConsumption/SelectText/select-text-js-module.html',
                 'StudyWiseKit/ProbeConsumption/SelectText/select-text-style.html',
                 'StudyWiseKit/ProbeConsumption/SelectText/select-text-native.html']

  s.exclude_files = 'StudyWiseKit/ProbeImplementationsTests/*.{swift,plist}'

#   s.library = 'StudyWiseKit'

  s.framework = ['JTSImageViewController','Utilities']

end
