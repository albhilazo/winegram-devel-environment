#!/bin/bash

puppet module install puppetlabs/stdlib --modulepath $1 --version 4.11.0 --force;
puppet module install puppetlabs/concat --modulepath $1 --version 2.1.0  --force;
puppet module install example42/puppi   --modulepath $1 --version 2.1.13 --force;
puppet module install maestrodev/wget   --modulepath $1 --version 1.7.3  --force;

puppet module install example42/timezone  --modulepath $1 --version 2.0.14 --force;
puppet module install puppetlabs/ntp      --modulepath $1 --version 4.1.2  --force;
puppet module install puppetlabs/apache   --modulepath $1 --version 1.8.1  --force;
puppet module install example42/php       --modulepath $1 --version 2.0.26 --force;
puppet module install willdurand/composer --modulepath $1 --version 1.1.1  --force;
puppet module install puppetlabs/mysql    --modulepath $1 --version 3.7.0  --force;
puppet module install arioch/redis        --modulepath $1 --version 1.2.2  --force;


sudo add-apt-repository ppa:ondrej/php5-5.6
sudo apt-get update


exit 0;