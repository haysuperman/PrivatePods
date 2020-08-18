# coding: utf-8
# Copyright (c) Facebook, Inc. and its affiliates.
#
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.

rn_tag = "v0.63.2"
rn_version = "0.63.2"

folly_compiler_flags = '-DFOLLY_NO_CONFIG -DFOLLY_MOBILE=1 -DFOLLY_USE_LIBCPP=1 -Wno-comma -Wno-shorten-64-to-32'
folly_version = '2020.01.13.00'

Pod::Spec.new do |s|
  s.name                   = "React-RCTAnimation"
  s.version                = rn_version
  s.summary                = "A native driver for the Animated API."
  s.homepage               = "https://reactnative.dev/"
  s.license                = { :type => 'MIT' }
  s.author                 = "Facebook, Inc. and its affiliates"
  s.platforms              = { :ios => "10.0", :tvos => "10.0" }
  s.source                 = { :git => 'https://github.com/facebook/react-native.git', :tag => rn_tag }
  s.source_files           = "Libraries/NativeAnimation/{Drivers/*,Nodes/*,*}.{m,mm}"
  s.header_dir             = "RCTAnimation"
  s.compiler_flags         = folly_compiler_flags + ' -Wno-nullability-completeness'
  s.pod_target_xcconfig    = {
    "USE_HEADERMAP" => "YES",
    "CLANG_CXX_LANGUAGE_STANDARD" => "c++14",
    "HEADER_SEARCH_PATHS" => "\"$(PODS_ROOT)/Folly\""
  }
  s.static_framework       = true

  s.dependency "Folly", folly_version
  s.dependency "RCTTypeSafety", rn_version
  s.dependency "ReactCommon/turbomodule/core", rn_version
  s.dependency "React-jsi", rn_version
  s.dependency "FBReactNativeSpec", rn_version
  s.dependency "React-Core/RCTAnimationHeaders", rn_version
end