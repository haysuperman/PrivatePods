# coding: utf-8
# Copyright (c) Facebook, Inc. and its affiliates.
#
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.

version = "v0.61.0-rc.0"
rn_version = "0.61.0.rc"

Pod::Spec.new do |s|
  s.name                   = "React-RCTLinking"
  s.version                = rn_version
  s.summary                = "A general interface to interact with both incoming and outgoing app links."
  s.homepage               = "http://facebook.github.io/react-native/"
  s.documentation_url      = "https://facebook.github.io/react-native/docs/linking"
  s.license                = { :type => 'MIT' }
  s.author                 = "Facebook, Inc. and its affiliates"
  s.platforms              = { :ios => "9.0", :tvos => "9.2" }
  s.source                 = { :git => 'https://github.com/facebook/react-native.git', :tag => version }
  s.source_files           = "Libraries/LinkingIOS/*.{m}"
  s.header_dir             = "RCTLinking"
  s.static_framework       = true

  s.dependency "React-Core/RCTLinkingHeaders", rn_version
end
