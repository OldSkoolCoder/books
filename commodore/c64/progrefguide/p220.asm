; 10 SYS (5120)

*=$0801

        BYTE    $0E, $08, $0A, $00, $9E, $20, $28,  $35, $31, $32, $30, $29, $00, $00, $00

*=$1400

        lda #$01
        sta $0400
        lda #$0E
        sta $d800
        jmp $1400
