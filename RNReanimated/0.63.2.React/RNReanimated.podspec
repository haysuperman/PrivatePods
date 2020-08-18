rn_version = "0.63.2"
custom_version = "0.63.2.React"

Pod::Spec.new do |s|
  s.name         = "RNReanimated"
  s.version      = custom_version
  s.summary      = 'More powerful alternative to Animated library for React Native.'
  s.description  = <<-DESC
                  RNReanimated
                   DESC
  s.homepage     = "https://github.com/kmagiera/react-native-reanimated"
  s.license      = "MIT"
  # s.license    = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author       = { "author" => "author@domain.cn" }
  s.platform     = :ios, "10.0"
  s.source       = { :git => "https://github.com/kmagiera/react-native-reanimated.git", :tag => "1.3.0" }

  s.source_files = "ios/**/*.{h,m}"
  s.requires_arc = true
  s.static_framework = true
  
  s.dependency "React", rn_version
end