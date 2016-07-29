# Set up mac
This repo contains chef-solo configuration to set up a Mac running OSX.
Currently it only installs various packages a developer might use but could be
expanded to perform other set up.

It first installs homebrew, then cask (for the GUI applications) and then installs
the actually packages/applications.

Currently the following applications are installed:
* chrome
* spectacle - for arranging windows.
* shuttle - an ssh client connection manager.
* Skype
* Atom

## Prerequisites
* ChefDK - tested using 12.12.15
* XCode - from the appstore
* Optionally - iterm2 (or the default terminal can be used)

## Grab cookbooks

To download all the require cookbooks run:

```bash
./vendor.sh
```

This will use the berksfile.lock file to ensure that it downloads the same
cookbooks the procedure was tested with. If you'd like to test with the latest
set of cookbooks then remove the berksfile.lock and rerun the vendor.sh script.

## Converge

Once all the cookbooks have been vendored it's possible to now converge. Run:

```bash
./converge.sh
```

This uses chef-solo installed by the chefDK. Other options can be passed to chef-solo
by passing them to the script. Example:

```bash
sudo ./converge.sh -l debug
```

## Config

All configuration for chef-solo in the config directory.

In config/solo.rb is the configuration to set up various paths including the
cookbooks locations. Currently two are configured:
* ~/.berkshelf/cookbooks - the default berkshelf install location.
* vendored_cookbooks/ - the place in this directory where cookbooks are vendored
to by the vendor script above.

In config/mac_setup_config.json is the run_list. Currently there is only the default
recipe but this can be expanded later.
