# coding: utf-8
# Copyright (c) Facebook, Inc. and its affiliates.
#
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.

version = 0.61.0-rc.0

Pod::Spec.new do |s|
  s.name                   = "React-RCTBlob"
  s.version                = version
  s.summary                = "An API for displaying iOS action sheets and share sheets."
  s.homepage               = "http://facebook.github.io/react-native/"
  s.license                = { :type => 'MIT' }
  s.author                 = "Facebook, Inc. and its affiliates"
  s.platforms              = { :ios => "9.0", :tvos => "9.2" }
  s.source                 = { :git => 'https://github.com/facebook/react-native.git', :tag => version }
  # RCTBlobCollector.h is not included in the React module as it has C++ code
  s.source_files           = "*.{m,mm}", "RCTBlobCollector.h"
  s.header_dir             = "RCTBlob"
  s.static_framework       = true

  s.dependency "React-Core/RCTBlobHeaders", version
  s.dependency "React-RCTNetwork", version
  s.dependency "React-RCTWebSocket", version
  s.dependency "React-jsi", version
end
