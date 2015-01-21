.class public Lcom/mediatek/ngin3d/Point;
.super Ljava/lang/Object;
.source "Point.java"


# instance fields
.field public isNormalized:Z

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 89
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/mediatek/ngin3d/Point;-><init>(FFFZ)V

    .line 90
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mediatek/ngin3d/Point;-><init>(FFFZ)V

    .line 112
    return-void
.end method

.method public constructor <init>(FFFZ)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "isNormalized"

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput p1, p0, Lcom/mediatek/ngin3d/Point;->x:F

    .line 126
    iput p2, p0, Lcom/mediatek/ngin3d/Point;->y:F

    .line 127
    iput p3, p0, Lcom/mediatek/ngin3d/Point;->z:F

    .line 128
    iput-boolean p4, p0, Lcom/mediatek/ngin3d/Point;->isNormalized:Z

    .line 129
    return-void
.end method

.method public constructor <init>(FFZ)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "isNormalized"

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/mediatek/ngin3d/Point;-><init>(FFFZ)V

    .line 101
    return-void
.end method

.method public constructor <init>(FLcom/mediatek/ngin3d/Point;)V
    .locals 4
    .parameter "a"
    .parameter "other"

    .prologue
    .line 148
    iget v0, p2, Lcom/mediatek/ngin3d/Point;->x:F

    mul-float/2addr v0, p1

    iget v1, p2, Lcom/mediatek/ngin3d/Point;->y:F

    mul-float/2addr v1, p1

    iget v2, p2, Lcom/mediatek/ngin3d/Point;->z:F

    mul-float/2addr v2, p1

    iget-boolean v3, p2, Lcom/mediatek/ngin3d/Point;->isNormalized:Z

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Point;-><init>(FFFZ)V

    .line 149
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/ngin3d/Point;)V
    .locals 4
    .parameter "other"

    .prologue
    .line 137
    iget v0, p1, Lcom/mediatek/ngin3d/Point;->x:F

    iget v1, p1, Lcom/mediatek/ngin3d/Point;->y:F

    iget v2, p1, Lcom/mediatek/ngin3d/Point;->z:F

    iget-boolean v3, p1, Lcom/mediatek/ngin3d/Point;->isNormalized:Z

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Point;-><init>(FFFZ)V

    .line 138
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "isNormalized"

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, v0, v0, v0, p1}, Lcom/mediatek/ngin3d/Point;-><init>(FFFZ)V

    .line 80
    return-void
.end method

.method public static distance(Lcom/mediatek/ngin3d/Point;Lcom/mediatek/ngin3d/Point;)F
    .locals 5
    .parameter "v1"
    .parameter "v2"

    .prologue
    .line 281
    iget v3, p1, Lcom/mediatek/ngin3d/Point;->x:F

    iget v4, p0, Lcom/mediatek/ngin3d/Point;->x:F

    sub-float v0, v3, v4

    .line 282
    .local v0, dx:F
    iget v3, p1, Lcom/mediatek/ngin3d/Point;->y:F

    iget v4, p0, Lcom/mediatek/ngin3d/Point;->y:F

    sub-float v1, v3, v4

    .line 283
    .local v1, dy:F
    iget v3, p1, Lcom/mediatek/ngin3d/Point;->z:F

    iget v4, p0, Lcom/mediatek/ngin3d/Point;->z:F

    sub-float v2, v3, v4

    .line 284
    .local v2, dz:F
    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    return v3
.end method

.method public static newFromString(Ljava/lang/String;)Lcom/mediatek/ngin3d/Point;
    .locals 5
    .parameter "positionString"

    .prologue
    .line 339
    invoke-static {p0}, Lcom/mediatek/ngin3d/Utils;->parseStringToFloat(Ljava/lang/String;)[F

    move-result-object v0

    .line 340
    .local v0, xyz:[F
    new-instance v1, Lcom/mediatek/ngin3d/Point;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    invoke-direct {v1, v2, v3, v4}, Lcom/mediatek/ngin3d/Point;-><init>(FFF)V

    return-object v1
.end method


# virtual methods
.method public add(FLcom/mediatek/ngin3d/Point;)Lcom/mediatek/ngin3d/Point;
    .locals 5
    .parameter "factor"
    .parameter "v"

    .prologue
    .line 239
    new-instance v0, Lcom/mediatek/ngin3d/Point;

    iget v1, p0, Lcom/mediatek/ngin3d/Point;->x:F

    iget v2, p2, Lcom/mediatek/ngin3d/Point;->x:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iget v2, p0, Lcom/mediatek/ngin3d/Point;->y:F

    iget v3, p2, Lcom/mediatek/ngin3d/Point;->y:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/mediatek/ngin3d/Point;->z:F

    iget v4, p2, Lcom/mediatek/ngin3d/Point;->z:F

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Point;-><init>(FFF)V

    return-object v0
.end method

.method public add(Lcom/mediatek/ngin3d/Point;)Lcom/mediatek/ngin3d/Point;
    .locals 5
    .parameter "v"

    .prologue
    .line 228
    new-instance v0, Lcom/mediatek/ngin3d/Point;

    iget v1, p0, Lcom/mediatek/ngin3d/Point;->x:F

    iget v2, p1, Lcom/mediatek/ngin3d/Point;->x:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/mediatek/ngin3d/Point;->y:F

    iget v3, p1, Lcom/mediatek/ngin3d/Point;->y:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/mediatek/ngin3d/Point;->z:F

    iget v4, p1, Lcom/mediatek/ngin3d/Point;->z:F

    add-float/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Point;-><init>(FFF)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 293
    if-ne p0, p1, :cond_1

    .line 303
    :cond_0
    :goto_0
    return v1

    .line 294
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 296
    check-cast v0, Lcom/mediatek/ngin3d/Point;

    .line 298
    .local v0, point:Lcom/mediatek/ngin3d/Point;
    iget-boolean v3, p0, Lcom/mediatek/ngin3d/Point;->isNormalized:Z

    iget-boolean v4, v0, Lcom/mediatek/ngin3d/Point;->isNormalized:Z

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 299
    :cond_4
    iget v3, v0, Lcom/mediatek/ngin3d/Point;->x:F

    iget v4, p0, Lcom/mediatek/ngin3d/Point;->x:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 300
    :cond_5
    iget v3, v0, Lcom/mediatek/ngin3d/Point;->y:F

    iget v4, p0, Lcom/mediatek/ngin3d/Point;->y:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_6

    move v1, v2

    goto :goto_0

    .line 301
    :cond_6
    iget v3, v0, Lcom/mediatek/ngin3d/Point;->z:F

    iget v4, p0, Lcom/mediatek/ngin3d/Point;->z:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 311
    iget v2, p0, Lcom/mediatek/ngin3d/Point;->x:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_1

    move v0, v1

    .line 312
    .local v0, result:I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget v2, p0, Lcom/mediatek/ngin3d/Point;->y:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_2

    move v2, v1

    :goto_1
    add-int v0, v3, v2

    .line 313
    mul-int/lit8 v3, v0, 0x1f

    iget v2, p0, Lcom/mediatek/ngin3d/Point;->z:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_3

    move v2, v1

    :goto_2
    add-int v0, v3, v2

    .line 314
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v3, p0, Lcom/mediatek/ngin3d/Point;->isNormalized:Z

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int v0, v2, v1

    .line 315
    return v0

    .line 311
    .end local v0           #result:I
    :cond_1
    iget v2, p0, Lcom/mediatek/ngin3d/Point;->x:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_0

    .line 312
    .restart local v0       #result:I
    :cond_2
    iget v2, p0, Lcom/mediatek/ngin3d/Point;->y:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto :goto_1

    .line 313
    :cond_3
    iget v2, p0, Lcom/mediatek/ngin3d/Point;->z:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto :goto_2
.end method

.method public multiply(F)Lcom/mediatek/ngin3d/Point;
    .locals 4
    .parameter "a"

    .prologue
    .line 270
    new-instance v0, Lcom/mediatek/ngin3d/Point;

    iget v1, p0, Lcom/mediatek/ngin3d/Point;->x:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/mediatek/ngin3d/Point;->y:F

    mul-float/2addr v2, p1

    iget v3, p0, Lcom/mediatek/ngin3d/Point;->z:F

    mul-float/2addr v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Point;-><init>(FFF)V

    return-object v0
.end method

.method public set(FF)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 159
    iget v0, p0, Lcom/mediatek/ngin3d/Point;->z:F

    iget-boolean v1, p0, Lcom/mediatek/ngin3d/Point;->isNormalized:Z

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/mediatek/ngin3d/Point;->set(FFFZ)V

    .line 160
    return-void
.end method

.method public set(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/mediatek/ngin3d/Point;->isNormalized:Z

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mediatek/ngin3d/Point;->set(FFFZ)V

    .line 184
    return-void
.end method

.method public set(FFFZ)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "isNormalized"

    .prologue
    .line 195
    iput p1, p0, Lcom/mediatek/ngin3d/Point;->x:F

    .line 196
    iput p2, p0, Lcom/mediatek/ngin3d/Point;->y:F

    .line 197
    iput p3, p0, Lcom/mediatek/ngin3d/Point;->z:F

    .line 198
    iput-boolean p4, p0, Lcom/mediatek/ngin3d/Point;->isNormalized:Z

    .line 199
    return-void
.end method

.method public set(FFZ)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "isNormalized"

    .prologue
    .line 171
    iget v0, p0, Lcom/mediatek/ngin3d/Point;->z:F

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/mediatek/ngin3d/Point;->set(FFFZ)V

    .line 172
    return-void
.end method

.method public set(FLcom/mediatek/ngin3d/Point;)V
    .locals 4
    .parameter "a"
    .parameter "other"

    .prologue
    .line 218
    iget v0, p2, Lcom/mediatek/ngin3d/Point;->x:F

    mul-float/2addr v0, p1

    iget v1, p2, Lcom/mediatek/ngin3d/Point;->y:F

    mul-float/2addr v1, p1

    iget v2, p2, Lcom/mediatek/ngin3d/Point;->z:F

    mul-float/2addr v2, p1

    iget-boolean v3, p2, Lcom/mediatek/ngin3d/Point;->isNormalized:Z

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Point;->set(FFFZ)V

    .line 219
    return-void
.end method

.method public set(Lcom/mediatek/ngin3d/Point;)V
    .locals 4
    .parameter "other"

    .prologue
    .line 207
    iget v0, p1, Lcom/mediatek/ngin3d/Point;->x:F

    iget v1, p1, Lcom/mediatek/ngin3d/Point;->y:F

    iget v2, p1, Lcom/mediatek/ngin3d/Point;->z:F

    iget-boolean v3, p1, Lcom/mediatek/ngin3d/Point;->isNormalized:Z

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Point;->set(FFFZ)V

    .line 208
    return-void
.end method

.method public subtract(FLcom/mediatek/ngin3d/Point;)Lcom/mediatek/ngin3d/Point;
    .locals 5
    .parameter "factor"
    .parameter "v"

    .prologue
    .line 260
    new-instance v0, Lcom/mediatek/ngin3d/Point;

    iget v1, p0, Lcom/mediatek/ngin3d/Point;->x:F

    iget v2, p2, Lcom/mediatek/ngin3d/Point;->x:F

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/mediatek/ngin3d/Point;->y:F

    iget v3, p2, Lcom/mediatek/ngin3d/Point;->y:F

    mul-float/2addr v3, p1

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/mediatek/ngin3d/Point;->z:F

    iget v4, p2, Lcom/mediatek/ngin3d/Point;->z:F

    mul-float/2addr v4, p1

    sub-float/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Point;-><init>(FFF)V

    return-object v0
.end method

.method public subtract(Lcom/mediatek/ngin3d/Point;)Lcom/mediatek/ngin3d/Point;
    .locals 5
    .parameter "v"

    .prologue
    .line 249
    new-instance v0, Lcom/mediatek/ngin3d/Point;

    iget v1, p0, Lcom/mediatek/ngin3d/Point;->x:F

    iget v2, p1, Lcom/mediatek/ngin3d/Point;->x:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/mediatek/ngin3d/Point;->y:F

    iget v3, p1, Lcom/mediatek/ngin3d/Point;->y:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/mediatek/ngin3d/Point;->z:F

    iget v4, p1, Lcom/mediatek/ngin3d/Point;->z:F

    sub-float/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Point;-><init>(FFF)V

    return-object v0
.end method

.method public toJson()Ljava/lang/String;
    .locals 2

    .prologue
    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{Point:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ngin3d/Point;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ngin3d/Point;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ngin3d/Point;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], isNormalized : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/ngin3d/Point;->isNormalized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Point:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ngin3d/Point;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ngin3d/Point;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ngin3d/Point;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], isNormalized : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/ngin3d/Point;->isNormalized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
