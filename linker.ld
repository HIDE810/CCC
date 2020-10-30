OUTPUT_FORMAT("elf32-littlearm", "elf32-bigarm", "elf32-littlearm")
OUTPUT_ARCH(arm)
ENTRY(code)

SECTIONS
{
	. = 0x00150000;
	.code : {*(.code)}
	
	. = 0x00320000;
	.text : {*(.text.fun) *(.text.*); . = ALIGN(8);}
    .rodata : {*(.rodata*); . = ALIGN(8);}
    .data : {*(.data*); . = ALIGN(8);}
    .bss : {*(.bss*); . = ALIGN(8);}
}