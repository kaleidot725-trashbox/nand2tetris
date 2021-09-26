(INIT)
    // カウンタ初期化
    @SCREEN
    D=A
    @0
    M=D
    // 行数カウンタ
    @8192
    D=A
    @1
    M=D
(KBD_CHECK)
    @KBD
    D=M
    @FILL_LOOP
    D;JNE
    @UNFILL_LOOP
    D;JEQ
(FILL_LOOP)
    // 黒くする作業
    @0
    A=M
    M=-1
    D=A+1
    @0
    M=D
    // 行数カウンタを減らす
    @1
    MD=M-1
    @FILL_LOOP
    D;JNE
    @INIT
    0;JMP
(UNFILL_LOOP)
    // 白くする作業
    @0
    A=M
    M=0
    D=A+1
    @0
    M=D
    // 行数カウンタを減らす
    @1
    MD=M-1
    @UNFILL_LOOP
    D;JNE
    @INIT
    0;JMP