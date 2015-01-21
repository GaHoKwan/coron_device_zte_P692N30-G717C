.class public abstract Lcom/itextpdf/awt/geom/Rectangle2D;
.super Lcom/itextpdf/awt/geom/RectangularShape;
.source "Rectangle2D.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;,
        Lcom/itextpdf/awt/geom/Rectangle2D$Double;,
        Lcom/itextpdf/awt/geom/Rectangle2D$Float;
    }
.end annotation


# static fields
.field public static final OUT_BOTTOM:I = 0x8

.field public static final OUT_LEFT:I = 0x1

.field public static final OUT_RIGHT:I = 0x4

.field public static final OUT_TOP:I = 0x2


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 417
    invoke-direct {p0}, Lcom/itextpdf/awt/geom/RectangularShape;-><init>()V

    .line 418
    return-void
.end method

.method public static intersect(Lcom/itextpdf/awt/geom/Rectangle2D;Lcom/itextpdf/awt/geom/Rectangle2D;Lcom/itextpdf/awt/geom/Rectangle2D;)V
    .locals 13
    .parameter "src1"
    .parameter "src2"
    .parameter "dst"

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Rectangle2D;->getMinX()D

    move-result-wide v5

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getMinX()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    .line 508
    .local v1, x1:D
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Rectangle2D;->getMinY()D

    move-result-wide v5

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getMinY()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    .line 509
    .local v3, y1:D
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Rectangle2D;->getMaxX()D

    move-result-wide v5

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getMaxX()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v9

    .line 510
    .local v9, x2:D
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Rectangle2D;->getMaxY()D

    move-result-wide v5

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getMaxY()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v11

    .line 511
    .local v11, y2:D
    sub-double v5, v9, v1

    sub-double v7, v11, v3

    move-object v0, p2

    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/awt/geom/Rectangle2D;->setFrame(DDDD)V

    .line 512
    return-void
.end method

.method public static union(Lcom/itextpdf/awt/geom/Rectangle2D;Lcom/itextpdf/awt/geom/Rectangle2D;Lcom/itextpdf/awt/geom/Rectangle2D;)V
    .locals 13
    .parameter "src1"
    .parameter "src2"
    .parameter "dst"

    .prologue
    .line 515
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Rectangle2D;->getMinX()D

    move-result-wide v5

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getMinX()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    .line 516
    .local v1, x1:D
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Rectangle2D;->getMinY()D

    move-result-wide v5

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getMinY()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    .line 517
    .local v3, y1:D
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Rectangle2D;->getMaxX()D

    move-result-wide v5

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getMaxX()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    .line 518
    .local v9, x2:D
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Rectangle2D;->getMaxY()D

    move-result-wide v5

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getMaxY()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    .line 519
    .local v11, y2:D
    sub-double v5, v9, v1

    sub-double v7, v11, v3

    move-object v0, p2

    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/awt/geom/Rectangle2D;->setFrame(DDDD)V

    .line 520
    return-void
.end method


# virtual methods
.method public add(DD)V
    .locals 15
    .parameter "x"
    .parameter "y"

    .prologue
    .line 523
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Rectangle2D;->getMinX()D

    move-result-wide v7

    move-wide/from16 v0, p1

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    .line 524
    .local v3, x1:D
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Rectangle2D;->getMinY()D

    move-result-wide v7

    move-wide/from16 v0, p3

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    .line 525
    .local v5, y1:D
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Rectangle2D;->getMaxX()D

    move-result-wide v7

    move-wide/from16 v0, p1

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    .line 526
    .local v11, x2:D
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Rectangle2D;->getMaxY()D

    move-result-wide v7

    move-wide/from16 v0, p3

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v13

    .line 527
    .local v13, y2:D
    sub-double v7, v11, v3

    sub-double v9, v13, v5

    move-object v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/itextpdf/awt/geom/Rectangle2D;->setRect(DDDD)V

    .line 528
    return-void
.end method

.method public add(Lcom/itextpdf/awt/geom/Point2D;)V
    .locals 4
    .parameter "p"

    .prologue
    .line 531
    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Point2D;->getX()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Point2D;->getY()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itextpdf/awt/geom/Rectangle2D;->add(DD)V

    .line 532
    return-void
.end method

.method public add(Lcom/itextpdf/awt/geom/Rectangle2D;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 535
    invoke-static {p0, p1, p0}, Lcom/itextpdf/awt/geom/Rectangle2D;->union(Lcom/itextpdf/awt/geom/Rectangle2D;Lcom/itextpdf/awt/geom/Rectangle2D;Lcom/itextpdf/awt/geom/Rectangle2D;)V

    .line 536
    return-void
.end method

.method public contains(DD)Z
    .locals 11
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v8, 0x0

    .line 462
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Rectangle2D;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 471
    :cond_0
    :goto_0
    return v8

    .line 466
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Rectangle2D;->getX()D

    move-result-wide v0

    .line 467
    .local v0, x1:D
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Rectangle2D;->getY()D

    move-result-wide v4

    .line 468
    .local v4, y1:D
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v9

    add-double v2, v0, v9

    .line 469
    .local v2, x2:D
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v9

    add-double v6, v4, v9

    .line 471
    .local v6, y2:D
    cmpg-double v9, v0, p1

    if-gtz v9, :cond_0

    cmpg-double v9, p1, v2

    if-gez v9, :cond_0

    cmpg-double v9, v4, p3

    if-gtz v9, :cond_0

    cmpg-double v9, p3, v6

    if-gez v9, :cond_0

    const/4 v8, 0x1

    goto :goto_0
.end method

.method public contains(DDDD)Z
    .locals 10
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 492
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Rectangle2D;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    const-wide/16 v8, 0x0

    cmpg-double v8, p5, v8

    if-lez v8, :cond_0

    const-wide/16 v8, 0x0

    cmpg-double v8, p7, v8

    if-gtz v8, :cond_1

    .line 493
    :cond_0
    const/4 v8, 0x0

    .line 501
    :goto_0
    return v8

    .line 496
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Rectangle2D;->getX()D

    move-result-wide v0

    .line 497
    .local v0, x1:D
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Rectangle2D;->getY()D

    move-result-wide v4

    .line 498
    .local v4, y1:D
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v8

    add-double v2, v0, v8

    .line 499
    .local v2, x2:D
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v8

    add-double v6, v4, v8

    .line 501
    .local v6, y2:D
    cmpg-double v8, v0, p1

    if-gtz v8, :cond_2

    add-double v8, p1, p5

    cmpg-double v8, v8, v2

    if-gtz v8, :cond_2

    cmpg-double v8, v4, p3

    if-gtz v8, :cond_2

    add-double v8, p3, p7

    cmpg-double v8, v8, v6

    if-gtz v8, :cond_2

    const/4 v8, 0x1

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public abstract createIntersection(Lcom/itextpdf/awt/geom/Rectangle2D;)Lcom/itextpdf/awt/geom/Rectangle2D;
.end method

.method public abstract createUnion(Lcom/itextpdf/awt/geom/Rectangle2D;)Lcom/itextpdf/awt/geom/Rectangle2D;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 559
    if-ne p1, p0, :cond_1

    .line 570
    :cond_0
    :goto_0
    return v1

    .line 562
    :cond_1
    instance-of v3, p1, Lcom/itextpdf/awt/geom/Rectangle2D;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 563
    check-cast v0, Lcom/itextpdf/awt/geom/Rectangle2D;

    .line 564
    .local v0, r:Lcom/itextpdf/awt/geom/Rectangle2D;
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Rectangle2D;->getX()D

    move-result-wide v3

    invoke-virtual {v0}, Lcom/itextpdf/awt/geom/Rectangle2D;->getX()D

    move-result-wide v5

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Rectangle2D;->getY()D

    move-result-wide v3

    invoke-virtual {v0}, Lcom/itextpdf/awt/geom/Rectangle2D;->getY()D

    move-result-wide v5

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v3

    invoke-virtual {v0}, Lcom/itextpdf/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v5

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v3

    invoke-virtual {v0}, Lcom/itextpdf/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v5

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0           #r:Lcom/itextpdf/awt/geom/Rectangle2D;
    :cond_3
    move v1, v2

    .line 570
    goto :goto_0
.end method

.method public getBounds2D()Lcom/itextpdf/awt/geom/Rectangle2D;
    .locals 1

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Rectangle2D;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/awt/geom/Rectangle2D;

    return-object v0
.end method

.method public getPathIterator(Lcom/itextpdf/awt/geom/AffineTransform;)Lcom/itextpdf/awt/geom/PathIterator;
    .locals 1
    .parameter "t"

    .prologue
    .line 539
    new-instance v0, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;

    invoke-direct {v0, p0, p0, p1}, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;-><init>(Lcom/itextpdf/awt/geom/Rectangle2D;Lcom/itextpdf/awt/geom/Rectangle2D;Lcom/itextpdf/awt/geom/AffineTransform;)V

    return-object v0
.end method

.method public getPathIterator(Lcom/itextpdf/awt/geom/AffineTransform;D)Lcom/itextpdf/awt/geom/PathIterator;
    .locals 1
    .parameter "t"
    .parameter "flatness"

    .prologue
    .line 544
    new-instance v0, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;

    invoke-direct {v0, p0, p0, p1}, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;-><init>(Lcom/itextpdf/awt/geom/Rectangle2D;Lcom/itextpdf/awt/geom/Rectangle2D;Lcom/itextpdf/awt/geom/AffineTransform;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 549
    new-instance v0, Lcom/itextpdf/awt/geom/misc/HashCode;

    invoke-direct {v0}, Lcom/itextpdf/awt/geom/misc/HashCode;-><init>()V

    .line 550
    .local v0, hash:Lcom/itextpdf/awt/geom/misc/HashCode;
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Rectangle2D;->getX()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/awt/geom/misc/HashCode;->append(D)Lcom/itextpdf/awt/geom/misc/HashCode;

    .line 551
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Rectangle2D;->getY()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/awt/geom/misc/HashCode;->append(D)Lcom/itextpdf/awt/geom/misc/HashCode;

    .line 552
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/awt/geom/misc/HashCode;->append(D)Lcom/itextpdf/awt/geom/misc/HashCode;

    .line 553
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/awt/geom/misc/HashCode;->append(D)Lcom/itextpdf/awt/geom/misc/HashCode;

    .line 554
    invoke-virtual {v0}, Lcom/itextpdf/awt/geom/misc/HashCode;->hashCode()I

    move-result v1

    return v1
.end method

.method public intersects(DDDD)Z
    .locals 10
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Rectangle2D;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    const-wide/16 v8, 0x0

    cmpg-double v8, p5, v8

    if-lez v8, :cond_0

    const-wide/16 v8, 0x0

    cmpg-double v8, p7, v8

    if-gtz v8, :cond_1

    .line 478
    :cond_0
    const/4 v8, 0x0

    .line 486
    :goto_0
    return v8

    .line 481
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Rectangle2D;->getX()D

    move-result-wide v0

    .line 482
    .local v0, x1:D
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Rectangle2D;->getY()D

    move-result-wide v4

    .line 483
    .local v4, y1:D
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v8

    add-double v2, v0, v8

    .line 484
    .local v2, x2:D
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v8

    add-double v6, v4, v8

    .line 486
    .local v6, y2:D
    add-double v8, p1, p5

    cmpl-double v8, v8, v0

    if-lez v8, :cond_2

    cmpg-double v8, p1, v2

    if-gez v8, :cond_2

    add-double v8, p3, p7

    cmpl-double v8, v8, v4

    if-lez v8, :cond_2

    cmpg-double v8, p3, v6

    if-gez v8, :cond_2

    const/4 v8, 0x1

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public intersectsLine(DDDD)Z
    .locals 24
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 442
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/awt/geom/Rectangle2D;->getX()D

    move-result-wide v0

    .line 443
    .local v0, rx1:D
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/awt/geom/Rectangle2D;->getY()D

    move-result-wide v2

    .line 444
    .local v2, ry1:D
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v8

    add-double v4, v0, v8

    .line 445
    .local v4, rx2:D
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v8

    add-double v6, v2, v8

    .line 446
    .local v6, ry2:D
    cmpg-double v8, v0, p1

    if-gtz v8, :cond_0

    cmpg-double v8, p1, v4

    if-gtz v8, :cond_0

    cmpg-double v8, v2, p3

    if-gtz v8, :cond_0

    cmpg-double v8, p3, v6

    if-lez v8, :cond_2

    :cond_0
    cmpg-double v8, v0, p5

    if-gtz v8, :cond_1

    cmpg-double v8, p5, v4

    if-gtz v8, :cond_1

    cmpg-double v8, v2, p7

    if-gtz v8, :cond_1

    cmpg-double v8, p7, v6

    if-lez v8, :cond_2

    :cond_1
    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    move-wide/from16 v12, p5

    move-wide/from16 v14, p7

    invoke-static/range {v0 .. v15}, Lcom/itextpdf/awt/geom/Line2D;->linesIntersect(DDDDDDDD)Z

    move-result v8

    if-nez v8, :cond_2

    move-wide v8, v4

    move-wide v10, v2

    move-wide v12, v0

    move-wide v14, v6

    move-wide/from16 v16, p1

    move-wide/from16 v18, p3

    move-wide/from16 v20, p5

    move-wide/from16 v22, p7

    invoke-static/range {v8 .. v23}, Lcom/itextpdf/awt/geom/Line2D;->linesIntersect(DDDDDDDD)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    const/4 v8, 0x1

    :goto_0
    return v8

    :cond_3
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public intersectsLine(Lcom/itextpdf/awt/geom/Line2D;)Z
    .locals 9
    .parameter "l"

    .prologue
    .line 454
    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Line2D;->getX1()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Line2D;->getY1()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Line2D;->getX2()D

    move-result-wide v5

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Line2D;->getY2()D

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/awt/geom/Rectangle2D;->intersectsLine(DDDD)Z

    move-result v0

    return v0
.end method

.method public abstract outcode(DD)I
.end method

.method public outcode(Lcom/itextpdf/awt/geom/Point2D;)I
    .locals 4
    .parameter "p"

    .prologue
    .line 458
    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Point2D;->getX()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Point2D;->getY()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itextpdf/awt/geom/Rectangle2D;->outcode(DD)I

    move-result v0

    return v0
.end method

.method public setFrame(DDDD)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 434
    invoke-virtual/range {p0 .. p8}, Lcom/itextpdf/awt/geom/Rectangle2D;->setRect(DDDD)V

    .line 435
    return-void
.end method

.method public abstract setRect(DDDD)V
.end method

.method public setRect(Lcom/itextpdf/awt/geom/Rectangle2D;)V
    .locals 9
    .parameter "r"

    .prologue
    .line 429
    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v5

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/awt/geom/Rectangle2D;->setRect(DDDD)V

    .line 430
    return-void
.end method
