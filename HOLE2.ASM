TABFUN  DEFW    0BFBFH  ; "F"
        DEFW    0BFBFH
        DEFW    8F8FH
        DEFW    8F8FH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0B0B0H
        DEFW    0B0B0H
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    8383H
        DEFW    8383H
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    8080H
        DEFW    8080H
        DEFW    0BFBFH  ; "U"
        DEFW    0BFBFH
        DEFW    8080H
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    8080H
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    8080H
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BCBCH
        DEFW    0BFBFH
        DEFW    0BFBFH  ; "N"
        DEFW    8F8FH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    8080H
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    8080H
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    8080H
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BFBFH  ; "S"
        DEFW    0BFBFH
        DEFW    8F8FH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0B0B0H
        DEFW    0B3B3H
        DEFW    0B3B3H
        DEFW    8383H
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BCBCH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BFBFH  ; "O"
        DEFW    0BFBFH
        DEFW    8F8FH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    8080H
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    8080H
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BCBCH
        DEFW    0BFBFH
        DEFW    0BFBFH  ; "F"
        DEFW    0BFBFH
        DEFW    8F8FH
        DEFW    8F8FH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0B0B0H
        DEFW    0B0B0H
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    8383H
        DEFW    8383H
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    8080H
        DEFW    8080H
        DEFW    8F8FH   ; "T"
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    8F8FH
        DEFW    8080H
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    8080H
        DEFW    8080H
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    8080H
        DEFW    8080H
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    8080H
TABPF   DEFW    100H
        DEFW    402H
        DEFW    1008H
        DEFW    4020H
        DEFW    4241H
        DEFW    4844H
        DEFW    6050H
        DEFW    6261H
        DEFW    6864H
        DEFW    7170H
        DEFW    7472H
        DEFW    7978H
        DEFW    7C7AH
        DEFW    7E7DH
        DEFW    7F7FH
        DEFW    7F7FH
        DEFW    7F7FH
        DEFW    7F7FH
        DEFW    7F7FH
        DEFW    7F7FH
        DEFW    0
        DEFW    7F7FH
        DEFW    0
        DEFW    7F7FH
        DEFW    0
        DEFW    7F7FH
        DEFW    1F3FH
        DEFW    70FH
        DEFW    103H
        DEFW    100H
        DEFW    402H
        DEFW    1008H
        DEFW    4020H
        DEFW    1020H
        DEFW    408H
        DEFW    102H
        DEFW    402H
        DEFW    1008H
        DEFW    4020H
        DEFW    7060H
        DEFW    7C78H
        DEFW    7F7EH
        DEFW    7F7FH
        DEFW    7F7FH
        DEFW    7F7FH
        DEFW    7F7FH
        DEFW    7F7FH
        DEFW    7F7FH
        DEFW    7F7FH
        DEFW    7F7FH
        DEFB    80H
TABDIS  DEFM    'Published by'
        DEFM    '0=Francais'
        DEFM    '1=English'
        DEFM    'Funsoft, Inc.'
        DEFM    '28611 Canwood'
        DEFM    'Agoura, CA 91301'
        DEFM    '(213) 991-6540'
PLETR   PUSH    AF
        PUSH    HL
        PUSH    DE
        PUSH    BC
        LD      B,4
PLE0    PUSH    BC
        LD      B,8
PLE1    LD      A,(HL)
        LD      (DE),A
        INC     HL
        INC     DE
        DJNZ    PLE1
        EX      DE,HL
        LD      BC,56
        ADD     HL,BC
        EX      DE,HL
        POP     BC
        DJNZ    PLE0
PLE2    POP     BC
        POP     DE
        POP     HL
        POP     AF
        RET
CLETR   PUSH    AF
        PUSH    HL
        PUSH    DE
        PUSH    BC
        EX      DE,HL
        LD      B,4
CLE0    LD      C,8
CLE1    LD      (HL),80H
        INC     HL
        DEC     C
        JR      NZ,CLE1
        LD      DE,56
        ADD     HL,DE
        DJNZ    CLE0
        JR      PLE2
PFUN    PUSH    AF
        PUSH    HL
        PUSH    DE
        PUSH    BC
        SLA     A
        LD      HL,TABFUN
        LD      B,7
PFU0    PUSH    BC
        SLA     A
        CALL    C,PLETR
        CALL    NC,CLETR
        EX      DE,HL
        LD      BC,9
        ADD     HL,BC
        EX      DE,HL
        LD      BC,4*8
        ADD     HL,BC
        POP     BC
        DJNZ    PFU0
        JR      PLE2
PROFUN  LD      HL,TABPF
        LD      DE,VIDEO+192+1
PRF0    LD      A,(HL)
        INC     HL
        BIT     7,A
        RET     NZ
        CALL    PFUN
        CALL    GLIFUN
        CALL    GLIFUN
        JR      PRF0
CADRE   LD      HL,SCR+960+1
        EXX
        LD      HL,SCR+512+1
        LD      DE,SCR+640+1
        LD      B,62
        LD      A,83H
CAD0    EXX
        LD      (HL),8CH
        INC     HL
        EXX
        LD      (HL),8CH
        LD      (DE),A
        INC     HL
        INC     DE
        DJNZ    CAD0
        LD      HL,SCR+576
        LD      DE,63
        LD      B,6
CAD1    LD      (HL),0BFH
        ADD     HL,DE
        LD      (HL),0BFH
        INC     HL
        DJNZ    CAD1
        LD      A,0BCH
        LD      (SCR+512),A
        LD      (SCR+512+63),A
        LD      A,8FH
        LD      (SCR+960),A
        LD      (SCR+960+63),A
        RET
TGFUN   DEFM    'FUNSOFT '
CGLI    DEFB    0
GLIFUN  EXX
        LD      A,(CGLI)
        INC     A
        AND     7
        LD      (CGLI),A
        LD      (GLI0+2),A
        LD      IX,TGFUN
        LD      HL,VIDEO+576+1
        LD      B,62
GLI0    LD      A,(IX+0)
        LD      (HL),A
        INC     HL
        LD      A,(GLI0+2)
        INC     A
        AND     7
        LD      (GLI0+2),A
        DJNZ    GLI0
        LD      BC,800H
GLI1    LD      A,(3810H)
        AND     3
        JR      Z,GLI2
        SRL     A
        LD      (LANG),A
        POP     HL
        RET
GLI2    DEC     BC
        LD      A,B
        OR      C
        JR      NZ,GLI1
        EXX
        RET
DEBUT   DINT
        LD      HL,STACK
        LD      SP,HL
        LD      H,37H
        LD      L,0E4H
        LD      (HL),1
        LD      A,38H
        OUT     (0ECH),A
        COND    TYPE=PROT
        CALL    CHECKS
        CALL    CHECKR
        ENDC
        CALL    SCR191
        CALL    SPIRE
        CALL    CLSSCR
        LD      HL,TABDIS
        LD      DE,SCR+64+26
        LD      BC,12
        CALL    AFF1L
        LD      DE,SCR+704+2
        LD      BC,10
        CALL    AFF1L
        LD      DE,SCR+768+2
        LD      BC,9
        CALL    AFF1L
        LD      DE,SCR+704+25
        LD      BC,13
        CALL    AFF1L
        LD      DE,SCR+768+25
        LD      BC,13
        CALL    AFF1L
        LD      DE,SCR+832+24
        LD      BC,16
        CALL    AFF1L
        LD      DE,SCR+896+25
        LD      BC,14
        CALL    AFF1L
        CALL    CADRE
        CALL    SPIRE
        LD      A,1
        LD      (LANG),A
        CALL    PROFUN
        JP      START
LANG    DEFB    0
TEMP    DEFW    DATA
START   DINT
        LD      HL,STACK
        LD      SP,HL
        LD      H,37H
        LD      L,0E4H
        LD      (HL),1
        CALL    MOVE
START0  LD      HL,STACK
        LD      SP,HL
        LD      DE,LSC
        LD      HL,(PNT)
        CALL    ASCO
        LD      DE,HSC
        LD      HL,(HSCORE)
        CALL    ASCO
        CALL    PYL
        LD      HL,(TEMP)
        PUSH    HL
        LD      HL,DATA
        LD      (TEMP),HL
        XOR     A
        LD      (DEM),A
        POP     HL
ITER    CALL    CLL
        LD      DE,SCM+1024
ITER0   LD      A,(HL)
        INC     HL
        PUSH    HL
        OR      A
        JP      Z,DEMOI
        CP      1
        JR      NZ,ONVER
        POP     HL
        LD      A,(LANG)
        CP      1
        JR      NZ,LGN0
        LD      HL,ENGL
        JR      LGN1
LGN0    LD      HL,FRAN
LGN1    PUSH    HL
        JR      CR
ONVER   CP      2
        JR      NZ,ONVER0
        POP     HL
        LD      HL,DATA0
        PUSH    HL
        JR      CR
ONVER0  CP      '@'
        JR      Z,CR
        CP      '%'
        JR      NZ,NEXT
        LD      A,27H
NEXT    SUB     20H
        LD      L,A
        LD      H,0
        ADD     HL,HL
        PUSH    HL
        POP     BC
        ADD     HL,HL
        ADD     HL,BC
        LD      BC,AROM
        ADD     HL,BC
        LD      B,3
LPR     LD      A,(HL)
        LD      (DE),A
        INC     HL
        INC     DE
        DJNZ    LPR
        PUSH    DE
        LD      BC,61
        EX      DE,HL
        ADD     HL,BC
        EX      DE,HL
        LD      B,3
LPR0    LD      A,(HL)
        LD      (DE),A
        INC     HL
        INC     DE
        DJNZ    LPR0
        POP     DE
        POP     HL
        JR      ITER0
CR      LD      B,6
ITER1   PUSH    BC
        CALL    SLIDE
        LD      BC,3000
OPA     LD      A,(3840H)
        AND     1
        JP      NZ,BEGIN
        LD      A,(3801H)
        AND     10H
        JP      NZ,DEMOI0
        DEC     BC
        LD      A,B
        OR      C
        JR      NZ,OPA
        POP     BC
        DJNZ    ITER1
        POP     HL
        JP      ITER
CLL     PUSH    HL
        LD      HL,SCM+1024
        LD      DE,SCM+1025
        LD      BC,127
        LD      (HL),128
        LDIR
        POP     HL
        RET
SLIDE   PUSH    BC
        PUSH    DE
        PUSH    HL
        LD      BC,403FH
        LD      DE,SCM
LAB1    LD      A,(DE)
        AND     C
        RRA
        SCF
        RRA
        LD      (DE),A
        INC     DE
        DJNZ    LAB1
        LD      B,17
        LD      HL,SCM
LAB5    PUSH    BC
        LD      B,40H
LAB4    LD      A,(DE)
        AND     C
        RRA
        JR      NC,LAB2
        SET     4,(HL)
LAB2    SCF
        RRA
        JR      NC,LAB3
        SET     5,(HL)
LAB3    LD      (DE),A
        INC     HL
        INC     DE
        DJNZ    LAB4
        POP     BC
        DJNZ    LAB5
        CALL    AFFM
        POP     HL
        POP     DE
        POP     BC
        RET
DCHI    PUSH    DE
        CALL    CLS
        POP     DE
        LD      HL,SCR+343
DCH0    LD      A,(DE)
        INC     DE
        AND     A
        JR      Z,DCHF
        CP      0FFH
        JR      Z,DCHL
        LD      B,A
        LD      A,(DE)
        INC     DE
DCH1    LD      (HL),A
        INC     HL
        DJNZ    DCH1
        JR      DCH0
DCHL    LD      BC,52
        ADD     HL,BC
        JR      DCH0
DCHF    PUSH    DE
        CALL    AFF
        POP     DE
        RET
DECO    LD      DE,TROIS
        LD      B,4
DEC0    PUSH    BC
        CALL    DCHI
        PUSH    DE
        CALL    SON5
        LD      BC,20000
        CALL    60H
        POP     DE
        POP     BC
        DJNZ    DEC0
        RET
DEMOI   LD      A,(FLAG2)
        OR      A
        LD      A,0
        LD      (FLAG2),A
        JP      NZ,START0
DEMOI0  LD      A,1
        LD      (DEM),A
        JP      BEGIN
CLS     LD      HL,SCM
        LD      DE,SCM+1
        LD      BC,1151
        LD      (HL),80H
        LDIR
        RET
AFF     LD      HL,SCR
AFFX    LD      DE,3C00H
        LD      BC,400H
        LDIR
        COND    0!(TYPE=TAPE)!(TYPE=PROT)
        CALL    TRCLN
        ENDC
        RET
AFFM    LD      HL,SCM
        JR      AFFX
HOR     LD      A,(SHLD)
        OR      A
        RET     Z
        LD      A,(CSH)
        INC     A
        AND     1FH
        LD      (CSH),A
        RET     NZ
        LD      A,(CSHLD)
        OR      A
        RET     Z
        DEC     A
        DAA
        LD      (CSHLD),A
        RET
DISP    LD      A,(DE)
        AND     (HL)
        AND     3FH
        EX      AF,AF'
        LD      A,(DE)
        OR      (HL)
        LD      (HL),A
        EX      AF,AF'
        JR      Z,DSP0
        PUSH    DE
        EX      DE,HL
        LD      HL,(POBUS)
        XOR     A
        SBC     HL,DE
        EX      DE,HL
        POP     DE
        JR      Z,DSP2
        LD      A,1
        LD      (TEST),A
        JR      DSP0
DSP2    LD      A,(OBUS)
        OR      A
        JR      Z,DSP3
        LD      A,1
        LD      (TEST),A
        JR      DSP1
DSP3    LD      A,1
        LD      (TOB1),A
        JR      DSP0
DSP1    XOR     A
        LD      (OBUS),A
        EXX
        LD      A,1
        CALL    ADPO
        LD      HL,0
        LD      (POBUS),HL
        EXX
        LD      A,1
        LD      (TOB2),A
DSP0    INC     DE
        INC     HL
        DJNZ    DISP
        RET
DISPS   LD      A,(DE)
        OR      (HL)
        LD      (HL),A
        INC     DE
        INC     HL
        DJNZ    DISPS
        RET
INPUT   XOR     A
        LD      (SHLD),A
        LD      A,(TEST0)
        OR      A
        RET     NZ
        LD      A,(DEM)
        OR      A
        JR      NZ,INPD
        LD      B,0
        LD      A,(3820H)
        BIT     6,A
        JR      Z,NPU0
        SET     0,B
NPU0    BIT     4,A
        JR      Z,NPU1
        SET     1,B
NPU1    LD      A,(3840H)
        BIT     6,A
        JR      Z,NPU2
        SET     0,B
NPU2    BIT     5,A
        JR      Z,NPU3
        SET     1,B
NPU3    IN      A,(0)
        CPL
        BIT     3,A
        JR      Z,NPU4
        SET     0,B
NPU4    BIT     2,A
        JR      Z,NPU5
        SET     1,B
NPU5    AND     3
        CP      2
        JR      NZ,NPU6
        LD      B,3
NPU6    LD      A,B
        OR      A
        RET     Z
        CP      3
        JR      NZ,INP0
        LD      A,(CSHLD)
        OR      A
        RET     Z
        LD      A,1
        LD      (SHLD),A
        RET
INP0    BIT     1,A
        JR      Z,INP1
        LD      A,(SHIP)
        OR      A
        RET     Z
        DEC     A
        LD      (SHIP),A
        RET
INP1    LD      A,(SHIP)
        CP      115
        RET     Z
        INC     A
        LD      (SHIP),A
        RET
INPD    LD      A,(WSH)
        OR      A
        JR      Z,INPDF
        DEC     A
        LD      (WSH),A
        LD      A,(CSHLD)
        OR      A
        JR      Z,INPDF
        LD      A,1
        LD      (SHLD),A
        RET
INPDF   LD      A,(FLAG3)
        OR      A
        JP      NZ,INPDR
        LD      A,(SHIP)
        SRL     A
        INC     A
        LD      E,A
        LD      D,0
        LD      HL,SCR+768
        ADD     HL,DE
        LD      A,(HL)
        AND     3CH
        JR      NZ,SHLOR
        INC     HL
        LD      A,(HL)
        AND     14H
        JR      NZ,SHLOR
        INC     HL
        INC     HL
        LD      A,(HL)
        AND     28H
        JR      NZ,SHLOL
        INC     HL
        LD      A,(HL)
        AND     3CH
        JR      NZ,SHLOL
        LD      DE,59
        ADD     HL,DE
        LD      A,(HL)
        AND     3CH
        JR      NZ,SHLOR
        LD      DE,6
        ADD     HL,DE
        LD      A,(HL)
        AND     3CH
        JR      NZ,SHLOL
        LD      IX,MIS1
        LD      B,2
IRHY    LD      A,(IX)
        OR      A
        JR      Z,IRHY0
        LD      A,(IX+2)
        SUB     36
        JP      M,IRHY0
        LD      A,(IX+1)
        LD      C,A
        LD      A,(SHIP)
        ADD     A,6
        SUB     C
        JP      M,IRHY1
        SUB     7
        JP      P,IRHY0
        JR      SHLOR
IRHY1   NEG
        SUB     7
        JP      P,IRHY0
        JR      SHLOL
IRHY0   INC     IX
        INC     IX
        INC     IX
        DJNZ    IRHY
        JR      INPDR
SHLOL   LD      A,(FLAG1)
        OR      A
        JR      Z,INPQW2
        LD      A,(SHIP)
        SUB     5
        LD      (CIB),A
        LD      A,1
        LD      (FLAG3),A
        RET
SHLOR   LD      A,(FLAG1)
        OR      A
        JR      Z,INPQW2
        LD      A,(SHIP)
        ADD     A,5
        LD      (CIB),A
        LD      A,1
        LD      (FLAG3),A
        RET
INPDR   LD      A,(SHIP)
        LD      B,A
        LD      A,(CIB)
        SUB     B
        JP      Z,NEWR
        LD      B,A
        LD      A,(GHO)
        OR      A
        JR      NZ,TYCE0
        LD      A,(EYE)
        AND     4
        JR      Z,TYCE
TYCE0   LD      A,(CIBC0)
        DEC     A
        LD      (CIBC0),A
        JR      Z,NEWR
TYCE    LD      A,B
        AND     80H
        JR      Z,INPD0
        LD      A,(SHIP)
        SRL     A
        DEC     A
        LD      E,A
        LD      D,0
        LD      HL,SCR+832
        ADD     HL,DE
        LD      DE,64
        LD      B,3
INPQW   LD      A,(HL)
        AND     3FH
        JR      NZ,INPQW0
        ADD     HL,DE
        DJNZ    INPQW
        LD      A,(SHIP)
        DEC     A
        LD      (SHIP),A
        RET
INPQW0  LD      A,(FLAG3)
        OR      A
        JR      Z,INPQW1
INPQW2  LD      A,5
        LD      (WSH),A
        XOR     A
        LD      (FLAG3),A
        LD      A,(CSHLD)
        OR      A
        RET     Z
        LD      A,1
        LD      (SHLD),A
        RET
INPQW1  LD      A,(SHIP)
        INC     A
        LD      (CIB),A
        RET
INPD0   LD      A,(SHIP)
        SRL     A
        ADD     A,7
        LD      E,A
        LD      D,0
        LD      HL,SCR+832
        ADD     HL,DE
        LD      DE,64
        LD      B,3
INPWE   LD      A,(HL)
        AND     3FH
        JR      NZ,INPWE0
        ADD     HL,DE
        DJNZ    INPWE
        LD      A,(SHIP)
        INC     A
        LD      (SHIP),A
        RET
INPWE0  LD      A,(FLAG3)
        OR      A
        JR      Z,INPWE1
        JR      INPQW2
INPWE1  LD      A,(SHIP)
        DEC     A
        LD      (CIB),A
        RET
NEWR    XOR     A
        LD      (FLAG3),A
        LD      A,(GHO)
        OR      A
        JR      Z,NEWRY
        LD      A,(PGHO)
        LD      (CIB),A
        LD      A,10
        LD      (CIBC0),A
        RET
NEWRY   LD      A,(EYE)
        AND     4
        JR      Z,NEWRX
        LD      A,(PGSHX)
        BIT     7,A
        JR      NZ,NEWRY0
        ADD     A,29
        LD      (CIB),A
        LD      A,10
        LD      (CIBC0),A
        RET
NEWRY0  AND     7FH
        ADD     A,20
        LD      (CIB),A
        LD      A,10
        LD      (CIBC0),A
        RET
NEWRX   LD      A,(CIBC)
        AND     1
        RET     NZ
        LD      A,(CIBC)
        OR      A
        JR      NZ,NEW
        LD      A,3
        LD      (CIBC),A
        RET
NEW     LD      IX,METEOR
        LD      HL,7F00H
        LD      (CIBS),HL
        LD      A,(NMET)
        LD      B,A
NEW0    LD      A,(IX)
        AND     3
        JR      NZ,NEW1
NEW3    INC     IX
        INC     IX
        INC     IX
        INC     IX
        DJNZ    NEW0
        LD      HL,(CIBS)
        LD      A,H
        CP      7FH
        JR      Z,NEW2
        LD      A,L
        LD      (CIB),A
        XOR     A
        LD      (CIBC),A
        RET
NEW2    LD      A,2
        LD      (CIBC),A
        RET
NEW1    LD      L,(IX+2)
        LD      H,(IX+3)
        ADD     HL,HL
        ADD     HL,HL
        LD      A,H
        AND     0FH
        LD      C,A
        LD      A,0AH
        SUB     C
        JP      M,NEW3
        LD      C,A
        ADD     A,C
        ADD     A,C
        LD      HL,FLAG1
        BIT     0,(HL)
        JR      Z,FLGA
        ADD     A,A
FLGA    LD      C,A
        LD      A,(IX+2)
        AND     3FH
        DEC     A
        SLA     A
        LD      D,A
        LD      A,(SHIP)
        SUB     D
        JP      P,NEW4
        NEG
NEW4    LD      E,A
        SUB     C
        JP      P,NEW3
        LD      HL,(CIBS)
        LD      A,E
        SUB     H
        JP      P,NEW3
        LD      H,E
        LD      L,D
        LD      (CIBS),HL
        JR      NEW3
TOBUS   LD      A,(DEM)
        OR      A
        JR      NZ,TOBUS1
        LD      A,(3840H)
        AND     88H
        JR      NZ,TOBUS0
        IN      A,(0)
        CPL
        AND     10H
        JR      NZ,TOBUS0
        IN      A,(0)
        CPL
        AND     3
        CP      3
        RET     NZ
TOBUS0  LD      A,(OBUS)
        OR      A
        RET     NZ
        LD      A,(SHLD)
        OR      A
        RET     NZ
        LD      A,(CIBC)
        AND     2
        LD      (CIBC),A
        LD      A,(SHIP)
        AND     1
        INC     A
        LD      (OBUS),A
TOB     LD      A,(SHIP)
        SRL     A
        LD      E,A
        LD      D,0
        LD      HL,SCR+835
        ADD     HL,DE
        LD      (POBUS),HL
        RET
TOBUS1  LD      A,(GHO)
        OR      A
        JR      NZ,TOBUS0
        LD      A,(EYE)
        AND     4
        JR      NZ,TOBUS0
        LD      A,(CIBC)
        AND     1
        JR      NZ,TOBUS0
        RET
TYL     DEFB    ' '-32
        DEFB    ' '-32
        DEFB    ' '-32
        DEFB    ' '-32
        DEFB    'Y'-32
        DEFB    '.'-32
        DEFB    ' '-32
        DEFB    'L'-32
        DEFB    'E'-32
        DEFB    'M'-32
        DEFB    'P'-32
        DEFB    'E'-32
        DEFB    'R'-32
        DEFB    'E'-32
        DEFB    'U'-32
        DEFB    'R'-32
        DEFB    '@'-32
        DEFB    '@'-32
PYL     LD      HL,TYL
        LD      DE,YL
        LD      B,18
PYL0    LD      A,(HL)
        ADD     A,32
        LD      (DE),A
        INC     HL
        INC     DE
        DJNZ    PYL0
        RET
        COND    TYPE=PROT
CHECKS  JR      CHES
CHES0   LD      A,(CHKS)
        LD      H,44H
        LD      L,8
        CP      (HL)
        RET     Z
        JR      CLEANP
CHES    LD      HL,3C00H
        LD      BC,1024
        CALL    CHECK
        LD      (CHKS),A
        XOR     A
        LD      (CHECKS+1),A
        JR      CHES0
CHKS    DEFB    0
CLEANP  LD      HL,8000H
        LD      DE,4000H
        LD      BC,8000H
        LDIR
        RET
CHECK   XOR     A
CHE0    ADD     A,(HL)
        LD      E,A
        INC     HL
        DEC     BC
        LD      A,B
        OR      C
        LD      A,E
        JR      NZ,CHE0
        RET
CHECKR  JR      CHER
CHER0   LD      A,(CHKR)
        LD      H,44H
        LD      L,0AH
        CP      (HL)
        RET     Z
        JR      CLEANP
CHER    LD      HL,0A000H
        LD      BC,6000H
        CALL    CHECK
        LD      (CHKR),A
        XOR     A
        LD      (CHECKR+1),A
        JR      CHER0
CHKR    DEFB    0
        ENDC
