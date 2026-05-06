# FrodoKEM-Hardware-Implementation

Hardware implementation of FrodoKEM.

**This artifact is submitted for the Artifacts Available badge.**

---

## Project Description

The `coe` folder contains the COE initialization files for RAM.
 The `SRC` folder contains the project source code.
 The `viprj` folder contains the project files.

- Simulation can be run with Vivado's built-in simulator.
- The initial RAM contents can be modified by editing `RAM64a.hex`, `RAM64b.hex`, and `RAM448.hex`.
- The instruction file and address file are `INST.hex` and `ADDR.hex`, respectively. They can be viewed or modified as needed.

---

## Comparison Dataset

The random-number seeds have already been prepared in the corresponding `.coe` files.

### Seed Values

#### `z`

```text
A7C93F1B6D82E450
3E19B4A0C7D52F8A
```

#### `seedSE`

```text
9B6D20F3A184C75E
F04A8C1D72B9E635
6C2F91A8D3E740B5
B8E35D0C9A6F1274
```

#### `s`

```text
7D3A0C9E14F682B5
C6F1A8209D4E37B8
```

#### `u`

```text
93F5A1C8D72E06B4
2C7B84E19D0F6A35
```

#### `salt`

```text
D37E0A9C51F682B4
8C1F5A72E9B0D436
4E9A17C6B35D028F
B0F627A8C1D94E53
```

---

## Expected Output

Observe the value of `odata` in the waveform when `ovalid` is asserted.

#### `pkh`

```text
B012351F2C308FEA
3F32215DB1B4479B
```

#### `ss` from encapsulation, `ss(Enc)`

```text
7BA580A977FF4464
86DFF9536576613E
```

#### `ss` from decapsulation, `ss(Dec)`

```text
7BA580A977FF4464
86DFF9536576613E
```

