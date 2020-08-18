rn_version = "0.61.2"

Pod::Spec.new do |s|
  s.name         = "RNWebpSupport"
  s.version      = "0.4.0"
  s.license      = 'MIT'
  s.authors      = "Daniel Basedow, fork by @TGPSKI"
  s.homepage     = "https://github.com/xcuYao/react-native-webp-support"
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/xcuYao/react-native-webp-support.git", :branch => "opt" }

  s.static_framework = true
  
  s.source_files  = "ios/*.{h,m}"
  s.vendored_frameworks = '*.framework'
  s.dependency 'React', rn_version
end