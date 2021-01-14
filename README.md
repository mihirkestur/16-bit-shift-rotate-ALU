# 16-bit-shift-rotate-ALU
This is an implementation of shift right, shift left, rotate left and rotate right operations on a 16-bit ALU using verilog

## Output
Output obtained when the operations are performed on the input i0 = 16'b1000000000000101
*Please note that all numbers are in hexadecimal representation*

<img src="https://github.com/mihirkestur/16-bit-shift-rotate-ALU/blob/main/image/outputwave.png">

Here,
* **i0** : Input number
* **shift_by** : Amount of bits to be shifted/rotated
* **choice** : Options encoded to choose the operation to be performed (i.e. shift/rotate operations)
* **rotate_left** : Ouput after performing rotate left operation
* **rotate_right** : Ouput after performing rotate right operation
* **shift_left** : Ouput after performing shift left operation
* **shift_right** : Ouput after performing shift right operation
* **final_output** : This is the ouput after performing the operation

## Working
* Shift left: Performing logical shift left by shifting bits to left by ‘n’ bits and putting 0
* Shift right: Performing logical shift right by shifting bits to right by ‘n’ bits and putting 0
* Rotate left: Performing logical shift left by shifting bits to left by ‘n’ bits and putting rotated bits in empty place
* Rotate left: Performing logical shift right by shifting bits to right by ‘n’ bits and putting rotated bits in empty 
*encoding*
<table>
  <tr>
    <th>choice[1]</th>
    <th>choice[0]</th>
    <th>Operation</th>
  </tr>
  <tr>
    <td>0</td>
    <td>0</td>
    <td>shift left</td>
  </tr>
</table>

  0         1       rotate left
  1         0       shift right
  1         1       rotate right

