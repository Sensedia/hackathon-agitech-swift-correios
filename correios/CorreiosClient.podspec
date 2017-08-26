Pod::Spec.new do |s|
  s.name = 'CorreiosClient'
  s.ios.deployment_target = '9.0'
  s.version = '1.0.0'
  s.source = { :git => 'https://henriquec_cit@bitbucket.org/sensediahackathon/correios.git', :tag => 'v1.0.0' }
  s.authors = 'Swagger Codegen'
  s.license = 'Apache License, Version 2.0'
  s.source_files = 'SwaggerClient/Classes/Swaggers/**/*.swift'
  s.dependency 'Alamofire', '~> 4.0'
end
