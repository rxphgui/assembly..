BITS 64 

section .rodata
        struc sockaddr
            sin_family: resw 1
            sin_port: resw 1
            sin_addr: resd 1
        endstruc 

section .rodata
    sockadd_struct_init:
        istruc sockaddr
                at sin_family, dw 0x2
                at sin_port,   dw ; ip raspeberry
                at sin_addr,   dd 0x
        iend