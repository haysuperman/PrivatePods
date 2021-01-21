rn_version = "0.63.2"
custom_version = "0.63.2.React"

Pod::Spec.new do |s|

  s.name         = "RNCMaskedView"
  s.version      = custom_version
  s.homepage     = "https://github.com/react-native-masked-view/masked-view"
  s.license      = "MIT"
  s.author       = { 'Krzysztof Magiera' => 'krzys.magiera@gmail.com' }
  s.platforms    = { :ios => "10.0", :tvos => "10.0" }
  s.source       = { :git => "https://github.com/react-native-masked-view/masked-view.git", :tag => "v0.2.0" }
  s.source_files = "ios/**/*.{h,m}"

  s.dependency 'React-Core', rn_version

end

# rn_version = "0.63.2"
# custom_version = "0.63.2.React"

# Pod::Spec.new do |s|
#   s.name         = "RNCMaskedView"
#   s.version      = package['version']
#   s.summary      = package['description']
#   s.license      = package['license']

#   s.authors      = package['author']
#   s.homepage     = package['homepage']
#   s.platforms    = { :ios => "9.0", :tvos => "9.0" }

#   s.source       = { :git => "https://github.com/react-native-masked-view/masked-view.git", :tag => "v#{s.version}" }
#   s.source_files  = "ios/**/*.{h,m}"

#   s.dependency 'React-Core'
# end