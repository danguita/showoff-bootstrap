# A ShowOff presentation software starting point

## What is ShowOff?

*"the best damn presentation software a developer could ever love"*

More info at
[https://github.com/schacon/showoff](https://github.com/schacon/showoff#readme).

## Getting Started

### RVM

There's an `.rvmrc` file that sets Ruby to 1.9.2-p320 and creates a
gemset called `showoff-bootstrap`.

It is highly recommended to use [RVM](https://rvm.beginrescueend.com/) in
order to keep clean your Ruby and Rubygems environment.

### Bundler

This repo also includes a `Gemfile` that allows you to install and
manage all ShowOff dependencies using [Bundler](http://gembundler.com/) tool.

If you don't have Bundler installed, run the following command:

    gem install bundler

Then go to your cloned showoff-bootstrap directory and run `bundle
install`. You will get an output like this:

    Fetching gem metadata from http://rubygems.org/.....
    Using rake (0.9.2.2) 
    Installing blankslate (2.1.2.4) 
    Installing bluecloth (2.2.0) with native extensions 
    Installing gli (1.6.0) 
    Installing json (1.7.5) with native extensions 
    Installing nokogiri (1.5.5) with native extensions 
    Installing parslet (1.4.0) 
    Installing pdfkit (0.5.2) 
    Installing rack (1.4.1) 
    Installing rack-protection (1.2.0) 
    Installing rmagick (2.13.1) with native extensions 
    Installing sass (3.2.2) 
    Installing tilt (1.3.3) 
    Installing sinatra (1.3.3) 
    Installing showoff (0.7.0) 
    Installing wkhtmltopdf-binary (0.9.9.1) 
    Using bundler (1.2.1)

### Styles

ShowOff Bootstrap lets you to write stylesheets using [Sass
lang](http://sass-lang.com/).

The stylesheets you should edit are located in
`stylesheets/sass/`. There's a Rake task to get your stylesheets
compiled as regular CSS files.

Note: If you don't want to use Sass just put your `.css` in the root
directory and will be loaded when server starts.

### Rake tasks

`rake -T`:

    rake server:start    # Compile assets and start server
    rake server:check    # Check if showoff server is running
    rake styles:compile  # Convert Sass stylesheets into compressed CSS
    rake pdf:save        # Save a PDF version of the presentation

### Sample content

Some sample sections and slides are included:

* Title
* Content
* Credits

There're also defined on `showoff.json` config file.
