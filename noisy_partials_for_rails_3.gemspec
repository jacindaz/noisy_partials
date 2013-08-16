Gem::Specification.new do |s|
  s.name        = 'noisy_partials_for_rails_3'
  s.version     = '0.0.1'
  s.date        = '2013-02-08'
  s.summary     = "Inserts name of partial in HTML comment in view."
  s.description = <<EOF
Limited to files ending with .html,.haml,.erb, and .rhtml
and Rails 3.0.x ONLY. 
See https://github.com/gwshaw/noisy_partials for a 3.1 compatibile version
EOF
  s.authors     = ["Gwyn Morfey", "George Shaw", "masukomi"]
  s.email       = ['masukomi@masukomi.org']
  s.files       = ["lib/noisy_partials_for_rails_3.rb"]
  s.homepage    = "https://github.com/masukomi/noisy_partials"
  
  s.add_dependency "rails", "~> 3.0.0"
end
