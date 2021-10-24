a=1

for file in `find . -type f \( -iname \*.jpg -o -iname \*.png -o -iname \*.jpeg \)`; do
  extension=${file##*.}
  new=$(printf "%04d.$extension" "$a") #04 pad to length of 4
  
  echo $new
  mv -i -- "$file" "$new"
  let a=a+1
done
