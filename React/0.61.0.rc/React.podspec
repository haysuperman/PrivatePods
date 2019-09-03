# coding: utf-8
# Copyright (c) Facebook, Inc. and its affiliates.
#
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.

version = 0.61.0-rc.0
pod_version = 0.61.0.rc

Pod::Spec.new do |s|
  s.name                   = "React"
  s.version                = pod_version
  s.summary                = "hey"
  s.description            = <<-DESC
                               React Native apps are built using the React JS
                               framework, and render directly to native UIKit
                               elements using a fully asynchronous architecture.
                               There is no browser and no HTML. We have picked what
                               we think is the best set of features from these and
                               other technologies to build what we hope to become
                               the best product development framework available,
                               with an emphasis on iteration speed, developer
                               delight, continuity of technology, and absolutely
                               beautiful and fast products with no compromises in
                               quality or capability.
                             DESC
  s.homepage               = "http://facebook.github.io/react-native/"
  s.license                = { :type => 'MIT' }
  s.author                 = "Facebook, Inc. and its affiliates"
  s.platforms              = { :ios => "9.0", :tvos => "9.2" }
  s.source                 = { :git => 'https://github.com/facebook/react-native.git', :tag => version }
  s.cocoapods_version      = ">= 1.2.0"

  s.dependency "React-Core", pod_version
  s.dependency "React-DevSupport", pod_version
  s.dependency "React-RCTActionSheet", pod_version
  s.dependency "React-RCTAnimation", pod_version
  s.dependency "React-RCTBlob", pod_version
  s.dependency "React-RCTImage", pod_version
  s.dependency "React-RCTLinking", pod_version
  s.dependency "React-RCTNetwork", pod_version
  s.dependency "React-RCTSettings", pod_version
  s.dependency "React-RCTText", pod_version
  s.dependency "React-RCTVibration", pod_version
  s.dependency "React-RCTWebSocket", pod_version
end