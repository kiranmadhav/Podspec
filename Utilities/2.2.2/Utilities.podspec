Pod::Spec.new do |s|
  s.name             = 'Utilities'
  s.version          = '2.2.2'
  s.summary          = 'Utilities'
  s.homepage         = 'https://github.mheducation.com/MHEducation/utilities-ios'
  s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
  s.author           = { 'Kiran Madhav' => 'kiran.madhav05@gmail.com' }
  s.source           = { :git => 'https://github.mheducation.com/MHEducation/utilities-ios.git', :tag => s.version.to_s}
#   s.dependency 'CleanroomLogger', '~> 2.2.3'
#  s.dependency 'PromiseKit', '~> 6.10.0'
#  s.dependency 'GCDWebServer'
  s.ios.deployment_target = '12.0'
  s.swift_version = '5.0'
  s.source_files = 'Utilities/**/*'
end
