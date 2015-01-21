.class public final Lcom/itextpdf/text/pdf/qrcode/BitVector;
.super Ljava/lang/Object;
.source "BitVector.java"


# static fields
.field private static final DEFAULT_SIZE_IN_BYTES:I = 0x20


# instance fields
.field private array:[B

.field private sizeInBits:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/pdf/qrcode/BitVector;->sizeInBits:I

    .line 38
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/text/pdf/qrcode/BitVector;->array:[B

    .line 39
    return-void
.end method

.method private appendByte(I)V
    .locals 4
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 147
    iget v1, p0, Lcom/itextpdf/text/pdf/qrcode/BitVector;->sizeInBits:I

    shr-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Lcom/itextpdf/text/pdf/qrcode/BitVector;->array:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 148
    iget-object v1, p0, Lcom/itextpdf/text/pdf/qrcode/BitVector;->array:[B

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    new-array v0, v1, [B

    .line 149
    .local v0, newArray:[B
    iget-object v1, p0, Lcom/itextpdf/text/pdf/qrcode/BitVector;->array:[B

    iget-object v2, p0, Lcom/itextpdf/text/pdf/qrcode/BitVector;->array:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    iput-object v0, p0, Lcom/itextpdf/text/pdf/qrcode/BitVector;->array:[B

    .line 152
    .end local v0           #newArray:[B
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/qrcode/BitVector;->array:[B

    iget v2, p0, Lcom/itextpdf/text/pdf/qrcode/BitVector;->sizeInBits:I

    shr-int/lit8 v2, v2, 0x3

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 153
    iget v1, p0, Lcom/itextpdf/text/pdf/qrcode/BitVector;->sizeInBits:I

    add-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/itextpdf/text/pdf/qrcode/BitVector;->sizeInBits:I

    .line 154
    return-void
.end method


# virtual methods
.method public appendBit(I)V
    .locals 5
    .parameter "bit"

    .prologue
    .line 62
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 63
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bad bit"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    :cond_0
    iget v1, p0, Lcom/itextpdf/text/pdf/qrcode/BitVector;->sizeInBits:I

    and-int/lit8 v0, v1, 0x7

    .line 67
    .local v0, numBitsInLastByte:I
    if-nez v0, :cond_1

    .line 68
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->appendByte(I)V

    .line 69
    iget v1, p0, Lcom/itextpdf/text/pdf/qrcode/BitVector;->sizeInBits:I

    add-int/lit8 v1, v1, -0x8

    iput v1, p0, Lcom/itextpdf/text/pdf/qrcode/BitVector;->sizeInBits:I

    .line 72
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/qrcode/BitVector;->array:[B

    iget v2, p0, Lcom/itextpdf/text/pdf/qrcode/BitVector;->sizeInBits:I

    shr-int/lit8 v2, v2, 0x3

    aget-byte v3, v1, v2

    rsub-int/lit8 v4, v0, 0x7

    shl-int v4, p1, v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 73
    iget v1, p0, Lcom/itextpdf/text/pdf/qrcode/BitVector;->sizeInBits:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/itextpdf/text/pdf/qrcode/BitVector;->sizeInBits:I

    .line 74
    return-void
.end method

.method public appendBitVector(Lcom/itextpdf/text/pdf/qrcode/BitVector;)V
    .locals 3
    .parameter "bits"

    .prologue
    .line 104
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->size()I

    move-result v1

    .line 105
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 106
    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->at(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->appendBit(I)V

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_0
    return-void
.end method

.method public appendBits(II)V
    .locals 5
    .parameter "value"
    .parameter "numBits"

    .prologue
    .line 84
    if-ltz p2, :cond_0

    const/16 v3, 0x20

    if-le p2, v3, :cond_1

    .line 85
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Num bits must be between 0 and 32"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 87
    :cond_1
    move v2, p2

    .line 88
    .local v2, numBitsLeft:I
    :goto_0
    if-lez v2, :cond_3

    .line 90
    iget v3, p0, Lcom/itextpdf/text/pdf/qrcode/BitVector;->sizeInBits:I

    and-int/lit8 v3, v3, 0x7

    if-nez v3, :cond_2

    const/16 v3, 0x8

    if-lt v2, v3, :cond_2

    .line 91
    add-int/lit8 v3, v2, -0x8

    shr-int v3, p1, v3

    and-int/lit16 v1, v3, 0xff

    .line 92
    .local v1, newByte:I
    invoke-direct {p0, v1}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->appendByte(I)V

    .line 93
    add-int/lit8 v2, v2, -0x8

    .line 94
    goto :goto_0

    .line 95
    .end local v1           #newByte:I
    :cond_2
    add-int/lit8 v3, v2, -0x1

    shr-int v3, p1, v3

    and-int/lit8 v0, v3, 0x1

    .line 96
    .local v0, bit:I
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->appendBit(I)V

    .line 97
    add-int/lit8 v2, v2, -0x1

    .line 98
    goto :goto_0

    .line 100
    .end local v0           #bit:I
    :cond_3
    return-void
.end method

.method public at(I)I
    .locals 4
    .parameter "index"

    .prologue
    .line 43
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/itextpdf/text/pdf/qrcode/BitVector;->sizeInBits:I

    if-lt p1, v1, :cond_1

    .line 44
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/qrcode/BitVector;->array:[B

    shr-int/lit8 v2, p1, 0x3

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 47
    .local v0, value:I
    and-int/lit8 v1, p1, 0x7

    rsub-int/lit8 v1, v1, 0x7

    shr-int v1, v0, v1

    and-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public getArray()[B
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/itextpdf/text/pdf/qrcode/BitVector;->array:[B

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/itextpdf/text/pdf/qrcode/BitVector;->sizeInBits:I

    return v0
.end method

.method public sizeInBytes()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/itextpdf/text/pdf/qrcode/BitVector;->sizeInBits:I

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 125
    new-instance v1, Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/itextpdf/text/pdf/qrcode/BitVector;->sizeInBits:I

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 126
    .local v1, result:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/itextpdf/text/pdf/qrcode/BitVector;->sizeInBits:I

    if-ge v0, v2, :cond_2

    .line 127
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->at(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 128
    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 126
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->at(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 130
    const/16 v2, 0x31

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 132
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Byte isn\'t 0 or 1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 135
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public xor(Lcom/itextpdf/text/pdf/qrcode/BitVector;)V
    .locals 5
    .parameter "other"

    .prologue
    .line 112
    iget v2, p0, Lcom/itextpdf/text/pdf/qrcode/BitVector;->sizeInBits:I

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/qrcode/BitVector;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 113
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "BitVector sizes don\'t match"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 115
    :cond_0
    iget v2, p0, Lcom/itextpdf/text/pdf/qrcode/BitVector;->sizeInBits:I

    add-int/lit8 v2, v2, 0x7

    shr-int/lit8 v1, v2, 0x3

    .line 116
    .local v1, sizeInBytes:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 119
    iget-object v2, p0, Lcom/itextpdf/text/pdf/qrcode/BitVector;->array:[B

    aget-byte v3, v2, v0

    iget-object v4, p1, Lcom/itextpdf/text/pdf/qrcode/BitVector;->array:[B

    aget-byte v4, v4, v0

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_1
    return-void
.end method
