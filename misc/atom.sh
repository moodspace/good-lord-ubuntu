# Atom packages

IFS=$'\n' read -d '' -r -a packages < lists/atom.list

package_count=0
package_total=$(cat lists/atom.list | wc -l)

for package_name in "${packages[@]}"
do
  apm install $package_name
  let "package_count += 1"
done

echo $package_count Atom packages installed!
