.class public Lcom/mediatek/ngin3d/Quaternion;
.super Ljava/lang/Object;
.source "Quaternion.java"


# static fields
.field private static final NORMALIZATION_TOLERANCE:F = 1.0E-5f

.field private static final TAG:Ljava/lang/String; = "Quaternion"


# instance fields
.field private mQ0:F

.field private mQ1:F

.field private mQ2:F

.field private mQ3:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Quaternion;->idt()Lcom/mediatek/ngin3d/Quaternion;

    .line 89
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .parameter "q0"
    .parameter "q1"
    .parameter "q2"
    .parameter "q3"

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mediatek/ngin3d/Quaternion;->set(FFFF)Lcom/mediatek/ngin3d/Quaternion;

    .line 82
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/ngin3d/Quaternion;)V
    .locals 0
    .parameter "quaternion"

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-virtual {p0, p1}, Lcom/mediatek/ngin3d/Quaternion;->set(Lcom/mediatek/ngin3d/Quaternion;)Lcom/mediatek/ngin3d/Quaternion;

    .line 98
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/ngin3d/Vec3;F)V
    .locals 0
    .parameter "axis"
    .parameter "angle"

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/ngin3d/Quaternion;->set(Lcom/mediatek/ngin3d/Vec3;F)Lcom/mediatek/ngin3d/Quaternion;

    .line 108
    return-void
.end method


# virtual methods
.method public applyInverseTo(Lcom/mediatek/ngin3d/Vec3;)Lcom/mediatek/ngin3d/Vec3;
    .locals 12
    .parameter "u"

    .prologue
    const/high16 v11, 0x4000

    .line 579
    iget v1, p1, Lcom/mediatek/ngin3d/Point;->x:F

    .line 580
    .local v1, x:F
    iget v2, p1, Lcom/mediatek/ngin3d/Point;->y:F

    .line 581
    .local v2, y:F
    iget v3, p1, Lcom/mediatek/ngin3d/Point;->z:F

    .line 583
    .local v3, z:F
    iget v4, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ1:F

    mul-float/2addr v4, v1

    iget v5, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ2:F

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iget v5, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ3:F

    mul-float/2addr v5, v3

    add-float v0, v4, v5

    .line 585
    .local v0, s:F
    new-instance v4, Lcom/mediatek/ngin3d/Vec3;

    iget v5, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ0:F

    iget v6, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ0:F

    mul-float/2addr v6, v1

    iget v7, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ2:F

    mul-float/2addr v7, v3

    iget v8, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ3:F

    mul-float/2addr v8, v2

    sub-float/2addr v7, v8

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ1:F

    mul-float/2addr v6, v0

    add-float/2addr v5, v6

    mul-float/2addr v5, v11

    sub-float/2addr v5, v1

    iget v6, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ0:F

    iget v7, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ0:F

    mul-float/2addr v7, v2

    iget v8, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ3:F

    mul-float/2addr v8, v1

    iget v9, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ1:F

    mul-float/2addr v9, v3

    sub-float/2addr v8, v9

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ2:F

    mul-float/2addr v7, v0

    add-float/2addr v6, v7

    mul-float/2addr v6, v11

    sub-float/2addr v6, v2

    iget v7, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ0:F

    iget v8, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ0:F

    mul-float/2addr v8, v3

    iget v9, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ1:F

    mul-float/2addr v9, v2

    iget v10, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ2:F

    mul-float/2addr v10, v1

    sub-float/2addr v9, v10

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ3:F

    mul-float/2addr v8, v0

    add-float/2addr v7, v8

    mul-float/2addr v7, v11

    sub-float/2addr v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/mediatek/ngin3d/Vec3;-><init>(FFF)V

    return-object v4
.end method

.method public applyTo(Lcom/mediatek/ngin3d/Quaternion;)Lcom/mediatek/ngin3d/Quaternion;
    .locals 1
    .parameter "r"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 233
    invoke-virtual {p0, p1}, Lcom/mediatek/ngin3d/Quaternion;->multiply(Lcom/mediatek/ngin3d/Quaternion;)Lcom/mediatek/ngin3d/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public applyTo(Lcom/mediatek/ngin3d/Vec3;)Lcom/mediatek/ngin3d/Vec3;
    .locals 12
    .parameter "u"

    .prologue
    const/high16 v11, 0x4000

    .line 560
    iget v2, p1, Lcom/mediatek/ngin3d/Point;->x:F

    .line 561
    .local v2, x:F
    iget v3, p1, Lcom/mediatek/ngin3d/Point;->y:F

    .line 562
    .local v3, y:F
    iget v4, p1, Lcom/mediatek/ngin3d/Point;->z:F

    .line 564
    .local v4, z:F
    iget v5, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ1:F

    mul-float/2addr v5, v2

    iget v6, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ2:F

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    iget v6, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ3:F

    mul-float/2addr v6, v4

    add-float v1, v5, v6

    .line 565
    .local v1, s:F
    iget v5, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ0:F

    neg-float v0, v5

    .line 567
    .local v0, m0:F
    new-instance v5, Lcom/mediatek/ngin3d/Vec3;

    mul-float v6, v2, v0

    iget v7, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ2:F

    mul-float/2addr v7, v4

    iget v8, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ3:F

    mul-float/2addr v8, v3

    sub-float/2addr v7, v8

    sub-float/2addr v6, v7

    mul-float/2addr v6, v0

    iget v7, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ1:F

    mul-float/2addr v7, v1

    add-float/2addr v6, v7

    mul-float/2addr v6, v11

    sub-float/2addr v6, v2

    mul-float v7, v3, v0

    iget v8, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ3:F

    mul-float/2addr v8, v2

    iget v9, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ1:F

    mul-float/2addr v9, v4

    sub-float/2addr v8, v9

    sub-float/2addr v7, v8

    mul-float/2addr v7, v0

    iget v8, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ2:F

    mul-float/2addr v8, v1

    add-float/2addr v7, v8

    mul-float/2addr v7, v11

    sub-float/2addr v7, v3

    mul-float v8, v4, v0

    iget v9, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ1:F

    mul-float/2addr v9, v3

    iget v10, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ2:F

    mul-float/2addr v10, v2

    sub-float/2addr v9, v10

    sub-float/2addr v8, v9

    mul-float/2addr v8, v0

    iget v9, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ3:F

    mul-float/2addr v9, v1

    add-float/2addr v8, v9

    mul-float/2addr v8, v11

    sub-float/2addr v8, v4

    invoke-direct {v5, v6, v7, v8}, Lcom/mediatek/ngin3d/Vec3;-><init>(FFF)V

    return-object v5
.end method

.method public cpy()Lcom/mediatek/ngin3d/Quaternion;
    .locals 1

    .prologue
    .line 161
    new-instance v0, Lcom/mediatek/ngin3d/Quaternion;

    invoke-direct {v0, p0}, Lcom/mediatek/ngin3d/Quaternion;-><init>(Lcom/mediatek/ngin3d/Quaternion;)V

    return-object v0
.end method

.method public dot(Lcom/mediatek/ngin3d/Quaternion;)F
    .locals 3
    .parameter "other"

    .prologue
    .line 354
    iget v0, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ0:F

    iget v1, p1, Lcom/mediatek/ngin3d/Quaternion;->mQ0:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ1:F

    iget v2, p1, Lcom/mediatek/ngin3d/Quaternion;->mQ1:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ2:F

    iget v2, p1, Lcom/mediatek/ngin3d/Quaternion;->mQ2:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ3:F

    iget v2, p1, Lcom/mediatek/ngin3d/Quaternion;->mQ3:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 324
    if-ne p0, p1, :cond_1

    .line 331
    :cond_0
    :goto_0
    return v1

    .line 327
    :cond_1
    instance-of v3, p1, Lcom/mediatek/ngin3d/Quaternion;

    if-nez v3, :cond_2

    move v1, v2

    .line 328
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 330
    check-cast v0, Lcom/mediatek/ngin3d/Quaternion;

    .line 331
    .local v0, comp:Lcom/mediatek/ngin3d/Quaternion;
    iget v3, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ0:F

    iget v4, v0, Lcom/mediatek/ngin3d/Quaternion;->mQ0:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ1:F

    iget v4, v0, Lcom/mediatek/ngin3d/Quaternion;->mQ1:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ2:F

    iget v4, v0, Lcom/mediatek/ngin3d/Quaternion;->mQ2:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ3:F

    iget v4, v0, Lcom/mediatek/ngin3d/Quaternion;->mQ3:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getAxis()Lcom/mediatek/ngin3d/Vec3;
    .locals 8

    .prologue
    const/high16 v7, 0x3f80

    const/4 v6, 0x0

    .line 377
    iget v3, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ1:F

    iget v4, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ1:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ2:F

    iget v5, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ2:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ3:F

    iget v5, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ3:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-double v1, v3

    .line 378
    .local v1, squaredSine:D
    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    if-nez v3, :cond_0

    .line 379
    new-instance v3, Lcom/mediatek/ngin3d/Vec3;

    invoke-direct {v3, v7, v6, v6}, Lcom/mediatek/ngin3d/Vec3;-><init>(FFF)V

    .line 382
    :goto_0
    return-object v3

    .line 381
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    div-float v0, v7, v3

    .line 382
    .local v0, inverse:F
    new-instance v3, Lcom/mediatek/ngin3d/Vec3;

    iget v4, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ1:F

    mul-float/2addr v4, v0

    iget v5, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ2:F

    mul-float/2addr v5, v0

    iget v6, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ3:F

    mul-float/2addr v6, v0

    invoke-direct {v3, v4, v5, v6}, Lcom/mediatek/ngin3d/Vec3;-><init>(FFF)V

    goto :goto_0
.end method

.method public getAxisAngle()F
    .locals 3

    .prologue
    .line 391
    const/high16 v0, 0x4000

    iget v1, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ0:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->acos(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public getEulerAngles()[F
    .locals 1

    .prologue
    .line 550
    sget-object v0, Lcom/mediatek/ngin3d/EulerOrder;->XYZ:Lcom/mediatek/ngin3d/EulerOrder;

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/Quaternion;->getEulerAngles(Lcom/mediatek/ngin3d/EulerOrder;)[F

    move-result-object v0

    return-object v0
.end method

.method public getEulerAngles(Lcom/mediatek/ngin3d/EulerOrder;)[F
    .locals 11
    .parameter "order"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide v6, 0x3feffffffff24190L

    const-wide v4, -0x40100000000dbe70L

    .line 432
    sget-object v2, Lcom/mediatek/ngin3d/EulerOrder;->XYZ:Lcom/mediatek/ngin3d/EulerOrder;

    if-ne p1, v2, :cond_2

    .line 439
    sget-object v2, Lcom/mediatek/ngin3d/Vec3;->Z_AXIS:Lcom/mediatek/ngin3d/Vec3;

    invoke-virtual {p0, v2}, Lcom/mediatek/ngin3d/Quaternion;->applyInverseTo(Lcom/mediatek/ngin3d/Vec3;)Lcom/mediatek/ngin3d/Vec3;

    move-result-object v0

    .line 440
    .local v0, v1:Lcom/mediatek/ngin3d/Vec3;
    sget-object v2, Lcom/mediatek/ngin3d/Vec3;->X_AXIS:Lcom/mediatek/ngin3d/Vec3;

    invoke-virtual {p0, v2}, Lcom/mediatek/ngin3d/Quaternion;->applyTo(Lcom/mediatek/ngin3d/Vec3;)Lcom/mediatek/ngin3d/Vec3;

    move-result-object v1

    .line 441
    .local v1, v2:Lcom/mediatek/ngin3d/Vec3;
    iget v2, v1, Lcom/mediatek/ngin3d/Point;->z:F

    float-to-double v2, v2

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_0

    iget v2, v1, Lcom/mediatek/ngin3d/Point;->z:F

    float-to-double v2, v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_1

    .line 442
    :cond_0
    const-string v2, "Quaternion"

    const-string v3, "Touch Cardan Euler Singularity"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_1
    const/4 v2, 0x3

    new-array v2, v2, [F

    iget v3, v0, Lcom/mediatek/ngin3d/Point;->y:F

    neg-float v3, v3

    float-to-double v3, v3

    iget v5, v0, Lcom/mediatek/ngin3d/Point;->z:F

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    neg-double v3, v3

    double-to-float v3, v3

    aput v3, v2, v8

    iget v3, v1, Lcom/mediatek/ngin3d/Point;->z:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    neg-double v3, v3

    double-to-float v3, v3

    aput v3, v2, v9

    iget v3, v1, Lcom/mediatek/ngin3d/Point;->y:F

    neg-float v3, v3

    float-to-double v3, v3

    iget v5, v1, Lcom/mediatek/ngin3d/Point;->x:F

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    neg-double v3, v3

    double-to-float v3, v3

    aput v3, v2, v10

    .line 534
    :goto_0
    return-object v2

    .line 450
    .end local v0           #v1:Lcom/mediatek/ngin3d/Vec3;
    .end local v1           #v2:Lcom/mediatek/ngin3d/Vec3;
    :cond_2
    sget-object v2, Lcom/mediatek/ngin3d/EulerOrder;->XZY:Lcom/mediatek/ngin3d/EulerOrder;

    if-ne p1, v2, :cond_5

    .line 457
    sget-object v2, Lcom/mediatek/ngin3d/Vec3;->Y_AXIS:Lcom/mediatek/ngin3d/Vec3;

    invoke-virtual {p0, v2}, Lcom/mediatek/ngin3d/Quaternion;->applyInverseTo(Lcom/mediatek/ngin3d/Vec3;)Lcom/mediatek/ngin3d/Vec3;

    move-result-object v0

    .line 458
    .restart local v0       #v1:Lcom/mediatek/ngin3d/Vec3;
    sget-object v2, Lcom/mediatek/ngin3d/Vec3;->X_AXIS:Lcom/mediatek/ngin3d/Vec3;

    invoke-virtual {p0, v2}, Lcom/mediatek/ngin3d/Quaternion;->applyTo(Lcom/mediatek/ngin3d/Vec3;)Lcom/mediatek/ngin3d/Vec3;

    move-result-object v1

    .line 459
    .restart local v1       #v2:Lcom/mediatek/ngin3d/Vec3;
    iget v2, v1, Lcom/mediatek/ngin3d/Point;->y:F

    float-to-double v2, v2

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_3

    iget v2, v1, Lcom/mediatek/ngin3d/Point;->y:F

    float-to-double v2, v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_4

    .line 460
    :cond_3
    const-string v2, "Quaternion"

    const-string v3, "Touch Cardan Euler Singularity"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_4
    const/4 v2, 0x3

    new-array v2, v2, [F

    iget v3, v0, Lcom/mediatek/ngin3d/Point;->z:F

    float-to-double v3, v3

    iget v5, v0, Lcom/mediatek/ngin3d/Point;->y:F

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    neg-double v3, v3

    double-to-float v3, v3

    aput v3, v2, v8

    iget v3, v1, Lcom/mediatek/ngin3d/Point;->y:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    neg-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    neg-double v3, v3

    double-to-float v3, v3

    aput v3, v2, v9

    iget v3, v1, Lcom/mediatek/ngin3d/Point;->z:F

    float-to-double v3, v3

    iget v5, v1, Lcom/mediatek/ngin3d/Point;->x:F

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    neg-double v3, v3

    double-to-float v3, v3

    aput v3, v2, v10

    goto :goto_0

    .line 468
    .end local v0           #v1:Lcom/mediatek/ngin3d/Vec3;
    .end local v1           #v2:Lcom/mediatek/ngin3d/Vec3;
    :cond_5
    sget-object v2, Lcom/mediatek/ngin3d/EulerOrder;->YXZ:Lcom/mediatek/ngin3d/EulerOrder;

    if-ne p1, v2, :cond_8

    .line 475
    sget-object v2, Lcom/mediatek/ngin3d/Vec3;->Z_AXIS:Lcom/mediatek/ngin3d/Vec3;

    invoke-virtual {p0, v2}, Lcom/mediatek/ngin3d/Quaternion;->applyInverseTo(Lcom/mediatek/ngin3d/Vec3;)Lcom/mediatek/ngin3d/Vec3;

    move-result-object v0

    .line 476
    .restart local v0       #v1:Lcom/mediatek/ngin3d/Vec3;
    sget-object v2, Lcom/mediatek/ngin3d/Vec3;->Y_AXIS:Lcom/mediatek/ngin3d/Vec3;

    invoke-virtual {p0, v2}, Lcom/mediatek/ngin3d/Quaternion;->applyTo(Lcom/mediatek/ngin3d/Vec3;)Lcom/mediatek/ngin3d/Vec3;

    move-result-object v1

    .line 477
    .restart local v1       #v2:Lcom/mediatek/ngin3d/Vec3;
    iget v2, v1, Lcom/mediatek/ngin3d/Point;->z:F

    float-to-double v2, v2

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_6

    iget v2, v1, Lcom/mediatek/ngin3d/Point;->z:F

    float-to-double v2, v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_7

    .line 478
    :cond_6
    const-string v2, "Quaternion"

    const-string v3, "Touch Cardan Euler Singularity"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_7
    const/4 v2, 0x3

    new-array v2, v2, [F

    iget v3, v0, Lcom/mediatek/ngin3d/Point;->x:F

    float-to-double v3, v3

    iget v5, v0, Lcom/mediatek/ngin3d/Point;->z:F

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    neg-double v3, v3

    double-to-float v3, v3

    aput v3, v2, v8

    iget v3, v1, Lcom/mediatek/ngin3d/Point;->z:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    neg-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    neg-double v3, v3

    double-to-float v3, v3

    aput v3, v2, v9

    iget v3, v1, Lcom/mediatek/ngin3d/Point;->x:F

    float-to-double v3, v3

    iget v5, v1, Lcom/mediatek/ngin3d/Point;->y:F

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    neg-double v3, v3

    double-to-float v3, v3

    aput v3, v2, v10

    goto/16 :goto_0

    .line 486
    .end local v0           #v1:Lcom/mediatek/ngin3d/Vec3;
    .end local v1           #v2:Lcom/mediatek/ngin3d/Vec3;
    :cond_8
    sget-object v2, Lcom/mediatek/ngin3d/EulerOrder;->YZX:Lcom/mediatek/ngin3d/EulerOrder;

    if-ne p1, v2, :cond_b

    .line 493
    sget-object v2, Lcom/mediatek/ngin3d/Vec3;->X_AXIS:Lcom/mediatek/ngin3d/Vec3;

    invoke-virtual {p0, v2}, Lcom/mediatek/ngin3d/Quaternion;->applyInverseTo(Lcom/mediatek/ngin3d/Vec3;)Lcom/mediatek/ngin3d/Vec3;

    move-result-object v0

    .line 494
    .restart local v0       #v1:Lcom/mediatek/ngin3d/Vec3;
    sget-object v2, Lcom/mediatek/ngin3d/Vec3;->Y_AXIS:Lcom/mediatek/ngin3d/Vec3;

    invoke-virtual {p0, v2}, Lcom/mediatek/ngin3d/Quaternion;->applyTo(Lcom/mediatek/ngin3d/Vec3;)Lcom/mediatek/ngin3d/Vec3;

    move-result-object v1

    .line 495
    .restart local v1       #v2:Lcom/mediatek/ngin3d/Vec3;
    iget v2, v1, Lcom/mediatek/ngin3d/Point;->x:F

    float-to-double v2, v2

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_9

    iget v2, v1, Lcom/mediatek/ngin3d/Point;->x:F

    float-to-double v2, v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_a

    .line 496
    :cond_9
    const-string v2, "Quaternion"

    const-string v3, "Touch Cardan Euler Singularity"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_a
    const/4 v2, 0x3

    new-array v2, v2, [F

    iget v3, v0, Lcom/mediatek/ngin3d/Point;->z:F

    neg-float v3, v3

    float-to-double v3, v3

    iget v5, v0, Lcom/mediatek/ngin3d/Point;->x:F

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    neg-double v3, v3

    double-to-float v3, v3

    aput v3, v2, v8

    iget v3, v1, Lcom/mediatek/ngin3d/Point;->x:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    neg-double v3, v3

    double-to-float v3, v3

    aput v3, v2, v9

    iget v3, v1, Lcom/mediatek/ngin3d/Point;->z:F

    neg-float v3, v3

    float-to-double v3, v3

    iget v5, v1, Lcom/mediatek/ngin3d/Point;->y:F

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    neg-double v3, v3

    double-to-float v3, v3

    aput v3, v2, v10

    goto/16 :goto_0

    .line 504
    .end local v0           #v1:Lcom/mediatek/ngin3d/Vec3;
    .end local v1           #v2:Lcom/mediatek/ngin3d/Vec3;
    :cond_b
    sget-object v2, Lcom/mediatek/ngin3d/EulerOrder;->ZXY:Lcom/mediatek/ngin3d/EulerOrder;

    if-ne p1, v2, :cond_e

    .line 511
    sget-object v2, Lcom/mediatek/ngin3d/Vec3;->Y_AXIS:Lcom/mediatek/ngin3d/Vec3;

    invoke-virtual {p0, v2}, Lcom/mediatek/ngin3d/Quaternion;->applyInverseTo(Lcom/mediatek/ngin3d/Vec3;)Lcom/mediatek/ngin3d/Vec3;

    move-result-object v0

    .line 512
    .restart local v0       #v1:Lcom/mediatek/ngin3d/Vec3;
    sget-object v2, Lcom/mediatek/ngin3d/Vec3;->Z_AXIS:Lcom/mediatek/ngin3d/Vec3;

    invoke-virtual {p0, v2}, Lcom/mediatek/ngin3d/Quaternion;->applyTo(Lcom/mediatek/ngin3d/Vec3;)Lcom/mediatek/ngin3d/Vec3;

    move-result-object v1

    .line 513
    .restart local v1       #v2:Lcom/mediatek/ngin3d/Vec3;
    iget v2, v1, Lcom/mediatek/ngin3d/Point;->y:F

    float-to-double v2, v2

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_c

    iget v2, v1, Lcom/mediatek/ngin3d/Point;->y:F

    float-to-double v2, v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_d

    .line 514
    :cond_c
    const-string v2, "Quaternion"

    const-string v3, "Touch Cardan Euler Singularity"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_d
    const/4 v2, 0x3

    new-array v2, v2, [F

    iget v3, v0, Lcom/mediatek/ngin3d/Point;->x:F

    neg-float v3, v3

    float-to-double v3, v3

    iget v5, v0, Lcom/mediatek/ngin3d/Point;->y:F

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    neg-double v3, v3

    double-to-float v3, v3

    aput v3, v2, v8

    iget v3, v1, Lcom/mediatek/ngin3d/Point;->y:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    neg-double v3, v3

    double-to-float v3, v3

    aput v3, v2, v9

    iget v3, v1, Lcom/mediatek/ngin3d/Point;->x:F

    neg-float v3, v3

    float-to-double v3, v3

    iget v5, v1, Lcom/mediatek/ngin3d/Point;->z:F

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    neg-double v3, v3

    double-to-float v3, v3

    aput v3, v2, v10

    goto/16 :goto_0

    .line 529
    .end local v0           #v1:Lcom/mediatek/ngin3d/Vec3;
    .end local v1           #v2:Lcom/mediatek/ngin3d/Vec3;
    :cond_e
    sget-object v2, Lcom/mediatek/ngin3d/Vec3;->X_AXIS:Lcom/mediatek/ngin3d/Vec3;

    invoke-virtual {p0, v2}, Lcom/mediatek/ngin3d/Quaternion;->applyInverseTo(Lcom/mediatek/ngin3d/Vec3;)Lcom/mediatek/ngin3d/Vec3;

    move-result-object v0

    .line 530
    .restart local v0       #v1:Lcom/mediatek/ngin3d/Vec3;
    sget-object v2, Lcom/mediatek/ngin3d/Vec3;->Z_AXIS:Lcom/mediatek/ngin3d/Vec3;

    invoke-virtual {p0, v2}, Lcom/mediatek/ngin3d/Quaternion;->applyTo(Lcom/mediatek/ngin3d/Vec3;)Lcom/mediatek/ngin3d/Vec3;

    move-result-object v1

    .line 531
    .restart local v1       #v2:Lcom/mediatek/ngin3d/Vec3;
    iget v2, v1, Lcom/mediatek/ngin3d/Point;->x:F

    float-to-double v2, v2

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_f

    iget v2, v1, Lcom/mediatek/ngin3d/Point;->x:F

    float-to-double v2, v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_10

    .line 532
    :cond_f
    const-string v2, "Quaternion"

    const-string v3, "Touch Cardan Euler Singularity"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_10
    const/4 v2, 0x3

    new-array v2, v2, [F

    iget v3, v0, Lcom/mediatek/ngin3d/Point;->y:F

    float-to-double v3, v3

    iget v5, v0, Lcom/mediatek/ngin3d/Point;->x:F

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    neg-double v3, v3

    double-to-float v3, v3

    aput v3, v2, v8

    iget v3, v1, Lcom/mediatek/ngin3d/Point;->x:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    neg-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    neg-double v3, v3

    double-to-float v3, v3

    aput v3, v2, v9

    iget v3, v1, Lcom/mediatek/ngin3d/Point;->y:F

    float-to-double v3, v3

    iget v5, v1, Lcom/mediatek/ngin3d/Point;->z:F

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    neg-double v3, v3

    double-to-float v3, v3

    aput v3, v2, v10

    goto/16 :goto_0
.end method

.method public getQ0()F
    .locals 1

    .prologue
    .line 596
    iget v0, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ0:F

    return v0
.end method

.method public getQ1()F
    .locals 1

    .prologue
    .line 605
    iget v0, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ1:F

    return v0
.end method

.method public getQ2()F
    .locals 1

    .prologue
    .line 614
    iget v0, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ2:F

    return v0
.end method

.method public getQ3()F
    .locals 1

    .prologue
    .line 623
    iget v0, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ3:F

    return v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 340
    iget v2, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ0:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    .line 341
    .local v0, result:I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget v2, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ1:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_1

    move v2, v1

    :goto_1
    add-int v0, v3, v2

    .line 342
    mul-int/lit8 v3, v0, 0x1f

    iget v2, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ2:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_2

    move v2, v1

    :goto_2
    add-int v0, v3, v2

    .line 343
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ3:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    :goto_3
    add-int v0, v2, v1

    .line 344
    return v0

    .line 340
    .end local v0           #result:I
    :cond_0
    iget v2, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ0:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_0

    .line 341
    .restart local v0       #result:I
    :cond_1
    iget v2, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ1:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto :goto_1

    .line 342
    :cond_2
    iget v2, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ2:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto :goto_2

    .line 343
    :cond_3
    iget v1, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ3:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto :goto_3
.end method

.method public final idt()Lcom/mediatek/ngin3d/Quaternion;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 264
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/mediatek/ngin3d/Quaternion;->set(FFFF)Lcom/mediatek/ngin3d/Quaternion;

    .line 265
    return-object p0
.end method

.method public len()F
    .locals 3

    .prologue
    .line 168
    iget v0, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ0:F

    iget v1, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ0:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ1:F

    iget v2, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ1:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ2:F

    iget v2, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ2:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ3:F

    iget v2, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ3:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public len2()F
    .locals 3

    .prologue
    .line 207
    iget v0, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ0:F

    iget v1, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ0:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ1:F

    iget v2, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ1:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ2:F

    iget v2, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ2:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ3:F

    iget v2, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ3:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public mul(F)Lcom/mediatek/ngin3d/Quaternion;
    .locals 1
    .parameter "scalar"

    .prologue
    .line 364
    iget v0, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ0:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ0:F

    .line 365
    iget v0, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ1:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ1:F

    .line 366
    iget v0, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ2:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ2:F

    .line 367
    iget v0, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ3:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ3:F

    .line 368
    return-object p0
.end method

.method public multiply(Lcom/mediatek/ngin3d/Quaternion;)Lcom/mediatek/ngin3d/Quaternion;
    .locals 8
    .parameter "r"

    .prologue
    .line 246
    iget v4, p1, Lcom/mediatek/ngin3d/Quaternion;->mQ0:F

    iget v5, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ0:F

    mul-float/2addr v4, v5

    iget v5, p1, Lcom/mediatek/ngin3d/Quaternion;->mQ1:F

    iget v6, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ1:F

    mul-float/2addr v5, v6

    iget v6, p1, Lcom/mediatek/ngin3d/Quaternion;->mQ2:F

    iget v7, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ2:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p1, Lcom/mediatek/ngin3d/Quaternion;->mQ3:F

    iget v7, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ3:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    sub-float v0, v4, v5

    .line 247
    .local v0, newQ0:F
    iget v4, p1, Lcom/mediatek/ngin3d/Quaternion;->mQ1:F

    iget v5, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ0:F

    mul-float/2addr v4, v5

    iget v5, p1, Lcom/mediatek/ngin3d/Quaternion;->mQ0:F

    iget v6, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ1:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p1, Lcom/mediatek/ngin3d/Quaternion;->mQ2:F

    iget v6, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ3:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p1, Lcom/mediatek/ngin3d/Quaternion;->mQ3:F

    iget v6, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ2:F

    mul-float/2addr v5, v6

    sub-float v1, v4, v5

    .line 248
    .local v1, newQ1:F
    iget v4, p1, Lcom/mediatek/ngin3d/Quaternion;->mQ2:F

    iget v5, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ0:F

    mul-float/2addr v4, v5

    iget v5, p1, Lcom/mediatek/ngin3d/Quaternion;->mQ0:F

    iget v6, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ2:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p1, Lcom/mediatek/ngin3d/Quaternion;->mQ3:F

    iget v6, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ1:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p1, Lcom/mediatek/ngin3d/Quaternion;->mQ1:F

    iget v6, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ3:F

    mul-float/2addr v5, v6

    sub-float v2, v4, v5

    .line 249
    .local v2, newQ2:F
    iget v4, p1, Lcom/mediatek/ngin3d/Quaternion;->mQ3:F

    iget v5, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ0:F

    mul-float/2addr v4, v5

    iget v5, p1, Lcom/mediatek/ngin3d/Quaternion;->mQ0:F

    iget v6, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ3:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p1, Lcom/mediatek/ngin3d/Quaternion;->mQ1:F

    iget v6, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ2:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p1, Lcom/mediatek/ngin3d/Quaternion;->mQ2:F

    iget v6, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ1:F

    mul-float/2addr v5, v6

    sub-float v3, v4, v5

    .line 251
    .local v3, newQ3:F
    iput v0, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ0:F

    .line 252
    iput v1, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ1:F

    .line 253
    iput v2, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ2:F

    .line 254
    iput v3, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ3:F

    .line 255
    return-object p0
.end method

.method public nor()Lcom/mediatek/ngin3d/Quaternion;
    .locals 3

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Quaternion;->len2()F

    move-result v0

    .line 217
    .local v0, len:F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f80

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3727c5ac

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 218
    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v0, v1

    .line 219
    iget v1, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ3:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ3:F

    .line 220
    iget v1, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ0:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ0:F

    .line 221
    iget v1, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ1:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ1:F

    .line 222
    iget v1, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ2:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ2:F

    .line 224
    :cond_0
    return-object p0
.end method

.method public final set(FFFF)Lcom/mediatek/ngin3d/Quaternion;
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "w"

    .prologue
    .line 120
    iput p1, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ0:F

    .line 121
    iput p2, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ1:F

    .line 122
    iput p3, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ2:F

    .line 123
    iput p4, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ3:F

    .line 124
    return-object p0
.end method

.method public final set(Lcom/mediatek/ngin3d/Quaternion;)Lcom/mediatek/ngin3d/Quaternion;
    .locals 4
    .parameter "quaternion"

    .prologue
    .line 134
    iget v0, p1, Lcom/mediatek/ngin3d/Quaternion;->mQ0:F

    iget v1, p1, Lcom/mediatek/ngin3d/Quaternion;->mQ1:F

    iget v2, p1, Lcom/mediatek/ngin3d/Quaternion;->mQ2:F

    iget v3, p1, Lcom/mediatek/ngin3d/Quaternion;->mQ3:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Quaternion;->set(FFFF)Lcom/mediatek/ngin3d/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public final set(Lcom/mediatek/ngin3d/Vec3;F)Lcom/mediatek/ngin3d/Quaternion;
    .locals 13
    .parameter "axis"
    .parameter "angle"

    .prologue
    .line 145
    invoke-virtual {p1}, Lcom/mediatek/ngin3d/Vec3;->getLength()F

    move-result v8

    float-to-double v6, v8

    .line 146
    .local v6, norm:D
    const-wide/16 v8, 0x0

    cmpl-double v8, v6, v8

    if-nez v8, :cond_0

    .line 147
    new-instance v8, Lcom/mediatek/ngin3d/utils/Ngin3dException;

    const-string v9, "MathRuntimeException"

    invoke-direct {v8, v9}, Lcom/mediatek/ngin3d/utils/Ngin3dException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 149
    :cond_0
    float-to-double v8, p2

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 151
    .local v0, angrad:D
    const-wide/high16 v8, 0x3fe0

    mul-double v4, v8, v0

    .line 152
    .local v4, halfAngle:D
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    div-double v2, v8, v6

    .line 154
    .local v2, coeff:D
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    iget v9, p1, Lcom/mediatek/ngin3d/Point;->x:F

    float-to-double v9, v9

    mul-double/2addr v9, v2

    double-to-float v9, v9

    iget v10, p1, Lcom/mediatek/ngin3d/Point;->y:F

    float-to-double v10, v10

    mul-double/2addr v10, v2

    double-to-float v10, v10

    iget v11, p1, Lcom/mediatek/ngin3d/Point;->z:F

    float-to-double v11, v11

    mul-double/2addr v11, v2

    double-to-float v11, v11

    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/mediatek/ngin3d/Quaternion;->set(FFFF)Lcom/mediatek/ngin3d/Quaternion;

    move-result-object v8

    return-object v8
.end method

.method public setEulerAngles(Lcom/mediatek/ngin3d/EulerOrder;FFF)Lcom/mediatek/ngin3d/Quaternion;
    .locals 5
    .parameter "order"
    .parameter "alpha1"
    .parameter "alpha2"
    .parameter "alpha3"

    .prologue
    .line 190
    new-instance v1, Lcom/mediatek/ngin3d/Quaternion;

    invoke-virtual {p1}, Lcom/mediatek/ngin3d/EulerOrder;->getA1()Lcom/mediatek/ngin3d/Vec3;

    move-result-object v4

    invoke-direct {v1, v4, p2}, Lcom/mediatek/ngin3d/Quaternion;-><init>(Lcom/mediatek/ngin3d/Vec3;F)V

    .line 191
    .local v1, r1:Lcom/mediatek/ngin3d/Quaternion;
    new-instance v2, Lcom/mediatek/ngin3d/Quaternion;

    invoke-virtual {p1}, Lcom/mediatek/ngin3d/EulerOrder;->getA2()Lcom/mediatek/ngin3d/Vec3;

    move-result-object v4

    invoke-direct {v2, v4, p3}, Lcom/mediatek/ngin3d/Quaternion;-><init>(Lcom/mediatek/ngin3d/Vec3;F)V

    .line 192
    .local v2, r2:Lcom/mediatek/ngin3d/Quaternion;
    new-instance v3, Lcom/mediatek/ngin3d/Quaternion;

    invoke-virtual {p1}, Lcom/mediatek/ngin3d/EulerOrder;->getA3()Lcom/mediatek/ngin3d/Vec3;

    move-result-object v4

    invoke-direct {v3, v4, p4}, Lcom/mediatek/ngin3d/Quaternion;-><init>(Lcom/mediatek/ngin3d/Vec3;F)V

    .line 193
    .local v3, r3:Lcom/mediatek/ngin3d/Quaternion;
    invoke-virtual {v2, v3}, Lcom/mediatek/ngin3d/Quaternion;->multiply(Lcom/mediatek/ngin3d/Quaternion;)Lcom/mediatek/ngin3d/Quaternion;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/ngin3d/Quaternion;->multiply(Lcom/mediatek/ngin3d/Quaternion;)Lcom/mediatek/ngin3d/Quaternion;

    move-result-object v0

    .line 195
    .local v0, composed:Lcom/mediatek/ngin3d/Quaternion;
    iget v4, v0, Lcom/mediatek/ngin3d/Quaternion;->mQ0:F

    iput v4, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ0:F

    .line 196
    iget v4, v0, Lcom/mediatek/ngin3d/Quaternion;->mQ1:F

    iput v4, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ1:F

    .line 197
    iget v4, v0, Lcom/mediatek/ngin3d/Quaternion;->mQ2:F

    iput v4, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ2:F

    .line 198
    iget v4, v0, Lcom/mediatek/ngin3d/Quaternion;->mQ3:F

    iput v4, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ3:F

    .line 200
    return-object p0
.end method

.method public slerp(Lcom/mediatek/ngin3d/Quaternion;F)Lcom/mediatek/ngin3d/Quaternion;
    .locals 16
    .parameter "end"
    .parameter "alpha"

    .prologue
    .line 277
    invoke-virtual/range {p0 .. p1}, Lcom/mediatek/ngin3d/Quaternion;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 315
    :goto_0
    return-object p0

    .line 281
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/mediatek/ngin3d/Quaternion;->dot(Lcom/mediatek/ngin3d/Quaternion;)F

    move-result v3

    .line 283
    .local v3, result:F
    float-to-double v12, v3

    const-wide/16 v14, 0x0

    cmpg-double v12, v12, v14

    if-gez v12, :cond_1

    .line 285
    const/high16 v12, -0x4080

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/mediatek/ngin3d/Quaternion;->mul(F)Lcom/mediatek/ngin3d/Quaternion;

    .line 286
    neg-float v3, v3

    .line 290
    :cond_1
    const/high16 v12, 0x3f80

    sub-float v4, v12, p2

    .line 291
    .local v4, scale0:F
    move/from16 v5, p2

    .line 295
    .local v5, scale1:F
    const/high16 v12, 0x3f80

    sub-float/2addr v12, v3

    float-to-double v12, v12

    const-wide v14, 0x3fb999999999999aL

    cmpl-double v12, v12, v14

    if-lez v12, :cond_2

    .line 297
    float-to-double v12, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    .line 298
    .local v6, theta:D
    const-wide/high16 v12, 0x3ff0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    div-double v1, v12, v14

    .line 302
    .local v1, invSinTheta:D
    const/high16 v12, 0x3f80

    sub-float v12, v12, p2

    float-to-double v12, v12

    mul-double/2addr v12, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v12, v1

    double-to-float v4, v12

    .line 303
    move/from16 v0, p2

    float-to-double v12, v0

    mul-double/2addr v12, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v12, v1

    double-to-float v5, v12

    .line 308
    .end local v1           #invSinTheta:D
    .end local v6           #theta:D
    :cond_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/mediatek/ngin3d/Quaternion;->mQ0:F

    mul-float/2addr v12, v4

    move-object/from16 v0, p1

    iget v13, v0, Lcom/mediatek/ngin3d/Quaternion;->mQ0:F

    mul-float/2addr v13, v5

    add-float v9, v12, v13

    .line 309
    .local v9, x:F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/mediatek/ngin3d/Quaternion;->mQ1:F

    mul-float/2addr v12, v4

    move-object/from16 v0, p1

    iget v13, v0, Lcom/mediatek/ngin3d/Quaternion;->mQ1:F

    mul-float/2addr v13, v5

    add-float v10, v12, v13

    .line 310
    .local v10, y:F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/mediatek/ngin3d/Quaternion;->mQ2:F

    mul-float/2addr v12, v4

    move-object/from16 v0, p1

    iget v13, v0, Lcom/mediatek/ngin3d/Quaternion;->mQ2:F

    mul-float/2addr v13, v5

    add-float v11, v12, v13

    .line 311
    .local v11, z:F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/mediatek/ngin3d/Quaternion;->mQ3:F

    mul-float/2addr v12, v4

    move-object/from16 v0, p1

    iget v13, v0, Lcom/mediatek/ngin3d/Quaternion;->mQ3:F

    mul-float/2addr v13, v5

    add-float v8, v12, v13

    .line 312
    .local v8, w:F
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10, v11, v8}, Lcom/mediatek/ngin3d/Quaternion;->set(FFFF)Lcom/mediatek/ngin3d/Quaternion;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ0:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ1:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ2:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ngin3d/Quaternion;->mQ3:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
