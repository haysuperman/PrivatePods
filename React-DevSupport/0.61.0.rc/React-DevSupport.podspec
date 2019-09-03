# coding: utf-8
# Copyright (c) Facebook, Inc. and its affiliates.
#
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.

version = 0.61.0-rc.0
pod_version = 0.61.0.rc

Pod::Spec.new do |s|
  s.name                   = "React-DevSupport"
  s.version                = pod_version
  s.summary                = "-"  # TODO
  s.homepage               = "http://facebook.github.io/react-native/"
  s.license                = { :type => 'MIT' }
  s.author                 = "Facebook, Inc. and its affiliates"
  s.platforms              = { :ios => "9.0", :tvos => "9.2" }
  s.source                 = { :git => 'https://github.com/facebook/react-native.git', :tag => version }
  s.source_files           = "DevSupport/*.{mm,m}",
                             "Inspector/*.{mm,m}"
  s.header_dir             = "DevSupport"
  s.static_framework       = true

  s.dependency "React-Core/DevSupportHeaders", pod_version
  s.dependency "React-RCTWebSocket", pod_version
  s.dependency "React-jsinspector", pod_version
end
