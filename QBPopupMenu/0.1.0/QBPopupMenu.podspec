Pod::Spec.new do |s|
  s.name             = 'QBPopupMenu'
  s.version          = '0.1.0'
  s.summary          = 'QBPopupMenu provides an extensible Swift-based logging API that is simple, lightweight and performant.'
  s.homepage         = 'https://github.mheducation.com/MHEducation/QBPopupMenu'
  s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
  s.author           = { 'Kiran Madhav' => 'kiran.madhav05@gmail.com' }
  s.source           = { :git => 'git@github.mheducation.com:MHEducation/QBPopupMenu.git', :branch => 'master' }
  s.ios.deployment_target = '11.0'
  
  s.source_files = ['Source/*.{h,m}']
  
end
