#
# Be sure to run `pod lib lint MOOImageButton.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MOOImageButton'
  s.version          = '0.1.0'
  s.summary          = 'MOOImageButton can quick set image on the top/right/bottom/right on the button'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC
  
  s.homepage         = 'https://github.com/mxh-mo/MOOImageButton.git'
  s.screenshots      = 'MOOImageButton//screenshots_1'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '994355869@qq.com' => 'mikimo@tencent.com' }
  s.source           = { :git => 'https://github.com/mxh-mo/MOOImageButton.git', :tag => s.version }
  s.social_media_url = 'https://blog.csdn.net/Margaret_MO'
  s.ios.deployment_target = '10.0'
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0' }
  s.source_files = 'MOOImageButton/Classes/**/*'
  s.public_header_files = 'MOOImageButton/Classes/Headers/**/*'
  
end
