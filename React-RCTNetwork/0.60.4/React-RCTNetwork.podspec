# coding: utf-8
# Copyright (c) Facebook, Inc. and its affiliates.
#
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.

version = '0.60.4'

Pod::Spec.new do |s|
  s.name                   = "React-RCTNetwork"
  s.version                = version
  s.summary                = "The networking library of React Native."
  s.homepage               = "http://facebook.github.io/react-native/"
  s.license                = "Hello world"
  s.author                 = "Facebook, Inc. and its affiliates"
  s.platforms              = { :ios => "9.0", :tvos => "9.2" }
  s.source                 = { :git => "https://github.com/xcuYao/react-native.git", :tag => version}
  s.source_files           = "Libraries/Network/*.{h,m,mm}"
  s.preserve_paths         = "package.json", "LICENSE", "LICENSE-docs"
  s.header_dir             = "React"

  s.dependency "React-Core", version
end
