# 2.0.1 / 2013-02-11

* Updates travis build matrix.

# 2.0.0 / 2012-07-20

* Removed debug_mail and unit_test rake tasks.
* Configure RSpec to include a SpecHelpers module in spec_helper.rb
* Removed yard, wlang, bundler dependencies in default .noespec

# 1.7.4 / 2012-04-26

* Changed the official name to rubygem.noe.
* Updated .noespec files with accurate source and documentation github links.
* Bumped dependencies: rspec ~> 2.9, bundler ~> 1.1, bluecloth ~> 2.2

# 1.7.3 / 2012-02-25

* Add a default travis-ci build matrix for rubies 1.9

# 1.7.2 / 2012-02-25

* Add a default travis-ci build matrix for rubies 1.9 (staled)

# 1.7.1 / 2012-02-25

* Do not hack on bundle in Rakefile

# 1.7.0 / 2012-01-12

* Use the correct version number when generating CHANGELOG
* Fix version number of the template itself

# 1.6.0 / 2011-12-09

* Moved to rspec 1.7.0

# 1.5.1 / 2011-08-31

* The whole template has been cleaned so as to have proper line endings and no 
  trailing spaces (eregon)

# 1.5.0 / 2011-08-20

* The Gemfile do not depend to the gemspec anymore and reflects fine-grained 
  groups from the .noespec file

# 1.4.0 / 2011-07-29

* Fixed some error messages
* Bumped all default dependencies to most recent library versions
* Removed .gemtest from the template
* Changes the spec and test patterns to test_*.rb and updated default spec 
  generated
* Changed the regular expression for changelog sections to /^# / instead of /^#/ 

# 1.3.0 / 2011-02-03

* Enhanced the way library version is handled. A !{upper}::Version module is now generated from
  the noespec (and is kept safe-overridable by default). !{upper}::VERSION is kept and is set by 
  that module to the correct value. As a side effect, the .gemspec can now be built even if 
  dependencies are not met.
* Added the ability of the template to be tested with rubygems-test
* spec/spec_helper.rb is not safe-override by default anymore
* Fixed a bug that led 'rake -T' to ignore debug_mail

# 1.2.0 / 2011-01-17

* A 'description' variable is introduced in .noespec and made mandatory to avoid weird results 
  on rubygems.org when using the whole README.md file for project description.
* A 'version' variable is introduced in .noespec and made mandatory.
* Enhanced 'rake package/gem' to be configurable from .noespec under variables/rake_tasks/gem
* Enhanced 'rake unit_test' to be configurable from .noespec under variables/rake_tasks/unit_test
* Enhanced 'rake spec_test' to be configurable from .noespec under variables/rake_tasks/unit_test
* Enhanced 'rake yard' to be configurable from .noespec under variables/rake_tasks/yard
* Added 'rake debug_mail' which is configurable from .noespec under variables/rake_tasks/debug_mail
* lib/__lower__/loader.rb only use plain requires instead of a more complex algorithm. This follows
  the discussion with Luis Lavena on ruby-talk (http://bit.ly/gqukPw)
* Added a proposal dependency (wlang ~> 0.10.1) required by the debug_mail task
* Fixed tasks/unit_test.rake under 1.9.2 (raised 'no such file to load -- []' with options=[] instead 
  of nil)

# 1.1.0 / 2011-01-11

* Added the tasks folder with well documented rake tasks
* Added a dependency loader in __lower__/loader.rb that helps requiring gems the good way
* Added Bundler support to easy developer's job trough Gemfile and "require 'bundle/setup'" in Rakefile
* LICENCE.txt -> LICENCE.md
* Follows a lot of changes from Noe 1.0.0 -> 1.1.0

# 1.0.0 / 2011-01-11

* Birthday
