Pod::Spec.new do |s|
  s.name             = 'CleanroomLogger'
  s.version          = '0.1.0'
  s.summary          = 'CleanroomLogger provides an extensible Swift-based logging API that is simple, lightweight and performant.'
  s.homepage         = 'https://github.mheducation.com/MHEducation/CleanroomLogger'
  s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
  s.author           = { 'Kiran Madhav' => 'kiran.madhav@mheducation.com' }
  s.source           = { :git => 'git@github.mheducation.com:MHEducation/CleanroomLogger.git', :tag => s.version.to_s }
  s.ios.deployment_target = '11.0'
  s.swift_version = '5.0'
  s.source_files = 'Sources/**/*'
 end