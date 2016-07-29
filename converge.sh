#! /bin/bash

chef-solo -c config/solo.rb -j config/mac_setup_config.json $*
