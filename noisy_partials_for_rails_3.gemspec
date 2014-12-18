Gem::Specification.new do |s|
  s.name        = 'noisy_partials_for_rails_3'
  s.version     = '0.0.2'
  s.date        = '2013-08-16'
  s.summary     = "Inserts comments at start and end of partial with path to source."
  s.description = <<EOF
Inserts an HTML comment at the beggining and ending of html partials
with the path to the partial, so that "view vource"
can tell you exactly what partial is responsible for the piece of
HTML you're looking at.

Limited to files ending with .html,.haml,.erb, and .rhtml
and Rails 3.0.x ONLY.
See https://github.com/gwshaw/noisy_partials for a 3.1 compatibile version
EOF
  s.authors     = ["Gwyn Morfey", "George Shaw", "masukomi"]
  s.email       = ['masukomi@masukomi.org']
  s.files       = ["lib/noisy_partials_for_rails_3.rb"]
  s.homepage    = "https://github.com/masukomi/noisy_partials"

  s.add_dependency "rails", "~> 4.0.0"
end
