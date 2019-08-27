# coding: utf-8
# Copyright (c) Facebook, Inc. and its affiliates.
#
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.


Pod::Spec.new do |s|
  s.name                   = "React-jsinspector"
  s.version                = "0.60.4"
  s.summary                = "-"  # TODO
  s.homepage               = "http://facebook.github.io/react-native/"
  s.license                = "hello world"
  s.author                 = "Facebook, Inc. and its affiliates"
  s.platforms              = { :ios => "9.0", :tvos => "9.2" }
  s.source                 = { :git => 'https://github.com/xcuYao/react-native.git', :tag => "0.60.4"}
  s.source_files           = "ReactCommon/jsinspector/*.{cpp,h}"
  s.header_dir             = 'jsinspector'
end
