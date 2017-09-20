#Wheezy configuration

###x86_64 kernel

Wheezy is a swift generator for a minimal Debian userspace for Kernel development



1. first use debootstrap to Build a wheezy chroot

    ./mkdirwheezy.sh

2. Then configure the wheezy chroot for network interface and root users

    ./configwheezy.sh

3. Build wheezy to img

    ./buildwheezy.sh


How to install SSH

1. first use the initial network setting to boot the kernel and userspace

    ./initialnet.sh

2. Then use `apt-get install openssh-server` to enable ssh


 
