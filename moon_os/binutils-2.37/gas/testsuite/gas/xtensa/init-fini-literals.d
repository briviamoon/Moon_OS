#as: --text-section-literals
#objdump: -r
#name: check that literals for .init and .fini always go to separate sections

.*: +file format .*xtensa.*
#...
RELOCATION RECORDS FOR \[\.init\.literal\]:
#...
00000000 R_XTENSA_PLT      init
#...
RELOCATION RECORDS FOR \[\.fini\.literal\]:
#...
00000000 R_XTENSA_PLT      fini
#...
RELOCATION RECORDS FOR \[\.init\]:
#...
.* R_XTENSA_SLOT0_OP  \.init\.literal
.* R_XTENSA_SLOT0_OP  \.init\.literal\+0x00000004
#...
RELOCATION RECORDS FOR \[\.fini\]:
#...
.* R_XTENSA_SLOT0_OP  \.fini\.literal
.* R_XTENSA_SLOT0_OP  \.fini\.literal\+0x00000004
#...
