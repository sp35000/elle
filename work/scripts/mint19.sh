#!/bin/bash
exec qemu-system-i386
#        -enable-kvm \
        -cpu host \
        -drive file=/home/12805865839/fwork/study/it/lab/qemu/mint19.img,if=virtio \
        -net nic -net user,hostname=vcmint19 \
        -m 256M \
        -monitor stdio \
        -name "vcmint19" \
        $@
