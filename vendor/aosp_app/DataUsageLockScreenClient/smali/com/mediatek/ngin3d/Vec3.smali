.class public Lcom/mediatek/ngin3d/Vec3;
.super Lcom/mediatek/ngin3d/Point;
.source "Vec3.java"


# static fields
.field public static final X_AXIS:Lcom/mediatek/ngin3d/Vec3;

.field public static final Y_AXIS:Lcom/mediatek/ngin3d/Vec3;

.field public static final Z_AXIS:Lcom/mediatek/ngin3d/Vec3;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 51
    new-instance v0, Lcom/mediatek/ngin3d/Vec3;

    invoke-direct {v0, v2, v1, v1}, Lcom/mediatek/ngin3d/Vec3;-><init>(FFF)V

    sput-object v0, Lcom/mediatek/ngin3d/Vec3;->X_AXIS:Lcom/mediatek/ngin3d/Vec3;

    .line 53
    new-instance v0, Lcom/mediatek/ngin3d/Vec3;

    invoke-direct {v0, v1, v2, v1}, Lcom/mediatek/ngin3d/Vec3;-><init>(FFF)V

    sput-object v0, Lcom/mediatek/ngin3d/Vec3;->Y_AXIS:Lcom/mediatek/ngin3d/Vec3;

    .line 55
    new-instance v0, Lcom/mediatek/ngin3d/Vec3;

    invoke-direct {v0, v1, v1, v2}, Lcom/mediatek/ngin3d/Vec3;-><init>(FFF)V

    sput-object v0, Lcom/mediatek/ngin3d/Vec3;->Z_AXIS:Lcom/mediatek/ngin3d/Vec3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/ngin3d/Point;-><init>()V

    .line 75
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/ngin3d/Point;-><init>(FFF)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/ngin3d/Point;)V
    .locals 0
    .parameter "other"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/mediatek/ngin3d/Point;-><init>(Lcom/mediatek/ngin3d/Point;)V

    .line 84
    return-void
.end method

.method public static angle(Lcom/mediatek/ngin3d/Vec3;Lcom/mediatek/ngin3d/Vec3;)F
    .locals 7
    .parameter "v1"
    .parameter "v2"

    .prologue
    const/4 v6, 0x0

    .line 201
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Vec3;->getLength()F

    move-result v4

    invoke-virtual {p1}, Lcom/mediatek/ngin3d/Vec3;->getLength()F

    move-result v5

    mul-float v1, v4, v5

    .line 202
    .local v1, normProduct:F
    cmpl-float v4, v1, v6

    if-nez v4, :cond_0

    .line 203
    new-instance v4, Lcom/mediatek/ngin3d/utils/Ngin3dException;

    const-string v5, "MathArithmeticException"

    invoke-direct {v4, v5}, Lcom/mediatek/ngin3d/utils/Ngin3dException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 206
    :cond_0
    invoke-static {p0, p1}, Lcom/mediatek/ngin3d/Vec3;->dotProduct(Lcom/mediatek/ngin3d/Vec3;Lcom/mediatek/ngin3d/Vec3;)F

    move-result v0

    .line 207
    .local v0, dot:F
    const v4, 0x3f7ff972

    mul-float v2, v1, v4

    .line 208
    .local v2, threshold:F
    neg-float v4, v2

    cmpg-float v4, v0, v4

    if-ltz v4, :cond_1

    cmpl-float v4, v0, v2

    if-lez v4, :cond_3

    .line 210
    :cond_1
    invoke-static {p0, p1}, Lcom/mediatek/ngin3d/Vec3;->crossProduct(Lcom/mediatek/ngin3d/Vec3;Lcom/mediatek/ngin3d/Vec3;)Lcom/mediatek/ngin3d/Vec3;

    move-result-object v3

    .line 211
    .local v3, v3:Lcom/mediatek/ngin3d/Vec3;
    cmpl-float v4, v0, v6

    if-ltz v4, :cond_2

    .line 212
    invoke-virtual {v3}, Lcom/mediatek/ngin3d/Vec3;->getLength()F

    move-result v4

    div-float/2addr v4, v1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 218
    .end local v3           #v3:Lcom/mediatek/ngin3d/Vec3;
    :goto_0
    return v4

    .line 214
    .restart local v3       #v3:Lcom/mediatek/ngin3d/Vec3;
    :cond_2
    const v4, 0x40490fdb

    invoke-virtual {v3}, Lcom/mediatek/ngin3d/Vec3;->getLength()F

    move-result v5

    div-float/2addr v5, v1

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->asin(D)D

    move-result-wide v5

    double-to-float v5, v5

    sub-float/2addr v4, v5

    goto :goto_0

    .line 218
    .end local v3           #v3:Lcom/mediatek/ngin3d/Vec3;
    :cond_3
    div-float v4, v0, v1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    double-to-float v4, v4

    goto :goto_0
.end method

.method public static crossProduct(Lcom/mediatek/ngin3d/Vec3;Lcom/mediatek/ngin3d/Vec3;)Lcom/mediatek/ngin3d/Vec3;
    .locals 6
    .parameter "v1"
    .parameter "v2"

    .prologue
    .line 181
    new-instance v0, Lcom/mediatek/ngin3d/Vec3;

    iget v1, p0, Lcom/mediatek/ngin3d/Point;->y:F

    iget v2, p1, Lcom/mediatek/ngin3d/Point;->z:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/mediatek/ngin3d/Point;->z:F

    iget v3, p1, Lcom/mediatek/ngin3d/Point;->y:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/mediatek/ngin3d/Point;->z:F

    iget v3, p1, Lcom/mediatek/ngin3d/Point;->x:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/mediatek/ngin3d/Point;->x:F

    iget v4, p1, Lcom/mediatek/ngin3d/Point;->z:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/mediatek/ngin3d/Point;->x:F

    iget v4, p1, Lcom/mediatek/ngin3d/Point;->y:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/mediatek/ngin3d/Point;->y:F

    iget v5, p1, Lcom/mediatek/ngin3d/Point;->x:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Vec3;-><init>(FFF)V

    return-object v0
.end method

.method public static dotProduct(Lcom/mediatek/ngin3d/Vec3;Lcom/mediatek/ngin3d/Vec3;)F
    .locals 3
    .parameter "v1"
    .parameter "v2"

    .prologue
    .line 170
    iget v0, p0, Lcom/mediatek/ngin3d/Point;->x:F

    iget v1, p1, Lcom/mediatek/ngin3d/Point;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/mediatek/ngin3d/Point;->y:F

    iget v2, p1, Lcom/mediatek/ngin3d/Point;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/mediatek/ngin3d/Point;->z:F

    iget v2, p1, Lcom/mediatek/ngin3d/Point;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public add(FLcom/mediatek/ngin3d/Vec3;)Lcom/mediatek/ngin3d/Vec3;
    .locals 5
    .parameter "factor"
    .parameter "v"

    .prologue
    .line 104
    new-instance v0, Lcom/mediatek/ngin3d/Vec3;

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

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Vec3;-><init>(FFF)V

    return-object v0
.end method

.method public add(Lcom/mediatek/ngin3d/Vec3;)Lcom/mediatek/ngin3d/Vec3;
    .locals 5
    .parameter "v"

    .prologue
    .line 93
    new-instance v0, Lcom/mediatek/ngin3d/Vec3;

    iget v1, p0, Lcom/mediatek/ngin3d/Point;->x:F

    iget v2, p1, Lcom/mediatek/ngin3d/Point;->x:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/mediatek/ngin3d/Point;->y:F

    iget v3, p1, Lcom/mediatek/ngin3d/Point;->y:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/mediatek/ngin3d/Point;->z:F

    iget v4, p1, Lcom/mediatek/ngin3d/Point;->z:F

    add-float/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Vec3;-><init>(FFF)V

    return-object v0
.end method

.method public getLength()F
    .locals 3

    .prologue
    .line 144
    iget v0, p0, Lcom/mediatek/ngin3d/Point;->x:F

    iget v1, p0, Lcom/mediatek/ngin3d/Point;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/mediatek/ngin3d/Point;->y:F

    iget v2, p0, Lcom/mediatek/ngin3d/Point;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/mediatek/ngin3d/Point;->z:F

    iget v2, p0, Lcom/mediatek/ngin3d/Point;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getNormalized()Lcom/mediatek/ngin3d/Vec3;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 153
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Vec3;->getLength()F

    move-result v0

    .line 154
    .local v0, len:F
    cmpl-float v1, v0, v2

    if-lez v1, :cond_0

    .line 155
    new-instance v1, Lcom/mediatek/ngin3d/Vec3;

    iget v2, p0, Lcom/mediatek/ngin3d/Point;->x:F

    div-float/2addr v2, v0

    iget v3, p0, Lcom/mediatek/ngin3d/Point;->y:F

    div-float/2addr v3, v0

    iget v4, p0, Lcom/mediatek/ngin3d/Point;->z:F

    div-float/2addr v4, v0

    invoke-direct {v1, v2, v3, v4}, Lcom/mediatek/ngin3d/Vec3;-><init>(FFF)V

    .line 157
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/mediatek/ngin3d/Vec3;

    invoke-direct {v1, v2, v2, v2}, Lcom/mediatek/ngin3d/Vec3;-><init>(FFF)V

    goto :goto_0
.end method

.method public getOrthogonal()Lcom/mediatek/ngin3d/Vec3;
    .locals 7

    .prologue
    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    .line 242
    const v2, 0x3f19999a

    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Vec3;->getLength()F

    move-result v3

    mul-float v1, v2, v3

    .line 243
    .local v1, threshold:F
    cmpl-float v2, v1, v6

    if-nez v2, :cond_0

    .line 244
    new-instance v2, Lcom/mediatek/ngin3d/utils/Ngin3dException;

    const-string v3, "MathArithmeticException"

    invoke-direct {v2, v3}, Lcom/mediatek/ngin3d/utils/Ngin3dException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 247
    :cond_0
    iget v2, p0, Lcom/mediatek/ngin3d/Point;->x:F

    neg-float v3, v1

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/mediatek/ngin3d/Point;->x:F

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_1

    .line 248
    iget v2, p0, Lcom/mediatek/ngin3d/Point;->y:F

    iget v3, p0, Lcom/mediatek/ngin3d/Point;->y:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/mediatek/ngin3d/Point;->z:F

    iget v4, p0, Lcom/mediatek/ngin3d/Point;->z:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    div-float v0, v5, v2

    .line 249
    .local v0, inverse:F
    new-instance v2, Lcom/mediatek/ngin3d/Vec3;

    iget v3, p0, Lcom/mediatek/ngin3d/Point;->z:F

    mul-float/2addr v3, v0

    neg-float v4, v0

    iget v5, p0, Lcom/mediatek/ngin3d/Point;->y:F

    mul-float/2addr v4, v5

    invoke-direct {v2, v6, v3, v4}, Lcom/mediatek/ngin3d/Vec3;-><init>(FFF)V

    .line 255
    :goto_0
    return-object v2

    .line 250
    .end local v0           #inverse:F
    :cond_1
    iget v2, p0, Lcom/mediatek/ngin3d/Point;->y:F

    neg-float v3, v1

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/mediatek/ngin3d/Point;->y:F

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_2

    .line 251
    iget v2, p0, Lcom/mediatek/ngin3d/Point;->x:F

    iget v3, p0, Lcom/mediatek/ngin3d/Point;->x:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/mediatek/ngin3d/Point;->z:F

    iget v4, p0, Lcom/mediatek/ngin3d/Point;->z:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    div-float v0, v5, v2

    .line 252
    .restart local v0       #inverse:F
    new-instance v2, Lcom/mediatek/ngin3d/Vec3;

    neg-float v3, v0

    iget v4, p0, Lcom/mediatek/ngin3d/Point;->z:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/mediatek/ngin3d/Point;->x:F

    mul-float/2addr v4, v0

    invoke-direct {v2, v3, v6, v4}, Lcom/mediatek/ngin3d/Vec3;-><init>(FFF)V

    goto :goto_0

    .line 254
    .end local v0           #inverse:F
    :cond_2
    iget v2, p0, Lcom/mediatek/ngin3d/Point;->x:F

    iget v3, p0, Lcom/mediatek/ngin3d/Point;->x:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/mediatek/ngin3d/Point;->y:F

    iget v4, p0, Lcom/mediatek/ngin3d/Point;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    div-float v0, v5, v2

    .line 255
    .restart local v0       #inverse:F
    new-instance v2, Lcom/mediatek/ngin3d/Vec3;

    iget v3, p0, Lcom/mediatek/ngin3d/Point;->y:F

    mul-float/2addr v3, v0

    neg-float v4, v0

    iget v5, p0, Lcom/mediatek/ngin3d/Point;->x:F

    mul-float/2addr v4, v5

    invoke-direct {v2, v3, v4, v6}, Lcom/mediatek/ngin3d/Vec3;-><init>(FFF)V

    goto :goto_0
.end method

.method public bridge synthetic multiply(F)Lcom/mediatek/ngin3d/Point;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/mediatek/ngin3d/Vec3;->multiply(F)Lcom/mediatek/ngin3d/Vec3;

    move-result-object v0

    return-object v0
.end method

.method public multiply(F)Lcom/mediatek/ngin3d/Vec3;
    .locals 4
    .parameter "a"

    .prologue
    .line 135
    new-instance v0, Lcom/mediatek/ngin3d/Vec3;

    iget v1, p0, Lcom/mediatek/ngin3d/Point;->x:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/mediatek/ngin3d/Point;->y:F

    mul-float/2addr v2, p1

    iget v3, p0, Lcom/mediatek/ngin3d/Point;->z:F

    mul-float/2addr v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Vec3;-><init>(FFF)V

    return-object v0
.end method

.method public subtract(FLcom/mediatek/ngin3d/Vec3;)Lcom/mediatek/ngin3d/Vec3;
    .locals 5
    .parameter "factor"
    .parameter "v"

    .prologue
    .line 125
    new-instance v0, Lcom/mediatek/ngin3d/Vec3;

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

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Vec3;-><init>(FFF)V

    return-object v0
.end method

.method public subtract(Lcom/mediatek/ngin3d/Vec3;)Lcom/mediatek/ngin3d/Vec3;
    .locals 5
    .parameter "v"

    .prologue
    .line 114
    new-instance v0, Lcom/mediatek/ngin3d/Vec3;

    iget v1, p0, Lcom/mediatek/ngin3d/Point;->x:F

    iget v2, p1, Lcom/mediatek/ngin3d/Point;->x:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/mediatek/ngin3d/Point;->y:F

    iget v3, p1, Lcom/mediatek/ngin3d/Point;->y:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/mediatek/ngin3d/Point;->z:F

    iget v4, p1, Lcom/mediatek/ngin3d/Point;->z:F

    sub-float/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Vec3;-><init>(FFF)V

    return-object v0
.end method
