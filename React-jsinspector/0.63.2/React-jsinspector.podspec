# coding: utf-8
# Copyright (c) Facebook, Inc. and its affiliates.
#
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.

rn_tag = "v0.63.2"
rn_version = "0.63.2"

Pod::Spec.new do |s|
  s.name                   = "React-jsinspector"
  s.version                = rn_version
  s.summary                = "-"  # TODO
  s.homepage               = "https://reactnative.dev/"
  s.license                = { :type => 'MIT' }
  s.author                 = "Facebook, Inc. and its affiliates"
  s.platforms              = { :ios => "10.0", :tvos => "10.0" }
  s.source                 = { :git => 'https://github.com/facebook/react-native.git', :tag => rn_tag }
  s.source_files           = "ReactCommon/jsinspector/*.{cpp,h}"
  s.header_dir             = 'jsinspector'
  s.static_framework       = true
end