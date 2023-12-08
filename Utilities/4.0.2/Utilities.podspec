Pod::Spec.new do |s|
  s.name             = 'Utilities'
  s.version          = '4.0.2'
  s.summary          = 'Utilities'
  s.homepage         = 'https://github.mheducation.com:MHEducation/utilities-ios'
  s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
  s.author           = { 'Kiran Madhav' => 'kiran.madhav@mheducation.com' }
  s.source           = { :git => 'git@github.mheducation.com:MHEducation/utilities-ios.git', :tag => s.version.to_s }
  s.dependency 'CleanroomLogger', '~> 0.1.0'
  s.dependency 'PromiseKit', '~> 6.10.0'
  s.dependency 'GCDWebServer', '~> 0.1.0'
  s.ios.deployment_target = '13.0'
  s.swift_version = '5.0'
  s.source_files = 'Utilities/Utilities/**/*.{swift,h,m}','Utilities/Utilities/PackageResources/**/*.{swift,h,m}'
  s.s.resources = [
       'Utilities/Utilities/**/*.xib',
       'Utilities/Utilities/**/*..xcassets',
       'Utilities/Utilities/**/*.xcassets'
    ]
end
