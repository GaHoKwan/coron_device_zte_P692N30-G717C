.class public abstract Lcom/itextpdf/awt/geom/Line2D;
.super Ljava/lang/Object;
.source "Line2D.java"

# interfaces
.implements Lcom/itextpdf/awt/geom/Shape;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/awt/geom/Line2D$Iterator;,
        Lcom/itextpdf/awt/geom/Line2D$Double;,
        Lcom/itextpdf/awt/geom/Line2D$Float;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    return-void
.end method

.method public static linesIntersect(DDDDDDDD)Z
    .locals 10
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"
    .parameter "x3"
    .parameter "y3"
    .parameter "x4"
    .parameter "y4"

    .prologue
    .line 369
    sub-double/2addr p4, p0

    .line 370
    sub-double p6, p6, p2

    .line 371
    sub-double p8, p8, p0

    .line 372
    sub-double p10, p10, p2

    .line 373
    sub-double p12, p12, p0

    .line 374
    sub-double p14, p14, p2

    .line 376
    mul-double v6, p4, p10

    mul-double v8, p8, p6

    sub-double v0, v6, v8

    .line 377
    .local v0, AvB:D
    mul-double v6, p4, p14

    mul-double v8, p12, p6

    sub-double v2, v6, v8

    .line 380
    .local v2, AvC:D
    const-wide/16 v6, 0x0

    cmpl-double v6, v0, v6

    if-nez v6, :cond_8

    const-wide/16 v6, 0x0

    cmpl-double v6, v2, v6

    if-nez v6, :cond_8

    .line 381
    const-wide/16 v6, 0x0

    cmpl-double v6, p4, v6

    if-eqz v6, :cond_3

    .line 382
    mul-double v6, p12, p8

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-lez v6, :cond_0

    mul-double v6, p8, p4

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_2

    const-wide/16 v6, 0x0

    cmpl-double v6, p4, v6

    if-lez v6, :cond_1

    cmpg-double v6, p8, p4

    if-lez v6, :cond_0

    cmpg-double v6, p12, p4

    if-gtz v6, :cond_2

    :cond_0
    const/4 v6, 0x1

    .line 398
    :goto_0
    return v6

    .line 382
    :cond_1
    cmpl-double v6, p8, p4

    if-gez v6, :cond_0

    cmpl-double v6, p12, p4

    if-gez v6, :cond_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 387
    :cond_3
    const-wide/16 v6, 0x0

    cmpl-double v6, p6, v6

    if-eqz v6, :cond_7

    .line 388
    mul-double v6, p14, p10

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-lez v6, :cond_4

    mul-double v6, p10, p6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_6

    const-wide/16 v6, 0x0

    cmpl-double v6, p6, v6

    if-lez v6, :cond_5

    cmpg-double v6, p10, p6

    if-lez v6, :cond_4

    cmpg-double v6, p14, p6

    if-gtz v6, :cond_6

    :cond_4
    const/4 v6, 0x1

    goto :goto_0

    :cond_5
    cmpl-double v6, p10, p6

    if-gez v6, :cond_4

    cmpl-double v6, p14, p6

    if-gez v6, :cond_4

    :cond_6
    const/4 v6, 0x0

    goto :goto_0

    .line 393
    :cond_7
    const/4 v6, 0x0

    goto :goto_0

    .line 396
    :cond_8
    mul-double v6, p8, p14

    mul-double v8, p12, p10

    sub-double v4, v6, v8

    .line 398
    .local v4, BvC:D
    mul-double v6, v0, v2

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_9

    add-double v6, v0, v4

    sub-double/2addr v6, v2

    mul-double/2addr v6, v4

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_9

    const/4 v6, 0x1

    goto :goto_0

    :cond_9
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static ptLineDist(DDDDDD)D
    .locals 2
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"
    .parameter "px"
    .parameter "py"

    .prologue
    .line 466
    invoke-static/range {p0 .. p11}, Lcom/itextpdf/awt/geom/Line2D;->ptLineDistSq(DDDDDD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static ptLineDistSq(DDDDDD)D
    .locals 8
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"
    .parameter "px"
    .parameter "py"

    .prologue
    .line 457
    sub-double/2addr p4, p0

    .line 458
    sub-double/2addr p6, p2

    .line 459
    sub-double p8, p8, p0

    .line 460
    sub-double p10, p10, p2

    .line 461
    mul-double v2, p8, p6

    mul-double v4, p10, p4

    sub-double v0, v2, v4

    .line 462
    .local v0, s:D
    mul-double v2, v0, v0

    mul-double v4, p4, p4

    mul-double v6, p6, p6

    add-double/2addr v4, v6

    div-double/2addr v2, v4

    return-wide v2
.end method

.method public static ptSegDist(DDDDDD)D
    .locals 2
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"
    .parameter "px"
    .parameter "py"

    .prologue
    .line 437
    invoke-static/range {p0 .. p11}, Lcom/itextpdf/awt/geom/Line2D;->ptSegDistSq(DDDDDD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static ptSegDistSq(DDDDDD)D
    .locals 8
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"
    .parameter "px"
    .parameter "py"

    .prologue
    .line 413
    sub-double/2addr p4, p0

    .line 414
    sub-double/2addr p6, p2

    .line 415
    sub-double p8, p8, p0

    .line 416
    sub-double p10, p10, p2

    .line 418
    mul-double v2, p8, p4

    mul-double v4, p10, p6

    add-double/2addr v2, v4

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_1

    .line 419
    mul-double v2, p8, p8

    mul-double v4, p10, p10

    add-double v0, v2, v4

    .line 430
    .local v0, dist:D
    :goto_0
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    .line 431
    const-wide/16 v0, 0x0

    .line 433
    :cond_0
    return-wide v0

    .line 421
    .end local v0           #dist:D
    :cond_1
    sub-double p8, p4, p8

    .line 422
    sub-double p10, p6, p10

    .line 423
    mul-double v2, p8, p4

    mul-double v4, p10, p6

    add-double/2addr v2, v4

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_2

    .line 424
    mul-double v2, p8, p8

    mul-double v4, p10, p10

    add-double v0, v2, v4

    .restart local v0       #dist:D
    goto :goto_0

    .line 426
    .end local v0           #dist:D
    :cond_2
    mul-double v2, p8, p6

    mul-double v4, p10, p4

    sub-double v0, v2, v4

    .line 427
    .restart local v0       #dist:D
    mul-double v2, v0, v0

    mul-double v4, p4, p4

    mul-double v6, p6, p6

    add-double/2addr v4, v6

    div-double v0, v2, v4

    goto :goto_0
.end method

.method public static relativeCCW(DDDDDD)I
    .locals 6
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"
    .parameter "px"
    .parameter "py"

    .prologue
    .line 328
    sub-double/2addr p4, p0

    .line 329
    sub-double/2addr p6, p2

    .line 330
    sub-double/2addr p8, p0

    .line 331
    sub-double p10, p10, p2

    .line 332
    mul-double v2, p8, p6

    mul-double v4, p10, p4

    sub-double v0, v2, v4

    .line 333
    .local v0, t:D
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-nez v2, :cond_0

    .line 334
    mul-double v2, p8, p4

    mul-double v4, p10, p6

    add-double v0, v2, v4

    .line 335
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    .line 336
    sub-double/2addr p8, p4

    .line 337
    sub-double p10, p10, p6

    .line 338
    mul-double v2, p8, p4

    mul-double v4, p10, p6

    add-double v0, v2, v4

    .line 339
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    .line 340
    const-wide/16 v0, 0x0

    .line 345
    :cond_0
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_1

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_1
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 520
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 521
    :catch_0
    move-exception v0

    .line 522
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
    .line 486
    const/4 v0, 0x0

    return v0
.end method

.method public contains(DDDD)Z
    .locals 1
    .parameter "rx"
    .parameter "ry"
    .parameter "rw"
    .parameter "rh"

    .prologue
    .line 498
    const/4 v0, 0x0

    return v0
.end method

.method public contains(Lcom/itextpdf/awt/geom/Point2D;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 490
    const/4 v0, 0x0

    return v0
.end method

.method public contains(Lcom/itextpdf/awt/geom/Rectangle2D;)Z
    .locals 1
    .parameter "r"

    .prologue
    .line 494
    const/4 v0, 0x0

    return v0
.end method

.method public getBounds()Lcom/itextpdf/awt/geom/Rectangle;
    .locals 1

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Line2D;->getBounds2D()Lcom/itextpdf/awt/geom/Rectangle2D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/awt/geom/Rectangle2D;->getBounds()Lcom/itextpdf/awt/geom/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public abstract getP1()Lcom/itextpdf/awt/geom/Point2D;
.end method

.method public abstract getP2()Lcom/itextpdf/awt/geom/Point2D;
.end method

.method public getPathIterator(Lcom/itextpdf/awt/geom/AffineTransform;)Lcom/itextpdf/awt/geom/PathIterator;
    .locals 1
    .parameter "at"

    .prologue
    .line 510
    new-instance v0, Lcom/itextpdf/awt/geom/Line2D$Iterator;

    invoke-direct {v0, p0, p0, p1}, Lcom/itextpdf/awt/geom/Line2D$Iterator;-><init>(Lcom/itextpdf/awt/geom/Line2D;Lcom/itextpdf/awt/geom/Line2D;Lcom/itextpdf/awt/geom/AffineTransform;)V

    return-object v0
.end method

.method public getPathIterator(Lcom/itextpdf/awt/geom/AffineTransform;D)Lcom/itextpdf/awt/geom/PathIterator;
    .locals 1
    .parameter "at"
    .parameter "flatness"

    .prologue
    .line 514
    new-instance v0, Lcom/itextpdf/awt/geom/Line2D$Iterator;

    invoke-direct {v0, p0, p0, p1}, Lcom/itextpdf/awt/geom/Line2D$Iterator;-><init>(Lcom/itextpdf/awt/geom/Line2D;Lcom/itextpdf/awt/geom/Line2D;Lcom/itextpdf/awt/geom/AffineTransform;)V

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
    .locals 9
    .parameter "rx"
    .parameter "ry"
    .parameter "rw"
    .parameter "rh"

    .prologue
    .line 502
    new-instance v0, Lcom/itextpdf/awt/geom/Rectangle2D$Double;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/itextpdf/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/awt/geom/Line2D;->intersects(Lcom/itextpdf/awt/geom/Rectangle2D;)Z

    move-result v0

    return v0
.end method

.method public intersects(Lcom/itextpdf/awt/geom/Rectangle2D;)Z
    .locals 9
    .parameter "r"

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Line2D;->getX1()D

    move-result-wide v1

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Line2D;->getY1()D

    move-result-wide v3

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Line2D;->getX2()D

    move-result-wide v5

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Line2D;->getY2()D

    move-result-wide v7

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/awt/geom/Rectangle2D;->intersectsLine(DDDD)Z

    move-result v0

    return v0
.end method

.method public intersectsLine(DDDD)Z
    .locals 16
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 402
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/awt/geom/Line2D;->getX1()D

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/awt/geom/Line2D;->getY1()D

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/awt/geom/Line2D;->getX2()D

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/awt/geom/Line2D;->getY2()D

    move-result-wide v14

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    invoke-static/range {v0 .. v15}, Lcom/itextpdf/awt/geom/Line2D;->linesIntersect(DDDDDDDD)Z

    move-result v0

    return v0
.end method

.method public intersectsLine(Lcom/itextpdf/awt/geom/Line2D;)Z
    .locals 16
    .parameter "l"

    .prologue
    .line 406
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/awt/geom/Line2D;->getX1()D

    move-result-wide v0

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/awt/geom/Line2D;->getY1()D

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/awt/geom/Line2D;->getX2()D

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/awt/geom/Line2D;->getY2()D

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/awt/geom/Line2D;->getX1()D

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/awt/geom/Line2D;->getY1()D

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/awt/geom/Line2D;->getX2()D

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/awt/geom/Line2D;->getY2()D

    move-result-wide v14

    invoke-static/range {v0 .. v15}, Lcom/itextpdf/awt/geom/Line2D;->linesIntersect(DDDDDDDD)Z

    move-result v0

    return v0
.end method

.method public ptLineDist(DD)D
    .locals 12
    .parameter "px"
    .parameter "py"

    .prologue
    .line 478
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Line2D;->getX1()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Line2D;->getY1()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Line2D;->getX2()D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Line2D;->getY2()D

    move-result-wide v6

    move-wide v8, p1

    move-wide v10, p3

    invoke-static/range {v0 .. v11}, Lcom/itextpdf/awt/geom/Line2D;->ptLineDist(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public ptLineDist(Lcom/itextpdf/awt/geom/Point2D;)D
    .locals 12
    .parameter "p"

    .prologue
    .line 482
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Line2D;->getX1()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Line2D;->getY1()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Line2D;->getX2()D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Line2D;->getY2()D

    move-result-wide v6

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Point2D;->getX()D

    move-result-wide v8

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Point2D;->getY()D

    move-result-wide v10

    invoke-static/range {v0 .. v11}, Lcom/itextpdf/awt/geom/Line2D;->ptLineDist(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public ptLineDistSq(DD)D
    .locals 12
    .parameter "px"
    .parameter "py"

    .prologue
    .line 470
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Line2D;->getX1()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Line2D;->getY1()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Line2D;->getX2()D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Line2D;->getY2()D

    move-result-wide v6

    move-wide v8, p1

    move-wide v10, p3

    invoke-static/range {v0 .. v11}, Lcom/itextpdf/awt/geom/Line2D;->ptLineDistSq(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public ptLineDistSq(Lcom/itextpdf/awt/geom/Point2D;)D
    .locals 12
    .parameter "p"

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Line2D;->getX1()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Line2D;->getY1()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Line2D;->getX2()D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Line2D;->getY2()D

    move-result-wide v6

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Point2D;->getX()D

    move-result-wide v8

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Point2D;->getY()D

    move-result-wide v10

    invoke-static/range {v0 .. v11}, Lcom/itextpdf/awt/geom/Line2D;->ptLineDistSq(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public ptSegDist(DD)D
    .locals 12
    .parameter "px"
    .parameter "py"

    .prologue
    .line 449
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Line2D;->getX1()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Line2D;->getY1()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Line2D;->getX2()D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Line2D;->getY2()D

    move-result-wide v6

    move-wide v8, p1

    move-wide v10, p3

    invoke-static/range {v0 .. v11}, Lcom/itextpdf/awt/geom/Line2D;->ptSegDist(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public ptSegDist(Lcom/itextpdf/awt/geom/Point2D;)D
    .locals 12
    .parameter "p"

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Line2D;->getX1()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Line2D;->getY1()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Line2D;->getX2()D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Line2D;->getY2()D

    move-result-wide v6

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Point2D;->getX()D

    move-result-wide v8

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Point2D;->getY()D

    move-result-wide v10

    invoke-static/range {v0 .. v11}, Lcom/itextpdf/awt/geom/Line2D;->ptSegDist(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public ptSegDistSq(DD)D
    .locals 12
    .parameter "px"
    .parameter "py"

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Line2D;->getX1()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Line2D;->getY1()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Line2D;->getX2()D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Line2D;->getY2()D

    move-result-wide v6

    move-wide v8, p1

    move-wide v10, p3

    invoke-static/range {v0 .. v11}, Lcom/itextpdf/awt/geom/Line2D;->ptSegDistSq(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public ptSegDistSq(Lcom/itextpdf/awt/geom/Point2D;)D
    .locals 12
    .parameter "p"

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Line2D;->getX1()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Line2D;->getY1()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Line2D;->getX2()D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Line2D;->getY2()D

    move-result-wide v6

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Point2D;->getX()D

    move-result-wide v8

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Point2D;->getY()D

    move-result-wide v10

    invoke-static/range {v0 .. v11}, Lcom/itextpdf/awt/geom/Line2D;->ptSegDistSq(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public relativeCCW(DD)I
    .locals 12
    .parameter "px"
    .parameter "py"

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Line2D;->getX1()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Line2D;->getY1()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Line2D;->getX2()D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Line2D;->getY2()D

    move-result-wide v6

    move-wide v8, p1

    move-wide v10, p3

    invoke-static/range {v0 .. v11}, Lcom/itextpdf/awt/geom/Line2D;->relativeCCW(DDDDDD)I

    move-result v0

    return v0
.end method

.method public relativeCCW(Lcom/itextpdf/awt/geom/Point2D;)I
    .locals 12
    .parameter "p"

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Line2D;->getX1()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Line2D;->getY1()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Line2D;->getX2()D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Line2D;->getY2()D

    move-result-wide v6

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Point2D;->getX()D

    move-result-wide v8

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Point2D;->getY()D

    move-result-wide v10

    invoke-static/range {v0 .. v11}, Lcom/itextpdf/awt/geom/Line2D;->relativeCCW(DDDDDD)I

    move-result v0

    return v0
.end method

.method public abstract setLine(DDDD)V
.end method

.method public setLine(Lcom/itextpdf/awt/geom/Line2D;)V
    .locals 9
    .parameter "line"

    .prologue
    .line 317
    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Line2D;->getX1()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Line2D;->getY1()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Line2D;->getX2()D

    move-result-wide v5

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Line2D;->getY2()D

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/awt/geom/Line2D;->setLine(DDDD)V

    .line 318
    return-void
.end method

.method public setLine(Lcom/itextpdf/awt/geom/Point2D;Lcom/itextpdf/awt/geom/Point2D;)V
    .locals 9
    .parameter "p1"
    .parameter "p2"

    .prologue
    .line 313
    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Point2D;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Point2D;->getY()D

    move-result-wide v3

    invoke-virtual {p2}, Lcom/itextpdf/awt/geom/Point2D;->getX()D

    move-result-wide v5

    invoke-virtual {p2}, Lcom/itextpdf/awt/geom/Point2D;->getY()D

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/awt/geom/Line2D;->setLine(DDDD)V

    .line 314
    return-void
.end method
