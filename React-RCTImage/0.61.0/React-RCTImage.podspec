# coding: utf-8
# Copyright (c) Facebook, Inc. and its affiliates.
#
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.

rn_tag = "v0.61.0"
rn_version = "0.61.0"

Pod::Spec.new do |s|
  s.name                   = "React-RCTImage"
  s.version                = rn_version
  s.summary                = "A React component for displaying different types of images."
  s.homepage               = "http://facebook.github.io/react-native/"
  s.documentation_url      = "https://facebook.github.io/react-native/docs/image"
  s.license                = { :type => 'MIT' }
  s.author                 = "Facebook, Inc. and its affiliates"
  s.platforms              = { :ios => "9.0", :tvos => "9.2" }
  s.source                 = { :git => 'https://github.com/facebook/react-native.git', :tag => rn_tag }
  s.source_files           = "Libraries/Image/*.{m}"
  s.header_dir             = "RCTImage"
  s.static_framework       = true

  s.dependency "React-Core/RCTImageHeaders", rn_version
  s.dependency "React-RCTNetwork", rn_version
end
