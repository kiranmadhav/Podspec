Pod::Spec.new do |s|
  s.name             = 'StudyWiseKit'
  s.version          = '1.0.0'
  s.summary          = 'A brief description of StudyWiseKit.'

  s.platform     = :ios, '14.0'
  s.license          = 'MIT'
  s.author           = { 'Your Name' => 'Your Email' }
  s.source           = { :git => 'https://github.mheducation.com/YourRepo/StudyWiseKit.git', :tag => s.version.to_s }

  s.swift_version     = '5.0'
  s.ios.deployment_target = '14.0'

  s.source_files = 'StudyWiseKit/**/*.{swift,h,m,html}' # Adjust the file extension according to your project structure

  s.dependency 'JTSImageViewController', :git => 'https://github.mheducation.com/MHEducation/JTSImageViewController.git', :branch => 'main'
  s.dependency 'Utilities', :git => 'https://github.mheducation.com/MHEducation/utilities-ios.git', :branch => 'master'

  s.resource_bundles = {
    'StudyWiseKit' => ['StudyWiseKit/ProbeImplementations/PackageResources', 'StudyWiseKit/ProbeRenderingSDK/ProbeConsumption/FillIn', 'StudyWiseKit/ProbeRenderingSDK/ProbeConsumption/SelectText']
  }

  s.library          = 'StudyWiseKit'

  s.subspec 'ProbeImplementations' do |probe|
    probe.source_files = 'StudyWiseKit/ProbeImplementations/**/*.{swift,h,m,html}' # Adjust the file extension according to your project structure
    probe.dependency 'Utilities'
    probe.dependency 'ProbeRenderingSDK'
  end

  s.subspec 'ProbeRenderingSDK' do |rendering|
    rendering.source_files = 'StudyWiseKit/ProbeRenderingSDK/**/*.{swift,h,m,html}' # Adjust the file extension according to your project structure
    rendering.dependency 'JTSImageViewController'
    rendering.dependency 'Utilities'
    rendering.resources = ['ProbeConsumption/FillIn/fillin-template-style.html', 'ProbeConsumption/FillIn/fillin-template-script.html', 'ProbeConsumption/SelectText/select-text-js-module.html', 'ProbeConsumption/SelectText/select-text-style.html', 'ProbeConsumption/SelectText/select-text-native.html']
    rendering.swift_settings = { 'DEBUG' => '1' }
  end

  s.test_spec 'Tests' do |test_spec|
    test_spec.source_files = 'StudyWiseKit/ProbeImplementationsTests/**/*.{swift,h,m}' # Adjust the file extension according to your project structure
    test_spec.dependency 'ProbeImplementations'
    test_spec.dependency 'ProbeRenderingSDK'
  end
end
