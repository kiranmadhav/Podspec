Pod::Spec.new do |s|
  s.name     = 'GCDWebServer'
  s.version  = '0.1.0'
  s.author   =  { 'Pierre-Olivier Latour' => 'info@pol-online.net' }
  s.license  = { :type => 'BSD', :file => 'LICENSE' }
 # s.homepage = 'https://github.mheducation.com/MHEducation/GCDWebServer'
s.homepage = 'https://github.com/swisspol/GCDWebServer'
  s.summary  = 'Lightweight GCD based HTTP server for OS X & iOS (includes web based uploader & WebDAV server)'
  # s.source   = { :git => 'git@github.mheducation.com:MHEducation/GCDWebServer.git', :branch => 'master' }
  s.source   = { :git => 'https://github.com/swisspol/GCDWebServer.git', :branch => 'master' }
  
  s.ios.deployment_target = '13.0'
  s.tvos.deployment_target = '9.0'
  s.osx.deployment_target = '10.7'
  s.requires_arc = true
  
  s.default_subspec = 'Core'
  
  s.subspec 'Core' do |cs|
    cs.source_files = 'GCDWebServer/Core/**/*.{h,m}',
                      'GCDWebServer/Requests/**/*.{h,m}',
                      'GCDWebServer/Response/**/*.{h,m}'

  #  s.preserve_paths = 'EPubFoundation/vendor/utf8proc_data.c'
    cs.private_header_files = "GCDWebServer/Core/GCDWebServerPrivate.h"
    cs.requires_arc = true
    cs.ios.library = 'z'
    cs.ios.frameworks = 'CoreServices', 'CFNetwork'
    cs.tvos.library = 'z'
    cs.tvos.frameworks = 'CoreServices', 'CFNetwork'
    cs.osx.library = 'z'
    cs.osx.framework = 'SystemConfiguration'
  end
  
  s.subspec 'WebDAV' do |cs|
    cs.dependency 'GCDWebServer/Core'
    cs.source_files = 'GCDWebDAVServer/*.{h,m}'
    cs.requires_arc = true
    cs.ios.library = 'xml2'
    cs.tvos.library = 'xml2'
    cs.osx.library = 'xml2'
    cs.compiler_flags = '-I$(SDKROOT)/usr/include/libxml2'
  end
  
  s.subspec 'WebUploader' do |cs|
    cs.dependency 'GCDWebServer/Core'
    cs.source_files = 'GCDWebUploader/*.{h,m}'
    cs.requires_arc = true
    cs.resource = "GCDWebUploader/GCDWebUploader.bundle"
  end
end
