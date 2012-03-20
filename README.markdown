# Personalizable Vocabulary Builder #

## Stream-lined Testing ##
Refer to [Ruby on Rails Tutorial section](http://ruby.railstutorial.org/chapters/static-pages?version=3.2#sec:advanced_setup)
for more detailed explanation and appropriate resource.

**RVM Bundler integration**: The following code creates binary wrappers that
invokes the binary command within the appropriate gemset environment.
Therefore, no more need to prepend `bundle exec` when running tasks such as
`rake` or `rspec`:

	rvm get head && rvm reload
	chmod +x $rvm_path/hooks/after_cd_bundler
	cd <project root>
	bundle install --without production --binstubs=./bundler_stubs

*Note*: make sure to ignore the entire `bundler_stubs/` directory in your VCS
since the binary wrappers are specific to your local setup.

**Automated tests with Guard**: Within the Gemfile, edit the `:test` group gems
to include those specific to your platform (and comment out the gems for other
platforms), and comment out the gem for Spork.

Then, at your project's root directory, run `cp Guardfile.only Guardfile` (or
your platform's equivalent to `cp`) to create the correct Guardfile.

Start Guard with `bundle exec guard`.

**Speeding up tests with Spork**: bookstrap the Spork configuration with `bundle
exec spork --bootstrap`

Then edit .rspec to use Spork automatically

	--colour
	--drb

Run spork with `bundle exec spork`

To use Spork with Guard, keep the original Guardfile (restore the overwritten
Guardfile from the previous section), then start Guard with `bundle exec guard`.
