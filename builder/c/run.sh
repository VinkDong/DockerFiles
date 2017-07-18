#! /bin/bash
cd /fluent-bit/build/
cmake ..
make
mv /fluent-bit/build/bin/fluent-bit /result/fluent-bit
rm -rf /fluent-bit/build/*
