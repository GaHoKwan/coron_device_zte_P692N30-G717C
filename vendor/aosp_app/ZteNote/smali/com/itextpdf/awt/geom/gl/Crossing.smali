.class public Lcom/itextpdf/awt/geom/gl/Crossing;
.super Ljava/lang/Object;
.source "Crossing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;,
        Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;
    }
.end annotation


# static fields
.field public static final CROSSING:I = 0xff

.field static final DELTA:D = 1.0E-5

.field static final ROOT_DELTA:D = 1.0E-10

.field static final UNKNOWN:I = 0xfe


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    return-void
.end method

.method static crossBound([DIDD)I
    .locals 9
    .parameter "bound"
    .parameter "bc"
    .parameter "py1"
    .parameter "py2"

    .prologue
    .line 564
    if-nez p1, :cond_0

    .line 565
    const/4 v5, 0x0

    .line 600
    :goto_0
    return v5

    .line 569
    :cond_0
    const/4 v4, 0x0

    .line 570
    .local v4, up:I
    const/4 v0, 0x0

    .line 571
    .local v0, down:I
    const/4 v1, 0x2

    .local v1, i:I
    :goto_1
    if-ge v1, p1, :cond_3

    .line 572
    aget-wide v5, p0, v1

    cmpg-double v5, v5, p2

    if-gez v5, :cond_1

    .line 573
    add-int/lit8 v4, v4, 0x1

    .line 571
    :goto_2
    add-int/lit8 v1, v1, 0x4

    goto :goto_1

    .line 576
    :cond_1
    aget-wide v5, p0, v1

    cmpl-double v5, v5, p4

    if-lez v5, :cond_2

    .line 577
    add-int/lit8 v0, v0, 0x1

    .line 578
    goto :goto_2

    .line 580
    :cond_2
    const/16 v5, 0xff

    goto :goto_0

    .line 584
    :cond_3
    if-nez v0, :cond_4

    .line 585
    const/4 v5, 0x0

    goto :goto_0

    .line 588
    :cond_4
    if-eqz v4, :cond_8

    .line 590
    invoke-static {p0, p1}, Lcom/itextpdf/awt/geom/gl/Crossing;->sortBound([DI)V

    .line 591
    const/4 v5, 0x2

    aget-wide v5, p0, v5

    cmpl-double v5, v5, p4

    if-lez v5, :cond_5

    const/4 v2, 0x1

    .line 592
    .local v2, sign:Z
    :goto_3
    const/4 v1, 0x6

    :goto_4
    if-ge v1, p1, :cond_8

    .line 593
    aget-wide v5, p0, v1

    cmpl-double v5, v5, p4

    if-lez v5, :cond_6

    const/4 v3, 0x1

    .line 594
    .local v3, sign2:Z
    :goto_5
    if-eq v2, v3, :cond_7

    add-int/lit8 v5, v1, 0x1

    aget-wide v5, p0, v5

    add-int/lit8 v7, v1, -0x3

    aget-wide v7, p0, v7

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_7

    .line 595
    const/16 v5, 0xff

    goto :goto_0

    .line 591
    .end local v2           #sign:Z
    .end local v3           #sign2:Z
    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    .line 593
    .restart local v2       #sign:Z
    :cond_6
    const/4 v3, 0x0

    goto :goto_5

    .line 597
    .restart local v3       #sign2:Z
    :cond_7
    move v2, v3

    .line 592
    add-int/lit8 v1, v1, 0x4

    goto :goto_4

    .line 600
    .end local v2           #sign:Z
    .end local v3           #sign2:Z
    :cond_8
    const/16 v5, 0xfe

    goto :goto_0
.end method

.method public static crossCubic(DDDDDDDDDD)I
    .locals 21
    .parameter "x1"
    .parameter "y1"
    .parameter "cx1"
    .parameter "cy1"
    .parameter "cx2"
    .parameter "cy2"
    .parameter "x2"
    .parameter "y2"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 440
    cmpg-double v7, p16, p0

    if-gez v7, :cond_0

    cmpg-double v7, p16, p4

    if-gez v7, :cond_0

    cmpg-double v7, p16, p8

    if-gez v7, :cond_0

    cmpg-double v7, p16, p12

    if-ltz v7, :cond_3

    :cond_0
    cmpl-double v7, p16, p0

    if-lez v7, :cond_1

    cmpl-double v7, p16, p4

    if-lez v7, :cond_1

    cmpl-double v7, p16, p8

    if-lez v7, :cond_1

    cmpl-double v7, p16, p12

    if-gtz v7, :cond_3

    :cond_1
    cmpl-double v7, p18, p2

    if-lez v7, :cond_2

    cmpl-double v7, p18, p6

    if-lez v7, :cond_2

    cmpl-double v7, p18, p10

    if-lez v7, :cond_2

    cmpl-double v7, p18, p14

    if-gtz v7, :cond_3

    :cond_2
    cmpl-double v7, p0, p4

    if-nez v7, :cond_4

    cmpl-double v7, p4, p8

    if-nez v7, :cond_4

    cmpl-double v7, p8, p12

    if-nez v7, :cond_4

    .line 445
    :cond_3
    const/4 v7, 0x0

    .line 462
    :goto_0
    return v7

    .line 449
    :cond_4
    cmpg-double v7, p18, p2

    if-gez v7, :cond_8

    cmpg-double v7, p18, p6

    if-gez v7, :cond_8

    cmpg-double v7, p18, p10

    if-gez v7, :cond_8

    cmpg-double v7, p18, p14

    if-gez v7, :cond_8

    cmpl-double v7, p16, p0

    if-eqz v7, :cond_8

    cmpl-double v7, p16, p12

    if-eqz v7, :cond_8

    .line 450
    cmpg-double v7, p0, p12

    if-gez v7, :cond_6

    .line 451
    cmpg-double v7, p0, p16

    if-gez v7, :cond_5

    cmpg-double v7, p16, p12

    if-gez v7, :cond_5

    const/4 v7, 0x1

    goto :goto_0

    :cond_5
    const/4 v7, 0x0

    goto :goto_0

    .line 453
    :cond_6
    cmpg-double v7, p12, p16

    if-gez v7, :cond_7

    cmpg-double v7, p16, p0

    if-gez v7, :cond_7

    const/4 v7, -0x1

    goto :goto_0

    :cond_7
    const/4 v7, 0x0

    goto :goto_0

    .line 457
    :cond_8
    new-instance v2, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;

    move-wide/from16 v3, p0

    move-wide/from16 v5, p2

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move-wide/from16 v11, p8

    move-wide/from16 v13, p10

    move-wide/from16 v15, p12

    move-wide/from16 v17, p14

    invoke-direct/range {v2 .. v18}, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;-><init>(DDDDDDDD)V

    .line 458
    .local v2, c:Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;
    sub-double v19, p16, p0

    .line 459
    .local v19, px:D
    sub-double v5, p18, p2

    .line 460
    .local v5, py:D
    const/4 v7, 0x3

    new-array v3, v7, [D

    .line 461
    .local v3, res:[D
    move-wide/from16 v0, v19

    invoke-virtual {v2, v3, v0, v1}, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->solvePoint([DD)I

    move-result v4

    .local v4, rc:I
    move-wide v7, v5

    .line 462
    invoke-virtual/range {v2 .. v8}, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->cross([DIDD)I

    move-result v7

    goto :goto_0
.end method

.method public static crossLine(DDDDDD)I
    .locals 4
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 370
    cmpg-double v0, p8, p0

    if-gez v0, :cond_0

    cmpg-double v0, p8, p4

    if-ltz v0, :cond_3

    :cond_0
    cmpl-double v0, p8, p0

    if-lez v0, :cond_1

    cmpl-double v0, p8, p4

    if-gtz v0, :cond_3

    :cond_1
    cmpl-double v0, p10, p2

    if-lez v0, :cond_2

    cmpl-double v0, p10, p6

    if-gtz v0, :cond_3

    :cond_2
    cmpl-double v0, p0, p4

    if-nez v0, :cond_4

    .line 375
    :cond_3
    const/4 v0, 0x0

    .line 399
    :goto_0
    return v0

    .line 379
    :cond_4
    cmpg-double v0, p10, p2

    if-gez v0, :cond_6

    cmpg-double v0, p10, p6

    if-gez v0, :cond_6

    .line 389
    :cond_5
    cmpl-double v0, p8, p0

    if-nez v0, :cond_8

    .line 390
    cmpg-double v0, p0, p4

    if-gez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_0

    .line 382
    :cond_6
    sub-double v0, p6, p2

    sub-double v2, p8, p0

    mul-double/2addr v0, v2

    sub-double v2, p4, p0

    div-double/2addr v0, v2

    sub-double v2, p10, p2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_5

    .line 384
    const/4 v0, 0x0

    goto :goto_0

    .line 390
    :cond_7
    const/4 v0, -0x1

    goto :goto_0

    .line 394
    :cond_8
    cmpl-double v0, p8, p4

    if-nez v0, :cond_a

    .line 395
    cmpg-double v0, p0, p4

    if-gez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_0

    :cond_9
    const/4 v0, 0x0

    goto :goto_0

    .line 399
    :cond_a
    cmpg-double v0, p0, p4

    if-gez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_0

    :cond_b
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static crossPath(Lcom/itextpdf/awt/geom/PathIterator;DD)I
    .locals 40
    .parameter "p"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 469
    const/16 v39, 0x0

    .line 471
    .local v39, cross:I
    const-wide/16 v4, 0x0

    .local v4, cy:D
    move-wide v2, v4

    .local v2, cx:D
    move-wide v8, v4

    .local v8, my:D
    move-wide v6, v4

    .line 472
    .local v6, mx:D
    const/4 v10, 0x6

    new-array v0, v10, [D

    move-object/from16 v38, v0

    .line 474
    .local v38, coords:[D
    :goto_0
    invoke-interface/range {p0 .. p0}, Lcom/itextpdf/awt/geom/PathIterator;->isDone()Z

    move-result v10

    if-nez v10, :cond_1

    .line 475
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lcom/itextpdf/awt/geom/PathIterator;->currentSegment([D)I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 500
    :cond_0
    :goto_1
    cmpl-double v10, p1, v2

    if-nez v10, :cond_6

    cmpl-double v10, p3, v4

    if-nez v10, :cond_6

    .line 501
    const/16 v39, 0x0

    .line 502
    move-wide v4, v8

    .line 507
    :cond_1
    cmpl-double v10, v4, v8

    if-eqz v10, :cond_2

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    .line 508
    invoke-static/range {v2 .. v13}, Lcom/itextpdf/awt/geom/gl/Crossing;->crossLine(DDDDDD)I

    move-result v10

    add-int v39, v39, v10

    .line 510
    :cond_2
    return v39

    .line 477
    :pswitch_0
    cmpl-double v10, v2, v6

    if-nez v10, :cond_3

    cmpl-double v10, v4, v8

    if-eqz v10, :cond_4

    :cond_3
    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    .line 478
    invoke-static/range {v2 .. v13}, Lcom/itextpdf/awt/geom/gl/Crossing;->crossLine(DDDDDD)I

    move-result v10

    add-int v39, v39, v10

    .line 480
    :cond_4
    const/4 v10, 0x0

    aget-wide v2, v38, v10

    move-wide v6, v2

    .line 481
    const/4 v10, 0x1

    aget-wide v4, v38, v10

    move-wide v8, v4

    .line 482
    goto :goto_1

    .line 484
    :pswitch_1
    const/4 v10, 0x0

    aget-wide v14, v38, v10

    .end local v2           #cx:D
    .local v14, cx:D
    const/4 v10, 0x1

    aget-wide v16, v38, v10

    .end local v4           #cy:D
    .local v16, cy:D
    move-wide v10, v2

    move-wide v12, v4

    move-wide/from16 v18, p1

    move-wide/from16 v20, p3

    invoke-static/range {v10 .. v21}, Lcom/itextpdf/awt/geom/gl/Crossing;->crossLine(DDDDDD)I

    move-result v10

    add-int v39, v39, v10

    move-wide/from16 v4, v16

    .end local v16           #cy:D
    .restart local v4       #cy:D
    move-wide v2, v14

    .line 485
    .end local v14           #cx:D
    .restart local v2       #cx:D
    goto :goto_1

    .line 487
    :pswitch_2
    const/4 v10, 0x0

    aget-wide v22, v38, v10

    const/4 v10, 0x1

    aget-wide v24, v38, v10

    const/4 v10, 0x2

    aget-wide v14, v38, v10

    .end local v2           #cx:D
    .restart local v14       #cx:D
    const/4 v10, 0x3

    aget-wide v16, v38, v10

    .end local v4           #cy:D
    .restart local v16       #cy:D
    move-wide/from16 v18, v2

    move-wide/from16 v20, v4

    move-wide/from16 v26, v14

    move-wide/from16 v28, v16

    move-wide/from16 v30, p1

    move-wide/from16 v32, p3

    invoke-static/range {v18 .. v33}, Lcom/itextpdf/awt/geom/gl/Crossing;->crossQuad(DDDDDDDD)I

    move-result v10

    add-int v39, v39, v10

    move-wide/from16 v4, v16

    .end local v16           #cy:D
    .restart local v4       #cy:D
    move-wide v2, v14

    .line 488
    .end local v14           #cx:D
    .restart local v2       #cx:D
    goto :goto_1

    .line 490
    :pswitch_3
    const/4 v10, 0x0

    aget-wide v22, v38, v10

    const/4 v10, 0x1

    aget-wide v24, v38, v10

    const/4 v10, 0x2

    aget-wide v26, v38, v10

    const/4 v10, 0x3

    aget-wide v28, v38, v10

    const/4 v10, 0x4

    aget-wide v14, v38, v10

    .end local v2           #cx:D
    .restart local v14       #cx:D
    const/4 v10, 0x5

    aget-wide v16, v38, v10

    .end local v4           #cy:D
    .restart local v16       #cy:D
    move-wide/from16 v18, v2

    move-wide/from16 v20, v4

    move-wide/from16 v30, v14

    move-wide/from16 v32, v16

    move-wide/from16 v34, p1

    move-wide/from16 v36, p3

    invoke-static/range {v18 .. v37}, Lcom/itextpdf/awt/geom/gl/Crossing;->crossCubic(DDDDDDDDDD)I

    move-result v10

    add-int v39, v39, v10

    move-wide/from16 v4, v16

    .end local v16           #cy:D
    .restart local v4       #cy:D
    move-wide v2, v14

    .line 491
    .end local v14           #cx:D
    .restart local v2       #cx:D
    goto/16 :goto_1

    .line 493
    :pswitch_4
    cmpl-double v10, v4, v8

    if-nez v10, :cond_5

    cmpl-double v10, v2, v6

    if-eqz v10, :cond_0

    .line 494
    :cond_5
    move-wide v14, v6

    .end local v2           #cx:D
    .restart local v14       #cx:D
    move-wide/from16 v16, v8

    .end local v4           #cy:D
    .restart local v16       #cy:D
    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    invoke-static/range {v2 .. v13}, Lcom/itextpdf/awt/geom/gl/Crossing;->crossLine(DDDDDD)I

    move-result v10

    add-int v39, v39, v10

    move-wide/from16 v4, v16

    .end local v16           #cy:D
    .restart local v4       #cy:D
    move-wide v2, v14

    .end local v14           #cx:D
    .restart local v2       #cx:D
    goto/16 :goto_1

    .line 505
    :cond_6
    invoke-interface/range {p0 .. p0}, Lcom/itextpdf/awt/geom/PathIterator;->next()V

    goto/16 :goto_0

    .line 475
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static crossQuad(DDDDDDDD)I
    .locals 15
    .parameter "x1"
    .parameter "y1"
    .parameter "cx"
    .parameter "cy"
    .parameter "x2"
    .parameter "y2"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 408
    cmpg-double v5, p12, p0

    if-gez v5, :cond_0

    cmpg-double v5, p12, p4

    if-gez v5, :cond_0

    cmpg-double v5, p12, p8

    if-ltz v5, :cond_3

    :cond_0
    cmpl-double v5, p12, p0

    if-lez v5, :cond_1

    cmpl-double v5, p12, p4

    if-lez v5, :cond_1

    cmpl-double v5, p12, p8

    if-gtz v5, :cond_3

    :cond_1
    cmpl-double v5, p14, p2

    if-lez v5, :cond_2

    cmpl-double v5, p14, p6

    if-lez v5, :cond_2

    cmpl-double v5, p14, p10

    if-gtz v5, :cond_3

    :cond_2
    cmpl-double v5, p0, p4

    if-nez v5, :cond_4

    cmpl-double v5, p4, p8

    if-nez v5, :cond_4

    .line 413
    :cond_3
    const/4 v5, 0x0

    .line 431
    :goto_0
    return v5

    .line 417
    :cond_4
    cmpg-double v5, p14, p2

    if-gez v5, :cond_8

    cmpg-double v5, p14, p6

    if-gez v5, :cond_8

    cmpg-double v5, p14, p10

    if-gez v5, :cond_8

    cmpl-double v5, p12, p0

    if-eqz v5, :cond_8

    cmpl-double v5, p12, p8

    if-eqz v5, :cond_8

    .line 418
    cmpg-double v5, p0, p8

    if-gez v5, :cond_6

    .line 419
    cmpg-double v5, p0, p12

    if-gez v5, :cond_5

    cmpg-double v5, p12, p8

    if-gez v5, :cond_5

    const/4 v5, 0x1

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    goto :goto_0

    .line 421
    :cond_6
    cmpg-double v5, p8, p12

    if-gez v5, :cond_7

    cmpg-double v5, p12, p0

    if-gez v5, :cond_7

    const/4 v5, -0x1

    goto :goto_0

    :cond_7
    const/4 v5, 0x0

    goto :goto_0

    .line 425
    :cond_8
    new-instance v0, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;

    move-wide v1, p0

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    invoke-direct/range {v0 .. v12}, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;-><init>(DDDDDD)V

    .line 426
    .local v0, c:Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;
    sub-double v13, p12, p0

    .line 427
    .local v13, px:D
    sub-double v3, p14, p2

    .line 428
    .local v3, py:D
    const/4 v5, 0x3

    new-array v1, v5, [D

    .line 429
    .local v1, res:[D
    invoke-virtual {v0, v1, v13, v14}, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->solvePoint([DD)I

    move-result v2

    .local v2, rc:I
    move-wide v5, v3

    .line 431
    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->cross([DIDD)I

    move-result v5

    goto :goto_0
.end method

.method public static crossShape(Lcom/itextpdf/awt/geom/Shape;DD)I
    .locals 1
    .parameter "s"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 517
    invoke-interface {p0}, Lcom/itextpdf/awt/geom/Shape;->getBounds2D()Lcom/itextpdf/awt/geom/Rectangle2D;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/itextpdf/awt/geom/Rectangle2D;->contains(DD)Z

    move-result v0

    if-nez v0, :cond_0

    .line 518
    const/4 v0, 0x0

    .line 520
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/itextpdf/awt/geom/Shape;->getPathIterator(Lcom/itextpdf/awt/geom/AffineTransform;)Lcom/itextpdf/awt/geom/PathIterator;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lcom/itextpdf/awt/geom/gl/Crossing;->crossPath(Lcom/itextpdf/awt/geom/PathIterator;DD)I

    move-result v0

    goto :goto_0
.end method

.method static fixRoots([DI)I
    .locals 8
    .parameter "res"
    .parameter "rc"

    .prologue
    .line 142
    const/4 v2, 0x0

    .line 143
    .local v2, tc:I
    const/4 v0, 0x0

    .local v0, i:I
    move v3, v2

    .end local v2           #tc:I
    .local v3, tc:I
    :goto_0
    if-ge v0, p1, :cond_2

    .line 145
    add-int/lit8 v1, v0, 0x1

    .local v1, j:I
    :goto_1
    if-ge v1, p1, :cond_1

    .line 146
    aget-wide v4, p0, v0

    aget-wide v6, p0, v1

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Lcom/itextpdf/awt/geom/gl/Crossing;->isZero(D)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 143
    .end local v3           #tc:I
    .restart local v2       #tc:I
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v3, v2

    .end local v2           #tc:I
    .restart local v3       #tc:I
    goto :goto_0

    .line 145
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 150
    :cond_1
    add-int/lit8 v2, v3, 0x1

    .end local v3           #tc:I
    .restart local v2       #tc:I
    aget-wide v4, p0, v0

    aput-wide v4, p0, v3

    goto :goto_2

    .line 153
    .end local v1           #j:I
    .end local v2           #tc:I
    .restart local v3       #tc:I
    :cond_2
    return v3
.end method

.method public static intersectCubic(DDDDDDDDDDDD)I
    .locals 33
    .parameter "x1"
    .parameter "y1"
    .parameter "cx1"
    .parameter "cy1"
    .parameter "cx2"
    .parameter "cy2"
    .parameter "x2"
    .parameter "y2"
    .parameter "rx1"
    .parameter "ry1"
    .parameter "rx2"
    .parameter "ry2"

    .prologue
    .line 749
    cmpg-double v11, p20, p0

    if-gez v11, :cond_0

    cmpg-double v11, p20, p4

    if-gez v11, :cond_0

    cmpg-double v11, p20, p8

    if-gez v11, :cond_0

    cmpg-double v11, p20, p12

    if-ltz v11, :cond_2

    :cond_0
    cmpl-double v11, p16, p0

    if-lez v11, :cond_1

    cmpl-double v11, p16, p4

    if-lez v11, :cond_1

    cmpl-double v11, p16, p8

    if-lez v11, :cond_1

    cmpl-double v11, p16, p12

    if-gtz v11, :cond_2

    :cond_1
    cmpl-double v11, p18, p2

    if-lez v11, :cond_3

    cmpl-double v11, p18, p6

    if-lez v11, :cond_3

    cmpl-double v11, p18, p10

    if-lez v11, :cond_3

    cmpl-double v11, p18, p14

    if-lez v11, :cond_3

    .line 753
    :cond_2
    const/4 v11, 0x0

    .line 814
    :goto_0
    return v11

    .line 757
    :cond_3
    cmpg-double v11, p22, p2

    if-gez v11, :cond_7

    cmpg-double v11, p22, p6

    if-gez v11, :cond_7

    cmpg-double v11, p22, p10

    if-gez v11, :cond_7

    cmpg-double v11, p22, p14

    if-gez v11, :cond_7

    cmpl-double v11, p16, p0

    if-eqz v11, :cond_7

    cmpl-double v11, p16, p12

    if-eqz v11, :cond_7

    .line 758
    cmpg-double v11, p0, p12

    if-gez v11, :cond_5

    .line 759
    cmpg-double v11, p0, p16

    if-gez v11, :cond_4

    cmpg-double v11, p16, p12

    if-gez v11, :cond_4

    const/4 v11, 0x1

    goto :goto_0

    :cond_4
    const/4 v11, 0x0

    goto :goto_0

    .line 761
    :cond_5
    cmpg-double v11, p12, p16

    if-gez v11, :cond_6

    cmpg-double v11, p16, p0

    if-gez v11, :cond_6

    const/4 v11, -0x1

    goto :goto_0

    :cond_6
    const/4 v11, 0x0

    goto :goto_0

    .line 765
    :cond_7
    new-instance v2, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;

    move-wide/from16 v3, p0

    move-wide/from16 v5, p2

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move-wide/from16 v11, p8

    move-wide/from16 v13, p10

    move-wide/from16 v15, p12

    move-wide/from16 v17, p14

    invoke-direct/range {v2 .. v18}, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;-><init>(DDDDDDDD)V

    .line 766
    .local v2, c:Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;
    sub-double v25, p16, p0

    .line 767
    .local v25, px1:D
    sub-double v29, p18, p2

    .line 768
    .local v29, py1:D
    sub-double v27, p20, p0

    .line 769
    .local v27, px2:D
    sub-double v31, p22, p2

    .line 771
    .local v31, py2:D
    const/4 v11, 0x3

    new-array v5, v11, [D

    .line 772
    .local v5, res1:[D
    const/4 v11, 0x3

    new-array v14, v11, [D

    .line 773
    .local v14, res2:[D
    move-wide/from16 v0, v25

    invoke-virtual {v2, v5, v0, v1}, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->solvePoint([DD)I

    move-result v6

    .line 774
    .local v6, rc1:I
    move-wide/from16 v0, v27

    invoke-virtual {v2, v14, v0, v1}, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->solvePoint([DD)I

    move-result v15

    .line 777
    .local v15, rc2:I
    if-nez v6, :cond_8

    if-nez v15, :cond_8

    .line 778
    const/4 v11, 0x0

    goto :goto_0

    .line 781
    :cond_8
    const-wide v11, 0x3ee4f8b588e368f1L

    sub-double v7, v25, v11

    .line 782
    .local v7, minX:D
    const-wide v11, 0x3ee4f8b588e368f1L

    add-double v9, v27, v11

    .line 785
    .local v9, maxX:D
    const/16 v11, 0x28

    new-array v3, v11, [D

    .line 786
    .local v3, bound:[D
    const/4 v4, 0x0

    .line 788
    .local v4, bc:I
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v2 .. v12}, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->addBound([DI[DIDDZI)I

    move-result v4

    .line 789
    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object v11, v2

    move-object v12, v3

    move v13, v4

    move-wide/from16 v16, v7

    move-wide/from16 v18, v9

    invoke-virtual/range {v11 .. v21}, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->addBound([DI[DIDDZI)I

    move-result v4

    .line 791
    invoke-virtual {v2, v14}, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->solveExtremX([D)I

    move-result v15

    .line 792
    const/16 v20, 0x1

    const/16 v21, 0x2

    move-object v11, v2

    move-object v12, v3

    move v13, v4

    move-wide/from16 v16, v7

    move-wide/from16 v18, v9

    invoke-virtual/range {v11 .. v21}, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->addBound([DI[DIDDZI)I

    move-result v4

    .line 793
    invoke-virtual {v2, v14}, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->solveExtremY([D)I

    move-result v15

    .line 794
    const/16 v20, 0x1

    const/16 v21, 0x4

    move-object v11, v2

    move-object v12, v3

    move v13, v4

    move-wide/from16 v16, v7

    move-wide/from16 v18, v9

    invoke-virtual/range {v11 .. v21}, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->addBound([DI[DIDDZI)I

    move-result v4

    .line 796
    cmpg-double v11, p16, p0

    if-gez v11, :cond_9

    cmpg-double v11, p0, p20

    if-gez v11, :cond_9

    .line 797
    add-int/lit8 v23, v4, 0x1

    .end local v4           #bc:I
    .local v23, bc:I
    const-wide/16 v11, 0x0

    aput-wide v11, v3, v4

    .line 798
    add-int/lit8 v4, v23, 0x1

    .end local v23           #bc:I
    .restart local v4       #bc:I
    const-wide/16 v11, 0x0

    aput-wide v11, v3, v23

    .line 799
    add-int/lit8 v23, v4, 0x1

    .end local v4           #bc:I
    .restart local v23       #bc:I
    const-wide/16 v11, 0x0

    aput-wide v11, v3, v4

    .line 800
    add-int/lit8 v4, v23, 0x1

    .end local v23           #bc:I
    .restart local v4       #bc:I
    const-wide/high16 v11, 0x4018

    aput-wide v11, v3, v23

    :cond_9
    move/from16 v23, v4

    .line 802
    .end local v4           #bc:I
    .restart local v23       #bc:I
    cmpg-double v11, p16, p12

    if-gez v11, :cond_a

    cmpg-double v11, p12, p20

    if-gez v11, :cond_a

    .line 803
    add-int/lit8 v4, v23, 0x1

    .end local v23           #bc:I
    .restart local v4       #bc:I
    const-wide/high16 v11, 0x3ff0

    aput-wide v11, v3, v23

    .line 804
    add-int/lit8 v23, v4, 0x1

    .end local v4           #bc:I
    .restart local v23       #bc:I
    iget-wide v11, v2, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->ax:D

    aput-wide v11, v3, v4

    .line 805
    add-int/lit8 v4, v23, 0x1

    .end local v23           #bc:I
    .restart local v4       #bc:I
    iget-wide v11, v2, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->ay:D

    aput-wide v11, v3, v23

    .line 806
    add-int/lit8 v23, v4, 0x1

    .end local v4           #bc:I
    .restart local v23       #bc:I
    const-wide/high16 v11, 0x401c

    aput-wide v11, v3, v4

    :cond_a
    move/from16 v4, v23

    .end local v23           #bc:I
    .restart local v4       #bc:I
    move-object/from16 v16, v3

    move/from16 v17, v4

    move-wide/from16 v18, v29

    move-wide/from16 v20, v31

    .line 810
    invoke-static/range {v16 .. v21}, Lcom/itextpdf/awt/geom/gl/Crossing;->crossBound([DIDD)I

    move-result v24

    .line 811
    .local v24, cross:I
    const/16 v11, 0xfe

    move/from16 v0, v24

    if-eq v0, v11, :cond_b

    move/from16 v11, v24

    .line 812
    goto/16 :goto_0

    :cond_b
    move-object/from16 v16, v2

    move-object/from16 v17, v5

    move/from16 v18, v6

    move-wide/from16 v19, v29

    move-wide/from16 v21, v31

    .line 814
    invoke-virtual/range {v16 .. v22}, Lcom/itextpdf/awt/geom/gl/Crossing$CubicCurve;->cross([DIDD)I

    move-result v11

    goto/16 :goto_0
.end method

.method public static intersectLine(DDDDDDDD)I
    .locals 14
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"
    .parameter "rx1"
    .parameter "ry1"
    .parameter "rx2"
    .parameter "ry2"

    .prologue
    .line 609
    cmpg-double v10, p12, p0

    if-gez v10, :cond_0

    cmpg-double v10, p12, p4

    if-ltz v10, :cond_2

    :cond_0
    cmpl-double v10, p8, p0

    if-lez v10, :cond_1

    cmpl-double v10, p8, p4

    if-gtz v10, :cond_2

    :cond_1
    cmpl-double v10, p10, p2

    if-lez v10, :cond_3

    cmpl-double v10, p10, p6

    if-lez v10, :cond_3

    .line 613
    :cond_2
    const/4 v10, 0x0

    .line 668
    :goto_0
    return v10

    .line 617
    :cond_3
    cmpg-double v10, p14, p2

    if-gez v10, :cond_5

    cmpg-double v10, p14, p6

    if-gez v10, :cond_5

    .line 651
    :cond_4
    cmpl-double v10, p0, p4

    if-nez v10, :cond_e

    .line 652
    const/4 v10, 0x0

    goto :goto_0

    .line 621
    :cond_5
    cmpl-double v10, p0, p4

    if-nez v10, :cond_6

    .line 622
    const/16 v10, 0xff

    goto :goto_0

    .line 627
    :cond_6
    cmpg-double v10, p0, p4

    if-gez v10, :cond_9

    .line 628
    cmpg-double v10, p0, p8

    if-gez v10, :cond_7

    move-wide/from16 v0, p8

    .line 629
    .local v0, bx1:D
    :goto_1
    cmpg-double v10, p4, p12

    if-gez v10, :cond_8

    move-wide/from16 v2, p4

    .line 634
    .local v2, bx2:D
    :goto_2
    sub-double v10, p6, p2

    sub-double v12, p4, p0

    div-double v8, v10, v12

    .line 635
    .local v8, k:D
    sub-double v10, v0, p0

    mul-double/2addr v10, v8

    add-double v4, v10, p2

    .line 636
    .local v4, by1:D
    sub-double v10, v2, p0

    mul-double/2addr v10, v8

    add-double v6, v10, p2

    .line 639
    .local v6, by2:D
    cmpg-double v10, v4, p10

    if-gez v10, :cond_c

    cmpg-double v10, v6, p10

    if-gez v10, :cond_c

    .line 640
    const/4 v10, 0x0

    goto :goto_0

    .end local v0           #bx1:D
    .end local v2           #bx2:D
    .end local v4           #by1:D
    .end local v6           #by2:D
    .end local v8           #k:D
    :cond_7
    move-wide v0, p0

    .line 628
    goto :goto_1

    .restart local v0       #bx1:D
    :cond_8
    move-wide/from16 v2, p12

    .line 629
    goto :goto_2

    .line 631
    .end local v0           #bx1:D
    :cond_9
    cmpg-double v10, p4, p8

    if-gez v10, :cond_a

    move-wide/from16 v0, p8

    .line 632
    .restart local v0       #bx1:D
    :goto_3
    cmpg-double v10, p0, p12

    if-gez v10, :cond_b

    move-wide v2, p0

    .restart local v2       #bx2:D
    :goto_4
    goto :goto_2

    .end local v0           #bx1:D
    .end local v2           #bx2:D
    :cond_a
    move-wide/from16 v0, p4

    .line 631
    goto :goto_3

    .restart local v0       #bx1:D
    :cond_b
    move-wide/from16 v2, p12

    .line 632
    goto :goto_4

    .line 644
    .restart local v2       #bx2:D
    .restart local v4       #by1:D
    .restart local v6       #by2:D
    .restart local v8       #k:D
    :cond_c
    cmpl-double v10, v4, p14

    if-lez v10, :cond_d

    cmpl-double v10, v6, p14

    if-gtz v10, :cond_4

    .line 646
    :cond_d
    const/16 v10, 0xff

    goto :goto_0

    .line 656
    .end local v0           #bx1:D
    .end local v2           #bx2:D
    .end local v4           #by1:D
    .end local v6           #by2:D
    .end local v8           #k:D
    :cond_e
    cmpl-double v10, p8, p0

    if-nez v10, :cond_10

    .line 657
    cmpg-double v10, p0, p4

    if-gez v10, :cond_f

    const/4 v10, 0x0

    goto :goto_0

    :cond_f
    const/4 v10, -0x1

    goto :goto_0

    .line 661
    :cond_10
    cmpl-double v10, p8, p4

    if-nez v10, :cond_12

    .line 662
    cmpg-double v10, p0, p4

    if-gez v10, :cond_11

    const/4 v10, 0x1

    goto :goto_0

    :cond_11
    const/4 v10, 0x0

    goto :goto_0

    .line 665
    :cond_12
    cmpg-double v10, p0, p4

    if-gez v10, :cond_14

    .line 666
    cmpg-double v10, p0, p8

    if-gez v10, :cond_13

    cmpg-double v10, p8, p4

    if-gez v10, :cond_13

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_13
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 668
    :cond_14
    cmpg-double v10, p4, p8

    if-gez v10, :cond_15

    cmpg-double v10, p8, p0

    if-gez v10, :cond_15

    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_15
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method public static intersectPath(Lcom/itextpdf/awt/geom/PathIterator;DDDD)I
    .locals 53
    .parameter "p"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 822
    const/16 v52, 0x0

    .line 825
    .local v52, cross:I
    const-wide/16 v4, 0x0

    .local v4, cy:D
    move-wide v2, v4

    .local v2, cx:D
    move-wide v8, v4

    .local v8, my:D
    move-wide v6, v4

    .line 826
    .local v6, mx:D
    const/16 v18, 0x6

    move/from16 v0, v18

    new-array v0, v0, [D

    move-object/from16 v50, v0

    .line 828
    .local v50, coords:[D
    move-wide/from16 v10, p1

    .line 829
    .local v10, rx1:D
    move-wide/from16 v12, p3

    .line 830
    .local v12, ry1:D
    add-double v14, p1, p5

    .line 831
    .local v14, rx2:D
    add-double v16, p3, p7

    .line 833
    .local v16, ry2:D
    :goto_0
    invoke-interface/range {p0 .. p0}, Lcom/itextpdf/awt/geom/PathIterator;->isDone()Z

    move-result v18

    if-nez v18, :cond_5

    .line 834
    const/16 v51, 0x0

    .line 835
    .local v51, count:I
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Lcom/itextpdf/awt/geom/PathIterator;->currentSegment([D)I

    move-result v18

    packed-switch v18, :pswitch_data_0

    .line 860
    :goto_1
    const/16 v18, 0xff

    move/from16 v0, v51

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 861
    const/16 v18, 0xff

    .line 873
    .end local v51           #count:I
    :goto_2
    return v18

    .line 837
    .restart local v51       #count:I
    :pswitch_0
    cmpl-double v18, v2, v6

    if-nez v18, :cond_0

    cmpl-double v18, v4, v8

    if-eqz v18, :cond_1

    .line 838
    :cond_0
    invoke-static/range {v2 .. v17}, Lcom/itextpdf/awt/geom/gl/Crossing;->intersectLine(DDDDDDDD)I

    move-result v51

    .line 840
    :cond_1
    const/16 v18, 0x0

    aget-wide v2, v50, v18

    move-wide v6, v2

    .line 841
    const/16 v18, 0x1

    aget-wide v4, v50, v18

    move-wide v8, v4

    .line 842
    goto :goto_1

    .line 844
    :pswitch_1
    const/16 v18, 0x0

    aget-wide v22, v50, v18

    .end local v2           #cx:D
    .local v22, cx:D
    const/16 v18, 0x1

    aget-wide v24, v50, v18

    .end local v4           #cy:D
    .local v24, cy:D
    move-wide/from16 v18, v2

    move-wide/from16 v20, v4

    move-wide/from16 v26, v10

    move-wide/from16 v28, v12

    move-wide/from16 v30, v14

    move-wide/from16 v32, v16

    invoke-static/range {v18 .. v33}, Lcom/itextpdf/awt/geom/gl/Crossing;->intersectLine(DDDDDDDD)I

    move-result v51

    move-wide/from16 v4, v24

    .end local v24           #cy:D
    .restart local v4       #cy:D
    move-wide/from16 v2, v22

    .line 845
    .end local v22           #cx:D
    .restart local v2       #cx:D
    goto :goto_1

    .line 847
    :pswitch_2
    const/16 v18, 0x0

    aget-wide v30, v50, v18

    const/16 v18, 0x1

    aget-wide v32, v50, v18

    const/16 v18, 0x2

    aget-wide v22, v50, v18

    .end local v2           #cx:D
    .restart local v22       #cx:D
    const/16 v18, 0x3

    aget-wide v24, v50, v18

    .end local v4           #cy:D
    .restart local v24       #cy:D
    move-wide/from16 v26, v2

    move-wide/from16 v28, v4

    move-wide/from16 v34, v22

    move-wide/from16 v36, v24

    move-wide/from16 v38, v10

    move-wide/from16 v40, v12

    move-wide/from16 v42, v14

    move-wide/from16 v44, v16

    invoke-static/range {v26 .. v45}, Lcom/itextpdf/awt/geom/gl/Crossing;->intersectQuad(DDDDDDDDDD)I

    move-result v51

    move-wide/from16 v4, v24

    .end local v24           #cy:D
    .restart local v4       #cy:D
    move-wide/from16 v2, v22

    .line 848
    .end local v22           #cx:D
    .restart local v2       #cx:D
    goto :goto_1

    .line 850
    :pswitch_3
    const/16 v18, 0x0

    aget-wide v30, v50, v18

    const/16 v18, 0x1

    aget-wide v32, v50, v18

    const/16 v18, 0x2

    aget-wide v34, v50, v18

    const/16 v18, 0x3

    aget-wide v36, v50, v18

    const/16 v18, 0x4

    aget-wide v22, v50, v18

    .end local v2           #cx:D
    .restart local v22       #cx:D
    const/16 v18, 0x5

    aget-wide v24, v50, v18

    .end local v4           #cy:D
    .restart local v24       #cy:D
    move-wide/from16 v26, v2

    move-wide/from16 v28, v4

    move-wide/from16 v38, v22

    move-wide/from16 v40, v24

    move-wide/from16 v42, v10

    move-wide/from16 v44, v12

    move-wide/from16 v46, v14

    move-wide/from16 v48, v16

    invoke-static/range {v26 .. v49}, Lcom/itextpdf/awt/geom/gl/Crossing;->intersectCubic(DDDDDDDDDDDD)I

    move-result v51

    move-wide/from16 v4, v24

    .end local v24           #cy:D
    .restart local v4       #cy:D
    move-wide/from16 v2, v22

    .line 851
    .end local v22           #cx:D
    .restart local v2       #cx:D
    goto/16 :goto_1

    .line 853
    :pswitch_4
    cmpl-double v18, v4, v8

    if-nez v18, :cond_2

    cmpl-double v18, v2, v6

    if-eqz v18, :cond_3

    .line 854
    :cond_2
    invoke-static/range {v2 .. v17}, Lcom/itextpdf/awt/geom/gl/Crossing;->intersectLine(DDDDDDDD)I

    move-result v51

    .line 856
    :cond_3
    move-wide v2, v6

    .line 857
    move-wide v4, v8

    goto/16 :goto_1

    .line 863
    :cond_4
    add-int v52, v52, v51

    .line 864
    invoke-interface/range {p0 .. p0}, Lcom/itextpdf/awt/geom/PathIterator;->next()V

    goto/16 :goto_0

    .line 866
    .end local v51           #count:I
    :cond_5
    cmpl-double v18, v4, v8

    if-eqz v18, :cond_7

    .line 867
    invoke-static/range {v2 .. v17}, Lcom/itextpdf/awt/geom/gl/Crossing;->intersectLine(DDDDDDDD)I

    move-result v51

    .line 868
    .restart local v51       #count:I
    const/16 v18, 0xff

    move/from16 v0, v51

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 869
    const/16 v18, 0xff

    goto/16 :goto_2

    .line 871
    :cond_6
    add-int v52, v52, v51

    .end local v51           #count:I
    :cond_7
    move/from16 v18, v52

    .line 873
    goto/16 :goto_2

    .line 835
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static intersectQuad(DDDDDDDDDD)I
    .locals 33
    .parameter "x1"
    .parameter "y1"
    .parameter "cx"
    .parameter "cy"
    .parameter "x2"
    .parameter "y2"
    .parameter "rx1"
    .parameter "ry1"
    .parameter "rx2"
    .parameter "ry2"

    .prologue
    .line 678
    cmpg-double v11, p16, p0

    if-gez v11, :cond_0

    cmpg-double v11, p16, p4

    if-gez v11, :cond_0

    cmpg-double v11, p16, p8

    if-ltz v11, :cond_2

    :cond_0
    cmpl-double v11, p12, p0

    if-lez v11, :cond_1

    cmpl-double v11, p12, p4

    if-lez v11, :cond_1

    cmpl-double v11, p12, p8

    if-gtz v11, :cond_2

    :cond_1
    cmpl-double v11, p14, p2

    if-lez v11, :cond_3

    cmpl-double v11, p14, p6

    if-lez v11, :cond_3

    cmpl-double v11, p14, p10

    if-lez v11, :cond_3

    .line 682
    :cond_2
    const/4 v11, 0x0

    .line 740
    :goto_0
    return v11

    .line 686
    :cond_3
    cmpg-double v11, p18, p2

    if-gez v11, :cond_7

    cmpg-double v11, p18, p6

    if-gez v11, :cond_7

    cmpg-double v11, p18, p10

    if-gez v11, :cond_7

    cmpl-double v11, p12, p0

    if-eqz v11, :cond_7

    cmpl-double v11, p12, p8

    if-eqz v11, :cond_7

    .line 687
    cmpg-double v11, p0, p8

    if-gez v11, :cond_5

    .line 688
    cmpg-double v11, p0, p12

    if-gez v11, :cond_4

    cmpg-double v11, p12, p8

    if-gez v11, :cond_4

    const/4 v11, 0x1

    goto :goto_0

    :cond_4
    const/4 v11, 0x0

    goto :goto_0

    .line 690
    :cond_5
    cmpg-double v11, p8, p12

    if-gez v11, :cond_6

    cmpg-double v11, p12, p0

    if-gez v11, :cond_6

    const/4 v11, -0x1

    goto :goto_0

    :cond_6
    const/4 v11, 0x0

    goto :goto_0

    .line 694
    :cond_7
    new-instance v2, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;

    move-wide/from16 v3, p0

    move-wide/from16 v5, p2

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move-wide/from16 v11, p8

    move-wide/from16 v13, p10

    invoke-direct/range {v2 .. v14}, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;-><init>(DDDDDD)V

    .line 695
    .local v2, c:Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;
    sub-double v25, p12, p0

    .line 696
    .local v25, px1:D
    sub-double v29, p14, p2

    .line 697
    .local v29, py1:D
    sub-double v27, p16, p0

    .line 698
    .local v27, px2:D
    sub-double v31, p18, p2

    .line 700
    .local v31, py2:D
    const/4 v11, 0x3

    new-array v5, v11, [D

    .line 701
    .local v5, res1:[D
    const/4 v11, 0x3

    new-array v14, v11, [D

    .line 702
    .local v14, res2:[D
    move-wide/from16 v0, v25

    invoke-virtual {v2, v5, v0, v1}, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->solvePoint([DD)I

    move-result v6

    .line 703
    .local v6, rc1:I
    move-wide/from16 v0, v27

    invoke-virtual {v2, v14, v0, v1}, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->solvePoint([DD)I

    move-result v15

    .line 706
    .local v15, rc2:I
    if-nez v6, :cond_8

    if-nez v15, :cond_8

    .line 707
    const/4 v11, 0x0

    goto :goto_0

    .line 711
    :cond_8
    const-wide v11, 0x3ee4f8b588e368f1L

    sub-double v7, v25, v11

    .line 712
    .local v7, minX:D
    const-wide v11, 0x3ee4f8b588e368f1L

    add-double v9, v27, v11

    .line 713
    .local v9, maxX:D
    const/16 v11, 0x1c

    new-array v3, v11, [D

    .line 714
    .local v3, bound:[D
    const/4 v4, 0x0

    .line 716
    .local v4, bc:I
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v2 .. v12}, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->addBound([DI[DIDDZI)I

    move-result v4

    .line 717
    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object v11, v2

    move-object v12, v3

    move v13, v4

    move-wide/from16 v16, v7

    move-wide/from16 v18, v9

    invoke-virtual/range {v11 .. v21}, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->addBound([DI[DIDDZI)I

    move-result v4

    .line 719
    invoke-virtual {v2, v14}, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->solveExtrem([D)I

    move-result v15

    .line 720
    const/16 v20, 0x1

    const/16 v21, 0x2

    move-object v11, v2

    move-object v12, v3

    move v13, v4

    move-wide/from16 v16, v7

    move-wide/from16 v18, v9

    invoke-virtual/range {v11 .. v21}, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->addBound([DI[DIDDZI)I

    move-result v4

    .line 722
    cmpg-double v11, p12, p0

    if-gez v11, :cond_9

    cmpg-double v11, p0, p16

    if-gez v11, :cond_9

    .line 723
    add-int/lit8 v23, v4, 0x1

    .end local v4           #bc:I
    .local v23, bc:I
    const-wide/16 v11, 0x0

    aput-wide v11, v3, v4

    .line 724
    add-int/lit8 v4, v23, 0x1

    .end local v23           #bc:I
    .restart local v4       #bc:I
    const-wide/16 v11, 0x0

    aput-wide v11, v3, v23

    .line 725
    add-int/lit8 v23, v4, 0x1

    .end local v4           #bc:I
    .restart local v23       #bc:I
    const-wide/16 v11, 0x0

    aput-wide v11, v3, v4

    .line 726
    add-int/lit8 v4, v23, 0x1

    .end local v23           #bc:I
    .restart local v4       #bc:I
    const-wide/high16 v11, 0x4010

    aput-wide v11, v3, v23

    :cond_9
    move/from16 v23, v4

    .line 728
    .end local v4           #bc:I
    .restart local v23       #bc:I
    cmpg-double v11, p12, p8

    if-gez v11, :cond_a

    cmpg-double v11, p8, p16

    if-gez v11, :cond_a

    .line 729
    add-int/lit8 v4, v23, 0x1

    .end local v23           #bc:I
    .restart local v4       #bc:I
    const-wide/high16 v11, 0x3ff0

    aput-wide v11, v3, v23

    .line 730
    add-int/lit8 v23, v4, 0x1

    .end local v4           #bc:I
    .restart local v23       #bc:I
    iget-wide v11, v2, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->ax:D

    aput-wide v11, v3, v4

    .line 731
    add-int/lit8 v4, v23, 0x1

    .end local v23           #bc:I
    .restart local v4       #bc:I
    iget-wide v11, v2, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->ay:D

    aput-wide v11, v3, v23

    .line 732
    add-int/lit8 v23, v4, 0x1

    .end local v4           #bc:I
    .restart local v23       #bc:I
    const-wide/high16 v11, 0x4014

    aput-wide v11, v3, v4

    :cond_a
    move/from16 v4, v23

    .end local v23           #bc:I
    .restart local v4       #bc:I
    move-object/from16 v16, v3

    move/from16 v17, v4

    move-wide/from16 v18, v29

    move-wide/from16 v20, v31

    .line 736
    invoke-static/range {v16 .. v21}, Lcom/itextpdf/awt/geom/gl/Crossing;->crossBound([DIDD)I

    move-result v24

    .line 737
    .local v24, cross:I
    const/16 v11, 0xfe

    move/from16 v0, v24

    if-eq v0, v11, :cond_b

    move/from16 v11, v24

    .line 738
    goto/16 :goto_0

    :cond_b
    move-object/from16 v16, v2

    move-object/from16 v17, v5

    move/from16 v18, v6

    move-wide/from16 v19, v29

    move-wide/from16 v21, v31

    .line 740
    invoke-virtual/range {v16 .. v22}, Lcom/itextpdf/awt/geom/gl/Crossing$QuadCurve;->cross([DIDD)I

    move-result v11

    goto/16 :goto_0
.end method

.method public static intersectShape(Lcom/itextpdf/awt/geom/Shape;DDDD)I
    .locals 9
    .parameter "s"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 880
    invoke-interface {p0}, Lcom/itextpdf/awt/geom/Shape;->getBounds2D()Lcom/itextpdf/awt/geom/Rectangle2D;

    move-result-object v0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/awt/geom/Rectangle2D;->intersects(DDDD)Z

    move-result v0

    if-nez v0, :cond_0

    .line 881
    const/4 v0, 0x0

    .line 883
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/itextpdf/awt/geom/Shape;->getPathIterator(Lcom/itextpdf/awt/geom/AffineTransform;)Lcom/itextpdf/awt/geom/PathIterator;

    move-result-object v0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lcom/itextpdf/awt/geom/gl/Crossing;->intersectPath(Lcom/itextpdf/awt/geom/PathIterator;DDDD)I

    move-result v0

    goto :goto_0
.end method

.method public static isInsideEvenOdd(I)Z
    .locals 1
    .parameter "cross"

    .prologue
    .line 897
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInsideNonZero(I)Z
    .locals 1
    .parameter "cross"

    .prologue
    .line 890
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isZero(D)Z
    .locals 2
    .parameter "val"

    .prologue
    .line 527
    const-wide v0, -0x411b074a771c970fL

    cmpg-double v0, v0, p0

    if-gez v0, :cond_0

    const-wide v0, 0x3ee4f8b588e368f1L

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static solveCubic([D[D)I
    .locals 38
    .parameter "eqn"
    .parameter "res"

    .prologue
    .line 90
    const/16 v34, 0x3

    aget-wide v20, p0, v34

    .line 91
    .local v20, d:D
    const-wide/16 v34, 0x0

    cmpl-double v34, v20, v34

    if-nez v34, :cond_0

    .line 92
    invoke-static/range {p0 .. p1}, Lcom/itextpdf/awt/geom/gl/Crossing;->solveQuad([D[D)I

    move-result v34

    .line 132
    :goto_0
    return v34

    .line 94
    :cond_0
    const/16 v34, 0x2

    aget-wide v34, p0, v34

    div-double v14, v34, v20

    .line 95
    .local v14, a:D
    const/16 v34, 0x1

    aget-wide v34, p0, v34

    div-double v16, v34, v20

    .line 96
    .local v16, b:D
    const/16 v34, 0x0

    aget-wide v34, p0, v34

    div-double v18, v34, v20

    .line 97
    .local v18, c:D
    const/16 v30, 0x0

    .line 99
    .local v30, rc:I
    mul-double v34, v14, v14

    const-wide/high16 v36, 0x4008

    mul-double v36, v36, v16

    sub-double v34, v34, v36

    const-wide/high16 v36, 0x4022

    div-double v6, v34, v36

    .line 100
    .local v6, Q:D
    const-wide/high16 v34, 0x4000

    mul-double v34, v34, v14

    mul-double v34, v34, v14

    mul-double v34, v34, v14

    const-wide/high16 v36, 0x4022

    mul-double v36, v36, v14

    mul-double v36, v36, v16

    sub-double v34, v34, v36

    const-wide/high16 v36, 0x403b

    mul-double v36, v36, v18

    add-double v34, v34, v36

    const-wide/high16 v36, 0x404b

    div-double v10, v34, v36

    .line 101
    .local v10, R:D
    mul-double v34, v6, v6

    mul-double v8, v34, v6

    .line 102
    .local v8, Q3:D
    mul-double v12, v10, v10

    .line 103
    .local v12, R2:D
    neg-double v0, v14

    move-wide/from16 v34, v0

    const-wide/high16 v36, 0x4008

    div-double v26, v34, v36

    .line 105
    .local v26, n:D
    cmpg-double v34, v12, v8

    if-gez v34, :cond_1

    .line 106
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v34

    div-double v34, v10, v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->acos(D)D

    move-result-wide v34

    const-wide/high16 v36, 0x4008

    div-double v32, v34, v36

    .line 107
    .local v32, t:D
    const-wide v28, 0x4000c152382d7365L

    .line 108
    .local v28, p:D
    const-wide/high16 v34, -0x4000

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v36

    mul-double v24, v34, v36

    .line 109
    .local v24, m:D
    add-int/lit8 v31, v30, 0x1

    .end local v30           #rc:I
    .local v31, rc:I
    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->cos(D)D

    move-result-wide v34

    mul-double v34, v34, v24

    add-double v34, v34, v26

    aput-wide v34, p1, v30

    .line 110
    add-int/lit8 v30, v31, 0x1

    .end local v31           #rc:I
    .restart local v30       #rc:I
    add-double v34, v32, v28

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->cos(D)D

    move-result-wide v34

    mul-double v34, v34, v24

    add-double v34, v34, v26

    aput-wide v34, p1, v31

    .line 111
    add-int/lit8 v31, v30, 0x1

    .end local v30           #rc:I
    .restart local v31       #rc:I
    sub-double v34, v32, v28

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->cos(D)D

    move-result-wide v34

    mul-double v34, v34, v24

    add-double v34, v34, v26

    aput-wide v34, p1, v30

    move/from16 v30, v31

    .line 132
    .end local v24           #m:D
    .end local v28           #p:D
    .end local v31           #rc:I
    .end local v32           #t:D
    .restart local v30       #rc:I
    :goto_1
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/itextpdf/awt/geom/gl/Crossing;->fixRoots([DI)I

    move-result v34

    goto/16 :goto_0

    .line 114
    :cond_1
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v34

    sub-double v36, v12, v8

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v36

    add-double v34, v34, v36

    const-wide v36, 0x3fd5555555555555L

    invoke-static/range {v34 .. v37}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 115
    .local v2, A:D
    const-wide/16 v34, 0x0

    cmpl-double v34, v10, v34

    if-lez v34, :cond_2

    .line 116
    neg-double v2, v2

    .line 119
    :cond_2
    const-wide v34, -0x4224832026284245L

    cmpg-double v34, v34, v2

    if-gez v34, :cond_3

    const-wide v34, 0x3ddb7cdfd9d7bdbbL

    cmpg-double v34, v2, v34

    if-gez v34, :cond_3

    .line 120
    add-int/lit8 v31, v30, 0x1

    .end local v30           #rc:I
    .restart local v31       #rc:I
    aput-wide v26, p1, v30

    move/from16 v30, v31

    .end local v31           #rc:I
    .restart local v30       #rc:I
    goto :goto_1

    .line 122
    :cond_3
    div-double v4, v6, v2

    .line 123
    .local v4, B:D
    add-int/lit8 v31, v30, 0x1

    .end local v30           #rc:I
    .restart local v31       #rc:I
    add-double v34, v2, v4

    add-double v34, v34, v26

    aput-wide v34, p1, v30

    .line 125
    sub-double v22, v12, v8

    .line 126
    .local v22, delta:D
    const-wide v34, -0x4224832026284245L

    cmpg-double v34, v34, v22

    if-gez v34, :cond_4

    const-wide v34, 0x3ddb7cdfd9d7bdbbL

    cmpg-double v34, v22, v34

    if-gez v34, :cond_4

    .line 127
    add-int/lit8 v30, v31, 0x1

    .end local v31           #rc:I
    .restart local v30       #rc:I
    add-double v34, v2, v4

    move-wide/from16 v0, v34

    neg-double v0, v0

    move-wide/from16 v34, v0

    const-wide/high16 v36, 0x4000

    div-double v34, v34, v36

    add-double v34, v34, v26

    aput-wide v34, p1, v31

    goto :goto_1

    .end local v30           #rc:I
    .restart local v31       #rc:I
    :cond_4
    move/from16 v30, v31

    .end local v31           #rc:I
    .restart local v30       #rc:I
    goto :goto_1
.end method

.method public static solveQuad([D[D)I
    .locals 14
    .parameter "eqn"
    .parameter "res"

    .prologue
    .line 58
    const/4 v10, 0x2

    aget-wide v0, p0, v10

    .line 59
    .local v0, a:D
    const/4 v10, 0x1

    aget-wide v2, p0, v10

    .line 60
    .local v2, b:D
    const/4 v10, 0x0

    aget-wide v4, p0, v10

    .line 61
    .local v4, c:D
    const/4 v8, 0x0

    .line 62
    .local v8, rc:I
    const-wide/16 v10, 0x0

    cmpl-double v10, v0, v10

    if-nez v10, :cond_1

    .line 63
    const-wide/16 v10, 0x0

    cmpl-double v10, v2, v10

    if-nez v10, :cond_0

    .line 64
    const/4 v10, -0x1

    .line 80
    :goto_0
    return v10

    .line 66
    :cond_0
    add-int/lit8 v9, v8, 0x1

    .end local v8           #rc:I
    .local v9, rc:I
    neg-double v10, v4

    div-double/2addr v10, v2

    aput-wide v10, p1, v8

    move v8, v9

    .line 80
    .end local v9           #rc:I
    .restart local v8       #rc:I
    :goto_1
    invoke-static {p1, v8}, Lcom/itextpdf/awt/geom/gl/Crossing;->fixRoots([DI)I

    move-result v10

    goto :goto_0

    .line 68
    :cond_1
    mul-double v10, v2, v2

    const-wide/high16 v12, 0x4010

    mul-double/2addr v12, v0

    mul-double/2addr v12, v4

    sub-double v6, v10, v12

    .line 70
    .local v6, d:D
    const-wide/16 v10, 0x0

    cmpg-double v10, v6, v10

    if-gez v10, :cond_2

    .line 71
    const/4 v10, 0x0

    goto :goto_0

    .line 73
    :cond_2
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 74
    add-int/lit8 v9, v8, 0x1

    .end local v8           #rc:I
    .restart local v9       #rc:I
    neg-double v10, v2

    add-double/2addr v10, v6

    const-wide/high16 v12, 0x4000

    mul-double/2addr v12, v0

    div-double/2addr v10, v12

    aput-wide v10, p1, v8

    .line 76
    const-wide/16 v10, 0x0

    cmpl-double v10, v6, v10

    if-eqz v10, :cond_3

    .line 77
    add-int/lit8 v8, v9, 0x1

    .end local v9           #rc:I
    .restart local v8       #rc:I
    neg-double v10, v2

    sub-double/2addr v10, v6

    const-wide/high16 v12, 0x4000

    mul-double/2addr v12, v0

    div-double/2addr v10, v12

    aput-wide v10, p1, v9

    goto :goto_1

    .end local v8           #rc:I
    .restart local v9       #rc:I
    :cond_3
    move v8, v9

    .end local v9           #rc:I
    .restart local v8       #rc:I
    goto :goto_1
.end method

.method static sortBound([DI)V
    .locals 9
    .parameter "bound"
    .parameter "bc"

    .prologue
    .line 534
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    add-int/lit8 v5, p1, -0x4

    if-ge v0, v5, :cond_3

    .line 535
    move v2, v0

    .line 536
    .local v2, k:I
    add-int/lit8 v1, v0, 0x4

    .local v1, j:I
    :goto_1
    if-ge v1, p1, :cond_1

    .line 537
    aget-wide v5, p0, v2

    aget-wide v7, p0, v1

    cmpl-double v5, v5, v7

    if-lez v5, :cond_0

    .line 538
    move v2, v1

    .line 536
    :cond_0
    add-int/lit8 v1, v1, 0x4

    goto :goto_1

    .line 541
    :cond_1
    if-eq v2, v0, :cond_2

    .line 542
    aget-wide v3, p0, v0

    .line 543
    .local v3, tmp:D
    aget-wide v5, p0, v2

    aput-wide v5, p0, v0

    .line 544
    aput-wide v3, p0, v2

    .line 545
    add-int/lit8 v5, v0, 0x1

    aget-wide v3, p0, v5

    .line 546
    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, v2, 0x1

    aget-wide v6, p0, v6

    aput-wide v6, p0, v5

    .line 547
    add-int/lit8 v5, v2, 0x1

    aput-wide v3, p0, v5

    .line 548
    add-int/lit8 v5, v0, 0x2

    aget-wide v3, p0, v5

    .line 549
    add-int/lit8 v5, v0, 0x2

    add-int/lit8 v6, v2, 0x2

    aget-wide v6, p0, v6

    aput-wide v6, p0, v5

    .line 550
    add-int/lit8 v5, v2, 0x2

    aput-wide v3, p0, v5

    .line 551
    add-int/lit8 v5, v0, 0x3

    aget-wide v3, p0, v5

    .line 552
    add-int/lit8 v5, v0, 0x3

    add-int/lit8 v6, v2, 0x3

    aget-wide v6, p0, v6

    aput-wide v6, p0, v5

    .line 553
    add-int/lit8 v5, v2, 0x3

    aput-wide v3, p0, v5

    .line 534
    .end local v3           #tmp:D
    :cond_2
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 556
    .end local v1           #j:I
    .end local v2           #k:I
    :cond_3
    return-void
.end method
