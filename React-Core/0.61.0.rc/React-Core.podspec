# coding: utf-8
# Copyright (c) Facebook, Inc. and its affiliates.
#
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.

version = "0.61.0-rc.0"
pod_version = "0.61.0.rc"

folly_compiler_flags = '-DFOLLY_NO_CONFIG -DFOLLY_MOBILE=1 -DFOLLY_USE_LIBCPP=1 -Wno-comma -Wno-shorten-64-to-32'
folly_version = '2018.10.22.00'
boost_compiler_flags = '-Wno-documentation'

header_subspecs = {
  'ARTHeaders'                  => 'Libraries/ART/**/*.h',
  'DevSupportHeaders'           => 'React/{DevSupport/*.h,Inspector/*.h}',
  'CoreModulesHeaders'          => 'React/CoreModules/**/*.h',
  'RCTActionSheetHeaders'       => 'Libraries/ActionSheetIOS/*.h',
  'RCTAnimationHeaders'         => 'Libraries/NativeAnimation/{Drivers/*,Nodes/*,*}.{h}',
  'RCTBlobHeaders'              => 'Libraries/Blob/{RCTBlobManager,RCTFileReaderModule}.h',
  'RCTImageHeaders'             => 'Libraries/Image/*.h',
  'RCTLinkingHeaders'           => 'Libraries/LinkingIOS/*.h',
  'RCTNetworkHeaders'           => 'Libraries/Network/*.h',
  'RCTPushNotificationHeaders'  => 'Libraries/PushNotificationIOS/*.h',
  'RCTSettingsHeaders'          => 'Libraries/Settings/*.h',
  'RCTTextHeaders'              => 'Libraries/Text/**/*.h',
  'RCTSettingsHeaders'          => 'Libraries/Settings/*.h',
  'RCTVibrationHeaders'         => 'Libraries/Vibration/*.h',
  'RCTWebSocketHeaders'         => 'Libraries/WebSocket/*.h',
}

Pod::Spec.new do |s|
  s.name                   = "React-Core"
  s.version                = pod_version
  s.summary                = "The core of React Native."
  s.homepage               = "http://facebook.github.io/react-native/"
  s.license                = { :type => 'MIT' }
  s.author                 = "Facebook, Inc. and its affiliates"
  s.platforms              = { :ios => "9.0", :tvos => "9.2" }
  s.source                 = { :git => 'https://github.com/facebook/react-native.git', :tag => version }
  s.compiler_flags         = folly_compiler_flags + ' ' + boost_compiler_flags
  s.header_dir             = "React"
  s.static_framework       = true
  s.framework              = "JavaScriptCore"
  s.library                = "stdc++"
  s.pod_target_xcconfig    = { "HEADER_SEARCH_PATHS" => "\"$(PODS_TARGET_SRCROOT)/ReactCommon\" \"$(PODS_ROOT)/boost-for-react-native\" \"$(PODS_ROOT)/DoubleConversion\" \"$(PODS_ROOT)/Folly\"" }
  s.user_target_xcconfig   = { "HEADER_SEARCH_PATHS" => "\"$(PODS_ROOT)/Headers/Private/React-Core\""}
  s.default_subspec         = "Default"

  s.subspec "Default" do |ss|
    ss.source_files           = "React/**/*.{c,h,m,mm,S,cpp}"
    ss.exclude_files          = "React/CoreModules/**/*",
                                "React/DevSupport/**/*",
                                "React/Fabric/**/*",
                                "React/Inspector/**/*"
    ss.ios.exclude_files      = "React/**/RCTTV*.*"
    ss.tvos.exclude_files     = "React/Modules/RCTClipboard*",
                                "React/Views/RCTDatePicker*",
                                "React/Views/RCTPicker*",
                                "React/Views/RCTRefreshControl*",
                                "React/Views/RCTSlider*",
                                "React/Views/RCTSwitch*",
    ss.private_header_files   = "React/Cxx*/*.h"
  end

  # Add a subspec containing just the headers for each
  # pod that should live under <React/*.h>
  header_subspecs.each do |name, headers|
    s.subspec name do |ss|
      ss.source_files = headers
      ss.dependency "React-Core/Default"
    end
  end

  s.dependency "Folly", folly_version
  s.dependency "React-cxxreact", pod_version
  s.dependency "React-jsi", pod_version
  s.dependency "React-jsiexecutor", pod_version
  s.dependency "yoga", "#{pod_version}.React"
  s.dependency "glog"
end
