        TITLE   ### THE BLACK HOLE 2.1 ###
;               --------------------------
PROT    EQU     2
DISK    EQU     1
TAPE    EQU     0
TYPE    EQU     DISK
;
        COND    0!(TYPE=TAPE)!(TYPE=DISK)
        ORG     3C00H+44
        DEFB    191
        DEFM    ' THE BLACK HOLE  **'
        ORG     3C40H+44
        DEFB    191
        DEFM    ' TRS-80 - MOD I/III'
        ORG     3C80H+44
        DEFW    8383H
        DEFW    8383H
        DEFW    8383H
        DEFW    8383H
        DEFW    8383H
        DEFW    8383H
        DEFW    8383H
        DEFW    8383H
        DEFW    8383H
        DEFW    8383H
        ENDC
        COND    TYPE=PROT
        ORG     4800H
        ENDC
        COND    TYPE=TAPE
        ORG     4300H
        ENDC
        COND    TYPE=DISK
        ORG     8000H
        ENDC
        INCLUDE HOLE1
        INCLUDE HOLE2
SCORE   LD      DE,SCR+30
        LD      A,(DE)
        AND     149
        LD      (DE),A
        INC     DE
        LD      A,(CSHLD)
        CALL    HAFF
        LD      A,(DE)
        AND     170
        LD      (DE),A
        CALL    DEMO
        LD      A,(CSCO)
        INC     A
        LD      (CSCO),A
        AND     10H
        RET     NZ
        LD      DE,SCR+55
        LD      A,' '
        LD      (DE),A
        INC     DE
        LD      HL,(PNT)
        CALL    ASCO
        LD      A,'0'
        LD      (DE),A
        INC     DE
        LD      A,' '
        LD      (DE),A
        RET
HAFF    PUSH    AF
        RRA
        RRA
        RRA
        RRA
        CALL    XAFF
        POP     AF
XAFF    AND     0FH
        OR      30H
        LD      (DE),A
        INC     DE
        RET
DOBUS   LD      A,(TEST0)
        OR      A
        RET     NZ
        LD      A,(OBUS)
        OR      A
        JR      Z,OB1
        CALL    SON1
        CP      1
        LD      A,149
        JR      Z,OB0
        LD      A,170
OB0     LD      HL,(POBUS)
        OR      (HL)
        LD      (HL),A
        RET
OB1     LD      C,6
OB01    LD      B,128
        DJNZ    $
        DEC     C
        JR      NZ,OB01
        CALL    TOB
        LD      A,(SHIP)
        AND     1
        LD      A,148
        JR      Z,OB0
        LD      A,168
        JR      OB0
MOBUS   LD      A,(OBUS)
        OR      A
        RET     Z
        LD      HL,(POBUS)
        LD      DE,64
        XOR     A
        SBC     HL,DE
        LD      (POBUS),HL
        LD      DE,SCR
        XOR     A
        SBC     HL,DE
        RET     P
        XOR     A
        LD      (OBUS),A
        RET
DSHLD   LD      A,(SHLD)
        OR      A
        RET     Z
        LD      DE,SHLDL
        LD      A,(SHIP)
        AND     1
        JR      Z,SH0
        LD      DE,SHLDR
SH0     LD      A,(SHIP)
        SRL     A
        LD      C,A
        LD      B,0
        LD      HL,SCR+770
        ADD     HL,BC
        LD      B,3
        CALL    DISPS
        LD      BC,60
        ADD     HL,BC
        LD      B,5
        CALL    DISPS
        LD      BC,58
        ADD     HL,BC
        LD      B,7
        CALL    DISPS
        LD      C,5
        LD      HL,010FH
SOT6    LD      A,1
        OUT     (255),A
        LD      B,H
        DJNZ    $
        XOR     A
        OUT     (255),A
        LD      B,L
        DJNZ    $
        INC     H
        DEC     L
        DEC     C
        JR      NZ,SOT6
        RET
DSHIP   XOR     A
        LD      (TEST),A
        LD      A,(TEST0)
        OR      A
        JR      NZ,SHI2
        LD      DE,SHIPL
        LD      A,(SHIP)
        AND     1
        JR      Z,SHI0
        LD      DE,SHIPR
SHI0    LD      A,(SHIP)
        SRL     A
        LD      C,A
        LD      B,0
        LD      HL,SCR+898
        ADD     HL,BC
        LD      B,3
        CALL    DISP
        LD      BC,59
        ADD     HL,BC
        LD      B,7
        CALL    DISP
        LD      A,(TOB1)
        OR      A
        JR      Z,SHI1
        LD      A,1
        LD      (TEST),A
SHI1    LD      A,(TEST)
        OR      A
        RET     Z
        LD      A,1
        LD      (TEST0),A
        RET
SHI2    LD      DE,EXP1
        CP      1
        JR      Z,SHI3
        LD      DE,EXP2
        CP      2
        JR      Z,SHI3
        LD      DE,EXP3
        CP      3
        JR      NZ,SHI4
SHI3    LD      A,(SHIP)
        SRL     A
        LD      C,A
        LD      B,0
        LD      HL,SCR+898
        ADD     HL,BC
        LD      B,3
        CALL    DISPS
        LD      BC,59
        ADD     HL,BC
        LD      B,7
        CALL    DISPS
        CALL    SON3
SHI4    LD      A,(TEST1)
        INC     A
        AND     3
        LD      (TEST1),A
        RET     NZ
        LD      A,(TEST0)
        INC     A
        LD      (TEST0),A
        RET
        COND    TYPE=TAPE
TRCLN   LD      H,40H
        LD      L,0E1H
        INC     H
        INC     L
        LD      A,(HL)
        DEC     A
        CP      79H
        JR      NZ,CLEAN
        INC     HL
        LD      A,(HL)
        DEC     A
        CP      7FH
        JR      NZ,CLEAN
        INC     HL
        LD      A,(HL)
        DEC     A
        CP      42H
        RET     Z
CLEAN   LD      HL,8000H
        LD      DE,4000H
        LD      BC,8000H
        LDIR
        RET
        ENDC
        COND    TYPE=PROT
TRCLN   LD      H,44H
        LD      L,10H
        LD      E,(HL)
        INC     HL
        LD      D,(HL)
        EX      DE,HL
        XOR     A
        LD      (HL),A
        CP      (HL)
        JP      Z,CLEANP
        DEC     HL
        LD      (HL),A
        CP      (HL)
        JP      NZ,CLEANP
        LD      A,(9000H)
        CP      0CDH
        JP      NZ,CLEANP
        RET
        ENDC
DMET    LD      IX,METEOR
        LD      A,(NMET)
        LD      B,A
LP0     PUSH    BC
        XOR     A
        LD      (TEST),A
        LD      (TOB2),A
        LD      A,(IX)
        AND     3
        JR      Z,LP3
        LD      DE,MET1
        CP      1
        JR      Z,LP2
        LD      DE,MET2
        CP      2
        JR      Z,LP2
        LD      DE,MET3
LP2     LD      L,(IX+2)
        LD      H,(IX+3)
        LD      BC,SCM+129
        ADD     HL,BC
        LD      B,3
        CALL    DISP
        LD      BC,61
        ADD     HL,BC
        LD      B,3
        CALL    DISP
        LD      A,(TEST)
        OR      A
        JR      Z,LP1
        LD      A,30H
        LD      (IX),A
        LD      A,(TOB2)
        OR      A
        CALL    NZ,SON2
        JR      LP3
LP1     LD      A,(IX+1)
        AND     2
        JR      Z,LP3
        LD      A,(IX)
        LD      DE,TR1
        CP      1
        JR      Z,LP4
        LD      DE,TR2
        CP      2
        JR      Z,LP4
        LD      DE,TR3
LP4     LD      L,(IX+2)
        LD      H,(IX+3)
        LD      BC,SCM+1
        ADD     HL,BC
        LD      B,2
        CALL    DISPS
        LD      BC,61
        ADD     HL,BC
        LD      B,4
        CALL    DISPS
        LD      BC,60
        ADD     HL,BC
        LD      B,4
        CALL    DISPS
LP3     INC     IX
        INC     IX
        INC     IX
        INC     IX
        POP     BC
        DEC     B
        JP      NZ,LP0
        RET
MMET    LD      A,(COUNT)
        INC     A
        AND     1
        LD      (COUNT),A
        LD      B,A
        LD      A,(FLAG1)
        AND     B
        RET     NZ
        LD      IX,METEOR
        LD      A,(NMET)
        LD      B,A
BOUC0   PUSH    BC
        LD      A,(IX)
        AND     3
        JR      Z,CREAT
        INC     A
        CP      4
        JR      Z,BOUC1
        LD      (IX),A
BOUC2   LD      A,(IX+1)
        INC     A
        AND     3
        LD      (IX+1),A
        INC     IX
        INC     IX
        INC     IX
        INC     IX
        POP     BC
        DJNZ    BOUC0
        LD      A,(FLAG0)
        OR      A
        RET     Z
        DEC     A
        LD      (FLAG0),A
        RET
BOUC1   LD      A,1
        LD      (IX),A
        LD      L,(IX+2)
        LD      H,(IX+3)
        LD      DE,64
        ADD     HL,DE
        LD      (IX+2),L
        LD      (IX+3),H
        LD      DE,957
        XOR     A
        SBC     HL,DE
        JP      M,BOUC2
        LD      A,30H
        LD      (IX),A
        JR      BOUC2
CREAT   LD      A,(IX)
        OR      A
        JR      Z,CREAT0
        SUB     10H
        LD      (IX),A
        JR      BOUC2
CREAT0  LD      A,(FLAG)
        OR      A
        JR      Z,BOUC2
        LD      A,(FLAG0)
        OR      A
        JR      NZ,BOUC2
        LD      A,2
        LD      (FLAG0),A
        LD      A,R
        LD      B,A
        LD      A,(RND)
        ADD     A,B
        LD      (RND),A
        LD      E,A
        LD      D,0
        LD      HL,SCR
        LD      B,1CH
SUR     LD      A,(HL)
        CP      80H
        JR      Z,SUR1
        INC     HL
        DJNZ    SUR
SUR1    LD      A,L
        AND     3FH
        LD      C,A
        LD      A,20H
        SUB     C
        ADD     A,A
        SUB     2
        LD      B,A
        LD      HL,0
SUR4    SRL     B
        JR      NC,SUR5
        ADD     HL,DE
SUR5    JR      Z,SUR2
        EX      DE,HL
        ADD     HL,HL
        EX      DE,HL
        JR      SUR4
SUR2    LD      A,H
        ADD     A,C
        LD      E,A
        LD      D,0
        DEC     DE
        LD      B,3
        LD      HL,SCR+1
        ADD     HL,DE
CRE0    LD      A,(HL)
        CP      80H
        JP      NZ,BOUC2
        INC     HL
        DJNZ    CRE0
        LD      (IX+2),E
        LD      (IX+3),D
        LD      A,1
        LD      (IX),A
        XOR     A
        LD      (IX+1),A
        JP      BOUC2
EXMUR1  LD      A,(CMUR)
        INC     A
        AND     3
        LD      (CMUR),A
        RET     NZ
        LD      A,(HMUR)
        INC     A
        LD      (HMUR),A
        CP      17
        RET     NZ
        XOR     A
        LD      (HMUR),A
        LD      A,1
        CALL    ADPO
        LD      A,(MUR)
        CP      28
        JR      Z,EXM0
        INC     A
        LD      (MUR),A
        RET
EXM0    LD      A,1
        LD      (ZMUR),A
        RET
DMUR1   LD      A,(MUR)
        OR      A
        RET     Z
        LD      HL,SCR
        LD      A,(HMUR)
        LD      C,A
        LD      B,16
CER0    PUSH    BC
        LD      DE,3FH
        EX      DE,HL
        ADD     HL,DE
        EX      DE,HL
        LD      A,(MUR)
        CP      1
        JR      Z,CER2
        DEC     A
        LD      B,A
CER1    LD      (HL),149
        LD      A,170
        LD      (DE),A
        INC     HL
        DEC     DE
        DJNZ    CER1
CER2    LD      A,C
        OR      A
        JR      Z,CER3
        DEC     C
        LD      (HL),149
        LD      A,170
        LD      (DE),A
CER3    LD      A,(MUR)
        LD      L,A
        LD      H,0
        ADD     HL,DE
        LD      A,C
        POP     BC
        LD      C,A
        DJNZ    CER0
        RET
EXMUR2  LD      A,(CMUR)
        INC     A
        AND     7
        LD      (CMUR),A
        RET     NZ
        LD      A,(HMUR)
        CP      16
        JR      Z,EXM1
        INC     A
        LD      (HMUR),A
        RET
EXM1    LD      A,(MUR)
        OR      A
        RET     Z
        DEC     A
        LD      (MUR),A
        RET
DMUR2   LD      A,(MUR)
        OR      A
        RET     Z
        LD      HL,SCR
        LD      A,(HMUR)
        LD      C,A
        LD      B,16
DMU0    PUSH    BC
        PUSH    HL
        LD      DE,3FH
        EX      DE,HL
        ADD     HL,DE
        EX      DE,HL
        LD      B,1
        LD      A,(MUR)
        SUB     C
        JP      M,DMU2
        OR      A
        JR      Z,DMU2
        LD      B,A
DMU2    LD      (HL),149
        LD      A,170
        LD      (DE),A
        INC     HL
        DEC     DE
        DJNZ    DMU2
        LD      A,C
        OR      A
        JR      Z,DMU3
        DEC     C
DMU3    POP     HL
        LD      DE,64
        ADD     HL,DE
        LD      A,C
        POP     BC
        LD      C,A
        DJNZ    DMU0
        RET
DBORD   LD      HL,SCR
        LD      B,16
DBOR0   PUSH    BC
        PUSH    HL
        LD      DE,3FH
        EX      DE,HL
        ADD     HL,DE
        EX      DE,HL
        LD      A,(HL)
        OR      149
        LD      (HL),A
        LD      A,(DE)
        OR      170
        LD      (DE),A
        POP     HL
        LD      DE,64
        ADD     HL,DE
        POP     BC
        DJNZ    DBOR0
        RET
DPAR    LD      HL,(HPAR)
        LD      DE,SCR
        ADD     HL,DE
        LD      DE,PAROI+3
        LD      B,80H
DPA0    LD      A,(DE)
        AND     (HL)
        AND     3FH
        JR      Z,DPA1
        LD      A,(DE)
        LD      C,A
        AND     0CFH
        CP      C
        JR      NZ,DPA2
        AND     0C3H
        CP      C
        JR      NZ,DPA2
        AND     0C0H
        CP      C
        JR      Z,DPA1
DPA2    LD      (DE),A
        PUSH    DE
        EX      DE,HL
        LD      HL,(POBUS)
        XOR     A
        SBC     HL,DE
        EX      DE,HL
        POP     DE
        JR      NZ,DPA1
        LD      A,(OBUS)
        OR      A
        JR      NZ,DPA5
        LD      A,1
        LD      (TOB1),A
DPA5    XOR     A
        LD      (OBUS),A
        PUSH    HL
        LD      HL,0
        LD      (POBUS),HL
        POP     HL
DPA1    LD      A,(DE)
        OR      (HL)
        LD      (HL),A
        INC     DE
        INC     HL
        DJNZ    DPA0
        RET
MPAR    LD      HL,PAROI
        LD      A,(PAROI+66)
        LD      (HL),A
        LD      BC,67<8
MPAR1   LD      A,(HL)
        LD      D,A
        RLCA
        AND     2AH
        OR      80H
        OR      C
        LD      (HL),A
        LD      A,D
        RRCA
        AND     15H
        LD      C,A
        INC     HL
        DJNZ    MPAR1
MPAR2   LD      A,(COUNT)
        INC     A
        LD      (COUNT),A
        LD      C,A
        LD      A,(LONG)
        CP      C
        RET     NZ
        XOR     A
        LD      (COUNT),A
        LD      HL,(HPAR)
        LD      DE,960
        SBC     HL,DE
        RET     Z
        LD      A,(GHO)
        OR      A
        RET     Z
        LD      HL,(HPAR)
        LD      DE,64
        ADD     HL,DE
        LD      (HPAR),HL
        RET
DGHO    LD      A,(GHO)
        OR      A
        RET     Z
        LD      HL,GLL
        LD      A,(PGHO)
        AND     1
        JR      Z,DG0
        LD      HL,GRL
DG0     LD      A,(AGHO)
        AND     80H
        JR      Z,DG1
        LD      DE,8
        ADD     HL,DE
DG1     EX      DE,HL
        LD      A,(PGHO)
        SRL     A
        LD      C,A
        LD      B,0
        LD      HL,SCR
        ADD     HL,BC
        XOR     A
        LD      (TEST),A
        LD      B,4
        CALL    DISP
        LD      BC,60
        ADD     HL,BC
        LD      B,4
        CALL    DISP
        LD      A,(TEST)
        OR      A
        RET     Z
        XOR     A
        LD      (GHO),A
        LD      A,49H
        CALL    ADPO
        CALL    SON4
        RET
MGHO    LD      A,(GHO)
        OR      A
        RET     Z
        LD      A,(AGHO)
        AND     7FH
        JR      Z,MGH1
        LD      A,(AGHO)
        AND     80H
        LD      A,(PGHO)
        JR      Z,MGH2
        INC     A
        JR      MGH3
MGH2    DEC     A
MGH3    LD      (PGHO),A
        LD      A,(AGHO)
        AND     7FH
        DEC     A
        LD      B,A
        LD      A,(AGHO)
        AND     80H
        OR      B
        LD      (AGHO),A
        RET
MGH1    LD      A,(AGHO)
        AND     80H
        XOR     80H
        LD      (AGHO),A
        LD      A,(PGHO)
        JR      Z,MG0
        LD      B,A
        LD      A,122
        SUB     B
MG0     LD      C,A
        LD      A,R
        LD      B,A
        LD      A,(RND)
        ADD     A,B
        LD      (RND),A
        AND     7FH
MG1     LD      B,A
        SUB     C
        LD      A,B
        JP      M,MGH4
        SRL     A
        JR      MG1
MGH4    LD      B,A
        LD      A,(AGHO)
        OR      A
        JR      Z,MG2
        LD      A,(PGHO)
        ADD     A,B
        LD      B,A
MG2     LD      A,(PGHO)
        LD      C,A
        LD      A,B
        SUB     C
        JP      P,MGH5
        NEG
MGH5    LD      C,A
        LD      A,(AGHO)
        OR      C
        LD      (AGHO),A
        RET
DBOM    LD      A,(BOM)
        OR      A
        RET     Z
        XOR     A
        LD      (TOB2),A
        LD      A,(BOM)
        LD      DE,BOM1
        CP      1
        JR      Z,DBO1
        LD      DE,BOM2
        CP      2
        JR      Z,DBO1
        LD      DE,BOM3
DBO1    LD      HL,(PBOM)
        LD      B,2
        CALL    DISP
        LD      BC,62
        ADD     HL,BC
        LD      B,2
        CALL    DISP
        LD      A,(TOB2)
        OR      A
        RET     Z
        XOR     A
        LD      (BOM),A
        LD      A,4
        CALL    ADPO
        CALL    SON2
        RET
MBOM    LD      A,(ZMUR)
        INC     A
        AND     1
        LD      (ZMUR),A
        RET     NZ
        LD      A,(BOM)
        OR      A
        JR      Z,BCRE
        INC     A
        CP      4
        JR      Z,MB1
        LD      (BOM),A
        RET
MB1     LD      A,1
        LD      (BOM),A
        LD      HL,(PBOM)
        LD      DE,64
        ADD     HL,DE
        LD      (PBOM),HL
        LD      DE,SCR+1023
        XOR     A
        SBC     HL,DE
        RET     M
        XOR     A
        LD      (BOM),A
        RET
BCRE    LD      A,(GHO)
        OR      A
        RET     Z
        LD      A,(PGHO)
        SRL     A
        INC     A
        LD      E,A
        LD      D,0
        LD      HL,SCR+128
        ADD     HL,DE
        LD      (PBOM),HL
        LD      A,1
        LD      (BOM),A
        RET
SON1    EX      AF,AF'
        EXX
        LD      HL,(POBUS)
        LD      DE,SCR
        XOR     A
        SBC     HL,DE
        RL      L
        RL      H
        RL      L
        RL      H
        LD      A,H
        NEG
        SUB     3
        AND     0FH
        OR      20H
        LD      C,A
        LD      HL,896
SO0     LD      A,1
        OUT     (0FFH),A
        LD      B,C
        DJNZ    $
        XOR     A
        OUT     (0FFH),A
        LD      B,C
        DJNZ    $
        LD      A,C
        SLA     A
        LD      E,A
        LD      D,0
        RL      D
        XOR     A
        SBC     HL,DE
        JP      P,SO0
        EXX
        EX      AF,AF'
        RET
SON2    LD      HL,40H
SO2     LD      C,(HL)
        LD      B,8
SO3     XOR     A
        SRL     C
        RLA
        ADD     A,1
        OUT     (0FFH),A
        DJNZ    SO3
        INC     HL
        LD      A,L
        CP      80H
        JR      NZ,SO2
        RET
SON3    EX      AF,AF'
        EXX
        LD      A,(TEST0)
        RLA
        RLA
        RLA
        OR      0E7H
        LD      C,A
        LD      HL,896
        JR      SO0
SON4    LD      L,0E0H
SO5     LD      A,1
        OUT     (0FFH),A
        LD      B,L
        DEC     L
        DEC     L
        DJNZ    $
        XOR     A
        OUT     (0FFH),A
        LD      B,L
        DEC     L
        DEC     L
        DJNZ    $
        LD      A,L
        CP      70H
        JR      NZ,SO5
        RET
SON5    LD      C,1EH
        LD      D,12H
SOT5    LD      A,1
        OUT     (255),A
        LD      B,C
        DJNZ    $
        XOR     A
        OUT     (255),A
        LD      B,C
        DJNZ    $
        DEC     D
        JR      NZ,SOT5
        RET
DEMO    LD      A,(DEM)
        OR      A
        RET     Z
        LD      A,(38FFH)
        OR      A
        JP      NZ,FIN
        LD      A,(CSCO)
        AND     8
        RET     NZ
        LD      HL,TABDEM
        LD      DE,SCR+1
        LD      BC,GSHINI-TABDEM
        LDIR
        RET
TABDEM  DEFM    '*BLACK HOLE*'
GSHINI  LD      HL,GRSH1
        LD      DE,SCR0
        LD      BC,1152
        LDIR
        LD      A,33
        LD      (PGSHX),A
        LD      A,0
        LD      (PGSHY),A
        RET
KEYE    LD      A,(EYE)
        SUB     8
        LD      (EYE),A
        AND     0F8H
        JR      Z,KEYE0
        CP      8
        JR      Z,KEYE1
        LD      A,(EYE)
        XOR     3
        LD      (EYE),A
        SRL     A
        SRL     A
        SRL     A
        AND     1
        OUT     (255),A
        RET
KEYE1   LD      A,(EYE)
        AND     0FCH
        LD      (EYE),A
        RET
KEYE0   LD      A,0
        LD      (EYE),A
        LD      A,(CSHLD)
        ADD     A,10H
        DAA
        LD      (CSHLD),A
        CALL    SON4
        RET
MGRSH   LD      A,(EYE)
        AND     0F8H
        JR      NZ,KEYE
        LD      A,(COUNT)
        INC     A
        AND     1
        LD      (COUNT),A
        LD      B,A
        LD      A,(FLAG1)
        AND     B
        RET     NZ
        LD      A,(EYE)
        XOR     3
        LD      (EYE),A
        LD      A,(PGSHY)
        CP      43
        JR      NC,MGFIN
        CP      21
        JR      C,MGFIN
        LD      A,(PGSHX)
        BIT     7,A
        JR      NZ,MGDEC
        CP      33
        JR      NZ,MGINC1
        LD      B,A
        LD      A,(PGSHY)
        CP      42
        LD      A,B
        JR      Z,MGFIN
MGINC1  CP      46
        JR      Z,MGINC0
        INC     A
        LD      (PGSHX),A
        RET
MGINC0  OR      80H
        LD      (PGSHX),A
        LD      A,(PGSHY)
        INC     A
        LD      (PGSHY),A
        RET
MGDEC   AND     7FH
        CP      33
        JR      NZ,MGDEC1
        LD      B,A
        LD      A,(PGSHY)
        CP      42
        LD      A,B
        JR      Z,MGFIN
MGDEC1  CP      20
        JR      Z,MGDEC0
        DEC     A
        OR      80H
        LD      (PGSHX),A
        RET
MGDEC0  LD      (PGSHX),A
        LD      A,(PGSHY)
        INC     A
        LD      (PGSHY),A
        RET
MGFIN   LD      A,(PGSHY)
        CP      66
        RET     Z
        INC     A
        LD      (PGSHY),A
        RET
DGRSH   LD      A,(PGSHY)
        LD      L,A
        LD      H,0
        LD      D,3
        CALL    DIV16
        LD      A,H
        PUSH    AF
        PUSH    IX
        POP     DE
        LD      B,64
        CALL    MUL16
        LD      A,(PGSHX)
        AND     7FH
        LD      E,A
        LD      D,0
        SRL     E
        ADD     HL,DE
        LD      DE,SCR-384
        ADD     HL,DE
        POP     AF
        PUSH    HL
        LD      B,A
        LD      DE,384
        CALL    MUL16
        PUSH    HL
        LD      A,(PGSHX)
        AND     1
        LD      B,A
        LD      DE,192
        CALL    MUL16
        POP     DE
        ADD     HL,DE
        LD      DE,SCR0
        ADD     HL,DE
        EX      DE,HL
        POP     HL
        LD      B,6
DGR1    PUSH    BC
        PUSH    HL
        PUSH    HL
        LD      BC,SCR
        XOR     A
        SBC     HL,BC
        POP     HL
        JP      M,DGNXT
        PUSH    HL
        POP     BC
        PUSH    HL
        LD      HL,SCR+1023
        XOR     A
        SBC     HL,BC
        POP     HL
        JP      M,DGNXT
        LD      B,32
DGR2    LD      A,(DE)
        AND     (HL)
        AND     3FH
        JP      Z,DGR3
        EXX
        POP     HL
        POP     BC
        PUSH    BC
        PUSH    HL
        EXX
        PUSH    HL
        PUSH    DE
        PUSH    BC
        LD      HL,102H
        SLA     A
        SLA     A
DGR00   SLA     A
        JR      C,DGR01
        DEC     H
        SLA     A
        JR      C,DGR01
        INC     H
        DEC     L
        JR      DGR00
DGR01   LD      (SAVY),HL
        LD      A,32
        SUB     B
        SLA     A
        ADD     A,H
        LD      (SAVX),A
        EXX
        LD      A,6
        SUB     B
        LD      B,A
        ADD     A,B
        ADD     A,B
        LD      B,A
        LD      A,(SAVY)
        ADD     A,B
        LD      (SAVY),A
        LD      A,(PGSHX)
        AND     1
        LD      B,A
        LD      A,(SAVX)
        SUB     B
        LD      (SAVX),A
        LD      A,(PGSHY)
DGR02   SUB     3
        JP      P,DGR02
        ADD     A,3
        LD      B,A
        LD      A,(SAVY)
        SUB     B
        LD      (SAVY),A
        LD      HL,SCR0
        LD      A,(SAVY)
        LD      D,A
        LD      A,(SAVX)
        LD      E,A
        LD      B,3
DGR03   PUSH    BC
        CALL    RESET0
        LD      BC,0C0H
        ADD     HL,BC
        INC     E
        CALL    RESET0
        LD      BC,0C0H
        ADD     HL,BC
        DEC     E
        INC     D
        POP     BC
        DJNZ    DGR03
        POP     BC
        POP     DE
        POP     HL
DGR4    PUSH    DE
        EX      DE,HL
        LD      HL,(POBUS)
        XOR     A
        SBC     HL,DE
        EX      DE,HL
        POP     DE
        JR      NZ,DGR3
        LD      A,(OBUS)
        OR      A
        JR      NZ,DGR5
        LD      A,1
        LD      (TOB1),A
DGR5    XOR     A
        LD      (OBUS),A
        PUSH    HL
        LD      HL,0
        LD      (POBUS),HL
        POP     HL
DGR3    LD      A,(DE)
        OR      (HL)
        LD      (HL),A
        INC     DE
        INC     HL
        DEC     B
        JP      NZ,DGR2
DGN     POP     HL
        LD      BC,64
        ADD     HL,BC
        POP     BC
        DEC     B
        JP      NZ,DGR1
        RET
DGNXT   EX      DE,HL
        LD      BC,32
        ADD     HL,BC
        EX      DE,HL
        JR      DGN
MUL16   LD      HL,0
LML16   SRL     B
        JR      NC,LCN16
        ADD     HL,DE
LCN16   RET     Z
        EX      DE,HL
        ADD     HL,HL
        EX      DE,HL
        JR      LML16
DIV16   LD      A,L
        LD      L,H
        LD      H,0
        LD      E,0
        LD      B,16
        LD      IX,0
LDV16   ADD     HL,HL
        RLA
        JR      NC,LDV161
        INC     L
LDV161  ADD     IX,IX
        INC     IX
        OR      A
        SBC     HL,DE
        JR      NC,CDV
        ADD     HL,DE
        DEC     IX
CDV     DJNZ    LDV16
        RET
RESET0  LD      (BUFF+1),HL
        PUSH    HL
        PUSH    DE
        CALL    RESET1
        POP     DE
        POP     HL
        RET
RESET1  LD      A,86H
        LD      (WINST+1),A
        LD      A,D
        LD      B,0FFH
WLOOP   INC     B
        SUB     3
        JP      P,WLOOP
        ADD     A,3
        SLA     A
        LD      C,A
        LD      L,B
        LD      H,0
        LD      B,5
WLOOP1  ADD     HL,HL
        DJNZ    WLOOP1
        LD      D,0
        SRL     E
        JR      NC,WCONT
        INC     C
WCONT   ADD     HL,DE
BUFF    LD      DE,3C00H
        ADD     HL,DE
        SLA     C
        SLA     C
        SLA     C
        LD      A,(WINST+1)
        ADD     A,C
        LD      (WINST+1),A
WINST   DEFB    0CBH
        DEFB    0
        RET
DEYE    LD      A,(EYE)
        BIT     0,A
        JR      Z,DEYE2
        CALL    ADDRE
        LD      BC,EYE1
        ADD     HL,BC
        EX      DE,HL
        CALL    DOEIL
DEYE2   LD      A,(EYE)
        BIT     1,A
        RET     Z
        CALL    ADDRE
        LD      BC,EYE2
        ADD     HL,BC
        EX      DE,HL
        CALL    DOEIL
        RET
DOEIL   LD      B,2
DOE0    PUSH    BC
        PUSH    HL
        PUSH    HL
        LD      BC,SCR
        XOR     A
        SBC     HL,BC
        POP     HL
        JP      M,DOEN
        PUSH    HL
        POP     BC
        PUSH    HL
        LD      HL,SCR+1023
        XOR     A
        SBC     HL,BC
        POP     HL
        JP      M,DOEN
        LD      B,3
DOE1    LD      A,(DE)
        AND     (HL)
        AND     3FH
        JR      Z,DOE2
        LD      A,0F9H
        LD      (EYE),A
        EXX
        CALL    SON2
        EXX
        PUSH    DE
        EX      DE,HL
        LD      HL,(POBUS)
        XOR     A
        SBC     HL,DE
        EX      DE,HL
        POP     DE
        JR      NZ,DOE2
        LD      A,(OBUS)
        OR      A
        JR      NZ,DOE3
        LD      A,1
        LD      (TOB1),A
DOE3    XOR     A
        LD      (OBUS),A
        PUSH    HL
        LD      HL,0
        LD      (POBUS),HL
        POP     HL
DOE2    LD      A,(DE)
        OR      (HL)
        LD      (HL),A
        INC     HL
        INC     DE
        DJNZ    DOE1
DOEN0   POP     HL
        LD      BC,64
        ADD     HL,BC
        POP     BC
        DJNZ    DOE0
        RET
DOEN    EX      DE,HL
        LD      BC,3
        ADD     HL,BC
        EX      DE,HL
        JR      DOEN0
ADDRE   LD      A,(PGSHY)
        LD      L,A
        LD      H,0
        LD      D,3
        CALL    DIV16
        LD      A,H
        PUSH    AF
        PUSH    IX
        POP     DE
        LD      B,64
        CALL    MUL16
        LD      A,(PGSHX)
        AND     7FH
        LD      E,A
        LD      D,0
        SRL     E
        ADD     HL,DE
        LD      DE,SCR-384+78
        ADD     HL,DE
        POP     AF
        PUSH    HL
        LD      B,A
        LD      DE,12
        CALL    MUL16
        PUSH    HL
        LD      A,(PGSHX)
        AND     1
        LD      B,A
        LD      DE,6
        CALL    MUL16
        POP     DE
        ADD     HL,DE
        POP     DE
        RET
SET0    LD      A,0C6H
        JR      TEST20
RESET2  LD      A,86H
        JR      TEST20
POINT   LD      A,46H
TEST20  LD      (ZINST+1),A
        LD      A,D
        LD      B,0FFH
ZLOOP   INC     B
        SUB     3
        JP      P,ZLOOP
        ADD     A,3
        SLA     A
        LD      C,A
        LD      L,B
        LD      H,0
        LD      B,6
ZLOOP1  ADD     HL,HL
        DJNZ    ZLOOP1
        LD      D,0
        SRL     E
        JR      NC,ZCONT
        INC     C
ZCONT   ADD     HL,DE
        LD      DE,SCR
        ADD     HL,DE
        SLA     C
        SLA     C
        SLA     C
        LD      A,(ZINST+1)
        ADD     A,C
        LD      (ZINST+1),A
ZINST   DEFB    0CBH
        DEFB    0
        SET     7,(HL)
        RET
MMIS    LD      A,(COUNT0)
        INC     A
        AND     1
        LD      (COUNT0),A
        LD      B,A
        LD      A,(FLAG1)
        AND     B
        RET     NZ
        LD      A,(MIS1)
        OR      A
        JR      Z,MMI1
        LD      A,(MISY1)
        INC     A
        LD      (MISY1),A
        CP      48
        JR      C,MMI0
        XOR     A
        LD      (MIS1),A
        LD      (MISX1),A
        LD      (MISY1),A
MMI0    LD      A,(MIS2)
        OR      A
        JR      Z,MMI2
        LD      A,(MISY2)
        INC     A
        LD      (MISY2),A
        CP      48
        RET     C
        XOR     A
        LD      (MIS2),A
        LD      (MISX2),A
        LD      (MISY2),A
        RET
MMI1    LD      A,(EYE)
        AND     4
        JR      Z,MMI0
        LD      A,1
        LD      (MIS1),A
        LD      A,(PGSHX)
        AND     7FH
        ADD     A,18
        LD      (MISX1),A
        LD      A,(PGSHY)
        SUB     11
        LD      (MISY1),A
        RET
MMI2    LD      A,(EYE)
        AND     4
        RET     Z
        LD      A,1
        LD      (MIS2),A
        LD      A,(PGSHX)
        AND     7FH
        ADD     A,43
        LD      (MISX2),A
        LD      A,(PGSHY)
        SUB     11
        LD      (MISY2),A
        RET
DMIS    LD      IX,MIS1
        LD      B,2
DMIS0   PUSH    BC
        LD      A,(IX)
        OR      A
        JR      Z,DMIS1
        LD      A,(IX+1)
        LD      E,A
        LD      A,(IX+2)
        AND     A
        JP      M,DMIS1
        CP      48
        JR      NC,DMIS1
        LD      D,A
        CALL    POINT
        JR      Z,DMIS2
        PUSH    DE
        EX      DE,HL
        LD      HL,(POBUS)
        XOR     A
        SBC     HL,DE
        EX      DE,HL
        POP     DE
        JR      NZ,DMIS2
        LD      A,(OBUS)
        OR      A
        JR      NZ,DMIS3
        LD      A,1
        LD      (TOB1),A
DMIS3   XOR     A
        LD      (OBUS),A
        PUSH    HL
        LD      HL,0
        LD      (POBUS),HL
        POP     HL
        XOR     A
        LD      (IX),A
        LD      (IX+1),A
        LD      (IX+2),A
        JR      DMIS1
DMIS2   LD      A,(IX+1)
        LD      E,A
        LD      A,(IX+2)
        LD      D,A
        CALL    SET0
DMIS1   INC     IX
        INC     IX
        INC     IX
        POP     BC
        DJNZ    DMIS0
        RET
BEGIN   CALL    MOVE
        CALL    DECO
        LD      HL,TEST
        LD      DE,TEST+1
        LD      BC,FIN0-TEST-1
        LD      (HL),0
        LDIR
        LD      A,30H
        LD      (CSHLD),A
        LD      A,1FH
        LD      (CSH),A
        LD      A,57
        LD      (SHIP),A
        LD      (CIB),A
        LD      A,2
        LD      (CIBC),A
        LD      A,193
        LD      (LONG),A
        LD      A,5
        LD      (NMET),A
        LD      A,1
        LD      (FLAG1),A
BEGIN0  XOR     A
        LD      (FLAG),A
        LD      A,50
        LD      (COMP0),A
LP      CALL    CLS
        CALL    DMUR1
        CALL    DSHLD
        CALL    TOBUS
        CALL    DOBUS
        CALL    DMET
        CALL    DSHIP
        CALL    MMET
        CALL    SCORE
        CALL    AFF
        LD      A,(TEST0)
        CP      20
        JP      Z,FIN
        CALL    INPUT
        CALL    EXMUR1
        LD      A,(ZMUR)
        OR      A
        JR      NZ,SCND0
        CALL    HOR
        CALL    MOBUS
        CALL    BREAK
        LD      A,(COMP0)
        OR      A
        JR      Z,LP
        DEC     A
        LD      (COMP0),A
        OR      A
        JR      NZ,LP
        LD      A,1
        LD      (FLAG),A
        JR      LP
SCND0   LD      A,16
        LD      (HMUR),A
SCND    CALL    CLS
        CALL    DMUR1
        CALL    DSHLD
        CALL    TOBUS
        CALL    DOBUS
        CALL    DMET
        CALL    DSHIP
        CALL    MMET
        CALL    SCORE
        CALL    AFF
        LD      A,(TEST0)
        CP      20
        JP      Z,FIN
        CALL    INPUT
        LD      A,(ZMUR)
        INC     A
        LD      (ZMUR),A
        AND     A
        JR      Z,TRD
        CALL    HOR
        CALL    MOBUS
        CALL    BREAK
        JR      SCND
TRD     XOR     A
        LD      (FLAG),A
        LD      (HMUR),A
LAB0    CALL    CLS
        CALL    DMUR2
        CALL    DSHLD
        CALL    TOBUS
        CALL    DOBUS
        CALL    DMET
        CALL    DSHIP
        CALL    MMET
        CALL    SCORE
        CALL    AFF
        LD      A,(TEST0)
        CP      20
        JP      Z,FIN
        CALL    INPUT
        CALL    EXMUR2
        LD      A,(MUR)
        OR      A
        JR      Z,FRTH
        CALL    HOR
        CALL    MOBUS
        CALL    BREAK
        JR      LAB0
FRTH    LD      A,60
        LD      (PGHO),A
        LD      A,1
        LD      (GHO),A
        LD      HL,128
        LD      (HPAR),HL
        LD      HL,PAROI+1
        LD      B,22
FRT00   LD      (HL),0B7H
        INC     HL
        LD      (HL),0BFH
        INC     HL
        LD      (HL),0BBH
        INC     HL
        DJNZ    FRT00
        LD      B,40H
FRT01   LD      (HL),83H
        INC     HL
        DJNZ    FRT01
        XOR     A
        LD      (COUNT),A
        LD      (ZMUR),A
FRT0    CALL    CLS
        CALL    TOBUS
        CALL    DOBUS
        CALL    DPAR
        CALL    DSHLD
        CALL    DGHO
        CALL    DBORD
        CALL    DBOM
        CALL    DSHIP
        CALL    SCORE
        CALL    AFF
        LD      A,(TEST0)
        CP      20
        JP      Z,FIN
        LD      A,(CGHO)
        OR      A
        JR      Z,FRT1
        INC     A
        LD      (CGHO),A
        CP      100
        JR      Z,SIXTH
        JR      FRT2
FRT1    LD      A,(GHO)
        OR      A
        JR      NZ,FRT2
        LD      A,1
        LD      (CGHO),A
FRT2    CALL    INPUT
        CALL    HOR
        CALL    MOBUS
        CALL    MBOM
        CALL    MGHO
        CALL    MPAR
        CALL    BREAK
        JR      FRT0
SIXTH   CALL    GSHINI
        XOR     A
        LD      (COUNT),A
        LD      (COUNT0),A
        LD      A,4
        LD      (EYE),A
SIX0    CALL    CLS
        CALL    TOBUS
        CALL    DOBUS
        CALL    DGRSH
        CALL    DEYE
        CALL    DMIS
        CALL    DSHLD
        CALL    DBORD
        CALL    DSHIP
        CALL    SCORE
        CALL    AFF
        LD      A,(TEST0)
        CP      20
        JP      Z,FIN
        LD      A,(PGSHY)
        CP      66
        JR      Z,FIFT
        LD      A,(EYE)
        OR      A
        JR      Z,FIFT
        CALL    INPUT
        CALL    HOR
        CALL    MOBUS
        CALL    MMIS
        CALL    MGRSH
        CALL    BREAK
        JR      SIX0
FIFT    XOR     A
        LD      (HMUR),A
        LD      (ZMUR),A
        LD      (GHO),A
        LD      (CGHO),A
        LD      (AGHO),A
        LD      (PGSHX),A
        LD      (PGSHY),A
        LD      (EYE),A
        LD      (MIS1),A
        LD      (MIS2),A
        LD      A,(LONG)
        SUB     64
        LD      (LONG),A
        CP      65
        JR      NZ,SUI9
        XOR     A
        LD      (FLAG1),A
SUI9    LD      A,10
        LD      (NMET),A
        JP      BEGIN0
BREAK   LD      A,(3840H)
        AND     6
        CP      6
        JP      Z,DEBUT
        LD      A,(DEM)
        OR      A
        JR      Z,BRK2
        LD      A,(38FFH)
        OR      A
        RET     Z
        JP      FIN
BRK2    LD      A,(3801H)
        AND     1
        RET     Z
        LD      A,(3880H)
        AND     1
        RET     Z
BRK0    LD      A,(38FFH)
        OR      A
        JR      NZ,BRK0
        LD      B,0
        DJNZ    $
BRK1    LD      A,(38FFH)
        OR      A
        JR      Z,BRK1
        LD      B,0
        DJNZ    $
        RET
FIN     LD      A,(DEM)
        OR      A
        JR      NZ,WSC0
        LD      HL,(PNT)
        EX      DE,HL
        LD      HL,(HSCORE)
        XOR     A
        SBC     HL,DE
        JP      P,WSC
        EX      DE,HL
        LD      (HSCORE),HL
WSC     LD      HL,VERY
        LD      (TEMP),HL
        LD      A,1
        LD      (FLAG2),A
        JP      START
WSC0    LD      HL,0
        LD      (PNT),HL
        JR      WSC
ASCO    LD      A,H
        CALL    HAFF
        LD      A,L
        CALL    HAFF
        RET
ADPO    LD      HL,(PNT)
        ADD     A,L
        DAA
        LD      L,A
        LD      A,0
        ADC     A,H
        DAA
        LD      H,A
        LD      (PNT),HL
        RET
        DEFM    '--( THE BLACK HOLE IS THE 1ST '
        DEFM    'PROGRAM OF Y. LEMPEREUR )--'
        COND    0!(TYPE=DISK)!(TYPE=PROT)
        END     DEBUT
        ENDC
        COND    TYPE=TAPE
        ORG     4321H
        JP      DEBUT
        END     CLEAN
        ENDC
