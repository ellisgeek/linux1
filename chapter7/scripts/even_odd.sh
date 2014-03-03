for n in {1..10}; do
  out=$(( $n % 2 ))
  if [ $out == 0 ]; then
    echo "$n is a even number"
  else
    echo "$n is a odd number"
  fi
done
