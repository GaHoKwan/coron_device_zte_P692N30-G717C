.class public Lcom/itextpdf/text/pdf/LZWDecoder;
.super Ljava/lang/Object;
.source "LZWDecoder.java"


# instance fields
.field andTable:[I

.field bitPointer:I

.field bitsToGet:I

.field bytePointer:I

.field data:[B

.field nextBits:I

.field nextData:I

.field stringTable:[[B

.field tableIndex:I

.field uncompData:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->data:[B

    .line 62
    const/16 v0, 0x9

    iput v0, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->bitsToGet:I

    .line 64
    iput v1, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->nextData:I

    .line 65
    iput v1, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->nextBits:I

    .line 67
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->andTable:[I

    .line 75
    return-void

    .line 67
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
    .line 196
    iget-object v0, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->stringTable:[[B

    iget v1, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->tableIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->tableIndex:I

    aput-object p1, v0, v1

    .line 198
    iget v0, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->tableIndex:I

    const/16 v1, 0x1ff

    if-ne v0, v1, :cond_1

    .line 199
    const/16 v0, 0xa

    iput v0, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->bitsToGet:I

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    iget v0, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->tableIndex:I

    const/16 v1, 0x3ff

    if-ne v0, v1, :cond_2

    .line 201
    const/16 v0, 0xb

    iput v0, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->bitsToGet:I

    goto :goto_0

    .line 202
    :cond_2
    iget v0, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->tableIndex:I

    const/16 v1, 0x7ff

    if-ne v0, v1, :cond_0

    .line 203
    const/16 v0, 0xc

    iput v0, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->bitsToGet:I

    goto :goto_0
.end method

.method public addStringToTable([BB)V
    .locals 5
    .parameter "oldString"
    .parameter "newString"

    .prologue
    const/4 v3, 0x0

    .line 173
    array-length v0, p1

    .line 174
    .local v0, length:I
    add-int/lit8 v2, v0, 0x1

    new-array v1, v2, [B

    .line 175
    .local v1, string:[B
    invoke-static {p1, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    aput-byte p2, v1, v0

    .line 179
    iget-object v2, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->stringTable:[[B

    iget v3, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->tableIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->tableIndex:I

    aput-object v1, v2, v3

    .line 181
    iget v2, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->tableIndex:I

    const/16 v3, 0x1ff

    if-ne v2, v3, :cond_1

    .line 182
    const/16 v2, 0xa

    iput v2, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->bitsToGet:I

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget v2, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->tableIndex:I

    const/16 v3, 0x3ff

    if-ne v2, v3, :cond_2

    .line 184
    const/16 v2, 0xb

    iput v2, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->bitsToGet:I

    goto :goto_0

    .line 185
    :cond_2
    iget v2, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->tableIndex:I

    const/16 v3, 0x7ff

    if-ne v2, v3, :cond_0

    .line 186
    const/16 v2, 0xc

    iput v2, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->bitsToGet:I

    goto :goto_0
.end method

.method public composeString([BB)[B
    .locals 4
    .parameter "oldString"
    .parameter "newString"

    .prologue
    const/4 v3, 0x0

    .line 211
    array-length v0, p1

    .line 212
    .local v0, length:I
    add-int/lit8 v2, v0, 0x1

    new-array v1, v2, [B

    .line 213
    .local v1, string:[B
    invoke-static {p1, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    aput-byte p2, v1, v0

    .line 216
    return-object v1
.end method

.method public decode([BLjava/io/OutputStream;)V
    .locals 7
    .parameter "data"
    .parameter "uncompData"

    .prologue
    const/16 v6, 0x101

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 85
    aget-byte v3, p1, v5

    if-nez v3, :cond_0

    aget-byte v3, p1, v4

    if-ne v3, v4, :cond_0

    .line 86
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "lzw.flavour.not.supported"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/LZWDecoder;->initializeStringTable()V

    .line 91
    iput-object p1, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->data:[B

    .line 92
    iput-object p2, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->uncompData:Ljava/io/OutputStream;

    .line 95
    iput v5, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->bytePointer:I

    .line 96
    iput v5, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->bitPointer:I

    .line 98
    iput v5, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->nextData:I

    .line 99
    iput v5, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->nextBits:I

    .line 101
    const/4 v1, 0x0

    .line 104
    .local v1, oldCode:I
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/LZWDecoder;->getNextCode()I

    move-result v0

    .local v0, code:I
    if-eq v0, v6, :cond_1

    .line 106
    const/16 v3, 0x100

    if-ne v0, v3, :cond_3

    .line 108
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/LZWDecoder;->initializeStringTable()V

    .line 109
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/LZWDecoder;->getNextCode()I

    move-result v0

    .line 111
    if-ne v0, v6, :cond_2

    .line 138
    :cond_1
    return-void

    .line 115
    :cond_2
    iget-object v3, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->stringTable:[[B

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Lcom/itextpdf/text/pdf/LZWDecoder;->writeString([B)V

    .line 116
    move v1, v0

    goto :goto_0

    .line 120
    :cond_3
    iget v3, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->tableIndex:I

    if-ge v0, v3, :cond_4

    .line 122
    iget-object v3, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->stringTable:[[B

    aget-object v2, v3, v0

    .line 124
    .local v2, string:[B
    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/LZWDecoder;->writeString([B)V

    .line 125
    iget-object v3, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->stringTable:[[B

    aget-object v3, v3, v1

    aget-byte v4, v2, v5

    invoke-virtual {p0, v3, v4}, Lcom/itextpdf/text/pdf/LZWDecoder;->addStringToTable([BB)V

    .line 126
    move v1, v0

    goto :goto_0

    .line 130
    .end local v2           #string:[B
    :cond_4
    iget-object v3, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->stringTable:[[B

    aget-object v2, v3, v1

    .line 131
    .restart local v2       #string:[B
    aget-byte v3, v2, v5

    invoke-virtual {p0, v2, v3}, Lcom/itextpdf/text/pdf/LZWDecoder;->composeString([BB)[B

    move-result-object v2

    .line 132
    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/LZWDecoder;->writeString([B)V

    .line 133
    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/LZWDecoder;->addStringToTable([B)V

    .line 134
    move v1, v0

    goto :goto_0
.end method

.method public getNextCode()I
    .locals 6

    .prologue
    .line 226
    :try_start_0
    iget v2, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->nextData:I

    shl-int/lit8 v2, v2, 0x8

    iget-object v3, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->data:[B

    iget v4, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->bytePointer:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->bytePointer:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    iput v2, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->nextData:I

    .line 227
    iget v2, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->nextBits:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->nextBits:I

    .line 229
    iget v2, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->nextBits:I

    iget v3, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->bitsToGet:I

    if-ge v2, v3, :cond_0

    .line 230
    iget v2, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->nextData:I

    shl-int/lit8 v2, v2, 0x8

    iget-object v3, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->data:[B

    iget v4, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->bytePointer:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->bytePointer:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    iput v2, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->nextData:I

    .line 231
    iget v2, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->nextBits:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->nextBits:I

    .line 234
    :cond_0
    iget v2, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->nextData:I

    iget v3, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->nextBits:I

    iget v4, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->bitsToGet:I

    sub-int/2addr v3, v4

    shr-int/2addr v2, v3

    iget-object v3, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->andTable:[I

    iget v4, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->bitsToGet:I

    add-int/lit8 v4, v4, -0x9

    aget v3, v3, v4

    and-int v0, v2, v3

    .line 236
    .local v0, code:I
    iget v2, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->nextBits:I

    iget v3, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->bitsToGet:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->nextBits:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .end local v0           #code:I
    :goto_0
    return v0

    .line 239
    :catch_0
    move-exception v1

    .line 241
    .local v1, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const/16 v0, 0x101

    goto :goto_0
.end method

.method public initializeStringTable()V
    .locals 4

    .prologue
    .line 146
    const/16 v1, 0x2000

    new-array v1, v1, [[B

    iput-object v1, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->stringTable:[[B

    .line 148
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->stringTable:[[B

    const/4 v2, 0x1

    new-array v2, v2, [B

    aput-object v2, v1, v0

    .line 150
    iget-object v1, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->stringTable:[[B

    aget-object v1, v1, v0

    const/4 v2, 0x0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_0
    const/16 v1, 0x102

    iput v1, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->tableIndex:I

    .line 154
    const/16 v1, 0x9

    iput v1, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->bitsToGet:I

    .line 155
    return-void
.end method

.method public writeString([B)V
    .locals 2
    .parameter "string"

    .prologue
    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/LZWDecoder;->uncompData:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method
