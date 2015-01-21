.class public abstract Lcom/itextpdf/awt/geom/CubicCurve2D;
.super Ljava/lang/Object;
.source "CubicCurve2D.java"

# interfaces
.implements Lcom/itextpdf/awt/geom/Shape;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/awt/geom/CubicCurve2D$Iterator;,
        Lcom/itextpdf/awt/geom/CubicCurve2D$Double;,
        Lcom/itextpdf/awt/geom/CubicCurve2D$Float;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    return-void
.end method

.method public static getFlatness(DDDDDDDD)D
    .locals 2
    .parameter "x1"
    .parameter "y1"
    .parameter "ctrlx1"
    .parameter "ctrly1"
    .parameter "ctrlx2"
    .parameter "ctrly2"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 444
    invoke-static/range {p0 .. p15}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getFlatnessSq(DDDDDDDD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getFlatness([DI)D
    .locals 16
    .parameter "coords"
    .parameter "offset"

    .prologue
    .line 448
    add-int/lit8 v0, p1, 0x0

    aget-wide v0, p0, v0

    add-int/lit8 v2, p1, 0x1

    aget-wide v2, p0, v2

    add-int/lit8 v4, p1, 0x2

    aget-wide v4, p0, v4

    add-int/lit8 v6, p1, 0x3

    aget-wide v6, p0, v6

    add-int/lit8 v8, p1, 0x4

    aget-wide v8, p0, v8

    add-int/lit8 v10, p1, 0x5

    aget-wide v10, p0, v10

    add-int/lit8 v12, p1, 0x6

    aget-wide v12, p0, v12

    add-int/lit8 v14, p1, 0x7

    aget-wide v14, p0, v14

    invoke-static/range {v0 .. v15}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getFlatness(DDDDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getFlatnessSq(DDDDDDDD)D
    .locals 14
    .parameter "x1"
    .parameter "y1"
    .parameter "ctrlx1"
    .parameter "ctrly1"
    .parameter "ctrlx2"
    .parameter "ctrly2"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 420
    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p12

    move-wide/from16 v6, p14

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-static/range {v0 .. v11}, Lcom/itextpdf/awt/geom/Line2D;->ptSegDistSq(DDDDDD)D

    move-result-wide v12

    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p12

    move-wide/from16 v6, p14

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    invoke-static/range {v0 .. v11}, Lcom/itextpdf/awt/geom/Line2D;->ptSegDistSq(DDDDDD)D

    move-result-wide v0

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getFlatnessSq([DI)D
    .locals 16
    .parameter "coords"
    .parameter "offset"

    .prologue
    .line 426
    add-int/lit8 v0, p1, 0x0

    aget-wide v0, p0, v0

    add-int/lit8 v2, p1, 0x1

    aget-wide v2, p0, v2

    add-int/lit8 v4, p1, 0x2

    aget-wide v4, p0, v4

    add-int/lit8 v6, p1, 0x3

    aget-wide v6, p0, v6

    add-int/lit8 v8, p1, 0x4

    aget-wide v8, p0, v8

    add-int/lit8 v10, p1, 0x5

    aget-wide v10, p0, v10

    add-int/lit8 v12, p1, 0x6

    aget-wide v12, p0, v12

    add-int/lit8 v14, p1, 0x7

    aget-wide v14, p0, v14

    invoke-static/range {v0 .. v15}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getFlatnessSq(DDDDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static solveCubic([D)I
    .locals 1
    .parameter "eqn"

    .prologue
    .line 532
    invoke-static {p0, p0}, Lcom/itextpdf/awt/geom/CubicCurve2D;->solveCubic([D[D)I

    move-result v0

    return v0
.end method

.method public static solveCubic([D[D)I
    .locals 1
    .parameter "eqn"
    .parameter "res"

    .prologue
    .line 536
    invoke-static {p0, p1}, Lcom/itextpdf/awt/geom/gl/Crossing;->solveCubic([D[D)I

    move-result v0

    return v0
.end method

.method public static subdivide(Lcom/itextpdf/awt/geom/CubicCurve2D;Lcom/itextpdf/awt/geom/CubicCurve2D;Lcom/itextpdf/awt/geom/CubicCurve2D;)V
    .locals 34
    .parameter "src"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 460
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getX1()D

    move-result-wide v1

    .line 461
    .local v1, x1:D
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getY1()D

    move-result-wide v3

    .line 462
    .local v3, y1:D
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getCtrlX1()D

    move-result-wide v5

    .line 463
    .local v5, cx1:D
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getCtrlY1()D

    move-result-wide v7

    .line 464
    .local v7, cy1:D
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getCtrlX2()D

    move-result-wide v26

    .line 465
    .local v26, cx2:D
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getCtrlY2()D

    move-result-wide v28

    .line 466
    .local v28, cy2:D
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getX2()D

    move-result-wide v30

    .line 467
    .local v30, x2:D
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getY2()D

    move-result-wide v32

    .line 468
    .local v32, y2:D
    add-double v17, v5, v26

    const-wide/high16 v19, 0x4000

    div-double v13, v17, v19

    .line 469
    .local v13, cx:D
    add-double v17, v7, v28

    const-wide/high16 v19, 0x4000

    div-double v15, v17, v19

    .line 470
    .local v15, cy:D
    add-double v17, v1, v5

    const-wide/high16 v19, 0x4000

    div-double v5, v17, v19

    .line 471
    add-double v17, v3, v7

    const-wide/high16 v19, 0x4000

    div-double v7, v17, v19

    .line 472
    add-double v17, v30, v26

    const-wide/high16 v19, 0x4000

    div-double v26, v17, v19

    .line 473
    add-double v17, v32, v28

    const-wide/high16 v19, 0x4000

    div-double v28, v17, v19

    .line 474
    add-double v17, v5, v13

    const-wide/high16 v19, 0x4000

    div-double v9, v17, v19

    .line 475
    .local v9, ax:D
    add-double v17, v7, v15

    const-wide/high16 v19, 0x4000

    div-double v11, v17, v19

    .line 476
    .local v11, ay:D
    add-double v17, v26, v13

    const-wide/high16 v19, 0x4000

    div-double v22, v17, v19

    .line 477
    .local v22, bx:D
    add-double v17, v28, v15

    const-wide/high16 v19, 0x4000

    div-double v24, v17, v19

    .line 478
    .local v24, by:D
    add-double v17, v9, v22

    const-wide/high16 v19, 0x4000

    div-double v13, v17, v19

    .line 479
    add-double v17, v11, v24

    const-wide/high16 v19, 0x4000

    div-double v15, v17, v19

    .line 480
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    .line 481
    invoke-virtual/range {v0 .. v16}, Lcom/itextpdf/awt/geom/CubicCurve2D;->setCurve(DDDDDDDD)V

    .line 483
    :cond_0
    if-eqz p2, :cond_1

    move-object/from16 v17, p2

    move-wide/from16 v18, v13

    move-wide/from16 v20, v15

    .line 484
    invoke-virtual/range {v17 .. v33}, Lcom/itextpdf/awt/geom/CubicCurve2D;->setCurve(DDDDDDDD)V

    .line 486
    :cond_1
    return-void
.end method

.method public static subdivide([DI[DI[DI)V
    .locals 32
    .parameter "src"
    .parameter "srcOff"
    .parameter "left"
    .parameter "leftOff"
    .parameter "right"
    .parameter "rightOff"

    .prologue
    .line 489
    add-int/lit8 v28, p1, 0x0

    aget-wide v20, p0, v28

    .line 490
    .local v20, x1:D
    add-int/lit8 v28, p1, 0x1

    aget-wide v24, p0, v28

    .line 491
    .local v24, y1:D
    add-int/lit8 v28, p1, 0x2

    aget-wide v10, p0, v28

    .line 492
    .local v10, cx1:D
    add-int/lit8 v28, p1, 0x3

    aget-wide v16, p0, v28

    .line 493
    .local v16, cy1:D
    add-int/lit8 v28, p1, 0x4

    aget-wide v12, p0, v28

    .line 494
    .local v12, cx2:D
    add-int/lit8 v28, p1, 0x5

    aget-wide v18, p0, v28

    .line 495
    .local v18, cy2:D
    add-int/lit8 v28, p1, 0x6

    aget-wide v22, p0, v28

    .line 496
    .local v22, x2:D
    add-int/lit8 v28, p1, 0x7

    aget-wide v26, p0, v28

    .line 497
    .local v26, y2:D
    add-double v28, v10, v12

    const-wide/high16 v30, 0x4000

    div-double v8, v28, v30

    .line 498
    .local v8, cx:D
    add-double v28, v16, v18

    const-wide/high16 v30, 0x4000

    div-double v14, v28, v30

    .line 499
    .local v14, cy:D
    add-double v28, v20, v10

    const-wide/high16 v30, 0x4000

    div-double v10, v28, v30

    .line 500
    add-double v28, v24, v16

    const-wide/high16 v30, 0x4000

    div-double v16, v28, v30

    .line 501
    add-double v28, v22, v12

    const-wide/high16 v30, 0x4000

    div-double v12, v28, v30

    .line 502
    add-double v28, v26, v18

    const-wide/high16 v30, 0x4000

    div-double v18, v28, v30

    .line 503
    add-double v28, v10, v8

    const-wide/high16 v30, 0x4000

    div-double v0, v28, v30

    .line 504
    .local v0, ax:D
    add-double v28, v16, v14

    const-wide/high16 v30, 0x4000

    div-double v2, v28, v30

    .line 505
    .local v2, ay:D
    add-double v28, v12, v8

    const-wide/high16 v30, 0x4000

    div-double v4, v28, v30

    .line 506
    .local v4, bx:D
    add-double v28, v18, v14

    const-wide/high16 v30, 0x4000

    div-double v6, v28, v30

    .line 507
    .local v6, by:D
    add-double v28, v0, v4

    const-wide/high16 v30, 0x4000

    div-double v8, v28, v30

    .line 508
    add-double v28, v2, v6

    const-wide/high16 v30, 0x4000

    div-double v14, v28, v30

    .line 509
    if-eqz p2, :cond_0

    .line 510
    add-int/lit8 v28, p3, 0x0

    aput-wide v20, p2, v28

    .line 511
    add-int/lit8 v28, p3, 0x1

    aput-wide v24, p2, v28

    .line 512
    add-int/lit8 v28, p3, 0x2

    aput-wide v10, p2, v28

    .line 513
    add-int/lit8 v28, p3, 0x3

    aput-wide v16, p2, v28

    .line 514
    add-int/lit8 v28, p3, 0x4

    aput-wide v0, p2, v28

    .line 515
    add-int/lit8 v28, p3, 0x5

    aput-wide v2, p2, v28

    .line 516
    add-int/lit8 v28, p3, 0x6

    aput-wide v8, p2, v28

    .line 517
    add-int/lit8 v28, p3, 0x7

    aput-wide v14, p2, v28

    .line 519
    :cond_0
    if-eqz p4, :cond_1

    .line 520
    add-int/lit8 v28, p5, 0x0

    aput-wide v8, p4, v28

    .line 521
    add-int/lit8 v28, p5, 0x1

    aput-wide v14, p4, v28

    .line 522
    add-int/lit8 v28, p5, 0x2

    aput-wide v4, p4, v28

    .line 523
    add-int/lit8 v28, p5, 0x3

    aput-wide v6, p4, v28

    .line 524
    add-int/lit8 v28, p5, 0x4

    aput-wide v12, p4, v28

    .line 525
    add-int/lit8 v28, p5, 0x5

    aput-wide v18, p4, v28

    .line 526
    add-int/lit8 v28, p5, 0x6

    aput-wide v22, p4, v28

    .line 527
    add-int/lit8 v28, p5, 0x7

    aput-wide v26, p4, v28

    .line 529
    :cond_1
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 580
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 581
    :catch_0
    move-exception v0

    .line 582
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
    .line 540
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
    .line 544
    invoke-static/range {p0 .. p8}, Lcom/itextpdf/awt/geom/gl/Crossing;->intersectShape(Lcom/itextpdf/awt/geom/Shape;DDDD)I

    move-result v0

    .line 545
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
    .line 554
    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Point2D;->getX()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Point2D;->getY()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itextpdf/awt/geom/CubicCurve2D;->contains(DD)Z

    move-result v0

    return v0
.end method

.method public contains(Lcom/itextpdf/awt/geom/Rectangle2D;)Z
    .locals 9
    .parameter "r"

    .prologue
    .line 562
    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v5

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/awt/geom/CubicCurve2D;->contains(DDDD)Z

    move-result v0

    return v0
.end method

.method public getBounds()Lcom/itextpdf/awt/geom/Rectangle;
    .locals 1

    .prologue
    .line 566
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getBounds2D()Lcom/itextpdf/awt/geom/Rectangle2D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/awt/geom/Rectangle2D;->getBounds()Lcom/itextpdf/awt/geom/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public abstract getCtrlP1()Lcom/itextpdf/awt/geom/Point2D;
.end method

.method public abstract getCtrlP2()Lcom/itextpdf/awt/geom/Point2D;
.end method

.method public abstract getCtrlX1()D
.end method

.method public abstract getCtrlX2()D
.end method

.method public abstract getCtrlY1()D
.end method

.method public abstract getCtrlY2()D
.end method

.method public getFlatness()D
    .locals 16

    .prologue
    .line 434
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getX1()D

    move-result-wide v0

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getY1()D

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getCtrlX1()D

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getCtrlY1()D

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getCtrlX2()D

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getCtrlY2()D

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getX2()D

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getY2()D

    move-result-wide v14

    invoke-static/range {v0 .. v15}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getFlatness(DDDDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFlatnessSq()D
    .locals 16

    .prologue
    .line 410
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getX1()D

    move-result-wide v0

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getY1()D

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getCtrlX1()D

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getCtrlY1()D

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getCtrlX2()D

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getCtrlY2()D

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getX2()D

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getY2()D

    move-result-wide v14

    invoke-static/range {v0 .. v15}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getFlatnessSq(DDDDDDDD)D

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
    .line 570
    new-instance v0, Lcom/itextpdf/awt/geom/CubicCurve2D$Iterator;

    invoke-direct {v0, p0, p0, p1}, Lcom/itextpdf/awt/geom/CubicCurve2D$Iterator;-><init>(Lcom/itextpdf/awt/geom/CubicCurve2D;Lcom/itextpdf/awt/geom/CubicCurve2D;Lcom/itextpdf/awt/geom/AffineTransform;)V

    return-object v0
.end method

.method public getPathIterator(Lcom/itextpdf/awt/geom/AffineTransform;D)Lcom/itextpdf/awt/geom/PathIterator;
    .locals 2
    .parameter "at"
    .parameter "flatness"

    .prologue
    .line 574
    new-instance v0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;

    invoke-virtual {p0, p1}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getPathIterator(Lcom/itextpdf/awt/geom/AffineTransform;)Lcom/itextpdf/awt/geom/PathIterator;

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
    .line 549
    invoke-static/range {p0 .. p8}, Lcom/itextpdf/awt/geom/gl/Crossing;->intersectShape(Lcom/itextpdf/awt/geom/Shape;DDDD)I

    move-result v0

    .line 550
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
    .line 558
    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v5

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/awt/geom/CubicCurve2D;->intersects(DDDD)Z

    move-result v0

    return v0
.end method

.method public abstract setCurve(DDDDDDDD)V
.end method

.method public setCurve(Lcom/itextpdf/awt/geom/CubicCurve2D;)V
    .locals 17
    .parameter "curve"

    .prologue
    .line 402
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getX1()D

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getY1()D

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getCtrlX1()D

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getCtrlY1()D

    move-result-wide v7

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getCtrlX2()D

    move-result-wide v9

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getCtrlY2()D

    move-result-wide v11

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getX2()D

    move-result-wide v13

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getY2()D

    move-result-wide v15

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v16}, Lcom/itextpdf/awt/geom/CubicCurve2D;->setCurve(DDDDDDDD)V

    .line 407
    return-void
.end method

.method public setCurve(Lcom/itextpdf/awt/geom/Point2D;Lcom/itextpdf/awt/geom/Point2D;Lcom/itextpdf/awt/geom/Point2D;Lcom/itextpdf/awt/geom/Point2D;)V
    .locals 17
    .parameter "p1"
    .parameter "cp1"
    .parameter "cp2"
    .parameter "p2"

    .prologue
    .line 378
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/awt/geom/Point2D;->getX()D

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/awt/geom/Point2D;->getY()D

    move-result-wide v3

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/awt/geom/Point2D;->getX()D

    move-result-wide v5

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/awt/geom/Point2D;->getY()D

    move-result-wide v7

    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/awt/geom/Point2D;->getX()D

    move-result-wide v9

    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/awt/geom/Point2D;->getY()D

    move-result-wide v11

    invoke-virtual/range {p4 .. p4}, Lcom/itextpdf/awt/geom/Point2D;->getX()D

    move-result-wide v13

    invoke-virtual/range {p4 .. p4}, Lcom/itextpdf/awt/geom/Point2D;->getY()D

    move-result-wide v15

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v16}, Lcom/itextpdf/awt/geom/CubicCurve2D;->setCurve(DDDDDDDD)V

    .line 383
    return-void
.end method

.method public setCurve([DI)V
    .locals 17
    .parameter "coords"
    .parameter "offset"

    .prologue
    .line 386
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

    add-int/lit8 v0, p2, 0x6

    aget-wide v13, p1, v0

    add-int/lit8 v0, p2, 0x7

    aget-wide v15, p1, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v16}, Lcom/itextpdf/awt/geom/CubicCurve2D;->setCurve(DDDDDDDD)V

    .line 391
    return-void
.end method

.method public setCurve([Lcom/itextpdf/awt/geom/Point2D;I)V
    .locals 17
    .parameter "points"
    .parameter "offset"

    .prologue
    .line 394
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

    add-int/lit8 v0, p2, 0x3

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lcom/itextpdf/awt/geom/Point2D;->getX()D

    move-result-wide v13

    add-int/lit8 v0, p2, 0x3

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lcom/itextpdf/awt/geom/Point2D;->getY()D

    move-result-wide v15

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v16}, Lcom/itextpdf/awt/geom/CubicCurve2D;->setCurve(DDDDDDDD)V

    .line 399
    return-void
.end method

.method public subdivide(Lcom/itextpdf/awt/geom/CubicCurve2D;Lcom/itextpdf/awt/geom/CubicCurve2D;)V
    .locals 0
    .parameter "left"
    .parameter "right"

    .prologue
    .line 456
    invoke-static {p0, p1, p2}, Lcom/itextpdf/awt/geom/CubicCurve2D;->subdivide(Lcom/itextpdf/awt/geom/CubicCurve2D;Lcom/itextpdf/awt/geom/CubicCurve2D;Lcom/itextpdf/awt/geom/CubicCurve2D;)V

    .line 457
    return-void
.end method
