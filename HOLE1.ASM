DINT    MACRO
        LD      A,0F0H
        OR      3
        LD      (IT#$YM),A
IT#$YM  NOP
        XOR     A
        LD      (IT#$YM),A
        ENDM
;-----------------------------------
VIDEO   EQU     3C00H
STACK   EQU     $
SCR0    DEFS    1024
        DEFS    128
SCM     DEFS    64
SCR     DEFS    1024
        DEFS    64
TEST    DEFS    1
TEST0   DEFS    1
TEST1   DEFS    1
COMP0   DEFS    1
SHLD    DEFS    1
CSHLD   DEFS    1
CSH     DEFS    1
WSH     DEFS    1
SHIP    DEFS    1
CIB     DEFS    1
CIBC    DEFS    1
CIBC0   DEFS    1
CIBS    DEFS    2
OBUS    DEFS    1
TOB1    DEFS    1
POBUS   DEFS    2
NMET    DEFS    1
METEOR  DEFS    40
COUNT   DEFS    1
MUR     DEFS    1
HMUR    DEFS    1
CMUR    DEFS    1
ZMUR    DEFS    1
CGHO    DEFS    1
GHO     DEFS    1
PGHO    DEFS    1
AGHO    DEFS    1
PBOM    DEFS    2
BOM     DEFS    1
PAROI   DEFS    131
HPAR    DEFS    2
TOB2    DEFS    1
LONG    DEFS    1
FLAG    DEFS    1
FLAG0   DEFS    1
FLAG1   DEFS    1
FLAG2   DEFB    0
FLAG3   DEFS    1
PNT     DEFW    0
CSCO    DEFS    1
PGSHX   DEFS    1
PGSHY   DEFS    1
SAVY    DEFS    1
SAVX    DEFS    1
EYE     DEFS    1
MIS1    DEFS    1
MISX1   DEFS    1
MISY1   DEFS    1
MIS2    DEFS    1
MISX2   DEFS    1
MISY2   DEFS    1
COUNT0  DEFS    1
FIN0    EQU     $
DEM     DEFS    1
RND     DEFS    1
HSCORE  DEFW    0
AROM    DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    9480H
        DEFW    8080H
        DEFW    8091H
        DEFW    0A8A8H
        DEFW    8080H
        DEFW    8080H
        DEFW    0B8B8H
        DEFW    0AE90H
        DEFW    84AEH
        DEFW    9C98H
        DEFW    0B284H
        DEFW    84B7H
        DEFW    0A08CH
        DEFW    9884H
        DEFW    90A1H
        DEFW    0ACACH
        DEFW    0A680H
        DEFW    90B9H
        DEFW    9488H
        DEFW    8080H
        DEFW    8080H
        DEFW    0A080H
        DEFW    8084H
        DEFW    9089H
        DEFW    80A4H
        DEFW    9880H
        DEFW    8081H
        DEFW    0A0B0H
        DEFW    8C90H
        DEFW    8489H
        DEFW    9080H
        DEFW    8380H
        DEFW    8187H
        DEFW    8080H
        DEFW    0A080H
        DEFW    8094H
        DEFW    8080H
        DEFW    8380H
        DEFW    8183H
        DEFW    8080H
        DEFW    0A080H
        DEFW    8090H
        DEFW    0A080H
        DEFW    9884H
        DEFW    8081H
        DEFW    8C9CH
        DEFW    0B594H
        DEFW    95B1H
        DEFW    0AC80H
        DEFW    8080H
        DEFW    80BFH
        DEFW    8C88H
        DEFW    0BF94H
        DEFW    91B3H
        DEFW    0AC9CH
        DEFW    0B480H
        DEFW    95BBH
        DEFW    0AC9CH
        DEFW    8D80H
        DEFW    84BEH
        DEFW    8C9CH
        DEFW    0B380H
        DEFW    95BBH
        DEFW    8C9CH
        DEFW    0B780H
        DEFW    95BBH
        DEFW    8C8CH
        DEFW    8094H
        DEFW    81BFH
        DEFW    0ACA8H
        DEFW    0B780H
        DEFW    95BBH
        DEFW    8CBCH
        DEFW    0A394H
        DEFW    95B3H
        DEFW    90A0H
        DEFW    8880H
        DEFW    8084H
        DEFW    90A0H
        DEFW    0A080H
        DEFW    8094H
        DEFW    98A0H
        DEFW    8984H
        DEFW    90A4H
        DEFW    0B0B0H
        DEFW    8C90H
        DEFW    848CH
        DEFW    0B08CH
        DEFW    0B080H
        DEFW    818CH
        DEFW    8C98H
        DEFW    8090H
        DEFW    80B3H
        DEFW    0B0A0H
        DEFW    0A580H
        DEFW    91B9H
        DEFW    8CA8H
        DEFW    0BF94H
        DEFW    9583H
        DEFW    0AC9CH
        DEFW    0B780H
        DEFW    95BBH
        DEFW    0AC9CH
        DEFW    0BF94H
        DEFW    94B0H
        DEFW    8CA8H
        DEFW    0BF94H
        DEFW    95B0H
        DEFW    8C9CH
        DEFW    0BF84H
        DEFW    90B3H
        DEFW    8C9CH
        DEFW    0BF84H
        DEFW    8083H
        DEFW    8C9CH
        DEFW    0BF84H
        DEFW    95B2H
        DEFW    80A8H
        DEFW    0BF94H
        DEFW    9583H
        DEFW    9C8CH
        DEFW    0BA84H
        DEFW    90B5H
        DEFW    0A880H
        DEFW    0B480H
        DEFW    95BAH
        DEFW    9894H
        DEFW    0BF80H
        DEFW    9583H
        DEFW    80A8H
        DEFW    0BF80H
        DEFW    90B0H
        DEFW    0B8A8H
        DEFW    0BF94H
        DEFW    9580H
        DEFW    0A4A8H
        DEFW    0BF94H
        DEFW    9580H
        DEFW    8C9CH
        DEFW    0B594H
        DEFW    95BAH
        DEFW    8C9CH
        DEFW    0BF94H
        DEFW    8183H
        DEFW    8C9CH
        DEFW    0B594H
        DEFW    95B9H
        DEFW    0AC9CH
        DEFW    0BF80H
        DEFW    9583H
        DEFW    8C9CH
        DEFW    0B384H
        DEFW    95BBH
        DEFW    9C8CH
        DEFW    8084H
        DEFW    80BFH
        DEFW    8094H
        DEFW    0BF94H
        DEFW    95B0H
        DEFW    8894H
        DEFW    8B94H
        DEFW    819EH
        DEFW    8894H
        DEFW    0AD94H
        DEFW    85ADH
        DEFW    0A0B4H
        DEFW    9E94H
        DEFW    948BH
        DEFW    0A894H
        DEFW    0AB94H
        DEFW    8197H
        DEFW    0BC8CH
        DEFW    0BE80H
        DEFW    90B1H
        DEFW    0B4A0H
        DEFW    8180H
        DEFW    8195H
        DEFW    9480H
        DEFW    8980H
        DEFW    819DH
        DEFW    84A0H
        DEFW    8B80H
        DEFW    8193H
        DEFW    0A480H
        DEFW    8380H
        DEFW    819BH
        DEFW    8080H
        DEFW    0B080H
        DEFW    90B0H
TRS     DEFW    0BC80H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    0BF8CH
        DEFW    808CH
        DEFW    8CBCH
        DEFW    8C8CH
        DEFW    0BC80H
        DEFW    8C8CH
        DEFW    0BC8CH
        DEFW    8080H
        DEFW    8080H
        DEFW    8CBCH
        DEFW    80BCH
        DEFW    0BC80H
        DEFW    8C8CH
        DEFW    0BC8CH
        DEFW    0BF80H
        DEFW    80BCH
        DEFW    0BCBFH
        DEFW    8080H
        DEFW    8F80H
        DEFW    8C8CH
        DEFW    0BCBCH
        DEFW    8C80H
        DEFW    0BC80H
        DEFW    8C8FH
        DEFW    0BCBFH
        DEFW    0BF80H
        DEFW    8C80H
        DEFW    0BF80H
        DEFW    8F80H
        DEFW    808FH
        DEFW    8F8FH
        DEFW    8080H
        DEFW    8F80H
        DEFW    8C8CH
        DEFW    8F8FH
        DEFW    8080H
        DEFW    8F80H
        DEFW    8C8CH
        DEFW    8F8FH
        DEFW    8F80H
        DEFW    8C8CH
        DEFW    8F8CH
TROIS   DEFW    0BF02H
        DEFW    8F06H
        DEFW    0BF02H
        DEFW    8002H
        DEFB    0FFH
        DEFW    8302H
        DEFW    8006H
        DEFW    0BF02H
        DEFW    8002H
        DEFB    0FFH
        DEFW    8002H
        DEFW    8F06H
        DEFW    0BF04H
        DEFB    0FFH
        DEFW    8008H
        DEFW    0BF04H
        DEFB    0FFH
        DEFW    0BF02H
        DEFW    0B006H
        DEFW    0BF04H
        DEFB    0FFH
        DEFW    830CH
        DEFB    0
        DEFW    0BF02H
        DEFW    8F08H
        DEFW    0BF02H
        DEFB    0FFH
        DEFW    8302H
        DEFW    8008H
        DEFW    0BF02H
        DEFB    0FFH
        DEFW    0BF04H
        DEFW    8F08H
        DEFB    0FFH
        DEFW    0BF04H
        DEFW    8008H
        DEFB    0FFH
        DEFW    0BF04H
        DEFW    0B008H
        DEFB    0FFH
        DEFW    830CH
        DEFB    0
        DEFW    8004H
        DEFW    8F02H
        DEFW    0BF02H
        DEFW    8004H
        DEFB    0FFH
        DEFW    8006H
        DEFW    0BF02H
        DEFW    8004H
        DEFB    0FFH
        DEFW    8004H
        DEFW    0BF04H
        DEFW    8004H
        DEFB    0FFH
        DEFW    8004H
        DEFW    0BF04H
        DEFW    8004H
        DEFB    0FFH
        DEFW    8004H
        DEFW    0BF04H
        DEFW    8004H
        DEFB    0FFH
        DEFW    8004H
        DEFW    8304H
        DEFB    0
        DEFW    0BF02H
        DEFW    8F08H
        DEFW    0BF02H
        DEFB    0FFH
        DEFW    0BF02H
        DEFW    8008H
        DEFW    0BF02H
        DEFB    0FFH
        DEFW    0BF02H
        DEFW    8003H
        DEFW    0BF02H
        DEFW    8003H
        DEFW    0BF02H
        DEFB    0FFH
        DEFW    0BF02H
        DEFW    8003H
        DEFW    8302H
        DEFW    8003H
        DEFW    0BF02H
        DEFB    0FFH
        DEFW    0BF02H
        DEFW    0B008H
        DEFW    0BF02H
        DEFB    0FFH
        DEFW    830CH
        DEFB    0
SHIPL   DEFW    9B9EH
        DEFW    0B794H
        DEFW    0BF9DH
        DEFW    9DBFH
        DEFW    95B7H
SHIPR   DEFW    0A7A8H
        DEFW    0AAADH
        DEFW    0AEBBH
        DEFW    0BFBFH
        DEFW    0BBAEH
SHLDL   DEFW    0A4A0H
        DEFW    9880H
        DEFW    8081H
        DEFW    9089H
        DEFW    8086H
        DEFW    8080H
        DEFW    8280H
        DEFB    84H
SHLDR   DEFW    9880H
        DEFW    0A090H
        DEFW    8086H
        DEFW    0A482H
        DEFW    8188H
        DEFW    8080H
        DEFW    8080H
        DEFB    89H
MET1    DEFW    0BFAEH
        DEFW    8084H
        DEFW    8080H
MET2    DEFW    0BCB8H
        DEFW    8290H
        DEFW    8083H
MET3    DEFW    0B0A0H
        DEFW    8B80H
        DEFW    818FH
TR1     DEFW    0A1A0H
        DEFW    8288H
        DEFW    8892H
        DEFW    8080H
        DEFW    8080H
TR2     DEFW    8480H
        DEFW    8AA0H
        DEFW    0A08AH
        DEFW    8080H
        DEFW    8081H
TR3     DEFW    9080H
        DEFW    0A880H
        DEFW    80A8H
        DEFW    8082H
        DEFW    8284H
GLL     DEFW    0BF98H
        DEFW    90ADH
        DEFW    9C9FH
        DEFW    959FH
GLR     DEFW    0AFB8H
        DEFW    909DH
        DEFW    9D9FH
        DEFW    959EH
GRL     DEFW    0AEA0H
        DEFW    0B49FH
        DEFW    0ADAAH
        DEFW    0AFAEH
GRR     DEFW    9EA0H
        DEFW    0A4BFH
        DEFW    0AFAAH
        DEFW    0AFACH
EXP1    DEFW    8388H
        DEFW    0A284H
        DEFW    0AE99H
        DEFW    9DBFH
        DEFW    91A6H
EXP2    DEFW    8088H
        DEFW    8084H
        DEFW    0A699H
        DEFW    99BFH
        DEFW    80A6H
EXP3    DEFW    8080H
        DEFW    8080H
        DEFW    0A299H
        DEFW    9180H
        DEFW    80A6H
BOM1    DEFW    0BBB7H
        DEFW    8080H
BOM2    DEFW    98A4H
        DEFW    8281H
BOM3    DEFW    90A0H
        DEFW    878BH
DATA    DEFM    '   THE BLACK HOLE@'
        DEFM    '    VERSION  2.1@@@@'
        DEFB    1
ENGL    DEFM    '      DORFIANS@'
        DEFM    '    HAVE INVADED@'
        DEFM    'THE GALACTIC EMPIRE.@'
        DEFM    ' THE EMPIRE%S FLEET@'
        DEFM    '     STRUCK BACK@'
        DEFM    '   IMMEDIATELY AND@'
        DEFM    '   DESTROYED THESE@'
        DEFM    '   DREADED ALIENS.@'
        DEFM    '  ONLY THEIR LEADER@'
        DEFM    '    HAS ESCAPED !@'
        DEFM    '  HE IS NOW HIDING@'
        DEFM    '    AT THE BOTTOM@'
        DEFM    '   OF A BLACK HOLE.@'
        DEFM    ' YOUR MISSION IS TO@'
        DEFM    '     SEEK OUT AND@'
        DEFM    '    DESTROY THIS@'
        DEFM    '     CREATURE !@@'
        DEFB    2
FRAN    DEFM    '        LES@'
        DEFM    '      DORFIANS@'
        DEFM    '     ONT ENVAHI@'
        DEFM    'L%EMPIRE GALACTIQUE.@'
        DEFM    'LA FLOTTE DE L%EMPIRE@'
        DEFM    '     A AUSSITOT@'
        DEFM    '  CONTRE-ATTAQUE ET@'
        DEFM    '    DETRUIT CES@'
        DEFM    'EXTRATERRESTRES. SEUL@'
        DEFM    '  LEUR CHEF S%EST@'
        DEFM    ' ECHAPPE ET SE CACHE@'
        DEFM    ' ENCORE AU FOND D%UN@'
        DEFM    '     TROU NOIR.@'
        DEFM    'VOTRE MISSION EST DE@'
        DEFM    '   DETRUIRE CETTE@'
        DEFM    '     CREATURE !@@'
        DEFB    2
DATA0   DEFM    ' "<"       : LEFT.@'
        DEFM    ' ">"       : RIGHT.@'
        DEFM    ' "<" + ">" : SHIELD.@'
        DEFM    ' "SPACE"   : FIRE.@@@'
        DEFM    '    PUBLISHED BY@'
        DEFM    '      FUNSOFT@@'
VERY    DEFM    '     WRITTEN BY@'
YL      DEFM    '    Y. LEMPEREUR@@'
        DEFM    ' COPYRIGHT (C) 1982@@'
        DEFM    '     LAST SCORE@'
        DEFM    '        '
LSC     DEFM    '00000@'
        DEFM    '     HIGH SCORE@'
        DEFM    '        '
HSC     DEFM    '00000@@@@@@@@@'
        DEFB    0
GRSH1   DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    0B080H
        DEFW    0B0B0H
        DEFW    9CBCH
        DEFW    8F8FH
        DEFW    0AC8FH
        DEFW    0B0BCH
        DEFW    0B0B0H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    0B080H
        DEFW    0BCB0H
        DEFW    0BFBCH
        DEFW    0BFBFH
        DEFW    0BBB7H
        DEFW    95BFH
        DEFW    8080H
        DEFW    0AA80H
        DEFW    0B7BFH
        DEFW    0BFBBH
        DEFW    0BFBFH
        DEFW    0BCBCH
        DEFW    0B0B0H
        DEFW    8080H
        DEFW    8080H
        DEFW    9F9CH
        DEFW    0BBBFH
        DEFW    0BBBBH
        DEFW    0BBBBH
        DEFW    0BBBBH
        DEFW    0BFBBH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0B7B7H
        DEFW    0B7B7H
        DEFW    0B7B7H
        DEFW    0B7B7H
        DEFW    0AFBFH
        DEFW    80ACH
        DEFW    8080H
        DEFW    8181H
        DEFW    8787H
        DEFW    9F9FH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0AFBFH
        DEFW    8BAFH
        DEFW    828BH
        DEFW    8082H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8181H
        DEFW    8787H
        DEFW    9F9FH
        DEFW    0BFBFH
        DEFW    0AFBFH
        DEFW    8BAFH
        DEFW    828BH
        DEFW    8082H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8381H
        DEFW    8082H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
GRSH2   DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    0A080H
        DEFW    0B0B0H
        DEFW    0BCB8H
        DEFW    8F8EH
        DEFW    8D8FH
        DEFW    0B4BCH
        DEFW    0B0B0H
        DEFW    8090H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    0A080H
        DEFW    0B8B0H
        DEFW    0BEBCH
        DEFW    0BFBFH
        DEFW    0B3BFH
        DEFW    0BFBFH
        DEFW    8080H
        DEFW    8080H
        DEFW    0BFBFH
        DEFW    0BFB3H
        DEFW    0BFBFH
        DEFW    0BCBDH
        DEFW    0B0B4H
        DEFW    8090H
        DEFW    8080H
        DEFW    0AEA8H
        DEFW    0B7AFH
        DEFW    0B7B7H
        DEFW    0B7B7H
        DEFW    0B7B7H
        DEFW    0BFB7H
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BBBFH
        DEFW    0BBBBH
        DEFW    0BBBBH
        DEFW    0BBBBH
        DEFW    9FBBH
        DEFW    949DH
        DEFW    8080H
        DEFW    8282H
        DEFW    8B8AH
        DEFW    0AFABH
        DEFW    0BFAFH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    9FBFH
        DEFW    979FH
        DEFW    8587H
        DEFW    8181H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8282H
        DEFW    8B8AH
        DEFW    0AFABH
        DEFW    0BFAFH
        DEFW    9FBFH
        DEFW    979FH
        DEFW    8587H
        DEFW    8181H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8282H
        DEFW    8181H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
GRSH3   DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    0B0B0H
        DEFW    0BCBCH
        DEFW    0B0BCH
        DEFW    80B0H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    0B080H
        DEFW    0BCB0H
        DEFW    0BFBCH
        DEFW    0AF9FH
        DEFW    95BFH
        DEFW    8080H
        DEFW    0AA80H
        DEFW    9FBFH
        DEFW    0BFAFH
        DEFW    0BCBCH
        DEFW    0B0B0H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    0BCB0H
        DEFW    0AFBCH
        DEFW    0AFAFH
        DEFW    0AFAFH
        DEFW    0AFAFH
        DEFW    0BFAFH
        DEFW    0BDBFH
        DEFW    0BCBCH
        DEFW    0BEBCH
        DEFW    0BFBFH
        DEFW    9F9FH
        DEFW    9F9FH
        DEFW    9F9FH
        DEFW    9F9FH
        DEFW    0BCBCH
        DEFW    80B0H
        DEFW    8181H
        DEFW    8787H
        DEFW    9F9FH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0AFBFH
        DEFW    8BAFH
        DEFW    828BH
        DEFW    8082H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8181H
        DEFW    8787H
        DEFW    9F9FH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0AFBFH
        DEFW    8BAFH
        DEFW    828BH
        DEFW    8082H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8181H
        DEFW    8F87H
        DEFW    828BH
        DEFW    8082H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
GRSH4   DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    0B0A0H
        DEFW    0BCB8H
        DEFW    0B4BCH
        DEFW    90B0H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    0A080H
        DEFW    0B8B0H
        DEFW    0BEBCH
        DEFW    8FBFH
        DEFW    0BFBFH
        DEFW    8080H
        DEFW    8080H
        DEFW    0BFBFH
        DEFW    0BF8FH
        DEFW    0BCBDH
        DEFW    0B0B4H
        DEFW    8090H
        DEFW    8080H
        DEFW    8080H
        DEFW    0B8A0H
        DEFW    9EBCH
        DEFW    9F9FH
        DEFW    9F9FH
        DEFW    9F9FH
        DEFW    0BF9FH
        DEFW    0BFBFH
        DEFW    0BCBCH
        DEFW    0BCBCH
        DEFW    0BFBFH
        DEFW    0AFBFH
        DEFW    0AFAFH
        DEFW    0AFAFH
        DEFW    0AFAFH
        DEFW    0BCADH
        DEFW    90B4H
        DEFW    8282H
        DEFW    8B8AH
        DEFW    0AFABH
        DEFW    0BFAFH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    9FBFH
        DEFW    979FH
        DEFW    8587H
        DEFW    8181H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8282H
        DEFW    8B8AH
        DEFW    0AFABH
        DEFW    0BFAFH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    9FBFH
        DEFW    979FH
        DEFW    8587H
        DEFW    8181H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8282H
        DEFW    8B8AH
        DEFW    8587H
        DEFW    8181H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
GRSH5   DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    0B0B0H
        DEFW    80B0H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    0B080H
        DEFW    0BCB0H
        DEFW    0BCBCH
        DEFW    97BFH
        DEFW    8383H
        DEFW    0AB83H
        DEFW    0BCBFH
        DEFW    0BCBCH
        DEFW    0B0B0H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    0B080H
        DEFW    0BCB0H
        DEFW    0BFBCH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BEBDH
        DEFW    0B5BFH
        DEFW    0B0B0H
        DEFW    0BAB0H
        DEFW    0BDBFH
        DEFW    0BFBEH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BCBCH
        DEFW    0B0B0H
        DEFW    8080H
        DEFW    8787H
        DEFW    9E9FH
        DEFW    0BEBEH
        DEFW    0BEBEH
        DEFW    0BEBEH
        DEFW    0BFBEH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BDBDH
        DEFW    0BDBDH
        DEFW    0BDBDH
        DEFW    0ADBDH
        DEFW    8BAFH
        DEFW    808BH
        DEFW    8080H
        DEFW    8080H
        DEFW    8181H
        DEFW    8787H
        DEFW    9F9FH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0AFBFH
        DEFW    8BAFH
        DEFW    828BH
        DEFW    8082H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8181H
        DEFW    8787H
        DEFW    0BF9FH
        DEFW    8BAFH
        DEFW    828BH
        DEFW    8082H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
GRSH6   DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    0B0A0H
        DEFW    90B0H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    0A080H
        DEFW    0B8B0H
        DEFW    0BCBCH
        DEFW    0BFBEH
        DEFW    8383H
        DEFW    8383H
        DEFW    0BDBFH
        DEFW    0BCBCH
        DEFW    0B0B4H
        DEFW    8090H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    0A080H
        DEFW    0B8B0H
        DEFW    0BEBCH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BCBFH
        DEFW    0BFBFH
        DEFW    0B0B0H
        DEFW    0B0B0H
        DEFW    0BFBFH
        DEFW    0BFBCH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BCBDH
        DEFW    0B0B4H
        DEFW    8090H
        DEFW    8B8AH
        DEFW    0ADABH
        DEFW    0BDADH
        DEFW    0BDBDH
        DEFW    0BDBDH
        DEFW    0BFBDH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BEBFH
        DEFW    0BEBEH
        DEFW    0BEBEH
        DEFW    9EBEH
        DEFW    979EH
        DEFW    8587H
        DEFW    8080H
        DEFW    8080H
        DEFW    8282H
        DEFW    8B8AH
        DEFW    0AFABH
        DEFW    0BFAFH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    0BFBFH
        DEFW    9FBFH
        DEFW    979FH
        DEFW    8587H
        DEFW    8181H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8282H
        DEFW    8B8AH
        DEFW    0AFABH
        DEFW    979FH
        DEFW    8587H
        DEFW    8181H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
        DEFW    8080H
EYE1    DEFW    8688H
        DEFW    8081H
        DEFW    8080H
        DEFW    8C80H
        DEFW    8083H
        DEFW    8080H
        DEFW    98A0H
        DEFW    8084H
        DEFW    8080H
        DEFW    0B080H
        DEFW    808CH
        DEFW    8080H
        DEFW    0A080H
        DEFW    8290H
        DEFW    8081H
        DEFW    8080H
        DEFW    80B0H
        DEFW    8083H
EYE2    DEFW    8982H
        DEFW    8084H
        DEFW    8080H
        DEFW    8380H
        DEFW    808CH
        DEFW    8080H
        DEFW    0A488H
        DEFW    8090H
        DEFW    8080H
        DEFW    8C80H
        DEFW    80B0H
        DEFW    8080H
        DEFW    90A0H
        DEFW    8080H
        DEFW    8182H
        DEFW    0B080H
        DEFW    8080H
        DEFW    8380H
SET     LD      A,0C6H
        JR      TEST10
RESET   LD      A,86H
        JR      TEST10
TESTU   LD      A,46H
TEST10  LD      (INST+1),A
        LD      A,D
        LD      B,0FFH
LOOP    INC     B
        SUB     3
        JP      P,LOOP
        ADD     A,3
        SLA     A
        LD      C,A
        LD      L,B
        LD      H,0
        LD      B,6
LOOP1   ADD     HL,HL
        DJNZ    LOOP1
        LD      D,0
        SRL     E
        JR      NC,CONT
        INC     C
CONT    ADD     HL,DE
        LD      DE,3C00H
        ADD     HL,DE
        SLA     C
        SLA     C
        SLA     C
        LD      A,(INST+1)
        ADD     A,C
        LD      (INST+1),A
INST    DEFB    0CBH
        DEFB    0
        SET     7,(HL)
        RET
CONUT   DEFS    1
FALL    LD      BC,64
        ADD     IX,BC
        ADD     IY,BC
        EX      DE,HL
        ADD     HL,BC
        EX      DE,HL
        ADD     HL,BC
        RET
MOVE    LD      HL,3C00H
        LD      DE,SCM
        LD      BC,400H
        LDIR
        CALL    TRSOFT
        LD      A,32
        LD      (CONUT),A
MOVE0   LD      A,(CONUT)
        DEC     A
        LD      (CONUT),A
        LD      IX,SCM
        LD      HL,SCR0
        LD      IY,SCM+63
        LD      DE,SCR0+63
        INC     A
        JR      Z,MOVEF
        DEC     A
        JR      Z,MOVE3
        LD      B,A
MOVE2   PUSH    BC
        PUSH    IX
        PUSH    IY
        PUSH    HL
        PUSH    DE
        LD      DE,64
        LD      B,16
MOVE1   LD      A,(IX+1)
        LD      (IX),A
        LD      A,1
        OUT     (255),A
        LD      A,(IY-1)
        LD      (IY),A
        ADD     IX,DE
        ADD     IY,DE
        XOR     A
        OUT     (255),A
        DJNZ    MOVE1
        POP     DE
        POP     HL
        POP     IY
        POP     IX
        POP     BC
        INC     IX
        INC     HL
        DEC     IY
        DEC     DE
        DJNZ    MOVE2
MOVE3   PUSH    IX
        PUSH    IY
        PUSH    HL
        PUSH    DE
        LD      B,16
MOVE4   PUSH    BC
        LD      A,(HL)
        OR      149
        LD      (IX),A
        LD      A,(DE)
        OR      170
        LD      (IY),A
        CALL    FALL
        POP     BC
        DJNZ    MOVE4
        POP     DE
        POP     HL
        POP     IY
        POP     IX
        EXX
        PUSH    IX
        POP     HL
        LD      A,L
        EXX
        AND     3FH
        CP      1FH
        JR      Z,MOVE6
        INC     IX
        INC     HL
        DEC     IY
        DEC     DE
MOVEF   LD      B,16
MOVE5   PUSH    BC
        LD      A,(HL)
        LD      (IX),A
        LD      A,(DE)
        LD      (IY),A
        CALL    FALL
        POP     BC
        DJNZ    MOVE5
MOVE6   CALL    AFFM
        LD      A,(CONUT)
        INC     A
        JP      NZ,MOVE0
        LD      BC,8000H
        CALL    60H
        RET
TRSOFT  LD      HL,SCR0
        LD      DE,SCR0+1
        LD      BC,3FFH
        LD      (HL),80H
        LDIR
        LD      DE,GRR
        LD      A,R
        AND     1
        JR      Z,BABY
        LD      DE,GRL
BABY    LD      HL,SCR0+283
        LD      B,2
BABLE   PUSH    BC
        LD      B,4
BAB0    LD      A,(DE)
        LD      (HL),A
        INC     DE
        INC     HL
        DJNZ    BAB0
        LD      BC,60
        ADD     HL,BC
        POP     BC
        DJNZ    BABLE
        LD      DE,TRS
        LD      HL,SCR0+399
        LD      B,4
TRS0    PUSH    BC
        LD      B,28
TRS1    LD      A,(DE)
        LD      (HL),A
        INC     HL
        INC     DE
        DJNZ    TRS1
        LD      BC,36
        ADD     HL,BC
        POP     BC
        DJNZ    TRS0
        RET
SCR191  LD      HL,SCR
        LD      DE,SCR+1
        LD      (HL),0BFH
SCRO    LD      B,15
SCR1    PUSH    BC
        LD      BC,64
        LDIR
        POP     BC
        DJNZ    SCR1
        LD      BC,63
        LDIR
        RET
CLS0    LD      (HL),80H
        JR      SCRO
CLSSCR  LD      DE,SCR+1
        LD      HL,SCR
        JR      CLS0
AFF1L   CALL    AFF1C
        DEC     BC
        INC     HL
        INC     DE
        LD      A,B
        OR      C
        JR      NZ,AFF1L
        RET
AFF1C   LD      A,(HL)
        CP      60H
        JR      C,AFF1C2
        CP      80H
        JR      NC,AFF1C2
        PUSH    HL
        LD      HL,LOWER1
        DEC     (HL)
        POP     HL
        JR      NZ,AFF1C1
        LD      A,(VIDEO)
        PUSH    AF
        LD      A,0C0H
        LD      (VIDEO),A
        LD      A,(VIDEO)
        CP      0C0H
        LD      A,0E0H
        JR      NZ,AFF1C0
        XOR     A
AFF1C0  LD      (LOWER0),A
        POP     AF
        LD      (VIDEO),A
        LD      A,(HL)
AFF1C1  PUSH    HL
        LD      HL,LOWER0
        ADD     A,(HL)
        POP     HL
AFF1C2  LD      (DE),A
        RET
LOWER0  DEFB    0
LOWER1  DEFB    1
SPIRE   LD      L,1
        LD      DE,0FFH
        LD      C,10H
SPIR1   LD      B,C
SPIR2   LD      A,E
        ADD     A,L
        LD      E,A
        CALL    SQUARE
        DJNZ    SPIR2
        DEC     C
        JR      Z,SPIR4
        LD      B,C
SPIR3   LD      A,D
        ADD     A,L
        LD      D,A
        CALL    SQUARE
        DJNZ    SPIR3
        LD      A,L
        NEG
        LD      L,A
        JR      SPIR1
SPIR4   LD      HL,VIDEO
        LD      DE,SCR
        LD      BC,400H
        LDIR
        RET
SQUARE  PUSH    DE
        EXX
        POP     DE
        LD      L,D
        LD      H,0
        LD      B,6
SQU0    ADD     HL,HL
        DJNZ    SQU0
        SLA     E
        SLA     E
        LD      D,0
        ADD     HL,DE
        PUSH    HL
        POP     BC
        LD      HL,VIDEO
        ADD     HL,BC
        EX      DE,HL
        LD      HL,SCR
        ADD     HL,BC
        LD      B,4
SQU1    LD      A,(HL)
        LD      (DE),A
        LD      (HL),0
        INC     HL
        INC     DE
        DJNZ    SQU1
        EXX
        CALL    BRUIT1
        RET
BRUIT1  PUSH    DE
        EXX
        POP     DE
        SRL     E
        INC     E
        SLA     D
        INC     D
        LD      C,10H
SOS     LD      A,1
        OUT     (255),A
        LD      B,E
        DJNZ    $
        LD      A,0
        OUT     (255),A
        LD      B,D
        DJNZ    $
        DEC     C
        JR      NZ,SOS
        EXX
        RET
