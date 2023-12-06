Pod::Spec.new do |s|
    s.name             = 'StudyWiseKit'
    s.version          = '4.4.3'
    s.summary          = 'A brief description of StudyWiseKit.'
    s.homepage         = 'https://github.mheducation.com/MHEducation/studywisekit-ios'
    s.platform         = :ios, '14.0'
    s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
    s.author           = { 'Kiran Madhav' => 'kiran.madhav@mheducation.com' }
    s.source           = { :git => 'git@github.mheducation.com:MHEducation/studywisekit-ios.git', :tag => s.version.to_s }
    s.swift_version     = '5.0'

    s.dependency 'ProbeImplementations', '~> 4.4.3'
    s.dependency 'ProbeRenderingSDK', '~> 4.4.3'
end
