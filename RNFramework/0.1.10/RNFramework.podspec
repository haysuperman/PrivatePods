#
# Be sure to run `pod lib lint RNFramework.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#
# RNFramwork 依赖库私有源 RN版本 0.63.2
# source 'git@code.aihuishou.com:PTJ-APP/rn-specs-repo-ios.git'

rn_tag = "v0.63.2"
rn_version = "0.63.2"

Pod::Spec.new do |s|
  s.name             = 'RNFramework'
  s.version          = '0.1.10'
  s.summary          = 'RN iOS容器'

  s.description      = <<-DESC
  将RN依赖库以及自己封装的RN组件 打包为pod, 业务方只需接入RNFramework即可运行RN bundle资源
                       DESC

  s.homepage         = 'http://code.aihuishou.com/PTJ-APP/rn-specs-repo-ios'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'xcuYao' => 'chinayaoning@gmail.com' }
  s.source           = { :git => 'https://github.com/facebook/react-native.git', :tag => rn_tag }

  s.ios.deployment_target = '10.0'

  # RN核心库
  s.dependency 'FBLazyVector', rn_version
  s.dependency 'FBReactNativeSpec', rn_version
  s.dependency 'RCTRequired', rn_version
  s.dependency 'RCTTypeSafety', rn_version
  s.dependency 'React', rn_version
  s.dependency 'React-Core', rn_version
  s.dependency 'React-CoreModules', rn_version
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

  s.dependency 'React-Core/DevSupport', rn_version

  # RN公共库
  s.dependency 'React-cxxreact', rn_version
  s.dependency 'React-jsi', rn_version
  s.dependency 'React-jsiexecutor', rn_version
  s.dependency 'React-jsinspector', rn_version
  s.dependency 'React-callinvoker', rn_version
  s.dependency 'ReactCommon/turbomodule/core', rn_version
  s.dependency 'yoga', '0.63.2.React'

  # RN依赖的三方库
  s.dependency 'DoubleConversion', '1.1.6'
  s.dependency 'glog', '0.3.5'
  s.dependency 'Folly', '2020.01.13.00'

  # 自己项目额外依赖的三方库
  s.dependency 'RNGestureHandler', '0.63.2.React'
  s.dependency 'react-native-image-picker', '0.63.2.React'
  s.dependency 'BVLinearGradient', '0.63.2.React'
  s.dependency 'RNCAsyncStorage', '0.63.2.React'
  s.dependency 'RNScreens', '0.63.2.React'
  s.dependency 'RNReanimated', '0.63.2.React'
  s.dependency 'RNSentry', '0.63.2.React'
  s.dependency 'RNFetchBlob', '0.63.2.React'
  s.dependency 'React-navigation', '0.63.2.React'
  s.dependency 'RNCMaskedView', '0.63.2.React'
  s.dependency 'react-native-safe-area-context', '0.63.2.React'
  # s.dependency 'RNImageCropPicker', '0.63.2.React'
  # s.dependency 'RNWebpSupport', '0.63.2.React'
  # s.dependency 'RNGestureHandler', '0.63.2.React'

end
