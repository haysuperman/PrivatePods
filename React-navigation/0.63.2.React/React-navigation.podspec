rn_version = "0.63.2"
custom_version = "0.63.2.React"

Pod::Spec.new do |s|

  s.name         = "React-navigation"
  s.version      = custom_version
  s.homepage     = "https://github.com/react-navigation/react-navigation"
  s.license      = "MIT"
  s.author       = { 'Krzysztof Magiera' => 'krzys.magiera@gmail.com' }
  s.platforms    = { :ios => "10.0", :tvos => "10.0" }
  s.source       = { :git => "https://github.com/react-navigation/react-navigation", :tag => "@react-navigation/core@5.15.0" }
#   s.source_files = "ios/**/*.{h,m}"
  s.static_framework = true

  s.dependency "React", rn_version

end