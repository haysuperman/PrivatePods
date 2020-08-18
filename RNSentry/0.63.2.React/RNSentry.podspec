rn_version = "0.63.2"
custom_version = "0.63.2.React"

Pod::Spec.new do |s|
  s.name           = 'RNSentry'
  s.version        = custom_version
  s.license        = 'MIT'
  s.summary        = 'Official Sentry SDK for react-native'
  s.author         = 'Sentry'
  s.homepage       = "https://github.com/getsentry/sentry-react-native"
  s.source         = { :git => 'https://github.com/getsentry/sentry-react-native.git', :tag => "1.0.9"}
  s.platform       = { :ios => "10.0", :tvos => "10.0" }

  s.ios.deployment_target = "8.0"
  s.tvos.deployment_target = "9.0"
  s.static_framework = true

  s.preserve_paths = '*.js'

  s.dependency 'React', rn_version
  s.dependency 'Sentry', '~> 4.4.0'

  s.source_files = 'ios/RNSentry.{h,m}'
  s.public_header_files = 'ios/RNSentry.h'
end