
rn_version = "0.63.2"
custom_version = "0.63.2.React"

Pod::Spec.new do |s|
  s.name         = "RNScreens"
  s.version      = custom_version
  s.summary      = "First incomplete navigation solution for your react-native app."
  s.description  = <<-DESC
                  RNScreens - first incomplete navigation solution for your React Native app
                   DESC
  s.homepage     = "https://github.com/kmagiera/react-native-screens"
  s.license      = "MIT"
  s.author       = { "author" => "author@domain.cn" }
  s.platform     = :ios, "10.0"
  s.source       = { :git => "https://github.com/kmagiera/react-native-screens.git", :tag => "2.0.0-alpha.3" }

  s.source_files = "ios/**/*.{h,m}"
  s.requires_arc = true
  s.static_framework = true

  s.dependency "React", rn_version
end