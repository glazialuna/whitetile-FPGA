j start
start: // -------------------start----------------
addi $s0, $zero, 0x0100 // s0 == addr(score),0x0100 
addi $s1, $zero, 0x0200 // s1 == addr(position),0x0200
addi $s2, $zero, 0x0300 // s2 == addr(ps2),0x0300
addi $s3, $zero, 0x0400 // s3 == addr(gametime),0x0400
addi $s4, $zero, 0x0900 // s4 ==  addr(testdata),0x900
j initial
initial: // ----------------initial-----------
addi $t3,$zero,0x003c //initial time=0x003c=60
addi $t1,$zero,0x006B //initial position=0x006B
addi $t0,$zero,0x0000 //initial score=0x0000
sw $t0,0($s0) //store score
sw $t1,0($s1) //store position
j cmpkey

setposition: //----------setposition--------
j subpos1
setrandom: //----------setrandom------
addi $t3,$t3,-0x0001 // clock--
sw $t3,0($s3) // store gametime
beq $t3,$zero,initial
add $t2,$t2,$t3 //t2=t2+clock
add $t6,$zero,$zero
addi $t6,$t6,0x0003
and $t6,$t6,$t2
add $t1,$t1,$t6
addi $t1,$t1,0x0008
sw $t1,0($s1)
j cmpkey

subpos1: //--------------subpos1-------
add $t6,$zero,$zero
addi $t6,$t6,0x00FF
and $t1,$t1,$t6
add $t1,$t1,$t1 // t1<<1
add $t1,$t1,$t1 // t1<<1
add $t1,$t1,$t1 // t1<<1
add $t1,$t1,$t1 // t1<<1
addi $t1,$t1,-0x0440
j setrandom


cmpkey: //---------------cmpkey-----------
lw $t7,0($s2) //t7 = ps2
lw $t7,0($s2) //t7 = ps2
lw $t7,0($s2) //t7 = ps2
lw $t7,0($s2) //t7 = ps2
addi $t6,$zero,0x00FF
and $t7,$t7,$t6
sw $t7,0($s4) //store testdata
addi $t6,$t7,-0x0016 //t6=key - 1616(1)
beq $t6, $zero, key1
addi $t6,$t7,-0x001E //t6=key - 1E1E(2)
beq $t6, $zero, key2
addi $t6,$t7,-0x0026 //t6=key - 2626(3)
beq $t6, $zero, key3
addi $t6,$t7,-0x0025 //t6=key - 2525(4)
beq $t6, $zero, key4
j setposition

key1:  // ----------------------------------------------key1-------------------------
addi $t6,$t6,0x0100
slt $t6,$t1,$t6
beq $t6, $zero, wrong
j right
key2:  // ---------------------------------------------key2--------------------------
addi $t6,$t6,0x0100
and $t6,$t1,$t6
slt $t6,$zero,$t6
beq $t6, $zero, wrong
j right
key3:  // --------------------------------------------key3-------------------------
addi $t6,$t6,0x0200
and $t6,$t1,$t6
slt $t6,$zero,$t6
beq $t6, $zero, wrong
j right
key4:  // ---------------------------------------------key4--------------------------
addi $t6,$t6,0x0300
and $t6,$t1,$t6
slt $t6,$zero,$t6
beq $t6, $zero, wrong
j right

wrong:  // -------------------------------------------wrong--------------------------
j setposition
right:  // ------------------------------------------right--------------------------
addi $t0,$t0,0x0001 // score ++
sw $t0,0($s0)	// store score
j setposition