# coding: utf-8
# Copyright (c) Facebook, Inc. and its affiliates.
#
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.


rn_tag = "v0.63.2"
rn_version = "0.63.2"

folly_compiler_flags = '-DFOLLY_NO_CONFIG -DFOLLY_MOBILE=1 -DFOLLY_USE_LIBCPP=1 -Wno-comma -Wno-shorten-64-to-32'
folly_version = '2020.01.13.00'
boost_compiler_flags = '-Wno-documentation'

Pod::Spec.new do |s|
  s.name                   = "ReactCommon"
  s.module_name            = "ReactCommon"
  s.version                = rn_version
  s.summary                = "-"  # TODO
  s.homepage               = "https://reactnative.dev/"
  s.license                = { :type => 'MIT'}
  s.author                 = "Facebook, Inc. and its affiliates"
  s.platforms              = { :ios => "10.0", :tvos => "10.0" }
  s.source                 = { :git => 'https://github.com/facebook/react-native.git', :tag => rn_tag }
  s.header_dir             = "ReactCommon" # Use global header_dir for all subspecs for use_framework compatibility
  s.static_framework       = true
  s.compiler_flags         = folly_compiler_flags + ' ' + boost_compiler_flags
  s.pod_target_xcconfig    = { "HEADER_SEARCH_PATHS" => "\"$(PODS_ROOT)/boost-for-react-native\" \"$(PODS_ROOT)/Folly\" \"$(PODS_ROOT)/DoubleConversion\" \"$(PODS_ROOT)/Headers/Private/React-Core\"",
                               "USE_HEADERMAP" => "YES",
                               "CLANG_CXX_LANGUAGE_STANDARD" => "c++14" }

  s.subspec "turbomodule" do |ss|
    ss.dependency "React-callinvoker", rn_version
    ss.dependency "React-Core", rn_version
    ss.dependency "React-cxxreact", rn_version
    ss.dependency "React-jsi", rn_version
    ss.dependency "Folly", folly_version
    ss.dependency "DoubleConversion"
    ss.dependency "glog"

    ss.subspec "core" do |sss|
      sss.source_files = "ReactCommon/turbomodule/core/*.{cpp,h}",
                         "ReactCommon/turbomodule/core/platform/ios/*.{mm,cpp,h}"
    end

    ss.subspec "samples" do |sss|
      sss.source_files = "ReactCommon/turbomodule/samples/*.{cpp,h}",
                         "ReactCommon/turbomodule/samples/platform/ios/*.{mm,cpp,h}"
      sss.dependency "ReactCommon/turbomodule/core", rn_version
    end
  end
end
