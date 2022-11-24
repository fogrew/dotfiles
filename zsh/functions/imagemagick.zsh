# WIP
function convert.all() {
  local from=$1
  local to=$2
  for i in *.jpg; do convert $i ${i%jpg}png; done
}
# show dimensions of each images in dir, requires imagemagick
alias lsizes="identify -format \"%f: %wx%h\n\" *.{jpg,jpeg,png,gif,webp}"