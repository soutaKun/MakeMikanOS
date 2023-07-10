sudo apt update
sudo apt install git
cd $HOME
git clone https://github.com/uchan-nos/mikanos-build.git osbook
sudo apt install okteta
okteta
sum BOOTX64.EFI
cd osbook
sum BOOTX64.EFI
qemu-img create -f raw disk.img 200M
sudo apt install qemu-utils
qemu-img create -f raw disk.img 200M
mkfs.fat -n 'MIKAN OS' -s 2 -f 2 -R 32 -F 32 disk.img
mkdir -p mnt
sudo mount -o loop disk.img mnt
sudo mkdir -p mnt/EFI/BOOT
sudo cp hello.efi mnt/EFI/BOOT/hello.efi
sudo umount mnt
$HOME/osbook/devenv/run_qemu.sh hello.efi
qemu-system-x86_64 -drive if=pflash,file=$HOME/osbook/devenv/OVMF_CODE.fd -drive if=pflash,file=$HOME/osbook/devenv/OVMF_VARS.fd -hda disk.img
sudo apt install qemu-system-x86
sudo apt install qemu-system-x86-xen
qemu-system-x86_64 -drive if=pflash,file=$HOME/osbook/devenv/OVMF_CODE.fd -drive if=pflash,file=$HOME/osbook/devenv/OVMF_VARS.fd -hda disk.img
cd $HOME/osbook/dau01/c
cd
cd $HOME/osbook/day01/c
clang -target x86_64-pc-win32-coff -mno-red-zone -fno-stack-protector -fshort-wchar -Wall -c hello.c
sudo apt install clang
clang -target x86_64-pc-win32-coff -mno-red-zone -fno-stack-protector -fshort-wchar -Wall -c hello.c
lld-link /subsystem:efi_application /entry:EfiMain /out:hello.efi hello.o
sudo apt install lld
lld-link /subsystem:efi_application /entry:EfiMain /out:hello.efi hello.o
$HOME/osbook/devenv/run_qemu.sh hello.efi
cd
sudo apt update
sudo apt install git
git clone https://github.com/uchan-nos/mikanos-build.git osbook
sudo apt install ansible
cd $HOME/osbook/devenv
ansible-playbook -K -i ansible_inventory ansible_provision.yml
iasl -v
ls $HOME/edk2
cd
mkdir $HOME/workspace
cd $HOME/workspace
source $HOME/.profile
git clone https://github.com/uchan-nos/mikanos.git
cd mikanos
git checkout osbook_day02a
cd $HOME/edk2
ln -s $HOME/workspace/mikanos/MikanLoaderPkg ./
source $HOME/edksetup.sh
source edksetup.sh
cd $HOME/edk2
build
git checkout 4ac0296
build
~/osbook/devenv/run_qemu.sh ~/edk2/Build/MikanLoaderX64/DEBUG_CLANG38/X64/Loader.efi
cd $HOME/workspace/mikanos
git checkout osbook_day02b
git tag -l
cd $HOME/edk2
source edksetup.sh
build
~/osbook/devenv/run_qemu.sh ~/edk2/Build/MikanLoaderX64/DEBUG_CLANG38/X64/Loader.efi
mkdir -p mnt
sudo mount -o loop disk.img mnt
ls mnt
cat mnt/memmap
sudo umount mnt
~/osbook/devenv/run_qemu.sh ~/edk2/Build/MikanLoaderX64/DEBUG_CLANG38/X64/Loader.efi
git checkout osbook_day03a
cd $HOME/workspace/mikanos
git checkout osbook_day03a
cd kernel
clang++ -02 -Wall -g --target=x86_64-elf -ffreestanding -mno-red-zone -fno-exceptions -fno-rtti -std=c++17 -c main.cpp
clang++ -O2 -Wall -g --target=x86_64-elf -ffreestanding -mno-red-zone -fno-exceptions -fno-rtti -std=c++17 -c main.cpp
ld.lld --entry KernelMain -z norelro --image-base 0x100000 --static -o kernel.elf main.o
cd
cd $HOME?edk2
cd $HOME/edk2
source edksetup.sh
build
cd $HOME/workspace/mikanos/kernel
readelf -h kernel.elf
cd $HOME/workspace/mikanos
git checkout osbook_day03a
cd $HOME/edk2
build
$HOME/osbook/devenv/run_qemu.sh Build/MikanLoaderX64/DEBUG_CLANG38/X64/Loader.efi $HOME/workspace/mikanos/kernel/kernel.elf
git diff
git status
git branch --contain
cd $OS_DIR
ls
wsl
pwd
git checkout osbook_day03b
git cd $HOME/workspace/mikanos
cd $HOME/workspace/mikanos
git tag -l
git checkout osbook_day03b
cdkernel
cd kernel
clang++ -O2 -Wall -g --target=x86_64-elf -ffreestanding -mno-red-zone -fno-exceptions -fno-rtti -std=c++17 -c main.cpp
ld.lld --entry KernelMain -z norelro --image-base 0x100000 --static -o kernel.elf main.o
cd ~/edk2
source edksetup.sh
build
~/osbook/devenv/run_qemu.sh ~/edk2/Build/MikanLoaderX64/DEBUG_CLANG38/X64/Loader.efi $OS_DIR/kernel/kernel.elf
$HOME/osbook/devenv/run_qemu.sh Build/MikanLoaderX64/DEBUG_CLANG38/X64/Loader.efi $HOME/workspace/mikanos/kernel/kernel.elf
source ~/osbook/devenv/buildenv.sh
echo $CPPFLAGS
cd $OS_DIR
git checkout osbook_day03c
cd $HOME/workspace/mikanos
git checkout osbook_day03c
cd kernel
clang++ $CPPFLAGS -O2 --target=x86_64-elf -fno-exceptions -ffreestanding -c main.cpp
ld.lld $LDFLAGS --entry KernelMain -z norelro --image-base 0x100000 --static -o kernel.elf main.o
cd ~/edk2
source edksetup.sh
build
$HOME/osbook/devenv/run_qemu.sh Build/MikanLoaderX64/DEBUG_CLANG38/X64/Loader.efi $HOME/workspace/mikanos/kernel/kernel.elf
source ~/osbook/devenv/buildenv.sh
echo $CPPFLAGS
clang++ $CPPFLAGS -O2 --target=x86_64-elf -fno-exceptions -ffreestanding -c main.cpp
cd $HOME/workspace/mikanos
cd kernel
clang++ $CPPFLAGS -O2 --target=x86_64-elf -fno-exceptions -ffreestanding -c main.cpp
ld.lld $LDFLAGS --entry KernelMain -z norelro --image-base 0x100000 --static -o kernel.elf main.o
$HOME/osbook/devenv/run_qemu.sh $HOME/edk2/Build/MikanLoaderX64/DEBUG_CLANG38/X64/Loader.efi $HOME/workspace/mikanos/kernel/kernel.elf
cd $AAA
cd
clang++ $CPPFLAGS -O2 --target=x86_64-elf -fno-exceptions -ffreestanding -c main.cpp
cd
cd $HOME/workspace/mikanos
cd $AAA
pwd
source ~/osbook/devenv/buildenv.sh
echo $CPPFLAGS
cd $HOME/workspace/mikanos
git checkout osbook_day03c
cd kernel
clang++ $CPPFLAGS -O2 --target=x86_64-elf -fno-exceptions -ffreestanding -c main.cpp
ld.lld $LDFLAGS --entry KernelMain -z norelro --image-base 0x100000 --static -o kernel.elf main.o
cd ~/edk2
source edksetup.sh
build
$HOME/osbook/devenv/run_qemu.sh $HOME/edk2/Build/MikanLoaderX64/DEBUG_CLANG38/X64/Loader.efi $HOME/workspace/mikanos/kernel/kernel.elf
source ~/osbook/devenv/buildenv.sh
echo $CPPFLAGS
cd $HOME/workspace/mikanos/kernel
clang++ $CPPFLAGS -O2 --target=x86_64-elf -fno-exceptions -ffreestanding -c main.cpp]
clang++ $CPPFLAGS -O2 --target=x86_64-elf -fno-exceptions -ffreestanding -c main.cpp
ld.lld $LDFLAGS --entry KernelMain -z norelro --image-base 0x100000 --static -o kernel.elf main.o
cd ~/edk2
source edksetup.sh
build
$HOME/osbook/devenv/run_qemu.sh $HOME/edk2/Build/MikanLoaderX64/DEBUG_CLANG38/X64/Loader.efi $HOME/workspace/mikanos/kernel/kernel.elf
git checkout osbook_day02a
cd $HOME/workspace/mikanos
git checkout osbook_day02a
git checkout osbook_day03c
source ~/osbook/devenv/buildenv.sh
echo $CPPFLAGS
cd $HOME/workspace/mikanos/kernel
clang++ $CPPFLAGS -O2 --target=x86_64-elf -fno-exceptions -ffreestanding -c main.cpp
ld.lld $LDFLAGS --entry KernelMain -z norelro --image-base 0x100000 --static -o kernel.elf main.o
cd ~/edk2
source edksetup.sh
build
$HOME/osbook/devenv/run_qemu.sh $HOME/edk2/Build/MikanLoaderX64/DEBUG_CLANG38/X64/MikanLoader.Pkg/Loader/DEBUG/Loader.efi $HOME/workspace/mikanos/kernel/kernel.elf
$HOME/osbook/devenv/run_qemu.sh $HOME/edk2/Build/MikanLoaderX64/DEBUG_CLANG38/X64/MikanLoader.Pkg/Loader/OUTPUT/Loader.efi $HOME/workspace/mikanos/kernel/kernel.elf
$HOME/osbook/devenv/run_qemu.sh $HOME/edk2/Build/MikanLoaderX64/DEBUG_CLANG38/X64/Loader.efi $HOME/workspace/mikanos/kernel/kernel.elf
~/osbook/devenv/run_qemu.sh ~/edk2/Build/MikanLoaderX64/DEBUG_CLANG38/X64/Loader.efi $OS_DIR/kernel/kernel.elf
~/osbook/devenv/run_qemu.sh ~/edk2/Build/MikanLoaderX64/DEBUG_CLANG38/X64/Loader.efi $HOME/workspace/mikanos/kernel/kernel.elf
cd
cd $HOME/workspace/mikanos
git checkout osbook_day04a
cd kernel
make
make clean
cd ../
git checkout osbook_day04b
cd kernel
source ~/osbook/devenv/buildenv.sh
make
cd ~/edk2
source edksetup.sh
build
~/osbook/devenv/run_qemu.sh ~/edk2/Build/MikanLoaderX64/DEBUG_CLANG38/X64/Loader.efi ~/workspace/mikanos/kernel/kernel.elf
cd $HOME/workspace/mikanos
git checkout osbook_day03c
cd kernel
clang++ $CPPFLAGS -O2 --target=x86_64-elf -fno-exceptions -ffreestanding -c main.cpp
ld.lld $LDFLAGS --entry KernelMain -z norelro --image-base 0x100000 --static -o kernel.elf main.o
cd ~/edk2
source edksetup.sh
build
~/osbook/devenv/run_qemu.sh ~/edk2/Build/MikanLoaderX64/DEBUG_CLANG38/X64/Loader.efi ~/workspace/mikanos/kernel/kernel.elf
git checkout osbook_day03c
cd $HOME/workspace/mikanos
git checkout osbook_day03c
cd
source ~/osbook/devenv/buildenv.sh
echo $CPPFLAGS
cd $HOME/workspace/mikanos
git checkout osbook_day03c
cd kernel
clang++ $CPPFLAGS -O2 --target=x86_64-elf -fno-exceptions -ffreestanding -c main.cpp
ld.lld $LDFLAGS --entry KernelMain -z norelro --image-base 0x100000 --static -o kernel.elf main.o
source edksetup.sh
cd ~/edk2
source edksetup.sh
build
~/osbook/devenv/run_qemu.sh ~/edk2/Build/MikanLoaderX64/DEBUG_CLANG38/X64/Loader.efi ~/workspace/mikanos/kernel/kernel.elf
source ~/osbook/devenv/buildenv.sh
echo $CPPFLAGS
cd ~/workspaces/mikanos-devcontainer/mikanos/kernel
readelf -h kernel.elf
cd ~/workspace//mikanos/kernel -h kernel.elf
clang++ $CPPFLAGS -O2 --target=x86_64-elf -fno-exceptions -ffreestanding -c main.cpp
cd ~/workspace/mikanos/kernel
clang++ $CPPFLAGS -O2 --target=x86_64-elf -fno-exceptions -ffreestanding -c main.cpp
ld.lld $LDFLAGS --entry KernelMain -z norelro --image-base 0x100000 --static -o kernel.elf main.o
source edksetup.sh
cd ~/edk2
source edksetup.sh
build
~/osbook/devenv/run_qemu.sh ~/edk2/Build/MikanLoaderX64/DEBUG_CLANG38/X64/Loader.efi ~/workspace/mikanos/kernel/kernel.elf
cd ~/workspace//mikanos/kernel
git checkout osbook_day03c
~/osbook/devenv/run_qemu.sh ~/edk2/Build/MikanLoaderX64/DEBUG_CLANG38/X64/Loader.efi ~/workspace/mikanos/kernel/kernel.elf
source ~/osbook/devenv/buildenv.sh
cd
source ~/osbook/devenv/buildenv.sh
echo $CPPFLAGS
cd ~/workspace/mikanos/kernel
git checkout osbook_day03c
clang++ $CPPFLAGS -O2 --target=x86_64-elf -fno-exceptions -ffreestanding -c main.cpp
ld.lld $LDFLAGS --entry KernelMain -z norelro --image-base 0x100000 --static -o kernel.elf main.o
cd ~/edk2
source edksetup.sh
source ~/osbook/devenv/buildenv.sh
build
$ ~/osbook/devenv/run_qemu.sh ~/edk2/Build/MikanLoaderX64/DEBUG_CLANG38/X64/Loader.efi ~/workspace/mikanos/kernel/kernel.elf
~/osbook/devenv/run_qemu.sh ~/edk2/Build/MikanLoaderX64/DEBUG_CLANGPDB/X64/Loader.efi ~/workspace/mikanos/kernel/kernel.elf
~/osbook/devenv/run_qemu.sh ~/edk2/Build/MikanLoaderX64/DEBUG_CLANG38/X64/Loader.efi ~/workspace/mikanos/kernel/kernel.elf
