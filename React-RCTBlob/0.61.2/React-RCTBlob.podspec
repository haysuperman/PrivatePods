# coding: utf-8
# Copyright (c) Facebook, Inc. and its affiliates.
#
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.

rm_tag = "v0.61.2"
rn_version = "0.61.2"

Pod::Spec.new do |s|
  s.name                   = "React-RCTBlob"
  s.version                = rn_version
  s.summary                = "An API for displaying iOS action sheets and share sheets."
  s.homepage               = "http://facebook.github.io/react-native/"
  s.license                = { :type => 'MIT' }
  s.author                 = "Facebook, Inc. and its affiliates"
  s.platforms              = { :ios => "9.0", :tvos => "9.2" }
  s.source                 = { :git => 'https://github.com/facebook/react-native.git', :tag => rm_tag }
  # RCTBlobCollector.h is not included in the React module as it has C++ code
  s.source_files           = "Libraries/Blob/*.{m,mm}", "Libraries/Blob/RCTBlobCollector.h"
  s.header_dir             = "RCTBlob"
  s.static_framework       = true

  s.dependency "React-Core/RCTBlobHeaders", rn_version
  s.dependency "React-RCTNetwork", rn_version
  s.dependency "React-Core/RCTWebSocket", rn_version
  s.dependency "React-jsi", rn_version
end
