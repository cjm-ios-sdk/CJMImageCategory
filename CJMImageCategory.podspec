#
# Be sure to run `pod lib lint CJMImageCategory.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CJMImageCategory'
  s.version          = '0.1.0'
  s.summary          = 'UIImage相关的接口扩展'

  s.description      = <<-DESC
UIImage相关的接口扩展，图片缩放，染色，纯色图片共享等。
                       DESC

  s.homepage         = 'https://github.com/cjm-ios-sdk/CJMImageCategory'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'chenjm' => 'cjiemin@163.com' }
  s.source           = { :git => 'https://github.com/cjm-ios-sdk/CJMImageCategory.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'CJMImageCategory/Classes/**/*'

end
