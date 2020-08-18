rn_version = "0.63.2"
custom_version = "0.63.2.React"

Pod::Spec.new do |s|
  s.name             = 'RNFetchBlob'
  s.version          = custom_version
  s.summary          = 'A module provides upload, download, and files access API. Supports file stream read/write for process large files.'
  s.requires_arc = true
  s.license      = 'MIT'
  s.homepage     = 'n/a'
  s.source       = { :git => "https://github.com/joltup/rn-fetch-blob" , :tag => "v0.11.2"}
  s.author       = 'Joltup'
  s.source_files = 'ios/**/*.{h,m}'
  s.platform     = :ios, "8.0"
  s.static_framework = true

  s.dependency 'React-Core', rn_version
end