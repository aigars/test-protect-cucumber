# test-protect-cucumber

### design
feature => step_definitions => platform => steps => screens

### structure
```
test-protect-cucumber/
├── apps/ - temporary location for apps
├── config/ - config files use TOML format
│   ├── devices/ - config file for each decice
│   └── setups/ - user, controller and camera setup config
├── platforms/
│   └── ios/
│       ├── screens/
│       └── steps/
└── features/
    ├── step_definitions/ - human readable tests
    └── support/ - this is where the execution of tests is configured and where all the helper classes are
```

### run
cucumber -p iphone_sim

### debug
export DEVICE_CONFIG='config/devices/iphone_sim.toml'
export SETUP_CONFIG='config/setups/two_cameras.toml'
arc toml config/devices/iphone_sim.toml
require "./features/support/env.rb"
