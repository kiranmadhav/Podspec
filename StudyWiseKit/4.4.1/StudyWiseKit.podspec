Pod::Spec.new do |s|
  s.name             = 'StudyWiseKit'
  s.version          = '4.4.1'
  s.summary          = 'A brief description of StudyWiseKit.'
  s.homepage         = 'https://github.mheducation.com/MHEducation/studywisekit-ios'
  s.platform         = :ios, '13.0'
  s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
  s.author           = { 'Kiran Madhav' => 'kiran.madhav@mheducation.com' }
  s.source           = { :git => 'git@github.mheducation.com:MHEducation/studywisekit-ios.git', :tag => s.version.to_s }

  s.swift_version     = '5.0'
  s.ios.deployment_target = '14.0'

  s.source_files = 'StudyWiseKit/**/*.{swift,h,m}'

  s.dependency 'JTSImageViewController', '~> 0.1.0'
  s.dependency 'Utilities', '~> 4.0.2'

  s.resources = ['StudyWiseKit/ProbeImplementations/PackageResources', 
                 'StudyWiseKit/ProbeRenderingSDK/ProbeConsumption/FillIn', 
                 'StudyWiseKit/ProbeRenderingSDK/ProbeConsumption/SelectText',
                 'StudyWiseKit/ProbeConsumption/FillIn/fillin-template-style.html', 
                 'StudyWiseKit/ProbeConsumption/FillIn/fillin-template-script.html', 
                 'StudyWiseKit/ProbeConsumption/SelectText/select-text-js-module.html', 
                 'StudyWiseKit/ProbeConsumption/SelectText/select-text-style.html', 
                 'StudyWiseKit/ProbeConsumption/SelectText/select-text-native.html']
  
  # s.library = 'StudyWiseKit'

  s.framework = ['JTSImageViewController','Utilities']

end
