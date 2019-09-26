# coding: utf-8
# Copyright (c) Facebook, Inc. and its affiliates.
#
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.

rn_tag = "v0.61.0"
rn_version = "0.61.0"

Pod::Spec.new do |s|
  s.name                   = "React-RCTNetwork"
  s.version                = rn_version
  s.summary                = "The networking library of React Native."
  s.homepage               = "http://facebook.github.io/react-native/"
  s.license                = { :type => 'MIT' }
  s.author                 = "Facebook, Inc. and its affiliates"
  s.platforms              = { :ios => "9.0", :tvos => "9.2" }
  s.source                 = { :git => 'https://github.com/facebook/react-native.git', :tag => rn_tag }
  s.source_files           = "Libraries/Network/*.{m,mm}"
  s.header_dir             = "RCTNetwork"
  s.static_framework       = true

  s.dependency "React-Core/RCTNetworkHeaders", rn_version
end
