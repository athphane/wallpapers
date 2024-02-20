a=1

find . -type f \( -iname \*.jpg -o -iname \*.png -o -iname \*.jpeg \) -print0 | while read -d $'\0' file; do
  directory=$(dirname "$file")
  filename=$(basename -- "$file")
  extension="${filename##*.}"
  filename_noext="${filename%.*}"
  new="${directory}/${filename_noext}.${extension}" # Include directory without adding number to filename
  
  echo "$new"
  mv -n -- "$file" "$new"
  let a=a+1
done

git stage .
git commit -m 'Reload'
git push
