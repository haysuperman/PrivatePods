rn_version = "0.61.2"

Pod::Spec.new do |s|

  s.name            = "BVLinearGradient"
  s.version         = '2.4.4'
  s.homepage        = "https://github.com/brentvatne/react-native-linear-gradient"
  s.summary         = "A <LinearGradient /> component for react-native"
  s.license         = "MIT"
  s.author          = { "Brent Vatne" => "brentvatne@gmail.com" }
  s.ios.deployment_target = '7.0'
  s.tvos.deployment_target = '9.0'
  s.source          = { :git => "https://github.com/brentvatne/react-native-linear-gradient.git", :tag => "v#{s.version}" }
  s.source_files    = 'BVLinearGradient/*.{h,m}'
  s.preserve_paths  = "**/*.js"
  s.frameworks = 'UIKit', 'QuartzCore', 'Foundation'
  s.static_framework = true

  s.dependency 'React', rn_version

end