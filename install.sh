#!/bin/bash

IFS=$'\n' read -d '' -r -a packages < lists/packages.list

# First round apt: some pre-reqs such as curl needs to be installed

package_count=0
package_total=$(cat lists/packages.list | wc -l)

for package_name in "${packages[@]}"
do
  sudo apt-get install -y $package_name
  let "package_count += 1"
done

echo $package_count packages installed via APT!

bash -l apt-pre-install.sh

# Second round apt: after ppas updated & packages upgraded

package_count=0
package_total=$(cat lists/packages.list | wc -l)

for package_name in "${packages[@]}"
do
  sudo apt-get install -y $package_name
  let "package_count += 1"
done

echo $package_count packages installed via APT!

sudo apt-get clean

bash -l deb.sh

bash -l apt-post-install.sh

bash -l misc.sh
