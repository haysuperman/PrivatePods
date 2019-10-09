rn_version = "0.61.2"

Pod::Spec.new do |s|

  s.name         = "RNGestureHandler"
  s.version      = '1.4.1'
  s.homepage     = "https://github.com/kmagiera/react-native-gesture-handler"
  s.license      = "MIT"
  s.author       = { 'Krzysztof Magiera' => 'krzys.magiera@gmail.com' }
  s.platforms    = { :ios => "9.0", :tvos => "9.0" }
  s.source       = { :git => "https://github.com/kmagiera/react-native-gesture-handler", :tag => "#{s.version}" }
  s.source_files = "ios/**/*.{h,m}"
  s.static_framework = true

  s.dependency "React", rn_version

end