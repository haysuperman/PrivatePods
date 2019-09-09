# coding: utf-8
# Copyright (c) Facebook, Inc. and its affiliates.
#
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.

version = "v0.61.0-rc.0"
rn_version = "0.61.0.rc"

Pod::Spec.new do |s|
  s.name                   = "React-RCTVibration"
  s.version                = rn_version
  s.summary                = "An API for controlling the vibration hardware of the device." 
  s.homepage               = "http://facebook.github.io/react-native/"
  s.documentation_url      = "https://facebook.github.io/react-native/docs/vibration"
  s.license                = { :type => 'MIT' }
  s.author                 = "Facebook, Inc. and its affiliates"
  s.platforms              = { :ios => "9.0", :tvos => "9.2" }
  s.source                 = { :git => 'https://github.com/facebook/react-native.git', :tag => version }
  s.source_files           = "Libraries/Vibration/*.{m}"
  s.header_dir             = "RCTVibration"
  s.static_framework       = true

  s.dependency "React-Core/RCTVibrationHeaders", rn_version
end
