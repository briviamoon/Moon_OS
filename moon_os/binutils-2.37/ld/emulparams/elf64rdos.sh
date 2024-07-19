source_sh ${srcdir}/emulparams/plt_unwind.sh
SCRIPT_NAME=elf
ELFSIZE=64
OUTPUT_FORMAT="elf64-x86-64"
NO_REL_RELOCS=yes
MAXPAGESIZE=0x1000
COMMONPAGESIZE=0x1000
TEXT_START_ADDR=0x180E0000000
LARGE_DATA_ADDR=0x80020000000
ARCH="i386:x86-64"
MACHINE=
TEMPLATE_NAME=elf
EXTRA_EM_FILE="elf-x86"
GENERATE_SHLIB_SCRIPT=yes
GENERATE_PIE_SCRIPT=yes
LARGE_SECTIONS=yes
IREL_IN_PLT=

if [ "x${host}" = "x${target}" ]; then
  case " $EMULATION_LIBPATH " in
    *" ${EMULATION_NAME} "*)
      NATIVE=yes
  esac
fi
