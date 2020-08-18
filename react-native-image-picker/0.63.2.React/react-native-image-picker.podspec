
rn_version = "0.63.2"
custom_version = "0.63.2.React"

Pod::Spec.new do |s|
  s.name         = "react-native-image-picker"
  s.version      = custom_version
  s.summary      = "A React Native module that allows you to use native UI to select media from the device library or directly from the camera"

  s.authors      = { 'Marc Shilling' => 'marcshilling@gmail.com' }
  s.homepage     = "https://github.com/react-community/react-native-image-picker"
  s.license      = "MIT"
  s.platform     = :ios, "10.0"

  s.source       = { :git => "https://github.com/xcuYao/react-native-image-picker.git", :branch => "opt", :tag => 'v0.27.2.3' }
  s.source_files  = "ios/*.{h,m}"
  s.static_framework = true
  
  s.dependency "React", rn_version

end