rn_version = "0.63.2"
custom_version = "0.63.2.React"

Pod::Spec.new do |s|

  s.name         = "RNGestureHandler"
  s.version      = custom_version
  s.homepage     = "https://github.com/kmagiera/react-native-gesture-handler"
  s.license      = "MIT"
  s.author       = { 'Krzysztof Magiera' => 'krzys.magiera@gmail.com' }
  s.platforms    = { :ios => "10.0", :tvos => "10.0" }
  s.source       = { :git => "https://github.com/kmagiera/react-native-gesture-handler", :tag => "1.4.1" }
  s.source_files = "ios/**/*.{h,m}"
  s.static_framework = true

  s.dependency "React", rn_version

end