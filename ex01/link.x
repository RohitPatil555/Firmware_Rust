MEMORY
{
	FLASH : ORIGIN = 0x00000000, LENGTH = 1M
	RAM : ORIGIN = 0x60000000, LENGTH = 1M
}

ENTRY(Reset)
EXTERN(RESET_VECTOR)

SECTIONS
{
  .vector_table ORIGIN(FLASH) :
  {
    /* First entry: initial Stack Pointer value */
    LONG(ORIGIN(RAM) + LENGTH(RAM));

    /* Second entry: reset vector */
    KEEP(*(.vector_table.reset_vector));
  } > FLASH

  .text :
  {
    *(.text .text.*);
  } > FLASH

  /DISCARD/ :
  {
    *(.ARM.exidx .ARM.exidx.*);
  }
}

