a=1

for i in *.jpg; do
  new=$(printf "%04d.jpg" "$a") #04 pad to length of 4
  mv -i -- "$i" "$new"
  let a=a+1
done

for i in *.png; do
  new=$(printf "%04d.png" "$a") #04 pad to length of 4
  mv -i -- "$i" "$new"
  let a=a+1
done

for i in *.PNG; do
  new=$(printf "%04d.PNG" "$a") #04 pad to length of 4
  mv -i -- "$i" "$new"
  let a=a+1
done

for i in *.JPG; do
  new=$(printf "%04d.JPG" "$a") #04 pad to length of 4
  mv -i -- "$i" "$new"
  let a=a+1
done
