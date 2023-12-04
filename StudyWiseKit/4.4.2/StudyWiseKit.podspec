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

    s.subspec 'ProbeRenderingSDK' do |probe_sdk|
        probe_sdk.source_files  = 'StudyWiseKit/ProbeRenderingSDK/**/*.{swift,h,m}'
        probe_sdk.exclude_files = 'StudyWiseKit/ProbeRenderingSDK/Info.plist'
        probe_sdk.resources      = ['StudyWiseKit/ProbeRenderingSDK/ProbeConsumption/FillIn/fillin-template-style.html',
                                   'StudyWiseKit/ProbeRenderingSDK/ProbeConsumption/FillIn/fillin-template-script.html',
                                   'StudyWiseKit/ProbeRenderingSDK/ProbeConsumption/SelectText/select-text-js-module.html',
                                   'StudyWiseKit/ProbeRenderingSDK/ProbeConsumption/SelectText/select-text-style.html',
                                   'StudyWiseKit/ProbeRenderingSDK/ProbeConsumption/SelectText/select-text-native.html']
        probe_sdk.public_header_files = 'StudyWiseKit/ProbeRenderingSDK/**/*.h'
        probe_sdk.dependency 'JTSImageViewController', '~> 0.1.0'
        probe_sdk.dependency 'Utilities', '~> 4.0.2'
        probe_sdk.frameworks = ['JTSImageViewController','Utilities']
        probe_sdk.compiler_flags = '-DDEBUG'
    end

    s.subspec 'ProbeImplementations' do |probe_impl|
        probe_impl.source_files  = 'StudyWiseKit/ProbeImplementations/**/*.{swift,h,m}'
        probe_impl.exclude_files = 'StudyWiseKit/ProbeImplementationsTests/*.{swift,plist}'
        probe_impl.dependency 'Utilities', '~> 4.0.2'
        probe_impl.dependency 'StudyWiseKit/ProbeRenderingSDK'
        probe_impl.public_header_files = 'StudyWiseKit/ProbeImplementations/**/*.h'
        probe_impl.frameworks = ['Utilities', 'StudyWiseKit/ProbeRenderingSDK']
        probe_impl.resource_bundles = {
                'PackageResources' => [
                    'StudyWiseKit/ProbeImplementations/PackageResources/*',
                    'StudyWiseKit/ProbeImplementations/**/*.xib',
                    'StudyWiseKit/ProbeImplementations/**/*..xcassets'
                ]
            }
    end

    s.dependency 'JTSImageViewController', '~> 0.1.0'
    s.dependency 'Utilities', '~> 4.0.2'

    s.libraries = 'ProbeImplementations', 'ProbeRenderingSDK'
    s.exclude_files = 'StudyWiseKit/ProbeImplementationsTests/*.{swift,plist}'
    s.compiler_flags = '-DDEBUG'

    s.frameworks = ['JTSImageViewController', 'Utilities']
end
