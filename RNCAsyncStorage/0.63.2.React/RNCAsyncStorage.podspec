rn_version = "0.63.2"
custom_version = "0.63.2.React"

Pod::Spec.new do |s|
  s.name         = "RNCAsyncStorage"
  s.version      = custom_version
  s.summary      = 'Asynchronous, persistent, key-value storage system for React Native.'
  s.license      = 'MIT'

  s.authors      = 'Krzysztof Borowy <krizzu.dev@gmail.com>'
  s.homepage     = 'https://github.com/react-native-community/react-native-async-storage#readme'
  s.platforms    = { :ios => "10.0", :tvos => "10.0" }

  s.source       = { :git => "https://github.com/react-native-community/react-native-async-storage.git", :tag => "v1.6.1" }
  s.source_files  = "ios/**/*.{h,m}"
  s.static_framework = true

  s.dependency 'React', rn_version
  
end