# coding: utf-8
# Copyright (c) Facebook, Inc. and its affiliates.
#
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.

version = "v0.61.0-rc.0"
rn_version = "0.61.0.rc"

Pod::Spec.new do |s|
  s.name                   = "React-DevSupport"
  s.version                = rn_version
  s.summary                = "-"  # TODO
  s.homepage               = "http://facebook.github.io/react-native/"
  s.license                = { :type => 'MIT' }
  s.author                 = "Facebook, Inc. and its affiliates"
  s.platforms              = { :ios => "9.0", :tvos => "9.2" }
  s.source                 = { :git => 'https://github.com/facebook/react-native.git', :tag => version }
  s.source_files           = "React/DevSupport/*.{mm,m}",
                             "React/Inspector/*.{mm,m}"
  s.header_dir             = "DevSupport"
  s.static_framework       = true

  s.dependency "React-Core/DevSupportHeaders", rn_version
  s.dependency "React-RCTWebSocket", rn_version
  s.dependency "React-jsinspector", rn_version
end
