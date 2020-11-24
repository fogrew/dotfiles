# show dimensions of each images in dir, requires imagemagick
alias lsizes="identify -format \"%f: %wx%h\n\" *.{jpg,jpeg,png,gif,webp}"