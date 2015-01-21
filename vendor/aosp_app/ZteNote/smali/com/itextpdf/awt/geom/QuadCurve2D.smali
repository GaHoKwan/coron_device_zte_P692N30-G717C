.class public abstract Lcom/itextpdf/awt/geom/QuadCurve2D;
.super Ljava/lang/Object;
.source "QuadCurve2D.java"

# interfaces
.implements Lcom/itextpdf/awt/geom/Shape;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/awt/geom/QuadCurve2D$Iterator;,
        Lcom/itextpdf/awt/geom/QuadCurve2D$Double;,
        Lcom/itextpdf/awt/geom/QuadCurve2D$Float;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    return-void
.end method

.method public static getFlatness(DDDDDD)D
    .locals 12
    .parameter "x1"
    .parameter "y1"
    .parameter "ctrlx"
    .parameter "ctrly"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 371
    move-wide v0, p0

    move-wide v2, p2

    move-wide/from16 v4, p8

    move-wide/from16 v6, p10

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-static/range {v0 .. v11}, Lcom/itextpdf/awt/geom/Line2D;->ptSegDist(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getFlatness([DI)D
    .locals 12
    .parameter "coords"
    .parameter "offset"

    .prologue
    .line 375
    add-int/lit8 v0, p1, 0x0

    aget-wide v0, p0, v0

    add-int/lit8 v2, p1, 0x1

    aget-wide v2, p0, v2

    add-int/lit8 v4, p1, 0x4

    aget-wide v4, p0, v4

    add-int/lit8 v6, p1, 0x5

    aget-wide v6, p0, v6

    add-int/lit8 v8, p1, 0x2

    aget-wide v8, p0, v8

    add-int/lit8 v10, p1, 0x3

    aget-wide v10, p0, v10

    invoke-static/range {v0 .. v11}, Lcom/itextpdf/awt/geom/Line2D;->ptSegDist(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getFlatnessSq(DDDDDD)D
    .locals 12
    .parameter "x1"
    .parameter "y1"
    .parameter "ctrlx"
    .parameter "ctrly"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 354
    move-wide v0, p0

    move-wide v2, p2

    move-wide/from16 v4, p8

    move-wide/from16 v6, p10

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-static/range {v0 .. v11}, Lcom/itextpdf/awt/geom/Line2D;->ptSegDistSq(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getFlatnessSq([DI)D
    .locals 12
    .parameter "coords"
    .parameter "offset"

    .prologue
    .line 358
    add-int/lit8 v0, p1, 0x0

    aget-wide v0, p0, v0

    add-int/lit8 v2, p1, 0x1

    aget-wide v2, p0, v2

    add-int/lit8 v4, p1, 0x4

    aget-wide v4, p0, v4

    add-int/lit8 v6, p1, 0x5

    aget-wide v6, p0, v6

    add-int/lit8 v8, p1, 0x2

    aget-wide v8, p0, v8

    add-int/lit8 v10, p1, 0x3

    aget-wide v10, p0, v10

    invoke-static/range {v0 .. v11}, Lcom/itextpdf/awt/geom/Line2D;->ptSegDistSq(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static solveQuadratic([D)I
    .locals 1
    .parameter "eqn"

    .prologue
    .line 440
    invoke-static {p0, p0}, Lcom/itextpdf/awt/geom/QuadCurve2D;->solveQuadratic([D[D)I

    move-result v0

    return v0
.end method

.method public static solveQuadratic([D[D)I
    .locals 1
    .parameter "eqn"
    .parameter "res"

    .prologue
    .line 444
    invoke-static {p0, p1}, Lcom/itextpdf/awt/geom/gl/Crossing;->solveQuad([D[D)I

    move-result v0

    return v0
.end method

.method public static subdivide(Lcom/itextpdf/awt/geom/QuadCurve2D;Lcom/itextpdf/awt/geom/QuadCurve2D;Lcom/itextpdf/awt/geom/QuadCurve2D;)V
    .locals 26
    .parameter "src"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 386
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/awt/geom/QuadCurve2D;->getX1()D

    move-result-wide v1

    .line 387
    .local v1, x1:D
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/awt/geom/QuadCurve2D;->getY1()D

    move-result-wide v3

    .line 388
    .local v3, y1:D
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/awt/geom/QuadCurve2D;->getCtrlX()D

    move-result-wide v9

    .line 389
    .local v9, cx:D
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/awt/geom/QuadCurve2D;->getCtrlY()D

    move-result-wide v11

    .line 390
    .local v11, cy:D
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/awt/geom/QuadCurve2D;->getX2()D

    move-result-wide v22

    .line 391
    .local v22, x2:D
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/awt/geom/QuadCurve2D;->getY2()D

    move-result-wide v24

    .line 392
    .local v24, y2:D
    add-double v13, v1, v9

    const-wide/high16 v15, 0x4000

    div-double v5, v13, v15

    .line 393
    .local v5, cx1:D
    add-double v13, v3, v11

    const-wide/high16 v15, 0x4000

    div-double v7, v13, v15

    .line 394
    .local v7, cy1:D
    add-double v13, v22, v9

    const-wide/high16 v15, 0x4000

    div-double v18, v13, v15

    .line 395
    .local v18, cx2:D
    add-double v13, v24, v11

    const-wide/high16 v15, 0x4000

    div-double v20, v13, v15

    .line 396
    .local v20, cy2:D
    add-double v13, v5, v18

    const-wide/high16 v15, 0x4000

    div-double v9, v13, v15

    .line 397
    add-double v13, v7, v20

    const-wide/high16 v15, 0x4000

    div-double v11, v13, v15

    .line 398
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    .line 399
    invoke-virtual/range {v0 .. v12}, Lcom/itextpdf/awt/geom/QuadCurve2D;->setCurve(DDDDDD)V

    .line 401
    :cond_0
    if-eqz p2, :cond_1

    move-object/from16 v13, p2

    move-wide v14, v9

    move-wide/from16 v16, v11

    .line 402
    invoke-virtual/range {v13 .. v25}, Lcom/itextpdf/awt/geom/QuadCurve2D;->setCurve(DDDDDD)V

    .line 404
    :cond_1
    return-void
.end method

.method public static subdivide([DI[DI[DI)V
    .locals 24
    .parameter "src"
    .parameter "srcoff"
    .parameter "left"
    .parameter "leftOff"
    .parameter "right"
    .parameter "rightOff"

    .prologue
    .line 409
    add-int/lit8 v20, p1, 0x0

    aget-wide v12, p0, v20

    .line 410
    .local v12, x1:D
    add-int/lit8 v20, p1, 0x1

    aget-wide v16, p0, v20

    .line 411
    .local v16, y1:D
    add-int/lit8 v20, p1, 0x2

    aget-wide v0, p0, v20

    .line 412
    .local v0, cx:D
    add-int/lit8 v20, p1, 0x3

    aget-wide v6, p0, v20

    .line 413
    .local v6, cy:D
    add-int/lit8 v20, p1, 0x4

    aget-wide v14, p0, v20

    .line 414
    .local v14, x2:D
    add-int/lit8 v20, p1, 0x5

    aget-wide v18, p0, v20

    .line 415
    .local v18, y2:D
    add-double v20, v12, v0

    const-wide/high16 v22, 0x4000

    div-double v2, v20, v22

    .line 416
    .local v2, cx1:D
    add-double v20, v16, v6

    const-wide/high16 v22, 0x4000

    div-double v8, v20, v22

    .line 417
    .local v8, cy1:D
    add-double v20, v14, v0

    const-wide/high16 v22, 0x4000

    div-double v4, v20, v22

    .line 418
    .local v4, cx2:D
    add-double v20, v18, v6

    const-wide/high16 v22, 0x4000

    div-double v10, v20, v22

    .line 419
    .local v10, cy2:D
    add-double v20, v2, v4

    const-wide/high16 v22, 0x4000

    div-double v0, v20, v22

    .line 420
    add-double v20, v8, v10

    const-wide/high16 v22, 0x4000

    div-double v6, v20, v22

    .line 421
    if-eqz p2, :cond_0

    .line 422
    add-int/lit8 v20, p3, 0x0

    aput-wide v12, p2, v20

    .line 423
    add-int/lit8 v20, p3, 0x1

    aput-wide v16, p2, v20

    .line 424
    add-int/lit8 v20, p3, 0x2

    aput-wide v2, p2, v20

    .line 425
    add-int/lit8 v20, p3, 0x3

    aput-wide v8, p2, v20

    .line 426
    add-int/lit8 v20, p3, 0x4

    aput-wide v0, p2, v20

    .line 427
    add-int/lit8 v20, p3, 0x5

    aput-wide v6, p2, v20

    .line 429
    :cond_0
    if-eqz p4, :cond_1

    .line 430
    add-int/lit8 v20, p5, 0x0

    aput-wide v0, p4, v20

    .line 431
    add-int/lit8 v20, p5, 0x1

    aput-wide v6, p4, v20

    .line 432
    add-int/lit8 v20, p5, 0x2

    aput-wide v4, p4, v20

    .line 433
    add-int/lit8 v20, p5, 0x3

    aput-wide v10, p4, v20

    .line 434
    add-int/lit8 v20, p5, 0x4

    aput-wide v14, p4, v20

    .line 435
    add-int/lit8 v20, p5, 0x5

    aput-wide v18, p4, v20

    .line 437
    :cond_1
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 488
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 489
    :catch_0
    move-exception v0

    .line 490
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public contains(DD)Z
    .locals 1
    .parameter "px"
    .parameter "py"

    .prologue
    .line 448
    invoke-static {p0, p1, p2, p3, p4}, Lcom/itextpdf/awt/geom/gl/Crossing;->crossShape(Lcom/itextpdf/awt/geom/Shape;DD)I

    move-result v0

    invoke-static {v0}, Lcom/itextpdf/awt/geom/gl/Crossing;->isInsideEvenOdd(I)Z

    move-result v0

    return v0
.end method

.method public contains(DDDD)Z
    .locals 2
    .parameter "rx"
    .parameter "ry"
    .parameter "rw"
    .parameter "rh"

    .prologue
    .line 452
    invoke-static/range {p0 .. p8}, Lcom/itextpdf/awt/geom/gl/Crossing;->intersectShape(Lcom/itextpdf/awt/geom/Shape;DDDD)I

    move-result v0

    .line 453
    .local v0, cross:I
    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Lcom/itextpdf/awt/geom/gl/Crossing;->isInsideEvenOdd(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public contains(Lcom/itextpdf/awt/geom/Point2D;)Z
    .locals 4
    .parameter "p"

    .prologue
    .line 462
    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Point2D;->getX()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Point2D;->getY()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itextpdf/awt/geom/QuadCurve2D;->contains(DD)Z

    move-result v0

    return v0
.end method

.method public contains(Lcom/itextpdf/awt/geom/Rectangle2D;)Z
    .locals 9
    .parameter "r"

    .prologue
    .line 470
    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v5

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/awt/geom/QuadCurve2D;->contains(DDDD)Z

    move-result v0

    return v0
.end method

.method public getBounds()Lcom/itextpdf/awt/geom/Rectangle;
    .locals 1

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/QuadCurve2D;->getBounds2D()Lcom/itextpdf/awt/geom/Rectangle2D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/awt/geom/Rectangle2D;->getBounds()Lcom/itextpdf/awt/geom/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public abstract getCtrlPt()Lcom/itextpdf/awt/geom/Point2D;
.end method

.method public abstract getCtrlX()D
.end method

.method public abstract getCtrlY()D
.end method

.method public getFlatness()D
    .locals 12

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/QuadCurve2D;->getX1()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/QuadCurve2D;->getY1()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/QuadCurve2D;->getX2()D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/QuadCurve2D;->getY2()D

    move-result-wide v6

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/QuadCurve2D;->getCtrlX()D

    move-result-wide v8

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/QuadCurve2D;->getCtrlY()D

    move-result-wide v10

    invoke-static/range {v0 .. v11}, Lcom/itextpdf/awt/geom/Line2D;->ptSegDist(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFlatnessSq()D
    .locals 12

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/QuadCurve2D;->getX1()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/QuadCurve2D;->getY1()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/QuadCurve2D;->getX2()D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/QuadCurve2D;->getY2()D

    move-result-wide v6

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/QuadCurve2D;->getCtrlX()D

    move-result-wide v8

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/QuadCurve2D;->getCtrlY()D

    move-result-wide v10

    invoke-static/range {v0 .. v11}, Lcom/itextpdf/awt/geom/Line2D;->ptSegDistSq(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public abstract getP1()Lcom/itextpdf/awt/geom/Point2D;
.end method

.method public abstract getP2()Lcom/itextpdf/awt/geom/Point2D;
.end method

.method public getPathIterator(Lcom/itextpdf/awt/geom/AffineTransform;)Lcom/itextpdf/awt/geom/PathIterator;
    .locals 1
    .parameter "t"

    .prologue
    .line 478
    new-instance v0, Lcom/itextpdf/awt/geom/QuadCurve2D$Iterator;

    invoke-direct {v0, p0, p0, p1}, Lcom/itextpdf/awt/geom/QuadCurve2D$Iterator;-><init>(Lcom/itextpdf/awt/geom/QuadCurve2D;Lcom/itextpdf/awt/geom/QuadCurve2D;Lcom/itextpdf/awt/geom/AffineTransform;)V

    return-object v0
.end method

.method public getPathIterator(Lcom/itextpdf/awt/geom/AffineTransform;D)Lcom/itextpdf/awt/geom/PathIterator;
    .locals 2
    .parameter "t"
    .parameter "flatness"

    .prologue
    .line 482
    new-instance v0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;

    invoke-virtual {p0, p1}, Lcom/itextpdf/awt/geom/QuadCurve2D;->getPathIterator(Lcom/itextpdf/awt/geom/AffineTransform;)Lcom/itextpdf/awt/geom/PathIterator;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lcom/itextpdf/awt/geom/FlatteningPathIterator;-><init>(Lcom/itextpdf/awt/geom/PathIterator;D)V

    return-object v0
.end method

.method public abstract getX1()D
.end method

.method public abstract getX2()D
.end method

.method public abstract getY1()D
.end method

.method public abstract getY2()D
.end method

.method public intersects(DDDD)Z
    .locals 2
    .parameter "rx"
    .parameter "ry"
    .parameter "rw"
    .parameter "rh"

    .prologue
    .line 457
    invoke-static/range {p0 .. p8}, Lcom/itextpdf/awt/geom/gl/Crossing;->intersectShape(Lcom/itextpdf/awt/geom/Shape;DDDD)I

    move-result v0

    .line 458
    .local v0, cross:I
    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Lcom/itextpdf/awt/geom/gl/Crossing;->isInsideEvenOdd(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public intersects(Lcom/itextpdf/awt/geom/Rectangle2D;)Z
    .locals 9
    .parameter "r"

    .prologue
    .line 466
    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v5

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/awt/geom/QuadCurve2D;->intersects(DDDD)Z

    move-result v0

    return v0
.end method

.method public abstract setCurve(DDDDDD)V
.end method

.method public setCurve(Lcom/itextpdf/awt/geom/Point2D;Lcom/itextpdf/awt/geom/Point2D;Lcom/itextpdf/awt/geom/Point2D;)V
    .locals 13
    .parameter "p1"
    .parameter "cp"
    .parameter "p2"

    .prologue
    .line 322
    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Point2D;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Point2D;->getY()D

    move-result-wide v3

    invoke-virtual {p2}, Lcom/itextpdf/awt/geom/Point2D;->getX()D

    move-result-wide v5

    invoke-virtual {p2}, Lcom/itextpdf/awt/geom/Point2D;->getY()D

    move-result-wide v7

    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/awt/geom/Point2D;->getX()D

    move-result-wide v9

    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/awt/geom/Point2D;->getY()D

    move-result-wide v11

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Lcom/itextpdf/awt/geom/QuadCurve2D;->setCurve(DDDDDD)V

    .line 323
    return-void
.end method

.method public setCurve(Lcom/itextpdf/awt/geom/QuadCurve2D;)V
    .locals 13
    .parameter "curve"

    .prologue
    .line 340
    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/QuadCurve2D;->getX1()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/QuadCurve2D;->getY1()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/QuadCurve2D;->getCtrlX()D

    move-result-wide v5

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/QuadCurve2D;->getCtrlY()D

    move-result-wide v7

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/QuadCurve2D;->getX2()D

    move-result-wide v9

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/QuadCurve2D;->getY2()D

    move-result-wide v11

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Lcom/itextpdf/awt/geom/QuadCurve2D;->setCurve(DDDDDD)V

    .line 344
    return-void
.end method

.method public setCurve([DI)V
    .locals 13
    .parameter "coords"
    .parameter "offset"

    .prologue
    .line 326
    add-int/lit8 v0, p2, 0x0

    aget-wide v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    aget-wide v3, p1, v0

    add-int/lit8 v0, p2, 0x2

    aget-wide v5, p1, v0

    add-int/lit8 v0, p2, 0x3

    aget-wide v7, p1, v0

    add-int/lit8 v0, p2, 0x4

    aget-wide v9, p1, v0

    add-int/lit8 v0, p2, 0x5

    aget-wide v11, p1, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Lcom/itextpdf/awt/geom/QuadCurve2D;->setCurve(DDDDDD)V

    .line 330
    return-void
.end method

.method public setCurve([Lcom/itextpdf/awt/geom/Point2D;I)V
    .locals 13
    .parameter "points"
    .parameter "offset"

    .prologue
    .line 333
    add-int/lit8 v0, p2, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lcom/itextpdf/awt/geom/Point2D;->getX()D

    move-result-wide v1

    add-int/lit8 v0, p2, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lcom/itextpdf/awt/geom/Point2D;->getY()D

    move-result-wide v3

    add-int/lit8 v0, p2, 0x1

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lcom/itextpdf/awt/geom/Point2D;->getX()D

    move-result-wide v5

    add-int/lit8 v0, p2, 0x1

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lcom/itextpdf/awt/geom/Point2D;->getY()D

    move-result-wide v7

    add-int/lit8 v0, p2, 0x2

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lcom/itextpdf/awt/geom/Point2D;->getX()D

    move-result-wide v9

    add-int/lit8 v0, p2, 0x2

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lcom/itextpdf/awt/geom/Point2D;->getY()D

    move-result-wide v11

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Lcom/itextpdf/awt/geom/QuadCurve2D;->setCurve(DDDDDD)V

    .line 337
    return-void
.end method

.method public subdivide(Lcom/itextpdf/awt/geom/QuadCurve2D;Lcom/itextpdf/awt/geom/QuadCurve2D;)V
    .locals 0
    .parameter "left"
    .parameter "right"

    .prologue
    .line 382
    invoke-static {p0, p1, p2}, Lcom/itextpdf/awt/geom/QuadCurve2D;->subdivide(Lcom/itextpdf/awt/geom/QuadCurve2D;Lcom/itextpdf/awt/geom/QuadCurve2D;Lcom/itextpdf/awt/geom/QuadCurve2D;)V

    .line 383
    return-void
.end method
