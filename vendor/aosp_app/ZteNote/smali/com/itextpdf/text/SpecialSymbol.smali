.class public Lcom/itextpdf/text/SpecialSymbol;
.super Ljava/lang/Object;
.source "SpecialSymbol.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(CLcom/itextpdf/text/Font;)Lcom/itextpdf/text/Chunk;
    .locals 7
    .parameter "c"
    .parameter "font"

    .prologue
    .line 87
    invoke-static {p0}, Lcom/itextpdf/text/SpecialSymbol;->getCorrespondingSymbol(C)C

    move-result v0

    .line 88
    .local v0, greek:C
    const/16 v3, 0x20

    if-ne v0, v3, :cond_0

    .line 89
    new-instance v3, Lcom/itextpdf/text/Chunk;

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Lcom/itextpdf/text/Chunk;-><init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V

    .line 93
    :goto_0
    return-object v3

    .line 91
    :cond_0
    new-instance v2, Lcom/itextpdf/text/Font;

    sget-object v3, Lcom/itextpdf/text/Font$FontFamily;->SYMBOL:Lcom/itextpdf/text/Font$FontFamily;

    invoke-virtual {p1}, Lcom/itextpdf/text/Font;->getSize()F

    move-result v4

    invoke-virtual {p1}, Lcom/itextpdf/text/Font;->getStyle()I

    move-result v5

    invoke-virtual {p1}, Lcom/itextpdf/text/Font;->getColor()Lcom/itextpdf/text/BaseColor;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/itextpdf/text/Font;-><init>(Lcom/itextpdf/text/Font$FontFamily;FILcom/itextpdf/text/BaseColor;)V

    .line 92
    .local v2, symbol:Lcom/itextpdf/text/Font;
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, s:Ljava/lang/String;
    new-instance v3, Lcom/itextpdf/text/Chunk;

    invoke-direct {v3, v1, v2}, Lcom/itextpdf/text/Chunk;-><init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V

    goto :goto_0
.end method

.method public static getCorrespondingSymbol(C)C
    .locals 1
    .parameter "c"

    .prologue
    .line 103
    packed-switch p0, :pswitch_data_0

    .line 203
    :pswitch_0
    const/16 v0, 0x20

    :goto_0
    return v0

    .line 105
    :pswitch_1
    const/16 v0, 0x41

    goto :goto_0

    .line 107
    :pswitch_2
    const/16 v0, 0x42

    goto :goto_0

    .line 109
    :pswitch_3
    const/16 v0, 0x47

    goto :goto_0

    .line 111
    :pswitch_4
    const/16 v0, 0x44

    goto :goto_0

    .line 113
    :pswitch_5
    const/16 v0, 0x45

    goto :goto_0

    .line 115
    :pswitch_6
    const/16 v0, 0x5a

    goto :goto_0

    .line 117
    :pswitch_7
    const/16 v0, 0x48

    goto :goto_0

    .line 119
    :pswitch_8
    const/16 v0, 0x51

    goto :goto_0

    .line 121
    :pswitch_9
    const/16 v0, 0x49

    goto :goto_0

    .line 123
    :pswitch_a
    const/16 v0, 0x4b

    goto :goto_0

    .line 125
    :pswitch_b
    const/16 v0, 0x4c

    goto :goto_0

    .line 127
    :pswitch_c
    const/16 v0, 0x4d

    goto :goto_0

    .line 129
    :pswitch_d
    const/16 v0, 0x4e

    goto :goto_0

    .line 131
    :pswitch_e
    const/16 v0, 0x58

    goto :goto_0

    .line 133
    :pswitch_f
    const/16 v0, 0x4f

    goto :goto_0

    .line 135
    :pswitch_10
    const/16 v0, 0x50

    goto :goto_0

    .line 137
    :pswitch_11
    const/16 v0, 0x52

    goto :goto_0

    .line 139
    :pswitch_12
    const/16 v0, 0x53

    goto :goto_0

    .line 141
    :pswitch_13
    const/16 v0, 0x54

    goto :goto_0

    .line 143
    :pswitch_14
    const/16 v0, 0x55

    goto :goto_0

    .line 145
    :pswitch_15
    const/16 v0, 0x46

    goto :goto_0

    .line 147
    :pswitch_16
    const/16 v0, 0x43

    goto :goto_0

    .line 149
    :pswitch_17
    const/16 v0, 0x59

    goto :goto_0

    .line 151
    :pswitch_18
    const/16 v0, 0x57

    goto :goto_0

    .line 153
    :pswitch_19
    const/16 v0, 0x61

    goto :goto_0

    .line 155
    :pswitch_1a
    const/16 v0, 0x62

    goto :goto_0

    .line 157
    :pswitch_1b
    const/16 v0, 0x67

    goto :goto_0

    .line 159
    :pswitch_1c
    const/16 v0, 0x64

    goto :goto_0

    .line 161
    :pswitch_1d
    const/16 v0, 0x65

    goto :goto_0

    .line 163
    :pswitch_1e
    const/16 v0, 0x7a

    goto :goto_0

    .line 165
    :pswitch_1f
    const/16 v0, 0x68

    goto :goto_0

    .line 167
    :pswitch_20
    const/16 v0, 0x71

    goto :goto_0

    .line 169
    :pswitch_21
    const/16 v0, 0x69

    goto :goto_0

    .line 171
    :pswitch_22
    const/16 v0, 0x6b

    goto :goto_0

    .line 173
    :pswitch_23
    const/16 v0, 0x6c

    goto :goto_0

    .line 175
    :pswitch_24
    const/16 v0, 0x6d

    goto :goto_0

    .line 177
    :pswitch_25
    const/16 v0, 0x6e

    goto :goto_0

    .line 179
    :pswitch_26
    const/16 v0, 0x78

    goto :goto_0

    .line 181
    :pswitch_27
    const/16 v0, 0x6f

    goto :goto_0

    .line 183
    :pswitch_28
    const/16 v0, 0x70

    goto :goto_0

    .line 185
    :pswitch_29
    const/16 v0, 0x72

    goto :goto_0

    .line 187
    :pswitch_2a
    const/16 v0, 0x56

    goto :goto_0

    .line 189
    :pswitch_2b
    const/16 v0, 0x73

    goto/16 :goto_0

    .line 191
    :pswitch_2c
    const/16 v0, 0x74

    goto/16 :goto_0

    .line 193
    :pswitch_2d
    const/16 v0, 0x75

    goto/16 :goto_0

    .line 195
    :pswitch_2e
    const/16 v0, 0x66

    goto/16 :goto_0

    .line 197
    :pswitch_2f
    const/16 v0, 0x63

    goto/16 :goto_0

    .line 199
    :pswitch_30
    const/16 v0, 0x79

    goto/16 :goto_0

    .line 201
    :pswitch_31
    const/16 v0, 0x77

    goto/16 :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x391
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
    .end packed-switch
.end method

.method public static index(Ljava/lang/String;)I
    .locals 4
    .parameter "string"

    .prologue
    .line 71
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 72
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 73
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/itextpdf/text/SpecialSymbol;->getCorrespondingSymbol(C)C

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    .line 77
    .end local v0           #i:I
    :goto_1
    return v0

    .line 72
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method
