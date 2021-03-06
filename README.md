# Noe template for ruby gems

This project provides a [Noe](https://github.com/blambeau/noe) template for creating a
ruby gem library. Generated project comes with rake tasks to support the lifecycle of
the library (testing, releasing, and so on). Following Noe's philosophy this template
also helps you understanding the ruby ecosystem by providing a fully documented project,
rake tasks, and so on.

## Install

* You'll need Noe to use this template, see: https://github.com/blambeau/noe
* You'll also need bundler, see http://gembundler.com/
* Copy the whole folder in your ~/.noe skeleton folder

In other words

    [sudo] gem install noe bundler
    cd ~/.noe
    git clone git://github.com/blambeau/rubygem.noe.git

### Creating a ruby project

    # Prepare generation
    noe prepare --template=rubygem.noe foo
    cd foo

    # Edit specific information about your project
    edit foo.noespec

    # Let Noe generate your project
    noe go

    # Install your ruby dependencies then run rake
    bundle install
    rake

## Rake tasks installed by this template

The following rake tasks are provided to your Rakefile by this template. Have a look at the
_tasks_ folder for specific configuration additional information.

    # Running tests
    rake spec_test        # Run RSpec code examples
    rake unit_test        # Run unit tests
    rake test             # spec_test & unit_test

    # Generating documentation
    rake yard             # Generate YARD Documentation

    # Releasing and packaging
    rake gem              # Build the gem file
    rake package          # Build all the packages
    rake repackage        # Force a rebuild of the package files
    rake clobber_package  # Remove package products
