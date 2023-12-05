Pod::Spec.new do |s|
    s.name             = 'StudyWiseKit'
    s.version          = '4.4.2'
    s.summary          = 'A brief description of StudyWiseKit.'
    s.homepage         = 'https://github.mheducation.com/MHEducation/studywisekit-ios'
    s.platform         = :ios, '14.0'
    s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
    s.author           = { 'Kiran Madhav' => 'kiran.madhav@mheducation.com' }
    s.source           = { :git => 'git@github.mheducation.com:MHEducation/studywisekit-ios.git', :tag => s.version.to_s }

    s.swift_version     = '5.0'

    s.subspec 'ProbeImplementations' do |probe_impl|
        probe_impl.source_files  = 'StudyWiseKit/ProbeImplementations/**/*.{swift,h,m}'
        probe_impl.exclude_files = 'StudyWiseKit/ProbeImplementationsTests/*.{swift,plist}'
        probe_impl.resources      = 'StudyWiseKit/ProbeImplementations/PackageResources/*'
        probe_impl.dependency 'Utilities', '~> 4.0.2'
        probe_impl.dependency 'ProbeRenderingSDK', '~> 4.4.2'
        probe_impl.public_header_files = 'StudyWiseKit/ProbeImplementations/**/*.h'
        probe_impl.framework = ['ProbeRenderingSDK', 'Utilities']
    end

    s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
end
