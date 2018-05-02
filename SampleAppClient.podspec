Pod::Spec.new do |s|
  s.name = 'SampleAppClient'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.version = '0.0.1'
  s.source = { :git => 'git@github.com:swagger-api/swagger-mustache.git', :tag => 'v1.0.0' }
  s.authors = 'kfurue'
  s.license = 'Proprietary'
  s.source_files = 'SampleAppClient/Classes/**/*.swift'
  s.dependency 'RxSwift', '~> 4.0'
  s.dependency 'Alamofire', '~> 4.5.0'
end
