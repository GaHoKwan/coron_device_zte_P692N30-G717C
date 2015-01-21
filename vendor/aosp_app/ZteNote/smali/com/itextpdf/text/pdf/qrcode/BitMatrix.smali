.class public final Lcom/itextpdf/text/pdf/qrcode/BitMatrix;
.super Ljava/lang/Object;
.source "BitMatrix.java"


# instance fields
.field public final bits:[I

.field public final height:I

.field public final rowSize:I

.field public final width:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "dimension"

    .prologue
    .line 45
    invoke-direct {p0, p1, p1}, Lcom/itextpdf/text/pdf/qrcode/BitMatrix;-><init>(II)V

    .line 46
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-lt p1, v1, :cond_0

    if-ge p2, v1, :cond_1

    .line 50
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Both dimensions must be greater than 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    :cond_1
    iput p1, p0, Lcom/itextpdf/text/pdf/qrcode/BitMatrix;->width:I

    .line 53
    iput p2, p0, Lcom/itextpdf/text/pdf/qrcode/BitMatrix;->height:I

    .line 54
    shr-int/lit8 v0, p1, 0x5

    .line 55
    .local v0, rowSize:I
    and-int/lit8 v1, p1, 0x1f

    if-eqz v1, :cond_2

    .line 56
    add-int/lit8 v0, v0, 0x1

    .line 58
    :cond_2
    iput v0, p0, Lcom/itextpdf/text/pdf/qrcode/BitMatrix;->rowSize:I

    .line 59
    mul-int v1, v0, p2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/itextpdf/text/pdf/qrcode/BitMatrix;->bits:[I

    .line 60
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    .line 100
    iget-object v2, p0, Lcom/itextpdf/text/pdf/qrcode/BitMatrix;->bits:[I

    array-length v1, v2

    .line 101
    .local v1, max:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 102
    iget-object v2, p0, Lcom/itextpdf/text/pdf/qrcode/BitMatrix;->bits:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_0
    return-void
.end method

.method public flip(II)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 92
    iget v1, p0, Lcom/itextpdf/text/pdf/qrcode/BitMatrix;->rowSize:I

    mul-int/2addr v1, p2

    shr-int/lit8 v2, p1, 0x5

    add-int v0, v1, v2

    .line 93
    .local v0, offset:I
    iget-object v1, p0, Lcom/itextpdf/text/pdf/qrcode/BitMatrix;->bits:[I

    aget v2, v1, v0

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    xor-int/2addr v2, v3

    aput v2, v1, v0

    .line 94
    return-void
.end method

.method public get(II)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 70
    iget v1, p0, Lcom/itextpdf/text/pdf/qrcode/BitMatrix;->rowSize:I

    mul-int/2addr v1, p2

    shr-int/lit8 v2, p1, 0x5

    add-int v0, v1, v2

    .line 71
    .local v0, offset:I
    iget-object v1, p0, Lcom/itextpdf/text/pdf/qrcode/BitMatrix;->bits:[I

    aget v1, v1, v0

    and-int/lit8 v2, p1, 0x1f

    ushr-int/2addr v1, v2

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDimension()I
    .locals 2

    .prologue
    .line 174
    iget v0, p0, Lcom/itextpdf/text/pdf/qrcode/BitMatrix;->width:I

    iget v1, p0, Lcom/itextpdf/text/pdf/qrcode/BitMatrix;->height:I

    if-eq v0, v1, :cond_0

    .line 175
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t call getDimension() on a non-square matrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_0
    iget v0, p0, Lcom/itextpdf/text/pdf/qrcode/BitMatrix;->width:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/itextpdf/text/pdf/qrcode/BitMatrix;->height:I

    return v0
.end method

.method public getRow(ILcom/itextpdf/text/pdf/qrcode/BitArray;)Lcom/itextpdf/text/pdf/qrcode/BitArray;
    .locals 5
    .parameter "y"
    .parameter "row"

    .prologue
    .line 143
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/qrcode/BitArray;->getSize()I

    move-result v2

    iget v3, p0, Lcom/itextpdf/text/pdf/qrcode/BitMatrix;->width:I

    if-ge v2, v3, :cond_1

    .line 144
    :cond_0
    new-instance p2, Lcom/itextpdf/text/pdf/qrcode/BitArray;

    .end local p2
    iget v2, p0, Lcom/itextpdf/text/pdf/qrcode/BitMatrix;->width:I

    invoke-direct {p2, v2}, Lcom/itextpdf/text/pdf/qrcode/BitArray;-><init>(I)V

    .line 146
    .restart local p2
    :cond_1
    iget v2, p0, Lcom/itextpdf/text/pdf/qrcode/BitMatrix;->rowSize:I

    mul-int v0, p1, v2

    .line 147
    .local v0, offset:I
    const/4 v1, 0x0

    .local v1, x:I
    :goto_0
    iget v2, p0, Lcom/itextpdf/text/pdf/qrcode/BitMatrix;->rowSize:I

    if-ge v1, v2, :cond_2

    .line 148
    shl-int/lit8 v2, v1, 0x5

    iget-object v3, p0, Lcom/itextpdf/text/pdf/qrcode/BitMatrix;->bits:[I

    add-int v4, v0, v1

    aget v3, v3, v4

    invoke-virtual {p2, v2, v3}, Lcom/itextpdf/text/pdf/qrcode/BitArray;->setBulk(II)V

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :cond_2
    return-object p2
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/itextpdf/text/pdf/qrcode/BitMatrix;->width:I

    return v0
.end method

.method public set(II)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 81
    iget v1, p0, Lcom/itextpdf/text/pdf/qrcode/BitMatrix;->rowSize:I

    mul-int/2addr v1, p2

    shr-int/lit8 v2, p1, 0x5

    add-int v0, v1, v2

    .line 82
    .local v0, offset:I
    iget-object v1, p0, Lcom/itextpdf/text/pdf/qrcode/BitMatrix;->bits:[I

    aget v2, v1, v0

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v1, v0

    .line 83
    return-void
.end method

.method public setRegion(IIII)V
    .locals 10
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v9, 0x1

    .line 115
    if-ltz p2, :cond_0

    if-gez p1, :cond_1

    .line 116
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Left and top must be nonnegative"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 118
    :cond_1
    if-lt p4, v9, :cond_2

    if-ge p3, v9, :cond_3

    .line 119
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Height and width must be at least 1"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 121
    :cond_3
    add-int v2, p1, p3

    .line 122
    .local v2, right:I
    add-int v0, p2, p4

    .line 123
    .local v0, bottom:I
    iget v5, p0, Lcom/itextpdf/text/pdf/qrcode/BitMatrix;->height:I

    if-gt v0, v5, :cond_4

    iget v5, p0, Lcom/itextpdf/text/pdf/qrcode/BitMatrix;->width:I

    if-le v2, v5, :cond_5

    .line 124
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The region must fit inside the matrix"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 126
    :cond_5
    move v4, p2

    .local v4, y:I
    :goto_0
    if-ge v4, v0, :cond_7

    .line 127
    iget v5, p0, Lcom/itextpdf/text/pdf/qrcode/BitMatrix;->rowSize:I

    mul-int v1, v4, v5

    .line 128
    .local v1, offset:I
    move v3, p1

    .local v3, x:I
    :goto_1
    if-ge v3, v2, :cond_6

    .line 129
    iget-object v5, p0, Lcom/itextpdf/text/pdf/qrcode/BitMatrix;->bits:[I

    shr-int/lit8 v6, v3, 0x5

    add-int/2addr v6, v1

    aget v7, v5, v6

    and-int/lit8 v8, v3, 0x1f

    shl-int v8, v9, v8

    or-int/2addr v7, v8

    aput v7, v5, v6

    .line 128
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 126
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 132
    .end local v1           #offset:I
    .end local v3           #x:I
    :cond_7
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 181
    new-instance v0, Ljava/lang/StringBuffer;

    iget v3, p0, Lcom/itextpdf/text/pdf/qrcode/BitMatrix;->height:I

    iget v4, p0, Lcom/itextpdf/text/pdf/qrcode/BitMatrix;->width:I

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v3, v4

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 182
    .local v0, result:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, y:I
    :goto_0
    iget v3, p0, Lcom/itextpdf/text/pdf/qrcode/BitMatrix;->height:I

    if-ge v2, v3, :cond_2

    .line 183
    const/4 v1, 0x0

    .local v1, x:I
    :goto_1
    iget v3, p0, Lcom/itextpdf/text/pdf/qrcode/BitMatrix;->width:I

    if-ge v1, v3, :cond_1

    .line 184
    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/text/pdf/qrcode/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "X "

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 184
    :cond_0
    const-string v3, "  "

    goto :goto_2

    .line 186
    :cond_1
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 182
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 188
    .end local v1           #x:I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
