# coding: utf-8
# Copyright (c) Facebook, Inc. and its affiliates.
#
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.

version = '0.60.4'

folly_compiler_flags = '-DFOLLY_NO_CONFIG -DFOLLY_MOBILE=1 -DFOLLY_USE_LIBCPP=1 -Wno-comma -Wno-shorten-64-to-32'
folly_version = '2018.10.22.00'
boost_compiler_flags = '-Wno-documentation'

Pod::Spec.new do |s|
  s.name                   = "React-Core"
  s.version                = version
  s.summary                = "The core of React Native."
  s.homepage               = "http://facebook.github.io/react-native/"
  s.license                = { :type => 'MIT' }
  s.author                 = "Facebook, Inc. and its affiliates"
  s.platforms              = { :ios => "9.0", :tvos => "9.2" }
  s.source                 = { :git => 'https://github.com/facebook/react-native.git', :tag => "v#{version}" }
  s.source_files           = "React/**/*.{c,h,m,mm,S,cpp}"
  s.exclude_files          = "React/DevSupport/**/*",
                             "React/Fabric/**/*",
                             "React/Inspector/**/*"
  s.ios.exclude_files      = "**/RCTTV*.*"
  s.tvos.exclude_files     = "React/Modules/RCTClipboard*",
                             "React/Views/RCTDatePicker*",
                             "React/Views/RCTPicker*",
                             "React/Views/RCTRefreshControl*",
                             "React/Views/RCTSlider*",
                             "React/Views/RCTSwitch*",
  s.compiler_flags         = folly_compiler_flags + ' ' + boost_compiler_flags
  s.header_dir             = "React"
  s.framework              = "JavaScriptCore"
  s.library                = "stdc++"
  s.pod_target_xcconfig    = { "HEADER_SEARCH_PATHS" => "\"$(PODS_TARGET_SRCROOT)/ReactCommon\" \"$(PODS_ROOT)/boost-for-react-native\" \"$(PODS_ROOT)/DoubleConversion\" \"$(PODS_ROOT)/Folly\" \"$(PODS_ROOT)/yoga\"" }
  s.dependency "Folly", folly_version
  s.dependency "React-jsi", version
  s.dependency "React-cxxreact", version
  s.dependency "React-jsiexecutor", version
  s.dependency "yoga", "#{version}.React"
  s.dependency "glog"

end
