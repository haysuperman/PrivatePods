rn_version = "0.63.2"
custom_version = "0.63.2.React"

Pod::Spec.new do |s|

  s.name         = "react-native-safe-area-context"
  s.version      = custom_version
  s.homepage     = "https://github.com/th3rdwave/react-native-safe-area-context"
  s.license      = "MIT"
  s.author       = { 'Krzysztof Magiera' => 'krzys.magiera@gmail.com' }
  s.platforms    = { :ios => "10.0", :tvos => "10.0" }
  s.source       = { :git => "https://github.com/th3rdwave/react-native-safe-area-context.git", :tag => "v3.1.8" }
  s.source_files = "ios/**/*.{h,m}"
  s.static_framework = true

  s.dependency 'React-Core', rn_version

end

# require 'json'

# package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

# Pod::Spec.new do |s|
#   s.name         = "react-native-safe-area-context"
#   s.version      = package['version']
#   s.summary      = package['description']
#   s.license      = package['license']

#   s.authors      = package['author']
#   s.homepage     = package['homepage']
#   s.platforms    = { :ios => "9.0", :tvos => "9.2" }

#   s.source       = { :git => "https://github.com/th3rdwave/react-native-safe-area-context.git", :tag => "v#{s.version}" }
#   s.source_files  = "ios/**/*.{h,m}"

#   s.dependency 'React-Core'
# end