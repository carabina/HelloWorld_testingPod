Pod::Spec.new do |s|
  s.name             = 'HelloWorld_testingPod'
  s.version          = '0.1.0'
  s.summary          = 'Progress Indicator'
  s.description      = 'This is a progress indicator view.'

  s.homepage         = 'https://github.com/SunnySs/HelloWorld_testingPod'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'edward1879' => 'edward1879314@gmail.com' }
  s.source           = { :git => 'https://github.com/SunnySs/HelloWorld_testingPod.git', :tag => s.version.to_s }
  s.ios.deployment_target = '11.0'
  s.source_files = 'HelloWorld_testingPod/Classes/**/*'
  
  # s.resource_bundles = {
  #   'HelloWorld_testingPod' => ['HelloWorld_testingPod/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
