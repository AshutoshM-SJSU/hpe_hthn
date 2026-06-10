#!/usr/bin/env bash
set -u

make -C build clean || exit 1
make -C build || exit 1

rm -f enc.db out.txt in.txt

run() {
  echo
  echo "$ $*"
  "$@"
  code=$?
  echo "exit:$code"
  return "$code"
}

run ./build/stor -u alice -k secret123 register
run ./build/stor -u alice -f notes create
run ./build/stor -u alice -k secret123 -f notes write "Hello"
run ./build/stor -u alice -k secret123 -f notes read

echo
echo "--- enc.db ---"
cat enc.db
