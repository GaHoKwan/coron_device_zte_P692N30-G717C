.class final Lcom/itextpdf/text/pdf/qrcode/GF256Poly;
.super Ljava/lang/Object;
.source "GF256Poly.java"


# instance fields
.field private final coefficients:[I

.field private final field:Lcom/itextpdf/text/pdf/qrcode/GF256;


# direct methods
.method constructor <init>(Lcom/itextpdf/text/pdf/qrcode/GF256;[I)V
    .locals 5
    .parameter "field"
    .parameter "coefficients"

    .prologue
    const/4 v4, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-eqz p2, :cond_0

    array-length v2, p2

    if-nez v2, :cond_1

    .line 45
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 47
    :cond_1
    iput-object p1, p0, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->field:Lcom/itextpdf/text/pdf/qrcode/GF256;

    .line 48
    array-length v0, p2

    .line 49
    .local v0, coefficientsLength:I
    const/4 v2, 0x1

    if-le v0, v2, :cond_4

    aget v2, p2, v4

    if-nez v2, :cond_4

    .line 51
    const/4 v1, 0x1

    .line 52
    .local v1, firstNonZero:I
    :goto_0
    if-ge v1, v0, :cond_2

    aget v2, p2, v1

    if-nez v2, :cond_2

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    :cond_2
    if-ne v1, v0, :cond_3

    .line 56
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/qrcode/GF256;->getZero()Lcom/itextpdf/text/pdf/qrcode/GF256Poly;

    move-result-object v2

    iget-object v2, v2, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->coefficients:[I

    iput-object v2, p0, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->coefficients:[I

    .line 68
    .end local v1           #firstNonZero:I
    :goto_1
    return-void

    .line 58
    .restart local v1       #firstNonZero:I
    :cond_3
    sub-int v2, v0, v1

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->coefficients:[I

    .line 59
    iget-object v2, p0, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->coefficients:[I

    iget-object v3, p0, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->coefficients:[I

    array-length v3, v3

    invoke-static {p2, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 66
    .end local v1           #firstNonZero:I
    :cond_4
    iput-object p2, p0, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->coefficients:[I

    goto :goto_1
.end method


# virtual methods
.method addOrSubtract(Lcom/itextpdf/text/pdf/qrcode/GF256Poly;)Lcom/itextpdf/text/pdf/qrcode/GF256Poly;
    .locals 9
    .parameter "other"

    .prologue
    const/4 v8, 0x0

    .line 120
    iget-object v6, p0, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->field:Lcom/itextpdf/text/pdf/qrcode/GF256;

    iget-object v7, p1, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->field:Lcom/itextpdf/text/pdf/qrcode/GF256;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 121
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "GF256Polys do not have same GF256 field"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->isZero()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 146
    .end local p1
    :goto_0
    return-object p1

    .line 126
    .restart local p1
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->isZero()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object p1, p0

    .line 127
    goto :goto_0

    .line 130
    :cond_2
    iget-object v3, p0, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->coefficients:[I

    .line 131
    .local v3, smallerCoefficients:[I
    iget-object v1, p1, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->coefficients:[I

    .line 132
    .local v1, largerCoefficients:[I
    array-length v6, v3

    array-length v7, v1

    if-le v6, v7, :cond_3

    .line 133
    move-object v5, v3

    .line 134
    .local v5, temp:[I
    move-object v3, v1

    .line 135
    move-object v1, v5

    .line 137
    .end local v5           #temp:[I
    :cond_3
    array-length v6, v1

    new-array v4, v6, [I

    .line 138
    .local v4, sumDiff:[I
    array-length v6, v1

    array-length v7, v3

    sub-int v2, v6, v7

    .line 140
    .local v2, lengthDiff:I
    invoke-static {v1, v8, v4, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    move v0, v2

    .local v0, i:I
    :goto_1
    array-length v6, v1

    if-ge v0, v6, :cond_4

    .line 143
    sub-int v6, v0, v2

    aget v6, v3, v6

    aget v7, v1, v0

    invoke-static {v6, v7}, Lcom/itextpdf/text/pdf/qrcode/GF256;->addOrSubtract(II)I

    move-result v6

    aput v6, v4, v0

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 146
    :cond_4
    new-instance p1, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;

    .end local p1
    iget-object v6, p0, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->field:Lcom/itextpdf/text/pdf/qrcode/GF256;

    invoke-direct {p1, v6, v4}, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;-><init>(Lcom/itextpdf/text/pdf/qrcode/GF256;[I)V

    goto :goto_0
.end method

.method divide(Lcom/itextpdf/text/pdf/qrcode/GF256Poly;)[Lcom/itextpdf/text/pdf/qrcode/GF256Poly;
    .locals 10
    .parameter "other"

    .prologue
    .line 202
    iget-object v8, p0, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->field:Lcom/itextpdf/text/pdf/qrcode/GF256;

    iget-object v9, p1, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->field:Lcom/itextpdf/text/pdf/qrcode/GF256;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 203
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "GF256Polys do not have same GF256 field"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 205
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->isZero()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 206
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Divide by 0"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 209
    :cond_1
    iget-object v8, p0, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->field:Lcom/itextpdf/text/pdf/qrcode/GF256;

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/qrcode/GF256;->getZero()Lcom/itextpdf/text/pdf/qrcode/GF256Poly;

    move-result-object v4

    .line 210
    .local v4, quotient:Lcom/itextpdf/text/pdf/qrcode/GF256Poly;
    move-object v5, p0

    .line 212
    .local v5, remainder:Lcom/itextpdf/text/pdf/qrcode/GF256Poly;
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->getDegree()I

    move-result v8

    invoke-virtual {p1, v8}, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->getCoefficient(I)I

    move-result v1

    .line 213
    .local v1, denominatorLeadingTerm:I
    iget-object v8, p0, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->field:Lcom/itextpdf/text/pdf/qrcode/GF256;

    invoke-virtual {v8, v1}, Lcom/itextpdf/text/pdf/qrcode/GF256;->inverse(I)I

    move-result v2

    .line 215
    .local v2, inverseDenominatorLeadingTerm:I
    :goto_0
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->getDegree()I

    move-result v8

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->getDegree()I

    move-result v9

    if-lt v8, v9, :cond_2

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->isZero()Z

    move-result v8

    if-nez v8, :cond_2

    .line 216
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->getDegree()I

    move-result v8

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->getDegree()I

    move-result v9

    sub-int v0, v8, v9

    .line 217
    .local v0, degreeDifference:I
    iget-object v8, p0, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->field:Lcom/itextpdf/text/pdf/qrcode/GF256;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->getDegree()I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->getCoefficient(I)I

    move-result v9

    invoke-virtual {v8, v9, v2}, Lcom/itextpdf/text/pdf/qrcode/GF256;->multiply(II)I

    move-result v6

    .line 218
    .local v6, scale:I
    invoke-virtual {p1, v0, v6}, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->multiplyByMonomial(II)Lcom/itextpdf/text/pdf/qrcode/GF256Poly;

    move-result-object v7

    .line 219
    .local v7, term:Lcom/itextpdf/text/pdf/qrcode/GF256Poly;
    iget-object v8, p0, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->field:Lcom/itextpdf/text/pdf/qrcode/GF256;

    invoke-virtual {v8, v0, v6}, Lcom/itextpdf/text/pdf/qrcode/GF256;->buildMonomial(II)Lcom/itextpdf/text/pdf/qrcode/GF256Poly;

    move-result-object v3

    .line 220
    .local v3, iterationQuotient:Lcom/itextpdf/text/pdf/qrcode/GF256Poly;
    invoke-virtual {v4, v3}, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->addOrSubtract(Lcom/itextpdf/text/pdf/qrcode/GF256Poly;)Lcom/itextpdf/text/pdf/qrcode/GF256Poly;

    move-result-object v4

    .line 221
    invoke-virtual {v5, v7}, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->addOrSubtract(Lcom/itextpdf/text/pdf/qrcode/GF256Poly;)Lcom/itextpdf/text/pdf/qrcode/GF256Poly;

    move-result-object v5

    .line 222
    goto :goto_0

    .line 224
    .end local v0           #degreeDifference:I
    .end local v3           #iterationQuotient:Lcom/itextpdf/text/pdf/qrcode/GF256Poly;
    .end local v6           #scale:I
    .end local v7           #term:Lcom/itextpdf/text/pdf/qrcode/GF256Poly;
    :cond_2
    const/4 v8, 0x2

    new-array v8, v8, [Lcom/itextpdf/text/pdf/qrcode/GF256Poly;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    const/4 v9, 0x1

    aput-object v5, v8, v9

    return-object v8
.end method

.method evaluateAt(I)I
    .locals 5
    .parameter "a"

    .prologue
    const/4 v4, 0x0

    .line 99
    if-nez p1, :cond_1

    .line 101
    invoke-virtual {p0, v4}, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->getCoefficient(I)I

    move-result v1

    .line 116
    :cond_0
    return v1

    .line 103
    :cond_1
    iget-object v3, p0, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->coefficients:[I

    array-length v2, v3

    .line 104
    .local v2, size:I
    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    .line 106
    const/4 v1, 0x0

    .line 107
    .local v1, result:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 108
    iget-object v3, p0, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->coefficients:[I

    aget v3, v3, v0

    invoke-static {v1, v3}, Lcom/itextpdf/text/pdf/qrcode/GF256;->addOrSubtract(II)I

    move-result v1

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    .end local v0           #i:I
    .end local v1           #result:I
    :cond_2
    iget-object v3, p0, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->coefficients:[I

    aget v1, v3, v4

    .line 113
    .restart local v1       #result:I
    const/4 v0, 0x1

    .restart local v0       #i:I
    :goto_1
    if-ge v0, v2, :cond_0

    .line 114
    iget-object v3, p0, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->field:Lcom/itextpdf/text/pdf/qrcode/GF256;

    invoke-virtual {v3, p1, v1}, Lcom/itextpdf/text/pdf/qrcode/GF256;->multiply(II)I

    move-result v3

    iget-object v4, p0, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->coefficients:[I

    aget v4, v4, v0

    invoke-static {v3, v4}, Lcom/itextpdf/text/pdf/qrcode/GF256;->addOrSubtract(II)I

    move-result v1

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method getCoefficient(I)I
    .locals 2
    .parameter "degree"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->coefficients:[I

    iget-object v1, p0, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->coefficients:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    aget v0, v0, v1

    return v0
.end method

.method getCoefficients()[I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->coefficients:[I

    return-object v0
.end method

.method getDegree()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->coefficients:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method isZero()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 85
    iget-object v1, p0, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->coefficients:[I

    aget v1, v1, v0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method multiply(I)Lcom/itextpdf/text/pdf/qrcode/GF256Poly;
    .locals 5
    .parameter "scalar"

    .prologue
    .line 172
    if-nez p1, :cond_1

    .line 173
    iget-object v3, p0, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->field:Lcom/itextpdf/text/pdf/qrcode/GF256;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/qrcode/GF256;->getZero()Lcom/itextpdf/text/pdf/qrcode/GF256Poly;

    move-result-object p0

    .line 183
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 175
    .restart local p0
    :cond_1
    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    .line 178
    iget-object v3, p0, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->coefficients:[I

    array-length v2, v3

    .line 179
    .local v2, size:I
    new-array v1, v2, [I

    .line 180
    .local v1, product:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 181
    iget-object v3, p0, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->field:Lcom/itextpdf/text/pdf/qrcode/GF256;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->coefficients:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4, p1}, Lcom/itextpdf/text/pdf/qrcode/GF256;->multiply(II)I

    move-result v3

    aput v3, v1, v0

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 183
    :cond_2
    new-instance v3, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->field:Lcom/itextpdf/text/pdf/qrcode/GF256;

    invoke-direct {v3, v4, v1}, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;-><init>(Lcom/itextpdf/text/pdf/qrcode/GF256;[I)V

    move-object p0, v3

    goto :goto_0
.end method

.method multiply(Lcom/itextpdf/text/pdf/qrcode/GF256Poly;)Lcom/itextpdf/text/pdf/qrcode/GF256Poly;
    .locals 12
    .parameter "other"

    .prologue
    .line 150
    iget-object v8, p0, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->field:Lcom/itextpdf/text/pdf/qrcode/GF256;

    iget-object v9, p1, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->field:Lcom/itextpdf/text/pdf/qrcode/GF256;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 151
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "GF256Polys do not have same GF256 field"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->isZero()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->isZero()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 154
    :cond_1
    iget-object v8, p0, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->field:Lcom/itextpdf/text/pdf/qrcode/GF256;

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/qrcode/GF256;->getZero()Lcom/itextpdf/text/pdf/qrcode/GF256Poly;

    move-result-object v8

    .line 168
    :goto_0
    return-object v8

    .line 156
    :cond_2
    iget-object v1, p0, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->coefficients:[I

    .line 157
    .local v1, aCoefficients:[I
    array-length v2, v1

    .line 158
    .local v2, aLength:I
    iget-object v3, p1, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->coefficients:[I

    .line 159
    .local v3, bCoefficients:[I
    array-length v4, v3

    .line 160
    .local v4, bLength:I
    add-int v8, v2, v4

    add-int/lit8 v8, v8, -0x1

    new-array v7, v8, [I

    .line 161
    .local v7, product:[I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v2, :cond_4

    .line 162
    aget v0, v1, v5

    .line 163
    .local v0, aCoeff:I
    const/4 v6, 0x0

    .local v6, j:I
    :goto_2
    if-ge v6, v4, :cond_3

    .line 164
    add-int v8, v5, v6

    add-int v9, v5, v6

    aget v9, v7, v9

    iget-object v10, p0, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->field:Lcom/itextpdf/text/pdf/qrcode/GF256;

    aget v11, v3, v6

    invoke-virtual {v10, v0, v11}, Lcom/itextpdf/text/pdf/qrcode/GF256;->multiply(II)I

    move-result v10

    invoke-static {v9, v10}, Lcom/itextpdf/text/pdf/qrcode/GF256;->addOrSubtract(II)I

    move-result v9

    aput v9, v7, v8

    .line 163
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 161
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 168
    .end local v0           #aCoeff:I
    .end local v6           #j:I
    :cond_4
    new-instance v8, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;

    iget-object v9, p0, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->field:Lcom/itextpdf/text/pdf/qrcode/GF256;

    invoke-direct {v8, v9, v7}, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;-><init>(Lcom/itextpdf/text/pdf/qrcode/GF256;[I)V

    goto :goto_0
.end method

.method multiplyByMonomial(II)Lcom/itextpdf/text/pdf/qrcode/GF256Poly;
    .locals 5
    .parameter "degree"
    .parameter "coefficient"

    .prologue
    .line 187
    if-gez p1, :cond_0

    .line 188
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 190
    :cond_0
    if-nez p2, :cond_1

    .line 191
    iget-object v3, p0, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->field:Lcom/itextpdf/text/pdf/qrcode/GF256;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/qrcode/GF256;->getZero()Lcom/itextpdf/text/pdf/qrcode/GF256Poly;

    move-result-object v3

    .line 198
    :goto_0
    return-object v3

    .line 193
    :cond_1
    iget-object v3, p0, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->coefficients:[I

    array-length v2, v3

    .line 194
    .local v2, size:I
    add-int v3, v2, p1

    new-array v1, v3, [I

    .line 195
    .local v1, product:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 196
    iget-object v3, p0, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->field:Lcom/itextpdf/text/pdf/qrcode/GF256;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->coefficients:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4, p2}, Lcom/itextpdf/text/pdf/qrcode/GF256;->multiply(II)I

    move-result v3

    aput v3, v1, v0

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 198
    :cond_2
    new-instance v3, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->field:Lcom/itextpdf/text/pdf/qrcode/GF256;

    invoke-direct {v3, v4, v1}, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;-><init>(Lcom/itextpdf/text/pdf/qrcode/GF256;[I)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 228
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->getDegree()I

    move-result v4

    mul-int/lit8 v4, v4, 0x8

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 229
    .local v3, result:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->getDegree()I

    move-result v2

    .local v2, degree:I
    :goto_0
    if-ltz v2, :cond_8

    .line 230
    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->getCoefficient(I)I

    move-result v1

    .line 231
    .local v1, coefficient:I
    if-eqz v1, :cond_3

    .line 232
    if-gez v1, :cond_4

    .line 233
    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    neg-int v1, v1

    .line 240
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    if-eq v1, v5, :cond_2

    .line 241
    :cond_1
    iget-object v4, p0, Lcom/itextpdf/text/pdf/qrcode/GF256Poly;->field:Lcom/itextpdf/text/pdf/qrcode/GF256;

    invoke-virtual {v4, v1}, Lcom/itextpdf/text/pdf/qrcode/GF256;->log(I)I

    move-result v0

    .line 242
    .local v0, alphaPower:I
    if-nez v0, :cond_5

    .line 243
    const/16 v4, 0x31

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 251
    .end local v0           #alphaPower:I
    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    .line 252
    if-ne v2, v5, :cond_7

    .line 253
    const/16 v4, 0x78

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 229
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 236
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 237
    const-string v4, " + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 244
    .restart local v0       #alphaPower:I
    :cond_5
    if-ne v0, v5, :cond_6

    .line 245
    const/16 v4, 0x61

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 247
    :cond_6
    const-string v4, "a^"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 248
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 255
    .end local v0           #alphaPower:I
    :cond_7
    const-string v4, "x^"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 256
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 261
    .end local v1           #coefficient:I
    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
