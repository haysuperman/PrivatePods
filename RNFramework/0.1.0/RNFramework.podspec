#
# Be sure to run `pod lib lint RNFramework.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#
# RNFramwork 依赖库私有源
# source 'https://github.com/xcuYao/PrivatePods.git'

Pod::Spec.new do |s|
  s.name             = 'RNFramework'
  s.version          = '0.1.0'
  s.summary          = 'RN iOS容器'

  s.description      = <<-DESC
  将RN依赖库以及自己封装的RN组件 打包为pod, 业务方只需接入RNFramework即可运行RN bundle资源
                       DESC

  s.homepage         = 'http://code.aihuishou.com/b2b-fe/rn-sdk'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'xcuYao' => 'chinayaoning@gmail.com' }
  s.source           = { :git => 'git@code.aihuishou.com:b2b-fe/rn-sdk.git', :tag => "#{s.version.to_s}.iOS" }

  s.ios.deployment_target = '9.0'

  s.dependency 'FBLazyVector', '~> 0.61.0.rc'
  s.dependency 'FBReactNativeSpec', '~> 0.61.0.rc'
  s.dependency 'RCTRequired', '~> 0.61.0.rc'
  s.dependency 'RCTTypeSafety', '~> 0.61.0.rc'
  s.dependency 'React', '~> 0.61.0.rc'
  s.dependency 'React-Core', '~> 0.61.0.rc'
  s.dependency 'React-CoreModules', '~> 0.61.0.rc'
  s.dependency 'React-DevSupport', '~> 0.61.0.rc'
  s.dependency 'React-RCTActionSheet', '~> 0.61.0.rc'
  s.dependency 'React-RCTAnimation', '~> 0.61.0.rc'
  s.dependency 'React-RCTBlob', '~> 0.61.0.rc'
  s.dependency 'React-RCTImage', '~> 0.61.0.rc'
  s.dependency 'React-RCTLinking', '~> 0.61.0.rc'
  s.dependency 'React-RCTNetwork', '~> 0.61.0.rc'
  s.dependency 'React-RCTSettings', '~> 0.61.0.rc'
  s.dependency 'React-RCTText', '~> 0.61.0.rc'
  s.dependency 'React-RCTVibration', '~> 0.61.0.rc'
  s.dependency 'React-RCTWebSocket', '~> 0.61.0.rc'

  s.dependency 'React-cxxreact', '~> 0.61.0.rc'
  s.dependency 'React-jsi', '~> 0.61.0.rc'
  s.dependency 'React-jsiexecutor', '~> 0.61.0.rc'
  s.dependency 'React-jsinspector', '~> 0.61.0.rc'
  s.dependency 'ReactCommon/jscallinvoker', '~> 0.61.0.rc'
  s.dependency 'ReactCommon/turbomodule/core', '~> 0.61.0.rc'
  s.dependency 'yoga', '~> 0.61.0.rc.React'

  s.dependency 'DoubleConversion', '~> 1.1.6'
  s.dependency 'glog', '~> 0.3.5'
  s.dependency 'Folly', '~> 2018.10.22.00'

end
