a=1

for file in $(find . -type f \( -iname \*.jpg -o -iname \*.png -o -iname \*.jpeg \)); do
  extension=${file##*.}
  directory=$(dirname "$file")
  new=$(printf "%s/%04d.$extension" "$directory" "$a") # Include directory in the output
  
  echo "$new"
  mv -n -- "$file" "$new"
  let a=a+1
done

git stage .
git commit -m 'Reload'
git push
