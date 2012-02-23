Gem::Specification.new do |s|
  s.name        = 'profile_require'
  s.version     = '0.0.2'
  s.date        = '2012-02-08'
  s.summary     = "Simple profiling time elapsed in requires"
  s.description = "Simple profiling time elapsed in requires

This is very useful in large projects. Currently only prints time
elapsed for require to STDERR, since this is what I need."
  s.authors     = ["Johannes Thoma"]
  s.email       = 'johannes.thoma@gmx.at'
  s.files       = ["lib/profile_require.rb"]
  s.homepage    = 'http://rubygems.org/gems/profile-require'

  s.require_paths = %w[lib]
end
