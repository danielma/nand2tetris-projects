@24576
D=A
@endofscreen
M=D
@color
M=0

(LOOP)
  @KBD
  D=M
  @FILL
  D;JGT
  @CLEAR
  0;JMP

(CLEAR)
  @color
  M=0
  @DRAW
  0;JMP

(FILL)
  @color
  M=-1

(DRAW)
  @SCREEN
  D=A
  @screenptr
  M=D

(IDRAW)
  @endofscreen
  D=M
  @screenptr
  D=D-M
  @LOOP
  D;JLE
  @color
  D=M
  @screenptr
  A=M
  M=D
  @screenptr
  M=M+1
  @IDRAW
  0;JMP
