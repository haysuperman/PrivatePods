rn_version = "0.61.2"

Pod::Spec.new do |s|

  s.name          = "RNFastImage"
  s.version       = "7.0.0"
  s.summary       = "🚩 FastImage, performant React Native image component."
  s.authors       = { "Dylan Vann" => "dylan@dylanvann.com" }
  s.homepage      = "https://github.com/DylanVann/react-native-fast-image#readme"
  s.license       = "MIT"
  s.platforms     = { :ios => "8.0", :tvos => "9.0" }
  s.framework     = 'UIKit'
  s.requires_arc  = true
  s.source        = { :git => "https://github.com/DylanVann/react-native-fast-image.git", :tag => "v#{s.version}" }
  s.source_files  = "ios/**/*.{h,m}"
  s.static_framework = true

  s.dependency 'React', rn_version
  s.dependency 'SDWebImage', '~> 5.0'
  s.dependency 'SDWebImageWebPCoder', '~> 0.2.3'
end