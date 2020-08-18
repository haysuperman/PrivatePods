rn_version = "0.61.2"

Pod::Spec.new do |s|
  s.name             = 'RNFetchBlob'
  s.version          = '0.11.2'
  s.summary          = 'A module provides upload, download, and files access API. Supports file stream read/write for process large files.'
  s.requires_arc = true
  s.license      = 'MIT'
  s.homepage     = 'n/a'
  s.source       = { :git => "https://github.com/joltup/rn-fetch-blob" }
  s.author       = 'Joltup'
  s.source_files = 'ios/**/*.{h,m}'
  s.platform     = :ios, "8.0"
  s.static_framework = true

  s.dependency 'React-Core', rn_version
end