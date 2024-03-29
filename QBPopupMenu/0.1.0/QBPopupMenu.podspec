Pod::Spec.new do |s|
  s.name             = 'QBPopupMenu'
  s.version          = '0.1.0'
  s.summary          = 'Customizable popup menu for iOS.'
  s.homepage         = 'https://github.mheducation.com/MHEducation/QBPopupMenu'
  s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
  s.author           = { 'Kiran Madhav' => 'kiran.madhav@mheducation.com' }
  s.source           = { :git => 'git@github.mheducation.com:MHEducation/QBPopupMenu.git', :tag => s.version.to_s }
  s.ios.deployment_target = '13.0'
  
  s.source_files = ['QBPopupMenu/*.{swift,h,m}']
  
end
