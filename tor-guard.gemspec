Gem::Specification.new do |s|
  s.name        = 'tor-guard'
  s.version     = '1.0.1'
  s.date        = '2017-08-06'
  s.summary     = 'Identify IPs coming through the Tor network.'
  s.description = 'Easily identify IPs coming through the Tor network.'
  s.authors     = ['Corey Prophitt']
  s.email       = 'prophitt.corey@icloud.com'
  s.executables = ['tg']
  s.files       = Dir.glob('{bin,lib}/**/*.rb') + ['README.md']
  s.homepage    = 'https://rubygems.org/gems/tor-guard.rb'
  s.license     = 'GPL-3.0'
end
