.class public Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;
.super Ljava/lang/Object;
.source "Crossing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/awt/geom/gl/Crossing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CubicCurve"
.end annotation


# instance fields
.field Ax:D

.field Ax3:D

.field Ay:D

.field Bx:D

.field Bx2:D

.field By:D

.field Cx:D

.field Cy:D

.field ax:D

.field ay:D

.field bx:D

.field by:D

.field cx:D

.field cy:D


# direct methods
.method public constructor <init>(DDDDDDDD)V
    .locals 4
    .parameter "x1"
    .parameter "y1"
    .parameter "cx1"
    .parameter "cy1"
    .parameter "cx2"
    .parameter "cy2"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    sub-double v0, p13, p1

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->ax:D

    .line 265
    sub-double v0, p15, p3

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->ay:D

    .line 266
    sub-double v0, p5, p1

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->bx:D

    .line 267
    sub-double v0, p7, p3

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->by:D

    .line 268
    sub-double v0, p9, p1

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->cx:D

    .line 269
    sub-double v0, p11, p3

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->cy:D

    .line 271
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->bx:D

    iget-wide v2, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->bx:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->bx:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->Cx:D

    .line 272
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->cx:D

    iget-wide v2, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->cx:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->cx:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->Cx:D

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->Cx:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->Bx:D

    .line 273
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->ax:D

    iget-wide v2, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->Bx:D

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->Cx:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->Ax:D

    .line 275
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->by:D

    iget-wide v2, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->by:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->by:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->Cy:D

    .line 276
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->cy:D

    iget-wide v2, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->cy:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->cy:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->Cy:D

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->Cy:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->By:D

    .line 277
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->ay:D

    iget-wide v2, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->By:D

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->Cy:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->Ay:D

    .line 279
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->Ax:D

    iget-wide v2, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->Ax:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->Ax:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->Ax3:D

    .line 280
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->Bx:D

    iget-wide v2, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->Bx:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->Bx2:D

    .line 281
    return-void
.end method


# virtual methods
.method addBound([DI[DIDDZI)I
    .locals 11
    .parameter "bound"
    .parameter "bc"
    .parameter "res"
    .parameter "rc"
    .parameter "minX"
    .parameter "maxX"
    .parameter "changeId"
    .parameter "id"

    .prologue
    .line 344
    const/4 v2, 0x0

    .local v2, i:I
    move v1, p2

    .end local p2
    .local v1, bc:I
    :goto_0
    if-ge v2, p4, :cond_0

    .line 345
    aget-wide v5, p3, v2

    .line 346
    .local v5, t:D
    const-wide v7, -0x411b074a771c970fL

    cmpl-double v7, v5, v7

    if-lez v7, :cond_1

    const-wide v7, 0x3ff0000a7c5ac472L

    cmpg-double v7, v5, v7

    if-gez v7, :cond_1

    .line 347
    iget-wide v7, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->Ax:D

    mul-double/2addr v7, v5

    iget-wide v9, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->Bx:D

    add-double/2addr v7, v9

    mul-double/2addr v7, v5

    iget-wide v9, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->Cx:D

    add-double/2addr v7, v9

    mul-double v3, v5, v7

    .line 348
    .local v3, rx:D
    cmpg-double v7, p5, v3

    if-gtz v7, :cond_1

    cmpg-double v7, v3, p7

    if-gtz v7, :cond_1

    .line 349
    add-int/lit8 p2, v1, 0x1

    .end local v1           #bc:I
    .restart local p2
    aput-wide v5, p1, v1

    .line 350
    add-int/lit8 v1, p2, 0x1

    .end local p2
    .restart local v1       #bc:I
    aput-wide v3, p1, p2

    .line 351
    add-int/lit8 p2, v1, 0x1

    .end local v1           #bc:I
    .restart local p2
    iget-wide v7, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->Ay:D

    mul-double/2addr v7, v5

    iget-wide v9, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->By:D

    add-double/2addr v7, v9

    mul-double/2addr v7, v5

    iget-wide v9, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->Cy:D

    add-double/2addr v7, v9

    mul-double/2addr v7, v5

    aput-wide v7, p1, v1

    .line 352
    add-int/lit8 v1, p2, 0x1

    .end local p2
    .restart local v1       #bc:I
    move/from16 v0, p10

    int-to-double v7, v0

    aput-wide v7, p1, p2

    .line 353
    if-eqz p9, :cond_1

    .line 354
    add-int/lit8 p10, p10, 0x1

    move p2, v1

    .line 344
    .end local v1           #bc:I
    .end local v3           #rx:D
    .restart local p2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v1, p2

    .end local p2
    .restart local v1       #bc:I
    goto :goto_0

    .line 359
    .end local v5           #t:D
    :cond_0
    return v1

    .restart local v5       #t:D
    :cond_1
    move p2, v1

    .end local v1           #bc:I
    .restart local p2
    goto :goto_1
.end method

.method cross([DIDD)I
    .locals 12
    .parameter "res"
    .parameter "rc"
    .parameter "py1"
    .parameter "py2"

    .prologue
    .line 284
    const/4 v0, 0x0

    .line 285
    .local v0, cross:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p2, :cond_a

    .line 286
    aget-wide v6, p1, v1

    .line 289
    .local v6, t:D
    const-wide v8, -0x411b074a771c970fL

    cmpg-double v8, v6, v8

    if-ltz v8, :cond_0

    const-wide v8, 0x3ff0000a7c5ac472L

    cmpl-double v8, v6, v8

    if-lez v8, :cond_1

    .line 285
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 293
    :cond_1
    const-wide v8, 0x3ee4f8b588e368f1L

    cmpg-double v8, v6, v8

    if-gez v8, :cond_4

    .line 294
    const-wide/16 v8, 0x0

    cmpg-double v8, p3, v8

    if-gez v8, :cond_0

    iget-wide v8, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->bx:D

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-eqz v8, :cond_2

    iget-wide v8, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->bx:D

    :goto_2
    const-wide/16 v10, 0x0

    cmpg-double v8, v8, v10

    if-gez v8, :cond_0

    .line 295
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 294
    :cond_2
    iget-wide v8, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->cx:D

    iget-wide v10, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->bx:D

    cmpl-double v8, v8, v10

    if-eqz v8, :cond_3

    iget-wide v8, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->cx:D

    iget-wide v10, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->bx:D

    sub-double/2addr v8, v10

    goto :goto_2

    :cond_3
    iget-wide v8, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->ax:D

    iget-wide v10, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->cx:D

    sub-double/2addr v8, v10

    goto :goto_2

    .line 300
    :cond_4
    const-wide v8, 0x3fefffeb074a771dL

    cmpl-double v8, v6, v8

    if-lez v8, :cond_7

    .line 301
    iget-wide v8, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->ay:D

    cmpg-double v8, p3, v8

    if-gez v8, :cond_0

    iget-wide v8, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->ax:D

    iget-wide v10, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->cx:D

    cmpl-double v8, v8, v10

    if-eqz v8, :cond_5

    iget-wide v8, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->ax:D

    iget-wide v10, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->cx:D

    sub-double/2addr v8, v10

    :goto_3
    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-lez v8, :cond_0

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 301
    :cond_5
    iget-wide v8, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->cx:D

    iget-wide v10, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->bx:D

    cmpl-double v8, v8, v10

    if-eqz v8, :cond_6

    iget-wide v8, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->cx:D

    iget-wide v10, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->bx:D

    sub-double/2addr v8, v10

    goto :goto_3

    :cond_6
    iget-wide v8, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->bx:D

    goto :goto_3

    .line 307
    :cond_7
    iget-wide v8, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->Ay:D

    mul-double/2addr v8, v6

    iget-wide v10, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->By:D

    add-double/2addr v8, v10

    mul-double/2addr v8, v6

    iget-wide v10, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->Cy:D

    add-double/2addr v8, v10

    mul-double v4, v6, v8

    .line 309
    .local v4, ry:D
    cmpl-double v8, v4, p5

    if-lez v8, :cond_0

    .line 310
    iget-wide v8, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->Ax3:D

    mul-double/2addr v8, v6

    iget-wide v10, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->Bx2:D

    add-double/2addr v8, v10

    mul-double/2addr v8, v6

    iget-wide v10, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->Cx:D

    add-double v2, v8, v10

    .line 312
    .local v2, rxt:D
    const-wide v8, -0x411b074a771c970fL

    cmpl-double v8, v2, v8

    if-lez v8, :cond_8

    const-wide v8, 0x3ee4f8b588e368f1L

    cmpg-double v8, v2, v8

    if-gez v8, :cond_8

    .line 313
    iget-wide v8, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->Ax3:D

    iget-wide v10, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->Ax3:D

    add-double/2addr v8, v10

    mul-double/2addr v8, v6

    iget-wide v10, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->Bx2:D

    add-double v2, v8, v10

    .line 315
    const-wide v8, -0x411b074a771c970fL

    cmpg-double v8, v2, v8

    if-ltz v8, :cond_0

    const-wide v8, 0x3ee4f8b588e368f1L

    cmpl-double v8, v2, v8

    if-gtz v8, :cond_0

    .line 319
    iget-wide v2, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->ax:D

    .line 321
    :cond_8
    const-wide/16 v8, 0x0

    cmpl-double v8, v2, v8

    if-lez v8, :cond_9

    const/4 v8, 0x1

    :goto_4
    add-int/2addr v0, v8

    goto/16 :goto_1

    :cond_9
    const/4 v8, -0x1

    goto :goto_4

    .line 325
    .end local v2           #rxt:D
    .end local v4           #ry:D
    .end local v6           #t:D
    :cond_a
    return v0
.end method

.method solveExtremX([D)I
    .locals 4
    .parameter "res"

    .prologue
    .line 334
    const/4 v1, 0x3

    new-array v0, v1, [D

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->Cx:D

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->Bx2:D

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->Ax3:D

    aput-wide v2, v0, v1

    .line 335
    .local v0, eqn:[D
    invoke-static {v0, p1}, Lcom/itextpdf/awt/geom/gl/Crossing;->solveQuad([D[D)I

    move-result v1

    return v1
.end method

.method solveExtremY([D)I
    .locals 6
    .parameter "res"

    .prologue
    .line 339
    const/4 v1, 0x3

    new-array v0, v1, [D

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->Cy:D

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->By:D

    iget-wide v4, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->By:D

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->Ay:D

    iget-wide v4, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->Ay:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->Ay:D

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 340
    .local v0, eqn:[D
    invoke-static {v0, p1}, Lcom/itextpdf/awt/geom/gl/Crossing;->solveQuad([D[D)I

    move-result v1

    return v1
.end method

.method solvePoint([DD)I
    .locals 4
    .parameter "res"
    .parameter "px"

    .prologue
    .line 329
    const/4 v1, 0x4

    new-array v0, v1, [D

    const/4 v1, 0x0

    neg-double v2, p2

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->Cx:D

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->Bx:D

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->Ax:D

    aput-wide v2, v0, v1

    .line 330
    .local v0, eqn:[D
    invoke-static {v0, p1}, Lcom/itextpdf/awt/geom/gl/Crossing;->solveCubic([D[D)I

    move-result v1

    return v1
.end method
