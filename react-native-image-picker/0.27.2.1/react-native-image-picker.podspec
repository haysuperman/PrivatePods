
rn_version = "0.61.2"

Pod::Spec.new do |s|
  s.name         = "react-native-image-picker"
  s.version      = "0.27.2.1"
  s.summary      = "A React Native module that allows you to use native UI to select media from the device library or directly from the camera"

  s.authors      = { 'Marc Shilling' => 'marcshilling@gmail.com' }
  s.homepage     = "https://github.com/react-community/react-native-image-picker"
  s.license      = "MIT"
  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/xcuYao/react-native-image-picker.git", :branch => "opt", :tag => 'v0.27.2.1' }
  s.source_files  = "ios/*.{h,m}"
  s.static_framework = true
  
  s.dependency "React", rn_version

end