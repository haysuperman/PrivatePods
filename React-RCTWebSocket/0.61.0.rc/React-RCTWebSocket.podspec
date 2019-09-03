# coding: utf-8
# Copyright (c) Facebook, Inc. and its affiliates.
#
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.

version = "v0.61.0-rc.0"
pod_version = "0.61.0.rc"

Pod::Spec.new do |s|
  s.name                   = "React-RCTWebSocket"
  s.version                = pod_version
  s.summary                = "A library for supporting WebSockets, a protocol which provides full-duplex communication channels over a single TCP connection." 
  s.homepage               = "http://facebook.github.io/react-native/"
  s.documentation_url      = "https://facebook.github.io/react-native/docs/network#websocket-support"
  s.license                = { :type => 'MIT' }
  s.author                 = "Facebook, Inc. and its affiliates"
  s.platforms              = { :ios => "9.0", :tvos => "9.2" }
  s.source                 = { :git => 'https://github.com/facebook/react-native.git', :tag => version }
  s.source_files           = "Libraries/WebSocket/*.{m}"
  s.header_dir             = "RCTWebSocket"
  s.static_framework       = true

  s.dependency "React-Core/RCTWebSocketHeaders", pod_version
end
