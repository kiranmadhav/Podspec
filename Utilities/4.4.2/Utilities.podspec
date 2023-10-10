Pod::Spec.new do |s|
  s.name             = 'Utilities'
  s.version          = '4.4.2'
  s.summary          = 'Utilities'
  s.homepage         = 'https://github.com/kiranmadhav/utilities-ios-master'
  s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
  s.author           = { 'Kiran Madhav' => 'kiran.madhav05@gmail.com' }
  s.source           = { :git => 'https://github.com/kiranmadhav/utilities-ios-master.git', :tag => s.version.to_s }
#   s.dependency 'CleanroomLogger', '~> 2.2.3'
#   s.dependency 'PromiseKit', '~> 6.10.0'
#   s.dependency 'GCDWebServer'
  s.ios.deployment_target = '12.0'
  s.swift_version = '5.0'
  s.source_files = 'Utilities/Utilities/**/*'
  s.resource_bundles = {
    'PackageResources'  => ['Utilities/Utilities/PackageResources/**/*']
  }
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
end
