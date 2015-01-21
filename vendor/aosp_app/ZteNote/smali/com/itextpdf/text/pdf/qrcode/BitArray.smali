.class public final Lcom/itextpdf/text/pdf/qrcode/BitArray;
.super Ljava/lang/Object;
.source "BitArray.java"


# instance fields
.field public bits:[I

.field public final size:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter "size"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size must be at least 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    iput p1, p0, Lcom/itextpdf/text/pdf/qrcode/BitArray;->size:I

    .line 39
    invoke-static {p1}, Lcom/itextpdf/text/pdf/qrcode/BitArray;->makeArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/qrcode/BitArray;->bits:[I

    .line 40
    return-void
.end method

.method private static makeArray(I)[I
    .locals 2
    .parameter "size"

    .prologue
    .line 157
    shr-int/lit8 v0, p0, 0x5

    .line 158
    .local v0, arraySize:I
    and-int/lit8 v1, p0, 0x1f

    if-eqz v1, :cond_0

    .line 159
    add-int/lit8 v0, v0, 0x1

    .line 161
    :cond_0
    new-array v1, v0, [I

    return-object v1
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    .line 87
    iget-object v2, p0, Lcom/itextpdf/text/pdf/qrcode/BitArray;->bits:[I

    array-length v1, v2

    .line 88
    .local v1, max:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 89
    iget-object v2, p0, Lcom/itextpdf/text/pdf/qrcode/BitArray;->bits:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_0
    return-void
.end method

.method public flip(I)V
    .locals 5
    .parameter "i"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/itextpdf/text/pdf/qrcode/BitArray;->bits:[I

    shr-int/lit8 v1, p1, 0x5

    aget v2, v0, v1

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    xor-int/2addr v2, v3

    aput v2, v0, v1

    .line 70
    return-void
.end method

.method public get(I)Z
    .locals 3
    .parameter "i"

    .prologue
    const/4 v0, 0x1

    .line 51
    iget-object v1, p0, Lcom/itextpdf/text/pdf/qrcode/BitArray;->bits:[I

    shr-int/lit8 v2, p1, 0x5

    aget v1, v1, v2

    and-int/lit8 v2, p1, 0x1f

    shl-int v2, v0, v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBitArray()[I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/itextpdf/text/pdf/qrcode/BitArray;->bits:[I

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/itextpdf/text/pdf/qrcode/BitArray;->size:I

    return v0
.end method

.method public isRange(IIZ)Z
    .locals 11
    .parameter "start"
    .parameter "end"
    .parameter "value"

    .prologue
    const/16 v9, 0x1f

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 103
    if-ge p2, p1, :cond_0

    .line 104
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7

    .line 106
    :cond_0
    if-ne p2, p1, :cond_2

    .line 131
    :cond_1
    :goto_0
    return v7

    .line 109
    :cond_2
    add-int/lit8 p2, p2, -0x1

    .line 110
    shr-int/lit8 v1, p1, 0x5

    .line 111
    .local v1, firstInt:I
    shr-int/lit8 v5, p2, 0x5

    .line 112
    .local v5, lastInt:I
    move v2, v1

    .local v2, i:I
    :goto_1
    if-gt v2, v5, :cond_1

    .line 113
    if-le v2, v1, :cond_4

    move v0, v8

    .line 114
    .local v0, firstBit:I
    :goto_2
    if-ge v2, v5, :cond_5

    move v4, v9

    .line 116
    .local v4, lastBit:I
    :goto_3
    if-nez v0, :cond_6

    if-ne v4, v9, :cond_6

    .line 117
    const/4 v6, -0x1

    .line 127
    .local v6, mask:I
    :cond_3
    iget-object v10, p0, Lcom/itextpdf/text/pdf/qrcode/BitArray;->bits:[I

    aget v10, v10, v2

    and-int/2addr v10, v6

    if-eqz p3, :cond_7

    .end local v6           #mask:I
    :goto_4
    if-eq v10, v6, :cond_8

    move v7, v8

    .line 128
    goto :goto_0

    .line 113
    .end local v0           #firstBit:I
    .end local v4           #lastBit:I
    :cond_4
    and-int/lit8 v0, p1, 0x1f

    goto :goto_2

    .line 114
    .restart local v0       #firstBit:I
    :cond_5
    and-int/lit8 v4, p2, 0x1f

    goto :goto_3

    .line 119
    .restart local v4       #lastBit:I
    :cond_6
    const/4 v6, 0x0

    .line 120
    .restart local v6       #mask:I
    move v3, v0

    .local v3, j:I
    :goto_5
    if-gt v3, v4, :cond_3

    .line 121
    shl-int v10, v7, v3

    or-int/2addr v6, v10

    .line 120
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .end local v3           #j:I
    :cond_7
    move v6, v8

    .line 127
    goto :goto_4

    .line 112
    .end local v6           #mask:I
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public reverse()V
    .locals 7

    .prologue
    .line 146
    iget-object v3, p0, Lcom/itextpdf/text/pdf/qrcode/BitArray;->bits:[I

    array-length v3, v3

    new-array v1, v3, [I

    .line 147
    .local v1, newBits:[I
    iget v2, p0, Lcom/itextpdf/text/pdf/qrcode/BitArray;->size:I

    .line 148
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 149
    sub-int v3, v2, v0

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/itextpdf/text/pdf/qrcode/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 150
    shr-int/lit8 v3, v0, 0x5

    aget v4, v1, v3

    const/4 v5, 0x1

    and-int/lit8 v6, v0, 0x1f

    shl-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v1, v3

    .line 148
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_1
    iput-object v1, p0, Lcom/itextpdf/text/pdf/qrcode/BitArray;->bits:[I

    .line 154
    return-void
.end method

.method public set(I)V
    .locals 5
    .parameter "i"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/itextpdf/text/pdf/qrcode/BitArray;->bits:[I

    shr-int/lit8 v1, p1, 0x5

    aget v2, v0, v1

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 61
    return-void
.end method

.method public setBulk(II)V
    .locals 2
    .parameter "i"
    .parameter "newBits"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/itextpdf/text/pdf/qrcode/BitArray;->bits:[I

    shr-int/lit8 v1, p1, 0x5

    aput p2, v0, v1

    .line 81
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 165
    new-instance v1, Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/itextpdf/text/pdf/qrcode/BitArray;->size:I

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 166
    .local v1, result:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/itextpdf/text/pdf/qrcode/BitArray;->size:I

    if-ge v0, v2, :cond_2

    .line 167
    and-int/lit8 v2, v0, 0x7

    if-nez v2, :cond_0

    .line 168
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 170
    :cond_0
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/qrcode/BitArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x58

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    :cond_1
    const/16 v2, 0x2e

    goto :goto_1

    .line 172
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
