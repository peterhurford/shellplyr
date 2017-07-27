export groupbysum() {
  if [ $# -ge 2 -a -f "$1" ]; then
    input="$1"
    shift
  else
    input="/dev/stdin"
  fi
  local groupby="\$$1"
  local sum="\$$2"
  local awkcmd="{ arr[$groupby]+=$sum } END { for (key in arr) printf(\"%s %s\n\", key, arr[key]) }"
  awk "$awkcmd" $input
}
