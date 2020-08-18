rn_version = "0.63.2"
custom_version = "0.63.2.React"

Pod::Spec.new do |s|

  s.name            = "BVLinearGradient"
  s.version         = custom_version
  s.homepage        = "https://github.com/brentvatne/react-native-linear-gradient"
  s.summary         = "A <LinearGradient /> component for react-native"
  s.license         = "MIT"
  s.author          = { "Brent Vatne" => "brentvatne@gmail.com" }
  s.platforms       = { :ios => "10.0", :tvos => "10.0" }
  s.source          = { :git => "https://github.com/brentvatne/react-native-linear-gradient.git", :tag => "v2.4.4" }
  s.source_files    = 'BVLinearGradient/*.{h,m}'
  s.preserve_paths  = "**/*.js"
  s.frameworks = 'UIKit', 'QuartzCore', 'Foundation'
  s.static_framework = true

  s.dependency 'React', rn_version

end