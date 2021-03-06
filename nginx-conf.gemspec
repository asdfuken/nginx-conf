Gem::Specification.new do |s|
  s.name        = 'nginx-conf'
  s.version     = '0.0.10'
  s.license     = 'Unlicense'

  s.summary     = 'nginx.conf generator'
  s.description = 'nginx.conf generator with pretty DSL'

  s.authors     = ['Yota Toyama']
  s.email       = 'raviqqe@gmail.com'
  s.homepage    = 'https://github.com/raviqqe/nginx-conf.rb'

  s.add_dependency 'block-is-hash', '~> 0'
  s.add_dependency 'map-rec', '~> 0'

  s.files       = Dir['lib/**/*']
end
