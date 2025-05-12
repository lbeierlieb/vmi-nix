# vmi-nix: Nix Packaging and NixOS Modules for VMI

Software and setups for Virtual Machine Introspection (VMI) can be complex and hard to build.
An example is [SmartVMI](https://github.com/GDATASoftwareAG/smartvmi), primarily a C++/CMake application, but it also includes a Rust component and depends on a number of external libraries.
Another example is a [KVMI](https://github.com/KVM-VMI/kvm-vmi) setup: You need to build a kernel patched for KVMI support, build a patched version of QEMU, install an old version of libvirt because the newer version do not support the old patched QEMU, etc.

In this repository, we publish Nix packaging and NixOS modules to ease and accelerate the set-up process of a fully functioning VMI testbed.
So far published are:

- Nix packaging for [SmartVMI](https://github.com/GDATASoftwareAG/smartvmi). Instructions available [here](smartvmi/Readme.md)
