*=$0801

        byte    $0E, $08, $0A, $00, $9E, $20, $28, $34
        byte    $39, $31, $35, $32, $29, $00, $00, $00

*=$C000
        lda #$08
        sta $CD00
        lda #$05
        sta $CD01
        lda #$0C
        sta $CD02
        sta $CD03
        lda #$0F
        sta $CD04
        rts