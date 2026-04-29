# FrodoKEM-Hardware-Implementation
Hardware implementation of FrodoKEM



**This artifact is submitted for the Artifacts Available badge**



**FrodoKEM**: Project version. The TOP module wraps the Frodo core and the ILA.

**FrodoKEM_sim**: Simulation verification version. The RAMs in this version use a custom `RAM.v` file that supports data printing.

- Simulation can be run with Vivado’s built-in simulator.
- The initial data can be modified by editing `RAM64a.hex`, `RAM64b.hex`, and `RAM448.hex`.
- When `dump_en` is asserted, the RAMs in the simulation will print data in HEX format for inspection.
- The instruction and address files are `ADDR.hex` and `INST.hex`, respectively, and can be viewed or modified as needed
