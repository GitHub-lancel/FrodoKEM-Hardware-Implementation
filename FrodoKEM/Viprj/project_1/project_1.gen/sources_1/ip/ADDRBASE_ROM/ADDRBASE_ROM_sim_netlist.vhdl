-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Wed Apr 29 15:00:23 2026
-- Host        : DESKTOP-KKLUIKL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top ADDRBASE_ROM -prefix
--               ADDRBASE_ROM_ dist_mem_gen_0_sim_netlist.vhdl
-- Design      : dist_mem_gen_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tfgg484-2
-- --------------------------------------------------------------------------------
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2025.1"
`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
FdZ29m26W1vj+Cs/DLJCoTOUz/m7+OJG3sHOgt5s8NEPQ5FHtOFz4fRgqTgyrNzvNq21lk0VjpX9
UMVEbSXbJrC40crYnx5XneHRwr6z9uk6MXgKoH1FHcznnKhevagwuCchTCpQ6oqoMbhzWd2QHx/v
Pkor8V47KvEBnEHja7Q=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
DgywwNcpeS8jND8bxEa71yZJ3FJdVEzcLynb64dnb2TzUo3pKSGFBfaFrgTZF3YNHGzuUJ2QQktc
gOS5J0CcVw+n+aerigILzjTclkLc9eUIulkdUapbmj6Staw/UyV8tYP4SZZ8/c285RLhOXD7yU47
aByWm7LmxxWjooRAz26ybpmdt7lpHBQaNTc1Ljp9oCyvtSqxXf5Fzr6NwE9wCWHGozsMntKGlBWq
/Ld4jJ9UVtrIM3FKdUF21rHccua0AApkyY92z4umdT7kj4mZxPKTdC7zYiKWRUq2hGAlbh1z47nC
oAaSpPvOVZY7BQppznHPyLPhJ+OgKj6/rfTVMA==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
TpTqgO7LVAmk2RI9B8mgZrp5H21SnS0bmTRlpg9WONkWIeKkOMiqYzKXNi+GTasTvmpRPk/h3m9P
wkWG5aX3dHNZUb1oSMhjGbyAcJpO+SX7mcsmzpt+efdEtPDukAHegpQfvEWKkx2SrrkkgD0X++Oj
CaqCq5FvcRl9RjvTxK4=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
sckknZF7xLyHpnPIcxIFLiAYqXW1FY2CS9FWi2Hqz5vcUlh7by0h8yYiwSXxIUNrBJPATd3AyESC
487cvtya2VioL8riKucCJWyqQBG7eDyT0O7JtdZYcpo9uNh6dkN86IV7J1BLYVlk/Z2uc+LRdLiA
I2w8Z4wc+UHp3wx4497iJfYpHaKSPNO+8A8WV/JJ1mzSLBI14cO9CDFly9KlHktwr4HKutMId1R2
VPSy/znW8qx9XUnd0EN31c/9LJnfU1yhBPG9Wx8Hd96IBwI9D/WgN7ZQyH8bSZCcHX+SYoIGPwXn
K5ZKQy1K7ELwUBUUPbGlR+ir3yvvGjob1CTeMg==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
T6BTO2RUQcpX9TpJR2JO50hT+cXyiDyIjrO2Ps17SKTmMhVBfSGD2AUMwzKJINBU1/wI4nqsnk0R
B5YRLWXrZfCSjSapre9CmGTRvLCDEK4mm3l4Jo9Ij9iBFg2OvLFfyBLP/fZtLtzCPHtMlTmKn7C3
9Ert7v3yDGnFF+1Msw/UpTjpdSZ4dNE8UGUe5ymCwpDVeCcYuoCTBe5o7BDlcM6cbXMfHvxQkBDH
BQkO5txX5aV2qeKOYfWQucZe9q7aoq4zcNG3roo8G4OrO31xnxdwAQU8tvOCztoGHXLSPEwLy86h
lybMIS19uovvmz2FF0BKAfQmf2zT2kdhs/0E/g==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
qFdGo2cl1WGkQBqlM3e3YM1+NstrsuheqspzsHjhiEdsfZE7cNV3QtgmcPm0sQ6Ur85Vr+VLP+qi
kfkSBZv/cp96m2VbdU3wKRoyTYzTU2jPpW7sGFFNzWS9+RUl8sTVLht5d4t2CNOGni/aTPg72L/m
EMDSFNr5zmZHrz9ZfvCDtOuBIV7kMLfZPmDdxV5IwsKMxabGnoXOJGz+hfjGo4fS3o0ORBwIVK+l
mvU1GZj8rJVgjjtXmyh6mIw/6PchaANzWFqpNusTs0IG2f3q7OE0VBOM5Am+iaDdeW6TlD3NJO83
Fu/vCJwu/i0r7tthiRGj94Azl8RnEN2KK7tBlA==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
g77N+3QvAPAYw+4OcZm63AqmcCkwUoxBBbPDHeq2Nfprvo7Bj7LixjYXj3xyrnR8haey/83rTRib
U8uD29Fgb15vpUc0WthyXJ59GM2fKf1KCeTQtG6TwZDLuOLNJNaeGFe+JU6iYvvLnOQZ3aPsmfcT
4GCJv1sKrMCf5d2VkK5yqBhV9Xik8ugmxG6gW1xkr0ULwrG4CYrZAEPhwUoiL+6RLajwaMyW0fhu
TihpJjKW17O8yAizfvC4zdrTR7abBHMBRX51n0fYXfSNTJZH84wlEZ/uaRGrT3tziopYXWPsmWSq
JJ5Q30ZViY8s/kqmcILk7jzkE5iBk7FfRk2AHw==

`protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`protect key_block
KCCTN2ufL/SeejpVpXJmjN/FwrAflQw79fl4pWJPTrncXR+h72Z53BIfG+PPQuyFWo2dT+31hFh2
sUjBKcBwHP9yjxsmRjhWVA4YtsuTiFCa3GwHalwHMC9EJN8EOmcee6T0DD8eKj13S7DJ+LDuhg0a
CAhAdS+Z3c57AAFhfKZ64/xN+dwK+7T+oXbmBDtxKw+D7VXMZLVjJ7ozXveIocAFo9MLpyq0mXPL
m47fmY77h7JdJ8BnZ0qXpublK3I9ahjB6+iTR7hAu417IqmFRnmc0ICovANVgmMBsOU54gzqFRS1
4jIQ7pPGSuMMJ5F+bWiKn1kahxg2JXS+3rf9r5Jyc2Ht4bO62YYec93HOrFxzErn9LzUFSvXe8JC
M/OAkWw+gqiiLbQsh+1Hfn4j9JSiL/n8yCkGXAr8x/vdfzkIBv4QpsSo5rGTuXS2x27KOAsuV7X7
maV86bXDbpBaMN1hZLtFkWNpTJE03j5Hq7cTDh+EySOe2NSwB0potFkw

`protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
DB5hKjvS9FmG+/wPMbBeHe5M88req0CpR1ooQpQHlIx5dQoUMI8l84F0JQ8hAkUaWLkU1VXXMNmW
eRJoUf6rnT4CbNo5SFwNWSXohTyDSupMazp2OYDlVlTgfUyyJ+lVIViRHiC3vIbi1J7fLoZ1Bt9F
cr98l0aF9q+NPMPI9Xs8X4XYYXL9FyHNyb3bAoEI1OPmH5ywFB+fJ73hp3aEXHx9pcl2RKryf1m/
Q98GVV/ZXzQmgGNEdveABCSK3XNXC0Ro6IHFjACUVo3VTsjMMx1k2n+MWq7Zbp5l8ZcvX+F+NHY6
q/Cm8B96kJQ4bGZ0qnzIYoKDGY7YEGWVJFoWQg==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10928)
`protect data_block
r3pZtNqr3P053ADTq24hW2QfTKPYX1EOt3mSvVaJDnB3+QqGo+ph+7Zz+VYSMcXz6VrQmOQ/Ky8R
mZ8IREZFKC1Cm1QlIzfNlIoQQ8T2zoA1xb6n0KL4lq/Oyl0XW4sPbLTuBNgvJ6A7taTEQr2D7cL8
pRPZSLMVbOAjcCNGfdYFklrPpIxwrNFMDOsUJ6SOTYm6GKEBgVTJ6Wz57ZuuDsZyhyZqHEXIBwpE
F66nfC+o8Wm2caWl/XjCEZM6XN8coVGxfK/gRGaXnoc8H/n/e/70W1gmFMSqxagYXBLL4p8+z1sy
6zumMqNtXOUfP/YCuwQLUtS27ivje4SEN4XVD1eS7fIPsoTtVXtGG9cc/ZoiT9iLxsUcYnGKRx1D
x1tPmrFS5YJxqfTPmB1j+uOTjTdWGR7YvK8uoEbxSyAtlOdyz2o0EAa9Nx7pb8iFdjDsTtJjxiSD
HwhD0xPP0/fFfASN7QIpFYE9lw5FgKGUbXMbJgJGWN/u5aCYG1nOlU6+3VU9G5xbERl5Bmri0QrU
uzBGLvk5T3npSR/J/RkszIGctfVAxKm4aWwLvI1ji2y/zz4Gfqb9Ha/K9qTjvZLKYOXN0lfSe44y
6+OzPHFjRVQAOGc79VtZoET+xTUaVfL7OqjozKFG12iRmF23FrjQFfCE4mzFcGvxeq/oCjshtnOi
lhyCdgD5HTf8p8fnjdYhIRSdzmCk6khOSdbe+tZj2o5BQ51faHypPPV5MS+PaSRF0ltmltbCdU3k
p1nESo37gwMTADNbnCIbT/w2vLTEOc4REVV9XqEPstyk9fNsXt+AQenFSwSkGToBLFf4Ha9BoWPN
yueuXTO5VaZFbXaWsmplmTftiZpDG2oQcFQVa2fKP076fHJ7zEm9cUEAxVbGAwX6DSXG+Mpg81N1
Ni1Na6GQFJ3gpTPxKBCYT/M7mQBMUZZpr+hqnkS4pIK3ovT0FpLluwFrnFQTlbgssddkALa2pdFB
57iOTJVk7vx56wzNR42G77Qm2QJb2hLsT/IV3S04OcuVqak36r6ch9xJGpWFxoT7+QbIafYsgTu/
Tg6itw5PmC8fAN7ESsvsagM3lqZYw9Fgl6F/UnN1DTD2RBXUEMrxJbaVLCFqJ+tVnq/YN4VNiUki
cvU4Op8SOFD83rJFSl2TN06GFE2k/KY1S+WMi2SDYDQ37ldQnv7vSxokzSnfh2J0FEv0mTXQLLie
Ffw0VtzzGslsIM1FjnPQKutWYl96t4s9rPaJugqRVc8D679kcFanOtsE3zAOmJVQ5qzPJn8HtQTh
1A0s6SsnZnznY66GQAWayu8xA48XXGB+Yvo0Wfz9NiGTV0NIqsmQJ80YNu6XAqk6EHedkSz41KME
TKvfk6OJLqcBwUdEb0PdsOkj9l54Z2iE9DXU/87rhWVJG6CXrawqmKI6n2wPQ4etO7ShOzXUsrj8
xNBi2MGonoq8qphZHR2ZpNJC/brbLq0yZ3g/TF26gj+tiemen8/YsDbd8z7vuAjJ9yZ2X+J2SP50
bRimH9AsTUXT7KkAi0hOzeZikDMR7spj0jcc/j/KX+sKjYon21ZA/CF5uIeusOxmVatluuj9CwzL
zGTp265tb+1T0H6bkvQa//FmDwoHx+gSHGYfsSdb9xrQxQvGvxlwifYcy/EXbe6AY1faxRSQk766
LxgZNY+cmpf1A6b5OTXdVeNss3l4VkCXBIYUz//1rz1Yb9dG2P1aiF1uUeBRr3qLjOugqLVmdi2y
4qaggGFylUstuNFsWixkUKbYgN+6+YhMlaSbNeF2vZ7llAdaIQVucazfe/CuPKcYh6EzAWhFmZqi
JNVUvJLoESUdcq8MpXxZ04sYe5AslwUEmZP2vSMf6gfA4v3KUSsrb68qUFhRZBtVOiyWRGLPGtR8
0ifYZ/q2YQKoXx7ED+Xp5nAQaQNzqkaBrdHIK7vJ0a05i2Bd+Z6s3dd4pgNrkmDNZoef9Qt69GZa
N2MI+mRLsCQBN/7YR8BXC6BQJ/re/lFAQR73B7I/hbMIl96MkkU7pFCk8JOrBSY8ioIol2LG28b8
ZuqYlv7mF8941ra1LkOkjWf8g9+leCRzgyTZ+dG6YhH7pP9jnh47vBjB4j1wvMb9ifa1PjZOIEjx
QPT6hoss+FnR+oL/qqCl8bAU4D1FX0Tz7dg0JgQZxyE8HaDC7jdl3sOntmcqtzOLdiky5+EBQBnJ
XBG7IxruzZkXaSvbXSGc7IPrmZpgFlGL0gt2TSSX3uCorr+/JJpoPkg1GHu3h8oUk3kwnskIPYwn
lvJO99/jZWiXP3pSzuPLtGEWwmktioixMFuY8CDxHDa0Mk6e6wnqTOKG+yu9hW4NpzZCNjRYqrRW
BFRcCkyU0ZIYXIYej39JZAmoRLZscDgajDTl7hrhXSNcaghJvCmHtgDCPwyfPj7DJeGHCZU41tJk
Y0u7CITQBwsWniNNsTGOygRgGQVPySRs9CW3ign3KPM76sZjAYyVO4a65mi8Ky5IbLY96zImel7d
Cu5WNOIyDQBHquDE0XYUPfwGScSz6EydmcM9OR+BNq+QM8RDviZds/apfGBj7d4P55xs/twEZviG
1md/760uAGpPhMiwVjHQoKXzcSLvtZNEPzY91SAp7WMQAYOjvZxzt+M/GLjJoOWgN4PsAIbUTIiQ
iiLVNbF7oKpEITXU/gxiu2F2GTJsUCIeKVb0rlF3D84/5qseJakkyrGAA2TWfGj8tGFuOAVSf7II
oO4z6+JDS4wqYJbWq1U8qDd53qLc78tfPubC3ycd5GDj58jI9Ne//g/VoXjfW351NpZuS0mxavNt
yj/RB2b9gs3v9WIbqt4EuWr7HBzUpbahI8Av2BNtXZG7U8+C899RljsoMhvwkkJYb4TijzKAXJCh
1d2w8l7RHhoELFpgCx7eNzqpXwP3OhH7tmf7UoGrKYDmwqOpSb6h/kO1mSVDeoA5lkqnohsGNmA2
YMJVaEC3347C/qPqhu3CyZQEbRfIPGtqbl36ERSyqiqA3ZdaWO0uGO7tEdQs4aeKQPSnQepvXRrt
Cd+MWpuAidIo5Ow13tgdVm5F32M2Gm5+2KPQ+VRrl8C4IW+s/AX9hD3SCNCwzaBheGdz/8TAhFZU
pShjN60s6N4GN/OvrIWiscat1fgRq5J4roFsKQ+SBKDTeK2NEM9/2PKF2b2+c1wEwXjuzQSDoUf5
VUjmNYrCsyu08aM7izyaYgNLXN9THhLM51f9Xa1tUq6zpxLnpglJ8LWszlOldXxOqH+SXf2mSa29
8Y9SwjhJfRU1m6Obchl70ZNMrd6XjzSbmoGhdgYgbEAhqgZa+7Aklbs79Ey09L9QdLe608YgrgCU
IruUWZLZSI1VKKwtmk6EGubpV3I0kk9g/2sdpnetOEsodcY1ASqR0aVuHURj/9iRZ0bqeKAuRMrM
M95QZNo/IZ2n7kEuuNwDw+/V6F/oiOt8FJm9eTD7/K9fRviy7wT9317g7jOkVpCMMlxi94/H1rMh
jDNs4obOFMJqXWfFlGDgarc7auQlrUs0ki58bRDKJ4auyPWwERwABh/3BbL1hcPLzJa4rv2vvb1A
/7heR865SoZDFjvsY+Mk5Mz3JLplVSZthBKMVBPxWdsN9C3n45rP1Heq0I60ywjvLDoQOySfU3M4
LPmYzFOVtJCLhVPt6tLMJkQhv9f/X9awJwsCYnDIJzpYKM4DMv4gkqBTZS1ydegoHPg//3uKEqhr
Z5CuIrNsHEonfwDqpCPj6WuYH5XX7s63c8fZykEKK/AWe7si0qoaX0EldVuceP1xxrAQfIYETMUz
lX12yk6Fs10lMuQylmuC7hcdue+zEgwwvPuCvttyU9vgGsKyQAukO/EbL9Rgi4Hn5JppOWZao0Js
PKzr0eQE+PcdsiyDP/dqMHWo6EA+VXy+5EZR65McZ3RQkSg68P9/Knx5DYq9N3vnOFZnpOCHFnzI
6bcmu9DbssPGSWXRVRZCie3s6hXSKkd/aEdNHQNjK1vw0LUGOe1xSXMT8qnxgebc1Ss5WMxyuP3O
xMQv2b+3k17Cy3OzgdprZbCs0NMJf9EKFJGrksrMY31sRA13WItssT/wD//EXibi71tmfO63mLJO
CnZ47+SriwfM/OX5gcALI/yAw+Ie6ZXe1zNKAqvniw1V3Tst/scd0LNyLVpDQEzvbVsaFc3lJ0qM
h+5LBEYGcmRK2XiqJjaWX7sHbp4MAVvWj/dMzwrKh9VzJJyu0bhCVrc0KAw9PlNVBsnaFym+o52k
EyeipE20o3bqW62Odg2qrIvktbFvZIn7RZKmakO57O+XnyJ9LcdhV9aBLua9EoiPp1CmENPAV+In
yVXEboGHB5pFQXIST09hp6BCAovzo3rKijOqhshbGBS6WZEIUl154aYIarSe0LGcVfjITR03UIOO
bvqiySK/jDoFHFobeO70MInRZ+fLIEgOlD3GYu5JnyCA8YGXFbBzdk33a6aGcqyy9/KABj33TuIH
B0CbwMQB2hXIwPl2Eu5Yta2uhlY5JT5Q0oL/D66mSYSHGWvVG7jdn4d5gPfVnFqOx0Qlz22Hrmi4
RCZle5JWwDHsaVULHcBjT7ZjHAQyUpMu+J0CiVH4H/B3HwuUrRHmbLscmGu4t1HioqCKOLp9naWc
8Oa3FBzbJtPsS5iG4APhFi+KUlZtpK+N48RN1ivKG90VytK7L9+l5/axYhoiSoZqONOYLdWR/Gnf
NNWkHB0sjQcC3V4ZLN0a/uUbB4BrA6qN8+B9ZG+cASw0PI2y0rNY3xwig5theqmNOXOiSt5JbeXX
EwyL2TspZ4AuEtBozBgEClUBoPUObNXyFenmSk2xt7BeeyHjbh9JkusC1wqKTq+K1UzBvt25OYrU
fjS5iBh43xjx3IveAt7bEqtvfAiwzWz+VrYCRZ05jCtisPIaa+cXJ8DqdNPWQ/x5AH4Qo9FeeeKv
YNsGz1fnaLJhl49mKdUX9jmz+bgY0i9u/1TKP7oi7Mv5lEWgT/s++E6mW4dLs95zJBy/18DXrGmj
rdwjwqVmKa5Z8nxlyVAuASz6Sw6O7w5iHIERn5VeJsAwE9vqRNDeHYtd7bc0Mwh5cM61aTUj1od7
TLIuf6tfP9luU4bjrOkxsPmqscwiYKsQysytbh4s6VaangdWdD+uhbA8U0MnVZY8NkdM/gMQEiZz
+z550TJJ9dMhdZr6d7C34B0wI+MLd3mXcLrSuRGA1KUjT96wagPLGlrijOFHZ5vyIQWP24Ko4nO3
1tEqTgGcfzpn3UoaU42UqmSIzn+X2ZXxXwbzUXFzO6d5hmn1BenHgyOvnmP2RhUIMVHeqE/4mJdu
FtBsORyvrZDZDy8mHXnX4+86/8jkHjE2E/mcU26eOBaUWQr32Kq9dQG+obxeJrSRlfGLuKuJTO1s
vhnWquAwWrILx5Pnb6bbuhW9u90wZW0nGtgCQ/mT8HP+06jFBxzyguqXdpAaUeq7cWEEbN+hTktp
X4+P3EjyvglXN63YvEFa3pyU+rFz3XWhMg8SasQC0FFApGRQsY/aMuxDSDOjvcpuVTsYODx1qLtn
cUwyn6/tpNuI9n+IkaEThQSTm3sDx1sWQoYVd7Gf72N1mTdGol7LhiK43oeGKBO5WS+nr4WomSl7
qKcxV7NzcVkxhbOqCgJMLAxx+rBFDQN44Gry6AeFbayk0nuPho39NPAu3TAcGlj0UERF9dKZD7w2
IkyYAJckeu/CCcG7CJPnFlUQxLpqPmlneg7h0o/4NPaT61VMOEJqfu12sROV5+FakDuxrP5hO6jB
hgKC6vAtd8QeC/HI0tCOhnybqP48Qf05l3zeX8Co3CepbGdMdouPkadbuvR5gdHPA4eEJtqhIlki
fR/6GjR9e1jD+reSXdjeeX2qYpSZva2poYBf/8ZnUyHcv9Ni9L9dqTjbmNBmPOnjsrzjK0vzRJUs
82I5oe8Vg+BV3G9Kajxr9RMqYBHp3dnY3ixj1iNqHhTcTaPQOH2mxgOStKcEO2B8Yz58WKvBvKqP
C6hs49fc3BAzyD/XX61sH39XZ0IiSGdkZWdfXaZqOU2z2sQbQ0x/L2zfzb6CBQ5qx4NT+EUz+NIE
TEnutVjmLZYcKQ1QKRPzMvhgUF2SZ5tG/bSAbph/HVSnn+OlWJ1d2wZzs6ZQBYN8vRZkHaZm++yT
a1BgLtXJF9DBW6csXZIZY3EIzu6aAxdPVGWbYWGruxaKD8si4A4F+GLKZo3xSUREkooZc67q8dYd
hvN5Zqt+cmXvG+fZkMX6y5DvMpS0P7byh/cCtRFgQcS6Fc9sP5dGQI88gKIVuthYIz7MQULpp+mk
EBR9gWKvBzYorlILcmA1OjPO37KacNo1fYOlpAAydbHkGZDFQ95Z74Fh/ccsNDlpLNTM1B5WLdiv
RDwhUdGRAj97OhgIMiNpUbePMdJMupNKwRWc2NBQS16PPuv9h9lEvEv8GvGZwzY7JSvVwyc0PgR5
3aTvNT4RDT2l7OZ1CqAB+xtXq/dJ7r+RbFz5QxERG3R8uvWhwb71VJAXFQt/QATpQ+FZSyXGTIlk
yctFSiVuaiEN6eNul9cPRwVhUjkQpe+bt/LAzmKUzkzPLF+74ccXcDUhSE+H096IUpzTvLjcSdrs
2uk1TfgaCOEEXrBmxGs5u4V4Bx0rogVK9J4lZVzf7mjcGpSn3PuNK/W/90p3KgAqhjWQlcjXE67b
orB77iXx5QWzmA2Sz2swVbHf85r3WzNUz46ZMmWVzU+CrreJRN9vmGDrWlDn5H5qcvwjt/W5KrNJ
rQt+vbGRHX0e8ELgH+5Kix400kkHSg4cNCiFU5DxiL3tA412LVwUpMrTBaAU1x4fKgH6WPw1RCnW
znIaiJ6jLAj2RraA0BZo/+onx9XSji+uprOxG1MyPIyMgHWXtNdVNpabMQYVEOYOEL3ysLMe8+ZI
O325xVK0DUJUjUmJ7oHPbZmcQbENPhpugJtOrEpPsUHvJDuMJDvwtuPXtSD9RdcSgxqdHyqT96Gy
XWRmqlBvwJc//ygdFHivSotM0q+1uvcSbvcSnLMwGlKbUi0u/5bTwncGpmSMRjNsRTUTb2fmAfla
Ie9qcffPIi1iPZYONgRTv9EIJbQqiOVq8tKxcmslPQeGm2e5QzHz3nbZAte+m4W2Ku9WX/AGynCP
LKuccd65ZUMTTjOoxPc3w2y6HnX2vMhNs2LuXKFD9a5FxThwPJ4ew8M8pXfq1DWtoSZA+15mIog9
wH9XldoX8alhptdSmEddOdruzXgtq2Wl5btF+8rdBQLq/7+AmfT0U2w4IGfhgzkQd55xFkBtg3hz
hYKOyC/A/TcVOYzdA/bpPAL5fAPPVQBwvW8e+I4IXC7mabBsVXxSc+ztCcEPV5li3NTohiUOc7d1
hp0KH8Q4la0YCkAPkYvmpDsV+qJk60Rm3bA0KbKCyNO88pxSB9BXfzq5jdUxq8fcppowxQxpG3rt
soYXyDmgSfYX7G9rs//Zrj7WTbPS8IAS8fe1ZjHwJxQrTT+0zA0rZJ8vsjMFZkn1pjADhmQK2o/4
XlSRWdx2tcgZAV+k7XnBSsxKOIyrm8AasabBcMCXctel4a0UhQ29YTsbOlur4UDBh3NlQZC4Y1RA
dEMX+YtiX6V9VWjgA7TjP+SJjRQwsN65WLtwv7HpGAOjr83Incq0GYqiqsnWw5thA+OllO2aKZJl
O7X4f5z8AZhF87/ufJSgQOcN94HHfzdZTkK+2qNinxAr3GOj+U99/MQ0IGkJPjc3DUVkaNhiqUHr
a7+IiYsy3mw76tGm64wvG5lYym6WIqdrycNEwWz+W5arqDfs4LpzTAtGU8MlxhaEZROASMLzw/oX
cUAq+IXcjhZRQUDoqponaMjQL0mes2aJaQBlOFIpxhX9Lb7sL0UeSv2YVVVpuowbMIvWUArK3XNA
qO6AbqVPMpJTW+QySU3b+M1rlWqX/Glh9PGS7zlStJFAVHQwZinnaCVEbTjK+wBoH91OwO8yYP+A
qoyc8VmskHzL1FOatA/NW5Iv+4V1Lzp4QEQZemcBpQ0g9lV81dPgwquZqiWwc/GWpcurayc/xLMt
b2d78WzUZ540alfp0lWTSnTINUF8uPcGukr/zCabCmMRjD05+z98ilkyLHucNUED8axmFzWe8/Kt
gMwYJY3ONR58KBSyDue0Fak7HjLCmapI0Ex1MLcGEi3vP1r9b0B2Av2Vl7rLK6K30aeO/4XAmf7x
/kFfXckGpY0jsTEwS8dw13VSZtvNCE36jRreK3QlTmza+XDvvI6dZSDHW1VRI28+9uAYFBicU1OA
YMnEmlsLKRz9hpc/1bw8Ve92Ug/7/wxd4RnY6rJLr/eqbxVZ9wlx9J9mFjzVKlle70QqF7G9s/Xm
shEvOIr22ySZUZQYR/GxggTKV8dCoHMcB5cGhN/R5fy+8K4BRPPriULoE7/uAx/SuhOUOaCG16ha
y9QE/TdvWS+5PjPP1uQXPoPkqwyGDVOsuz4cbIrzI8HKzPM3CAQXQ7CmYxlgTPxJd5XWmijAycm3
5C1bRz+S903rKywo4xxAFSGpC/P1gTozQe1iqoOdXfWJYhxwQkp7d8G4N+Ay1My4U1XzgItxm6Vi
DNcv8ayO0vlIoL79EsB3Ow9gVxnAhYoszx11AgT4OSwzCue8Hq01LKLg0vK+tnrQ/fmZUfkX4zB3
Q108vBDuUK4K+JnGSBBooj4B3soa9gpGEhJbvjIeAUM2YrZ5LjheDoBJYHk+3gngZoWK0GC3c6VZ
pMNpeXUYa7hEuozKg0rZCqr+QS1BTgY/PL3rODBFzpn6Nh28LdUg7bbfdGSK1dzuVd9ul/ROKxz9
GgzqlQ537JtLRcUVOil/oqWsqA18w7kpqQ/fodqFvn+aRJEUOIVyb7pQV9Whh2pqrexxaBEkqI+V
whLVq20Z3iEmnzulDNyhXGtCKTDOV4VUaon1CWAsJU0E4AApVmEfcC7Krp7Dn3/21bORqUArE8KU
7KQnILEAGC9bmk23yZUgMHwMbtfn83mDuK3mT4HYtVP/zEBMpdvdfh0jz9U+3aMJYkIK/SH5X1jA
wYLzw6iUYTyyyLv0Bvbv7z5NOcZjYIFKUtCh5yB/++Smpvmbbb3ytCpm7WCRtsKIKGHFgrxtp1tC
B7/WK2GT0xtCoe2Tg5VReD5HlUrbnmqkAqkj46toxL2iczLKdEzbdMqBsGLYMpBPpufxgOBQIlbV
GsJLKVqvGr40jojknctKgD6IzF7Ujmd4sJUMm1Ioh/bfjcK981gMWUUP1CNP7jUFzJ7ql4H6p/dn
cTlVLRBqWbt7MTfeXeK5OPaw3aV8BCw/IjwsfugwzXAKKSTjeAumfBHchmLhrk7l4GCWP4O9zcNT
FNOXhq9pdgk03ZqlD+mjcJpjl7k7Cv+eZMBTC3MdufLMG7UOGtzH7HBK4LrTZ7rCYAkLv3dV/sbx
kQjl5GM2FLRg/4X+zqPqSgjpQDzT67QuN89GCbKamb+fnfs/QVMvpI76MklkNu5IJfCtYS64xcV+
8AspWBngYPoAbdIVEajO/0S8tGxTfwOnnuoKfXKM4diY9RiIr9QRTovsTcQKA4T4jhfZM38fZ8bS
Kyoy30BmOOqlomtf3RXN2PmwCma4zENp8Lf5o84Z+f1t2Csegjo52a0ZE5OQGLlzTCRPtmkXU/98
ng1vbWygTHIKQkv2tAv2H7AHjE38tuKllbVNMbAizEwMSycKCMXBExjBYIAty68JTi4y/wGJQliw
ISNDq2JvIdqD2M1r4dWiVU97FdbnAPp3OcoaInCSyl3B/QeJf+yjMOA+ALpnQvsS2ZAVuYuSkyMN
dEK9XgBO0W1qPOgv1mDLE709FZ2v0q6yc7lroAavvGb0O2Eb4d+FvkYGepSVA3QBtPBzZONZeDkq
NKFddGbNvKWWCmXOfZWbxxWC/8+DtoA4tlKOKnL8x72FeXmXYJO2pSkk984gUCbBIWEwU4lujOdl
4vDWzhAW998s5xjW3M3idTcjgwiDAj7ox2sWWyFsTWRMRNZn8tuvH1NX8s/kcyMYGWifJzyADMqk
quaKA6pT+jv64zRGTyP1o/yGlgbuHSYGPqLilGvVa42Ev4p4SymOajzKAb63P7LNO6uTVDxn4ECE
LKA+fwflDbJratCXiqHRC5MttRp2vb/bHab9X+ra5RTzRw+PEH0Mt0nYt/02W9kI2e55v2kfDo5Q
co+QqLUlaIaJMQ04VEDY8Lr+jrh9++EkwWxfrYJggTQX/fb85D8iPOClSSsJvhHbbl4eCrMmnmbC
xXb6bldjN6+Z7h4yXNxFbGWicYf6Z4eIq6lMpyFrSatuBejuhE5EQXkNhjwqzkLiOUlKTRsxfhdh
ZsZJSC+krv47fEOp9ZqpojBWJ9nW1Qgnk5G9TkE4CqOmZlHJYPFIDWUBr1DJY7XxxPNA5rbitCt3
k6faJX53O+mDojEeNlIO3JX5La+a9ef+in5yMVlOwXbcB/ViJgg1jNSBuQvKQ3lnL9PEDMDgJdZ6
x/LzKfEr5976bBEaTeV5syvmHKFRjVHclMYjnFOH0BAo+yWFiAXDEgUFWozVXOgoP2K6TzyNCHVo
F7oioWQ2nINNgpEKhOVPPyI64WDv7pY+UJjrLdocoDHVOpZNeFI5ZkLU+2sz6EvuFt3tCU+c0Z1S
6SmuFgE6V92fRHPuOmC/0l/V1CZkzetBkNYqGVayCCOerCQ7uFeUSZtUps/HNwcGO+lOLfePeuQf
B4mYF9fD8ICDpQqeU80rTeLsCGjtR4oHuZ/B8gSIsqrj5eduyBba08g7HBx+EZJP9bRhm5qp7Pv8
SG7XUztj9UbUwfL1CxaNZd8y9Yco+C4e9VC7yTI3FKc7cPxBfVK0kyaevyjVsY6murCfIZl6VePT
89VXg1KWbYMk6i06rDlIXH4XZRKtJArnFd3zQiEFuM6QLTjd7ZNXlnePnlBUM92HSoK+F12puAhj
t163H/s3QVUWKCIysJUZCL89DiX35evsfTI+DxMhxMnUETJlR4A2Mn3Ewwt2w2AP29LpXRKq39gY
4UhXc/e+TUtc6RbbOABZSpRT7VWHK83kZnyrJHM4iI9lW6snupXQL61i2buMrjmr/m/74qK8mbLT
S382uyeS8gsWRp5vQteH14QY/W4hyjPkuhjxnRkxuJxUyoJrn4ajz3l+SCNnkr/OBcJKzD7SZY/s
51JdTAg25GGPjOaOGLPmnlj8PoOMNA0XbywtqbhYgjwi2H2ozF5t3E6571hrzyfAuAyiHnjBaItP
UqpgBqkWPUzrz6qnMp4HzBWx2LLIkZAMbOaARCqueWlmDrH/jEbOoqV3XT2+narcmrWUhiEcHzPR
dLdurZRv5///M1GOdguTcWvxmARQJ2y9zexBVIZ+EkMp5nVBXBX8I4top9zaLY631wkrjEs9JBaP
c/q68UuRtLm/ZgOZPULTUdwpujEMRcLOSUKT2wxD5NXV7oKiue0gcq8HBaYRMwI0U116l5O92U39
S2jeNuGodVPD74ukgnjH+01oHxod9K7EfScDs66VfpiFiHfg7LLHY6u0P4YNBIggsL9pbtdQSjBA
Cxq8s0V+r7/+9k27L1O3dD8VqRtAjGoB1O0BbJAMcHTf6j1zS7e4wf629UIQptooQ2WFaPYH1429
uMlLqEjHL+Llrnb33T8UcmjQeijUv4UtEJOm6jz2xGob9J+TU0L7y2CNrwmXr4n3q7QXUa1DLctS
s2/wQCU21AUtQ6vwrEf2pCYSGCuA5zgJjpz2vS48FiZu1tehghOYN3+HFY6JOVRRBFLY8wI9C8wx
zLCnJdBHnQ+L0iCSHZN3JlOdMvdadlwihbmQqRmrQG9cxkcuA7NLkgmUxAajiYLqhr6nfR28HGH2
hrYglj+ml2scOjb4BfpTHnEdV1erl3v6lXXD6EL7Z/KfGFXHR4JtM3cyCZ8QEhNATElWupBzYrti
41lXopAPd4ewQY5yMu02Mzw1IJHx5ncdZSZyheuIN5kkK8us9F60rGPKBEcQXxdNKZRK7OXhK/In
JclYfRI0XL9R2zQEtn63BQ6+pGDm9qq2KGVUNelbLdOjS4mbVblN3ZQTHAct5fp9/mY4vVQLA3Es
3srWaj5qFd4u2GMd/8u92OQQSXOm6hHfSBGi9U4TrptGswi0Q/WgCRhIV19AIN1hdOThCN+GkKEg
7X5jiuj37+9wAW0t133IIAllYIq0eIvwNcGher5DYLoFGQDEGqjPYAw+J057CO6O5P+bPmLNlflZ
HkOlrLCl60Ld6xTas7DjazBIYuIRU7NqoWf+E/VCFIzc4YRO31mVbildnYULT1+08oFadxEpbU6R
QeYn/v4s2wS2UL9AzXNlXTOcwQS6GVb1DF1lOAzbIB+S+AUi8tCxPdP9CDIvH+yKE83ahTGFX6E1
NnTlQs7wuFFe6zo6ZeUAfJrDkNGC/R/3NrvhP1xep4i8m4INmgXlLgBmaizUzH1KzBxRT7lR7pSu
utVcUPCAKyZmIMqT/rhtejsWYi5QL/W0eZm1yC0RUMW9JaXKBORoAWjtf/17/9gmShGPnuju9woA
pHJtedVG02f6NLWs1tRDANTKLrzdNG870nNOdQCpZgQqgZoxPdKkDq9bj1XPHLt4E8bG/yCL6pGM
ddYf4jn59zVXRy1SMQohz5fK1eLztMFxX3MyiUVw0NUqBi7sNb0NJgwL+7kvS40hvF8yHXtyJXdA
o5faLXbMCApSfn+uYKTtzDDAz9Z71fxhKITJldV4Om6FZFwrvvUg7q7gaCtTZLo0UZMI0Gc/KkO6
Bf5lsmd7zFw7CMY/JdlTCqreb+QiMuhwwyqYT5hLLv9NTLDzNR1HDCBKmezyIqm5pWCC3L/WYHDM
W3PDQXYV2qsUt47ugJljOHMvJkL4V9gzzU8MWjsM2pXbYs65WscH8IYzoI6N8LOLcxB7mTwxmBkP
46jOBLKHJ0jFL5bq+QCirefYCkU6hgl/5gLH89pkmnirtvkOJ7OcSp2iRvHQ7TxoHKAs4hQM6wiw
zOpkEtE81iuMQMkdvUqe4u1qOyJIOPmJDWkRCOlKsHogOLyrp3NpPgrt7cuDtaAmg6kZnMApr4u+
xansiLXrI/KlYk1IEHdLrcvdnHFWooYhshP7VqvZhaJehNJqv/ivoccCJSzRwLnA2bJzSJr0S3oP
57ykQrOHWMCafoDf972MgiNNhualkOY3W2dTGNQuYkMhi7pX0qAuYUtpba9jVmssDShqCgXfhdyw
By9fnPKR6F0L7YsPFXMi8+RQP62Y4w3QZJIHSc1/8yRjyy/nD1lkdMS3SAfgY2oTSN6N1O+W+qPi
8V5N3A4B/Rt3M0I/qaKaBYTA9WSagSY16UlDpL+U6sF/QPkbngBt4j9GovtB3ZfgnBoiwF/Jpq5F
UAhFix7cXYbEyVWqkmGlqy66z395wK9ogXNqtBAbTfflJ8jFw4k6qhgRi4e61CQTa8aNf9ybSD9Z
O20FNqwEMWZUmgZ2Ap9ZtvspIkLJ2Mypbxvf/NsQj3U1odk2ZSIlmgPXjn8tBUv/pjbASkzevsOr
bED92GFscZUF+v8pcuVogt/5nAULCKiH/SqvY6YI6Yd593GF4EeqSKPwAGtgnD858x/oASD8LRUZ
b6+3IwVUDIq1WvAe/y23J3vkKObvIjdImz/CtplputVXdXh55GOa2KCj3fM66HrfLyuyQ38FmtXW
Bn7wGuSrQb6taGKWKJIaYi5Non273bf2DY8qMyjZFuUpOHLloVhz/seE8ba713l0uR6x8jM7BrpF
2VYT8n79cd9KR9kPLpOk6d8qRYT6jSkRhkD+un8T+WREXCwY6Z4rARkJAbCdAGe0W7irY54XgSrc
tNPUMO2KWPK0a/sBm8SUjj1zJnpcDfmiq1AZwn5dyEUXGLXEiDx2qY/OhEbfh98uLLQQMckIu+tV
U3TS+9UIr2eYBnGoT3/A9PnuIflbzAjWlW5rn+5U6bW/iW3biXjrl1rpTnU3FZPxLxwTBP9uDIDa
fG6X4mhw/YMHLg7KRWQ4/apTrvPr0pL6u/jnkcVJmuANyXZ0GnpYPwpAncKM0YA4gPuxH/7tdHYx
pKY/MLqafDQvxgznNsr0otptBDMzF75ayKBeL+LlBvJebhF1Aao+zxZtTQaW9G2yaFw7JwIQT+vc
rvCYLY5sZ7WeS6GiLkT3ormLMBmEnouLio7VfmTydJbYE4VD2T14/0fsb/ssF9nOqB3/8O0tb0f9
gNHEOj06KScrrsPK9hwv6tX3Jzs4PBzqhtrZZ98yOYdPRQyLLTzPsmX5wagwHMLnTOL7cZphaP1E
Jyuz+Jqjn77tvudX+fkg+cjEGBcGYtd1qc0xhfEQrx/BpWGiXUwZKdll4uD6eaqRDBZPexfUQVHM
2rwtU6YI78QqZxkse8c5utg+vhsXK2CrcpzRXgM8gj0WjxLE2b+kAylyAjrxNll8JWOwukPM6Y6S
bYG41vB94f6wo1mSlhVaVgPTvV3rtyyT2MSq4TlHfl+kWlRjcb8r/MOfbZvCeQHspXSvEKPEEHg1
KWChFv0Y11JSda1KONgJGjjukx0mt4exH3/4e0iGjGsFH3qA+vCrtJw=
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ADDRBASE_ROM is
  port (
    a : in STD_LOGIC_VECTOR ( 5 downto 0 );
    spo : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ADDRBASE_ROM : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ADDRBASE_ROM : entity is "dist_mem_gen_0,dist_mem_gen_v8_0_17,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of ADDRBASE_ROM : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of ADDRBASE_ROM : entity is "dist_mem_gen_v8_0_17,Vivado 2025.1";
end ADDRBASE_ROM;

architecture STRUCTURE of ADDRBASE_ROM is
  signal \<const0>\ : STD_LOGIC;
  signal \^spo\ : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal NLW_U0_dpo_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_qdpo_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_qspo_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_spo_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_HAS_D : integer;
  attribute C_HAS_D of U0 : label is 0;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of U0 : label is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of U0 : label is 0;
  attribute C_HAS_I_CE : integer;
  attribute C_HAS_I_CE of U0 : label is 0;
  attribute C_HAS_QDPO : integer;
  attribute C_HAS_QDPO of U0 : label is 0;
  attribute C_HAS_QDPO_CE : integer;
  attribute C_HAS_QDPO_CE of U0 : label is 0;
  attribute C_HAS_QDPO_CLK : integer;
  attribute C_HAS_QDPO_CLK of U0 : label is 0;
  attribute C_HAS_QDPO_RST : integer;
  attribute C_HAS_QDPO_RST of U0 : label is 0;
  attribute C_HAS_QDPO_SRST : integer;
  attribute C_HAS_QDPO_SRST of U0 : label is 0;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of U0 : label is 0;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 0;
  attribute C_PIPELINE_STAGES : integer;
  attribute C_PIPELINE_STAGES of U0 : label is 0;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of U0 : label is 0;
  attribute C_QUALIFY_WE : integer;
  attribute C_QUALIFY_WE of U0 : label is 0;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of U0 : label is 0;
  attribute c_addr_width : integer;
  attribute c_addr_width of U0 : label is 6;
  attribute c_default_data : string;
  attribute c_default_data of U0 : label is "0";
  attribute c_depth : integer;
  attribute c_depth of U0 : label is 64;
  attribute c_elaboration_dir : string;
  attribute c_elaboration_dir of U0 : label is "./";
  attribute c_has_clk : integer;
  attribute c_has_clk of U0 : label is 0;
  attribute c_has_qspo : integer;
  attribute c_has_qspo of U0 : label is 0;
  attribute c_has_qspo_ce : integer;
  attribute c_has_qspo_ce of U0 : label is 0;
  attribute c_has_qspo_rst : integer;
  attribute c_has_qspo_rst of U0 : label is 0;
  attribute c_has_qspo_srst : integer;
  attribute c_has_qspo_srst of U0 : label is 0;
  attribute c_has_spo : integer;
  attribute c_has_spo of U0 : label is 1;
  attribute c_mem_init_file : string;
  attribute c_mem_init_file of U0 : label is "dist_mem_gen_0.mif";
  attribute c_parser_type : integer;
  attribute c_parser_type of U0 : label is 1;
  attribute c_read_mif : integer;
  attribute c_read_mif of U0 : label is 1;
  attribute c_reg_a_d_inputs : integer;
  attribute c_reg_a_d_inputs of U0 : label is 0;
  attribute c_sync_enable : integer;
  attribute c_sync_enable of U0 : label is 1;
  attribute c_width : integer;
  attribute c_width of U0 : label is 16;
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of U0 : label is "true";
begin
  spo(15 downto 1) <= \^spo\(15 downto 1);
  spo(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.ADDRBASE_ROM_dist_mem_gen_v8_0_17
     port map (
      a(5 downto 0) => a(5 downto 0),
      clk => '0',
      d(15 downto 0) => B"0000000000000000",
      dpo(15 downto 0) => NLW_U0_dpo_UNCONNECTED(15 downto 0),
      dpra(5 downto 0) => B"000000",
      i_ce => '1',
      qdpo(15 downto 0) => NLW_U0_qdpo_UNCONNECTED(15 downto 0),
      qdpo_ce => '1',
      qdpo_clk => '0',
      qdpo_rst => '0',
      qdpo_srst => '0',
      qspo(15 downto 0) => NLW_U0_qspo_UNCONNECTED(15 downto 0),
      qspo_ce => '1',
      qspo_rst => '0',
      qspo_srst => '0',
      spo(15 downto 1) => \^spo\(15 downto 1),
      spo(0) => NLW_U0_spo_UNCONNECTED(0),
      we => '0'
    );
end STRUCTURE;
