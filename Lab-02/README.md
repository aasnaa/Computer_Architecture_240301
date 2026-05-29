## Lab 2:
# VHDL Code for Realizing Logic Gates

# Objective
• To write VHDL code for basic logic gates: AND, OR, NOT, NAND, NOR, XOR, and XNOR.
• To simulate each gate and verify its truth table using GTKWave.

# Theory
Logic gates are the fundamental building blocks of all digital circuits. Each gate performs a
basic Boolean operation on one or more binary inputs to produce a single binary output.

# Gate    VHDL Operator   Boolean Expression
## AND     and             Y = A · B
## OR      or              Y = A + B
## NOT     not             Y = bar(A)
## NAND    nand            Y = bar(A · B)
## NOR     nor             Y = bar(A + B)
## XOR     xor             Y = bar(A ⊕ B)
## XNOR    xnor            Y = bar(A ⊕ B)


# Output 
<img width="1239" height="786" alt="output" src="https://github.com/user-attachments/assets/2139dc00-b55f-4e88-a563-ddcbb7aa3159" />




# Discussion and Conclusion

From the output waveform in GTKWave, we can observe the correct results of all logic gates as signals.

For the first 10 ns, both inputs are a = 0 and b = 0.
From 10 ns to 20 ns, a = 1 and b = 0.
From 20 ns to 30 ns, a = 0 and b = 1.
Finally, after 30 ns, both inputs are a = 1 and b = 1.

The outputs of the logic gates are shown below the input signals a and b.
