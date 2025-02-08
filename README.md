# VHDL Counter Overflow Bug

This repository demonstrates a common bug in VHDL code: an unsigned counter that does not handle potential overflow. The `counter_bug.vhdl` file shows the buggy code, while `counter_solution.vhdl` provides a corrected version.

## Bug Description

The original counter lacks a mechanism to prevent overflow once it reaches its maximum value (15). When the enable signal (`en`) is high, it continues incrementing, resulting in undefined behavior.

## Solution

The solution incorporates a check within the process to prevent the counter from exceeding its defined range.  This ensures the counter remains within the bounds of 0 to 15.