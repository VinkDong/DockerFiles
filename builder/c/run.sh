#! /bin/bash
cd /fluent-bit/build/
uname -a
cmake ..
make
mv /fluent-bit/build/bin/fluent-bit /result/fluent-bit

/expect_scp.sh 5.5.5.12 root admin /result/fluent-bit /root/build/fluent-bit