# coding: utf-8
# Copyright (c) Facebook, Inc. and its affiliates.
#
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.

version = '0.60.4'

Pod::Spec.new do |s|
  s.name                   = "React-RCTWebSocket"
  s.version                = version
  s.summary                = "A library for supporting WebSockets, a protocol which provides full-duplex communication channels over a single TCP connection." 
  s.homepage               = "http://facebook.github.io/react-native/"
  s.documentation_url      = "https://facebook.github.io/react-native/docs/network#websocket-support"
  s.license                = "hello world"
  s.author                 = "Facebook, Inc. and its affiliates"
  s.platforms              = { :ios => "9.0", :tvos => "9.2" }
  s.source                 = { :git => "https://github.com/xcuYao/react-native.git", :tag => version}
  s.source_files           = "Libraries/WebSocket/*.{h,m}",
                             "Libraries/fishhook/*.{h,c}"
  s.preserve_paths         = "package.json", "LICENSE", "LICENSE-docs"
  s.header_dir             = "React"

  s.dependency "React-Core", version
  s.dependency "React-fishhook", version
end
