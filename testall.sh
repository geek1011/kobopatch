#!/bin/bash
patchlib/testdata/patch32lsb -i patchlib/testdata/libnickel.so.1.0.0 -o lnse -p patchlib/testdata/libnickel.so.1.0.0.patch.all
go run patch32lsb/patch32lsb.go -i patchlib/testdata/libnickel.so.1.0.0 -o lns -p patchlib/testdata/libnickel.so.1.0.0.patch.all
sha256sum lns lnse
icdiff <(xxd lnse) <(xxd lns)
rm lns lnse