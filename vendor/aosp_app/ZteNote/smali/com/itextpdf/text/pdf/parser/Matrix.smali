.class public Lcom/itextpdf/text/pdf/parser/Matrix;
.super Ljava/lang/Object;
.source "Matrix.java"


# static fields
.field public static final I11:I = 0x0

.field public static final I12:I = 0x1

.field public static final I13:I = 0x2

.field public static final I21:I = 0x3

.field public static final I22:I = 0x4

.field public static final I23:I = 0x5

.field public static final I31:I = 0x6

.field public static final I32:I = 0x7

.field public static final I33:I = 0x8


# instance fields
.field private final vals:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/16 v0, 0x9

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/parser/Matrix;->vals:[F

    .line 90
    return-void

    .line 80
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>(FF)V
    .locals 2
    .parameter "tx"
    .parameter "ty"

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/16 v0, 0x9

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/parser/Matrix;->vals:[F

    .line 98
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/Matrix;->vals:[F

    const/4 v1, 0x6

    aput p1, v0, v1

    .line 99
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/Matrix;->vals:[F

    const/4 v1, 0x7

    aput p2, v0, v1

    .line 100
    return-void

    .line 80
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>(FFFFFF)V
    .locals 3
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"
    .parameter "e"
    .parameter "f"

    .prologue
    const/4 v2, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/16 v0, 0x9

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/parser/Matrix;->vals:[F

    .line 112
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/Matrix;->vals:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 113
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/Matrix;->vals:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 114
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/Matrix;->vals:[F

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 115
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/Matrix;->vals:[F

    const/4 v1, 0x3

    aput p3, v0, v1

    .line 116
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/Matrix;->vals:[F

    const/4 v1, 0x4

    aput p4, v0, v1

    .line 117
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/Matrix;->vals:[F

    const/4 v1, 0x5

    aput v2, v0, v1

    .line 118
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/Matrix;->vals:[F

    const/4 v1, 0x6

    aput p5, v0, v1

    .line 119
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/Matrix;->vals:[F

    const/4 v1, 0x7

    aput p6, v0, v1

    .line 120
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/Matrix;->vals:[F

    const/16 v1, 0x8

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    .line 121
    return-void

    .line 80
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "obj"

    .prologue
    .line 213
    instance-of v0, p1, Lcom/itextpdf/text/pdf/parser/Matrix;

    if-nez v0, :cond_0

    .line 214
    const/4 v0, 0x0

    .line 216
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/Matrix;->vals:[F

    check-cast p1, Lcom/itextpdf/text/pdf/parser/Matrix;

    .end local p1
    iget-object v1, p1, Lcom/itextpdf/text/pdf/parser/Matrix;->vals:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    goto :goto_0
.end method

.method public get(I)F
    .locals 1
    .parameter "index"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/Matrix;->vals:[F

    aget v0, v0, p1

    return v0
.end method

.method public getDeterminant()F
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 198
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/Matrix;->vals:[F

    aget v0, v0, v4

    iget-object v1, p0, Lcom/itextpdf/text/pdf/parser/Matrix;->vals:[F

    aget v1, v1, v8

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/itextpdf/text/pdf/parser/Matrix;->vals:[F

    const/16 v2, 0x8

    aget v1, v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/itextpdf/text/pdf/parser/Matrix;->vals:[F

    aget v1, v1, v5

    iget-object v2, p0, Lcom/itextpdf/text/pdf/parser/Matrix;->vals:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/itextpdf/text/pdf/parser/Matrix;->vals:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/itextpdf/text/pdf/parser/Matrix;->vals:[F

    aget v1, v1, v6

    iget-object v2, p0, Lcom/itextpdf/text/pdf/parser/Matrix;->vals:[F

    aget v2, v2, v7

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/itextpdf/text/pdf/parser/Matrix;->vals:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/itextpdf/text/pdf/parser/Matrix;->vals:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/itextpdf/text/pdf/parser/Matrix;->vals:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/itextpdf/text/pdf/parser/Matrix;->vals:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/itextpdf/text/pdf/parser/Matrix;->vals:[F

    aget v1, v1, v5

    iget-object v2, p0, Lcom/itextpdf/text/pdf/parser/Matrix;->vals:[F

    aget v2, v2, v7

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/itextpdf/text/pdf/parser/Matrix;->vals:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/itextpdf/text/pdf/parser/Matrix;->vals:[F

    aget v1, v1, v6

    iget-object v2, p0, Lcom/itextpdf/text/pdf/parser/Matrix;->vals:[F

    aget v2, v2, v8

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/itextpdf/text/pdf/parser/Matrix;->vals:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 227
    const/4 v1, 0x1

    .line 228
    .local v1, result:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/parser/Matrix;->vals:[F

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 229
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/itextpdf/text/pdf/parser/Matrix;->vals:[F

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int v1, v2, v3

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    :cond_0
    return v1
.end method

.method public multiply(Lcom/itextpdf/text/pdf/parser/Matrix;)Lcom/itextpdf/text/pdf/parser/Matrix;
    .locals 13
    .parameter "by"

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 145
    new-instance v3, Lcom/itextpdf/text/pdf/parser/Matrix;

    invoke-direct {v3}, Lcom/itextpdf/text/pdf/parser/Matrix;-><init>()V

    .line 147
    .local v3, rslt:Lcom/itextpdf/text/pdf/parser/Matrix;
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/Matrix;->vals:[F

    .line 148
    .local v0, a:[F
    iget-object v1, p1, Lcom/itextpdf/text/pdf/parser/Matrix;->vals:[F

    .line 149
    .local v1, b:[F
    iget-object v2, v3, Lcom/itextpdf/text/pdf/parser/Matrix;->vals:[F

    .line 151
    .local v2, c:[F
    aget v4, v0, v8

    aget v5, v1, v8

    mul-float/2addr v4, v5

    aget v5, v0, v9

    aget v6, v1, v11

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aget v5, v0, v10

    const/4 v6, 0x6

    aget v6, v1, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aput v4, v2, v8

    .line 152
    aget v4, v0, v8

    aget v5, v1, v9

    mul-float/2addr v4, v5

    aget v5, v0, v9

    aget v6, v1, v12

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aget v5, v0, v10

    const/4 v6, 0x7

    aget v6, v1, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aput v4, v2, v9

    .line 153
    aget v4, v0, v8

    aget v5, v1, v10

    mul-float/2addr v4, v5

    aget v5, v0, v9

    const/4 v6, 0x5

    aget v6, v1, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aget v5, v0, v10

    const/16 v6, 0x8

    aget v6, v1, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aput v4, v2, v10

    .line 154
    aget v4, v0, v11

    aget v5, v1, v8

    mul-float/2addr v4, v5

    aget v5, v0, v12

    aget v6, v1, v11

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/4 v5, 0x5

    aget v5, v0, v5

    const/4 v6, 0x6

    aget v6, v1, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aput v4, v2, v11

    .line 155
    aget v4, v0, v11

    aget v5, v1, v9

    mul-float/2addr v4, v5

    aget v5, v0, v12

    aget v6, v1, v12

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/4 v5, 0x5

    aget v5, v0, v5

    const/4 v6, 0x7

    aget v6, v1, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aput v4, v2, v12

    .line 156
    const/4 v4, 0x5

    aget v5, v0, v11

    aget v6, v1, v10

    mul-float/2addr v5, v6

    aget v6, v0, v12

    const/4 v7, 0x5

    aget v7, v1, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    const/4 v6, 0x5

    aget v6, v0, v6

    const/16 v7, 0x8

    aget v7, v1, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    aput v5, v2, v4

    .line 157
    const/4 v4, 0x6

    const/4 v5, 0x6

    aget v5, v0, v5

    aget v6, v1, v8

    mul-float/2addr v5, v6

    const/4 v6, 0x7

    aget v6, v0, v6

    aget v7, v1, v11

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    const/16 v6, 0x8

    aget v6, v0, v6

    const/4 v7, 0x6

    aget v7, v1, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    aput v5, v2, v4

    .line 158
    const/4 v4, 0x7

    const/4 v5, 0x6

    aget v5, v0, v5

    aget v6, v1, v9

    mul-float/2addr v5, v6

    const/4 v6, 0x7

    aget v6, v0, v6

    aget v7, v1, v12

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    const/16 v6, 0x8

    aget v6, v0, v6

    const/4 v7, 0x7

    aget v7, v1, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    aput v5, v2, v4

    .line 159
    const/16 v4, 0x8

    const/4 v5, 0x6

    aget v5, v0, v5

    aget v6, v1, v10

    mul-float/2addr v5, v6

    const/4 v6, 0x7

    aget v6, v0, v6

    const/4 v7, 0x5

    aget v7, v1, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    const/16 v6, 0x8

    aget v6, v0, v6

    const/16 v7, 0x8

    aget v7, v1, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    aput v5, v2, v4

    .line 161
    return-object v3
.end method

.method public subtract(Lcom/itextpdf/text/pdf/parser/Matrix;)Lcom/itextpdf/text/pdf/parser/Matrix;
    .locals 11
    .parameter "arg"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 170
    new-instance v3, Lcom/itextpdf/text/pdf/parser/Matrix;

    invoke-direct {v3}, Lcom/itextpdf/text/pdf/parser/Matrix;-><init>()V

    .line 172
    .local v3, rslt:Lcom/itextpdf/text/pdf/parser/Matrix;
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/Matrix;->vals:[F

    .line 173
    .local v0, a:[F
    iget-object v1, p1, Lcom/itextpdf/text/pdf/parser/Matrix;->vals:[F

    .line 174
    .local v1, b:[F
    iget-object v2, v3, Lcom/itextpdf/text/pdf/parser/Matrix;->vals:[F

    .line 176
    .local v2, c:[F
    aget v4, v0, v6

    aget v5, v1, v6

    sub-float/2addr v4, v5

    aput v4, v2, v6

    .line 177
    aget v4, v0, v7

    aget v5, v1, v7

    sub-float/2addr v4, v5

    aput v4, v2, v7

    .line 178
    aget v4, v0, v8

    aget v5, v1, v8

    sub-float/2addr v4, v5

    aput v4, v2, v8

    .line 179
    aget v4, v0, v9

    aget v5, v1, v9

    sub-float/2addr v4, v5

    aput v4, v2, v9

    .line 180
    aget v4, v0, v10

    aget v5, v1, v10

    sub-float/2addr v4, v5

    aput v4, v2, v10

    .line 181
    const/4 v4, 0x5

    const/4 v5, 0x5

    aget v5, v0, v5

    const/4 v6, 0x5

    aget v6, v1, v6

    sub-float/2addr v5, v6

    aput v5, v2, v4

    .line 182
    const/4 v4, 0x6

    const/4 v5, 0x6

    aget v5, v0, v5

    const/4 v6, 0x6

    aget v6, v1, v6

    sub-float/2addr v5, v6

    aput v5, v2, v4

    .line 183
    const/4 v4, 0x7

    const/4 v5, 0x7

    aget v5, v0, v5

    const/4 v6, 0x7

    aget v6, v1, v6

    sub-float/2addr v5, v6

    aput v5, v2, v4

    .line 184
    const/16 v4, 0x8

    const/16 v5, 0x8

    aget v5, v0, v5

    const/16 v6, 0x8

    aget v6, v1, v6

    sub-float/2addr v5, v6

    aput v5, v2, v4

    .line 186
    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/itextpdf/text/pdf/parser/Matrix;->vals:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/text/pdf/parser/Matrix;->vals:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/text/pdf/parser/Matrix;->vals:[F

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/text/pdf/parser/Matrix;->vals:[F

    const/4 v2, 0x3

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/text/pdf/parser/Matrix;->vals:[F

    const/4 v2, 0x4

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/text/pdf/parser/Matrix;->vals:[F

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/text/pdf/parser/Matrix;->vals:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/text/pdf/parser/Matrix;->vals:[F

    const/4 v2, 0x7

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/text/pdf/parser/Matrix;->vals:[F

    const/16 v2, 0x8

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
