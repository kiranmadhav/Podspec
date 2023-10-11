Pod::Spec.new do |s|
  s.name             = 'JTSImageViewController'
  s.version          = '0.1.0'
  s.summary          = 'An interactive iOS image viewer that does it all: double tap to zoom, flick to dismiss, et cetera.'
  s.homepage         = 'https://github.mheducation.com/MHEducation/JTSImageViewController'
  s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
  s.author           = { 'Kiran Madhav' => 'kiran.madhav@mheducation.com' }
  s.source           = { :git => 'git@github.mheducation.com:MHEducation/JTSImageViewController.git', :tag => s.version.to_s }
  s.ios.deployment_target = '12.0'
  s.requires_arc = true
  s.frameworks   = 'UIKit', 'ImageIO', 'Accelerate'
  
  s.compiler_flags = "-fmodules"
  
  s.source_files = ['Source/*.{h,m}']
  
end
