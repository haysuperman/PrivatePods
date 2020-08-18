#
# Be sure to run `pod lib lint RNFramework.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#
# RNFramwork 依赖库私有源 RN版本 0.61.2
# source 'https://github.com/xcuYao/PrivatePods.git'
# source 'git@code.aihuishou.com:PTJ-APP/rn-specs-repo-ios.git'

rn_tag = "v0.61.2"
rn_version = "0.61.2"

Pod::Spec.new do |s|
  s.name             = 'RNFramework'
  s.version          = '0.1.7'
  s.summary          = 'RN iOS容器'

  s.description      = <<-DESC
  将RN依赖库以及自己封装的RN组件 打包为pod, 业务方只需接入RNFramework即可运行RN bundle资源
                       DESC

  s.homepage         = 'http://code.aihuishou.com/b2b-fe/rn-sdk'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'xcuYao' => 'chinayaoning@gmail.com' }
  s.source           = { :git => 'https://github.com/facebook/react-native.git', :tag => rn_tag }

  s.ios.deployment_target = '9.0'

  s.dependency 'FBLazyVector', rn_version
  s.dependency 'FBReactNativeSpec', rn_version
  s.dependency 'RCTRequired', rn_version
  s.dependency 'RCTTypeSafety', rn_version
  s.dependency 'React', rn_version
  s.dependency 'React-Core', rn_version
  s.dependency 'React-CoreModules', rn_version
  s.dependency 'React-Core/DevSupport', rn_version
  s.dependency 'React-RCTActionSheet', rn_version
  s.dependency 'React-RCTAnimation', rn_version
  s.dependency 'React-RCTBlob', rn_version
  s.dependency 'React-RCTImage', rn_version
  s.dependency 'React-RCTLinking', rn_version
  s.dependency 'React-RCTNetwork', rn_version
  s.dependency 'React-RCTSettings', rn_version
  s.dependency 'React-RCTText', rn_version
  s.dependency 'React-RCTVibration', rn_version
  s.dependency 'React-Core/RCTWebSocket', rn_version

  s.dependency 'React-cxxreact', rn_version
  s.dependency 'React-jsi', rn_version
  s.dependency 'React-jsiexecutor', rn_version
  s.dependency 'React-jsinspector', rn_version
  s.dependency 'ReactCommon/jscallinvoker', rn_version
  s.dependency 'ReactCommon/turbomodule/core', rn_version
  s.dependency 'yoga', '~> 0.61.2.React'

  s.dependency 'DoubleConversion', '~> 1.1.6'
  s.dependency 'glog', '~> 0.3.5'
  s.dependency 'Folly', '~> 2018.10.22.00'

  s.dependency 'RNGestureHandler', '~> 1.4.1'
  s.dependency 'react-native-image-picker', '~> 0.27.2.1'
  s.dependency 'BVLinearGradient', '~> 2.4.4'
  s.dependency 'GrowingReactNativeTrackKit', '~> 0.0.7'
  s.dependency 'RNCAsyncStorage', '~> 1.6.1'
  s.dependency 'RNScreens', '2.0.0-alpha.3'
  s.dependency 'RNReanimated', '1.3.0'
  s.dependency 'RNSentry', '1.0.9'
  s.dependency 'RNFetchBlob', '0.11.2'
  s.dependency 'RNImageCropPicker', '0.26.1'
  s.dependency 'RNFastImage', '7.0.0'
end
