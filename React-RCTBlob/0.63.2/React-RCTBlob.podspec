# coding: utf-8
# Copyright (c) Facebook, Inc. and its affiliates.
#
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.

rm_tag = "v0.63.2"
rn_version = "0.63.2"

folly_compiler_flags = '-DFOLLY_NO_CONFIG -DFOLLY_MOBILE=1 -DFOLLY_USE_LIBCPP=1 -Wno-comma -Wno-shorten-64-to-32'
folly_version = '2020.01.13.00'

Pod::Spec.new do |s|
  s.name                   = "React-RCTBlob"
  s.version                = rn_version
  s.summary                = "An API for displaying iOS action sheets and share sheets."
  s.homepage               = "https://reactnative.dev/"
  s.license                = { :type => 'MIT' }
  s.author                 = "Facebook, Inc. and its affiliates"
  s.platforms              = { :ios => "10.0", :tvos => "10.0" }
  s.source                 = { :git => 'https://github.com/facebook/react-native.git', :tag => rm_tag }
  s.compiler_flags         = folly_compiler_flags + ' -Wno-nullability-completeness'
  s.source_files           = "Libraries/Blob/*.{h,m,mm}"
  s.header_dir             = "RCTBlob"
  s.static_framework       = true
  s.pod_target_xcconfig    = {
                              "USE_HEADERMAP" => "YES",
                              "CLANG_CXX_LANGUAGE_STANDARD" => "c++14",
                              "HEADER_SEARCH_PATHS" => "\"$(PODS_ROOT)/Folly\""
                            }

  s.dependency "Folly", folly_version
  s.dependency "FBReactNativeSpec", rn_version
  s.dependency "ReactCommon/turbomodule/core", rn_version
  s.dependency "React-jsi", rn_version
  s.dependency "React-Core/RCTBlobHeaders", rn_version
  s.dependency "React-Core/RCTWebSocket", rn_version
  s.dependency "React-RCTNetwork", rn_version
end