#!/bin/bash

bash apt-pre-install.sh

IFS=$'\n' read -d '' -r -a packages < lists/packages.list

package_count=0
package_total=$(cat lists/packages.list | wc -l)

for package_name in "${packages[@]}"
do
  sudo apt-get install -y $package_name
  let "package_count += 1"
done

echo $package_count packages installed via APT!

sudo apt-get clean

bash deb.sh

bash apt-post-install.sh

bash misc.sh
