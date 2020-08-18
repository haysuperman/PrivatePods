
rn_version = "0.61.2"

Pod::Spec.new do |s|
  s.name             = "RNImageCropPicker"
  s.version          = '0.26.1'
  s.summary          = 'Select single or multiple images, with cropping option'
  s.requires_arc = true
  s.license      = 'MIT'
  s.homepage     = 'n/a'
  s.authors      = { "ivpusic" => "" }
  s.source       = { :git => "https://github.com/ivpusic/react-native-image-crop-picker", :tag => "v#{s.version}"}
  s.source_files = 'ios/src/*.{h,m}'
  s.platform     = :ios, "8.0"
  s.static_framework = true

  s.dependency 'RSKImageCropper'
  s.dependency 'QBImagePickerController'
  s.dependency 'React-Core', rn_version
  s.dependency 'React-RCTImage', rn_version
end