Pod::Spec.new do |s|
  s.name             = 'JTSImageViewController'
  s.version          = '0.1.0'
  s.summary          = 'JTSImageViewController provides an extensible Swift-based logging API that is simple, lightweight and performant.'
  s.homepage         = ''https://github.mheducation.com/MHEducation/JTSImageViewController'
  s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
  s.author           = { 'Kiran Madhav' => 'kiran.madhav05@gmail.com' }
  s.source           = { :git => 'git@github.mheducation.com:MHEducation/JTSImageViewController.git', :branch => 'main' }
  s.ios.deployment_target = '11.0'
  s.requires_arc = true
  s.frameworks   = 'UIKit', 'ImageIO', 'Accelerate'
  
  s.compiler_flags = "-fmodules"
  
  s.source_files = ['Source/*.{h,m}']
  
end
