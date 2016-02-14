#!/usr/bin/env bash

copy_files(){
  cp /em-dosbox/src/*doom* /html
  cp /em-dosbox/src/dosbox.js /html
}

case "$1" in
"copy")
  copy_files
  exit 1
  ;;
"serve")
  copy_files
  cd /html
  python -m SimpleHTTPServer
  ;;
*)
  exec "$@"
  ;;
esac
