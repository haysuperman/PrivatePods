# coding: utf-8
# Copyright (c) Facebook, Inc. and its affiliates.
#
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.

rn_tag = "v0.63.2"
rn_version = "0.63.2"

Pod::Spec.new do |s|
  s.name                   = "React"
  s.version                = rn_version
  s.summary                = "A framework for building native apps using React"
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
  s.homepage               = "https://reactnative.dev/"
  s.license                = { :type => 'MIT' }
  s.author                 = "Facebook, Inc. and its affiliates"
  s.platforms              = { :ios => "10.0", :tvos => "10.0" }
  s.source                 = { :git => 'https://github.com/facebook/react-native.git', :tag => rn_tag }
  s.cocoapods_version      = ">= 1.2.0"

  s.dependency "React-Core", rn_version
  s.dependency "React-Core/DevSupport", rn_version
  s.dependency "React-Core/RCTWebSocket", rn_version
  s.dependency "React-RCTActionSheet", rn_version
  s.dependency "React-RCTAnimation", rn_version
  s.dependency "React-RCTBlob", rn_version
  s.dependency "React-RCTImage", rn_version
  s.dependency "React-RCTLinking", rn_version
  s.dependency "React-RCTNetwork", rn_version
  s.dependency "React-RCTSettings", rn_version
  s.dependency "React-RCTText", rn_version
  s.dependency "React-RCTVibration", rn_version
end