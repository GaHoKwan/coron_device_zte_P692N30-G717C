.class public Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;
.super Ljava/lang/Object;
.source "TIFFLZWDecoder.java"


# instance fields
.field andTable:[I

.field bitPointer:I

.field bitsToGet:I

.field bytePointer:I

.field data:[B

.field dstIndex:I

.field h:I

.field nextBits:I

.field nextData:I

.field predictor:I

.field samplesPerPixel:I

.field stringTable:[[B

.field tableIndex:I

.field uncompData:[B

.field w:I


# direct methods
.method public constructor <init>(III)V
    .locals 2
    .parameter "w"
    .parameter "predictor"
    .parameter "samplesPerPixel"

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->data:[B

    .line 58
    const/16 v0, 0x9

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->bitsToGet:I

    .line 63
    iput v1, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->nextData:I

    .line 64
    iput v1, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->nextBits:I

    .line 66
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->andTable:[I

    .line 74
    iput p1, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->w:I

    .line 75
    iput p2, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->predictor:I

    .line 76
    iput p3, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->samplesPerPixel:I

    .line 77
    return-void

    .line 66
    :array_0
    .array-data 0x4
        0xfft 0x1t 0x0t 0x0t
        0xfft 0x3t 0x0t 0x0t
        0xfft 0x7t 0x0t 0x0t
        0xfft 0xft 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public addStringToTable([B)V
    .locals 3
    .parameter "string"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->stringTable:[[B

    iget v1, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->tableIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->tableIndex:I

    aput-object p1, v0, v1

    .line 225
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->tableIndex:I

    const/16 v1, 0x1ff

    if-ne v0, v1, :cond_1

    .line 226
    const/16 v0, 0xa

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->bitsToGet:I

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->tableIndex:I

    const/16 v1, 0x3ff

    if-ne v0, v1, :cond_2

    .line 228
    const/16 v0, 0xb

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->bitsToGet:I

    goto :goto_0

    .line 229
    :cond_2
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->tableIndex:I

    const/16 v1, 0x7ff

    if-ne v0, v1, :cond_0

    .line 230
    const/16 v0, 0xc

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->bitsToGet:I

    goto :goto_0
.end method

.method public addStringToTable([BB)V
    .locals 5
    .parameter "oldString"
    .parameter "newString"

    .prologue
    const/4 v3, 0x0

    .line 200
    array-length v0, p1

    .line 201
    .local v0, length:I
    add-int/lit8 v2, v0, 0x1

    new-array v1, v2, [B

    .line 202
    .local v1, string:[B
    invoke-static {p1, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    aput-byte p2, v1, v0

    .line 206
    iget-object v2, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->stringTable:[[B

    iget v3, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->tableIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->tableIndex:I

    aput-object v1, v2, v3

    .line 208
    iget v2, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->tableIndex:I

    const/16 v3, 0x1ff

    if-ne v2, v3, :cond_1

    .line 209
    const/16 v2, 0xa

    iput v2, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->bitsToGet:I

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iget v2, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->tableIndex:I

    const/16 v3, 0x3ff

    if-ne v2, v3, :cond_2

    .line 211
    const/16 v2, 0xb

    iput v2, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->bitsToGet:I

    goto :goto_0

    .line 212
    :cond_2
    iget v2, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->tableIndex:I

    const/16 v3, 0x7ff

    if-ne v2, v3, :cond_0

    .line 213
    const/16 v2, 0xc

    iput v2, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->bitsToGet:I

    goto :goto_0
.end method

.method public composeString([BB)[B
    .locals 4
    .parameter "oldString"
    .parameter "newString"

    .prologue
    const/4 v3, 0x0

    .line 238
    array-length v0, p1

    .line 239
    .local v0, length:I
    add-int/lit8 v2, v0, 0x1

    new-array v1, v2, [B

    .line 240
    .local v1, string:[B
    invoke-static {p1, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    aput-byte p2, v1, v0

    .line 243
    return-object v1
.end method

.method public decode([B[BI)[B
    .locals 10
    .parameter "data"
    .parameter "uncompData"
    .parameter "h"

    .prologue
    const/16 v9, 0x101

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 88
    aget-byte v6, p1, v8

    if-nez v6, :cond_0

    aget-byte v6, p1, v7

    if-ne v6, v7, :cond_0

    .line 89
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    const-string v7, "tiff.5.0.style.lzw.codes.are.not.supported"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->initializeStringTable()V

    .line 94
    iput-object p1, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->data:[B

    .line 95
    iput p3, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->h:I

    .line 96
    iput-object p2, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->uncompData:[B

    .line 99
    iput v8, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->bytePointer:I

    .line 100
    iput v8, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->bitPointer:I

    .line 101
    iput v8, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->dstIndex:I

    .line 104
    iput v8, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->nextData:I

    .line 105
    iput v8, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->nextBits:I

    .line 107
    const/4 v4, 0x0

    .line 111
    .local v4, oldCode:I
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->getNextCode()I

    move-result v0

    .local v0, code:I
    if-eq v0, v9, :cond_1

    iget v6, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->dstIndex:I

    array-length v7, p2

    if-ge v6, v7, :cond_1

    .line 113
    const/16 v6, 0x100

    if-ne v0, v6, :cond_3

    .line 115
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->initializeStringTable()V

    .line 116
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->getNextCode()I

    move-result v0

    .line 118
    if-ne v0, v9, :cond_2

    .line 149
    :cond_1
    iget v6, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->predictor:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    .line 152
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    if-ge v3, p3, :cond_6

    .line 154
    iget v6, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->samplesPerPixel:I

    iget v7, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->w:I

    mul-int/2addr v7, v3

    add-int/lit8 v7, v7, 0x1

    mul-int v1, v6, v7

    .line 156
    .local v1, count:I
    iget v2, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->samplesPerPixel:I

    .local v2, i:I
    :goto_2
    iget v6, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->w:I

    iget v7, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->samplesPerPixel:I

    mul-int/2addr v6, v7

    if-ge v2, v6, :cond_5

    .line 158
    aget-byte v6, p2, v1

    iget v7, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->samplesPerPixel:I

    sub-int v7, v1, v7

    aget-byte v7, p2, v7

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p2, v1

    .line 159
    add-int/lit8 v1, v1, 0x1

    .line 156
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 122
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #j:I
    :cond_2
    iget-object v6, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->stringTable:[[B

    aget-object v6, v6, v0

    invoke-virtual {p0, v6}, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->writeString([B)V

    .line 123
    move v4, v0

    goto :goto_0

    .line 127
    :cond_3
    iget v6, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->tableIndex:I

    if-ge v0, v6, :cond_4

    .line 129
    iget-object v6, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->stringTable:[[B

    aget-object v5, v6, v0

    .line 131
    .local v5, string:[B
    invoke-virtual {p0, v5}, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->writeString([B)V

    .line 132
    iget-object v6, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->stringTable:[[B

    aget-object v6, v6, v4

    aget-byte v7, v5, v8

    invoke-virtual {p0, v6, v7}, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->addStringToTable([BB)V

    .line 133
    move v4, v0

    goto :goto_0

    .line 137
    .end local v5           #string:[B
    :cond_4
    iget-object v6, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->stringTable:[[B

    aget-object v5, v6, v4

    .line 138
    .restart local v5       #string:[B
    aget-byte v6, v5, v8

    invoke-virtual {p0, v5, v6}, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->composeString([BB)[B

    move-result-object v5

    .line 139
    invoke-virtual {p0, v5}, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->writeString([B)V

    .line 140
    invoke-virtual {p0, v5}, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->addStringToTable([B)V

    .line 141
    move v4, v0

    goto :goto_0

    .line 152
    .end local v5           #string:[B
    .restart local v1       #count:I
    .restart local v2       #i:I
    .restart local v3       #j:I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 164
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #j:I
    :cond_6
    return-object p2
.end method

.method public getNextCode()I
    .locals 6

    .prologue
    .line 253
    :try_start_0
    iget v2, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->nextData:I

    shl-int/lit8 v2, v2, 0x8

    iget-object v3, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->data:[B

    iget v4, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->bytePointer:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->bytePointer:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    iput v2, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->nextData:I

    .line 254
    iget v2, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->nextBits:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->nextBits:I

    .line 256
    iget v2, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->nextBits:I

    iget v3, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->bitsToGet:I

    if-ge v2, v3, :cond_0

    .line 257
    iget v2, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->nextData:I

    shl-int/lit8 v2, v2, 0x8

    iget-object v3, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->data:[B

    iget v4, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->bytePointer:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->bytePointer:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    iput v2, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->nextData:I

    .line 258
    iget v2, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->nextBits:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->nextBits:I

    .line 261
    :cond_0
    iget v2, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->nextData:I

    iget v3, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->nextBits:I

    iget v4, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->bitsToGet:I

    sub-int/2addr v3, v4

    shr-int/2addr v2, v3

    iget-object v3, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->andTable:[I

    iget v4, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->bitsToGet:I

    add-int/lit8 v4, v4, -0x9

    aget v3, v3, v4

    and-int v0, v2, v3

    .line 263
    .local v0, code:I
    iget v2, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->nextBits:I

    iget v3, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->bitsToGet:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->nextBits:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    .end local v0           #code:I
    :goto_0
    return v0

    .line 266
    :catch_0
    move-exception v1

    .line 268
    .local v1, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const/16 v0, 0x101

    goto :goto_0
.end method

.method public initializeStringTable()V
    .locals 4

    .prologue
    .line 173
    const/16 v1, 0x1000

    new-array v1, v1, [[B

    iput-object v1, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->stringTable:[[B

    .line 175
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->stringTable:[[B

    const/4 v2, 0x1

    new-array v2, v2, [B

    aput-object v2, v1, v0

    .line 177
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->stringTable:[[B

    aget-object v1, v1, v0

    const/4 v2, 0x0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_0
    const/16 v1, 0x102

    iput v1, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->tableIndex:I

    .line 181
    const/16 v1, 0x9

    iput v1, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->bitsToGet:I

    .line 182
    return-void
.end method

.method public writeString([B)V
    .locals 4
    .parameter "string"

    .prologue
    .line 189
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->uncompData:[B

    array-length v1, v1

    iget v2, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->dstIndex:I

    sub-int v0, v1, v2

    .line 190
    .local v0, max:I
    array-length v1, p1

    if-ge v1, v0, :cond_0

    .line 191
    array-length v0, p1

    .line 192
    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->uncompData:[B

    iget v3, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->dstIndex:I

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    iget v1, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->dstIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->dstIndex:I

    .line 194
    return-void
.end method
