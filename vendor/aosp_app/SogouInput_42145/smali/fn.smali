.class public Lfn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lbe;

.field private final a:Ljava/util/Vector;

.field private final a:Lq;

.field private a:Z

.field private final a:[I


# direct methods
.method public constructor <init>(Lbe;Lq;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lfn;->a:Lbe;

    .line 62
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lfn;->a:Ljava/util/Vector;

    .line 63
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lfn;->a:[I

    .line 64
    iput-object p2, p0, Lfn;->a:Lq;

    .line 65
    return-void
.end method

.method private a(IIII)F
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v0, 0x7fc0

    .line 241
    iget-object v2, p0, Lfn;->a:Lbe;

    .line 243
    invoke-virtual {v2}, Lbe;->b()I

    move-result v3

    .line 244
    invoke-direct {p0}, Lfn;->a()[I

    move-result-object v4

    move v1, p1

    .line 248
    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {v2, p2, v1}, Lbe;->a(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 249
    const/4 v5, 0x2

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    .line 250
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 252
    :cond_0
    if-gez v1, :cond_2

    .line 303
    :cond_1
    :goto_1
    return v0

    .line 255
    :cond_2
    :goto_2
    if-ltz v1, :cond_3

    invoke-virtual {v2, p2, v1}, Lbe;->a(II)Z

    move-result v5

    if-nez v5, :cond_3

    aget v5, v4, v8

    if-gt v5, p3, :cond_3

    .line 256
    aget v5, v4, v8

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v8

    .line 257
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 260
    :cond_3
    if-ltz v1, :cond_1

    aget v5, v4, v8

    if-gt v5, p3, :cond_1

    .line 263
    :goto_3
    if-ltz v1, :cond_4

    invoke-virtual {v2, p2, v1}, Lbe;->a(II)Z

    move-result v5

    if-eqz v5, :cond_4

    aget v5, v4, v7

    if-gt v5, p3, :cond_4

    .line 264
    aget v5, v4, v7

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v7

    .line 265
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 267
    :cond_4
    aget v1, v4, v7

    if-gt v1, p3, :cond_1

    .line 272
    add-int/lit8 v1, p1, 0x1

    .line 273
    :goto_4
    if-ge v1, v3, :cond_5

    invoke-virtual {v2, p2, v1}, Lbe;->a(II)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 274
    const/4 v5, 0x2

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    .line 275
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 277
    :cond_5
    if-eq v1, v3, :cond_1

    .line 280
    :goto_5
    if-ge v1, v3, :cond_6

    invoke-virtual {v2, p2, v1}, Lbe;->a(II)Z

    move-result v5

    if-nez v5, :cond_6

    aget v5, v4, v9

    if-ge v5, p3, :cond_6

    .line 281
    aget v5, v4, v9

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v9

    .line 282
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 284
    :cond_6
    if-eq v1, v3, :cond_1

    aget v5, v4, v9

    if-ge v5, p3, :cond_1

    .line 287
    :goto_6
    if-ge v1, v3, :cond_7

    invoke-virtual {v2, p2, v1}, Lbe;->a(II)Z

    move-result v5

    if-eqz v5, :cond_7

    aget v5, v4, v10

    if-ge v5, p3, :cond_7

    .line 288
    aget v5, v4, v10

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v10

    .line 289
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 291
    :cond_7
    aget v2, v4, v10

    if-ge v2, p3, :cond_1

    .line 297
    aget v2, v4, v7

    aget v3, v4, v8

    add-int/2addr v2, v3

    const/4 v3, 0x2

    aget v3, v4, v3

    add-int/2addr v2, v3

    aget v3, v4, v9

    add-int/2addr v2, v3

    aget v3, v4, v10

    add-int/2addr v2, v3

    .line 299
    sub-int/2addr v2, p4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    mul-int/lit8 v3, p4, 0x2

    if-ge v2, v3, :cond_1

    .line 303
    invoke-static {v4}, Lfn;->a([I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v4, v1}, Lfn;->a([II)F

    move-result v0

    goto/16 :goto_1
.end method

.method private static a([II)F
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 189
    const/4 v0, 0x4

    aget v0, p0, v0

    sub-int v0, p1, v0

    const/4 v1, 0x3

    aget v1, p0, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method private a()I
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 432
    iget-object v0, p0, Lfn;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    .line 433
    if-gt v4, v7, :cond_0

    move v0, v2

    .line 454
    :goto_0
    return v0

    .line 436
    :cond_0
    const/4 v1, 0x0

    move v3, v2

    .line 437
    :goto_1
    if-ge v3, v4, :cond_2

    .line 438
    iget-object v0, p0, Lfn;->a:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfm;

    .line 439
    invoke-virtual {v0}, Lfm;->a()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_3

    .line 440
    if-nez v1, :cond_1

    .line 437
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v0

    goto :goto_1

    .line 448
    :cond_1
    iput-boolean v7, p0, Lfn;->a:Z

    .line 449
    invoke-virtual {v1}, Lfm;->a()F

    move-result v2

    invoke-virtual {v0}, Lfm;->a()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {v1}, Lfm;->b()F

    move-result v1

    invoke-virtual {v0}, Lfm;->b()F

    move-result v0

    sub-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v0, v2, v0

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 454
    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method private a()Z
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 463
    .line 465
    iget-object v0, p0, Lfn;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v6

    move v5, v3

    move v1, v4

    move v2, v3

    .line 466
    :goto_0
    if-ge v5, v6, :cond_0

    .line 467
    iget-object v0, p0, Lfn;->a:Ljava/util/Vector;

    invoke-virtual {v0, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfm;

    .line 468
    invoke-virtual {v0}, Lfm;->a()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_4

    .line 469
    add-int/lit8 v2, v2, 0x1

    .line 470
    invoke-virtual {v0}, Lfm;->c()F

    move-result v0

    add-float/2addr v0, v1

    move v1, v2

    .line 466
    :goto_1
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 473
    :cond_0
    const/4 v0, 0x3

    if-ge v2, v0, :cond_1

    .line 486
    :goto_2
    return v3

    .line 480
    :cond_1
    int-to-float v0, v6

    div-float v5, v1, v0

    move v2, v3

    .line 482
    :goto_3
    if-ge v2, v6, :cond_2

    .line 483
    iget-object v0, p0, Lfn;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfm;

    .line 484
    invoke-virtual {v0}, Lfm;->c()F

    move-result v0

    sub-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float/2addr v4, v0

    .line 482
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 486
    :cond_2
    const v0, 0x3d4ccccd

    mul-float/2addr v0, v1

    cmpg-float v0, v4, v0

    if-gtz v0, :cond_3

    const/4 v0, 0x1

    :goto_4
    move v3, v0

    goto :goto_2

    :cond_3
    move v0, v3

    goto :goto_4

    :cond_4
    move v0, v1

    move v1, v2

    goto :goto_1
.end method

.method protected static a([I)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 198
    move v2, v1

    move v3, v1

    .line 199
    :goto_0
    const/4 v4, 0x5

    if-ge v2, v4, :cond_2

    .line 200
    aget v4, p0, v2

    .line 201
    if-nez v4, :cond_1

    .line 212
    :cond_0
    :goto_1
    return v1

    .line 204
    :cond_1
    add-int/2addr v3, v4

    .line 199
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 206
    :cond_2
    const/4 v2, 0x7

    if-lt v3, v2, :cond_0

    .line 209
    shl-int/lit8 v2, v3, 0x8

    div-int/lit8 v2, v2, 0x7

    .line 210
    div-int/lit8 v3, v2, 0x2

    .line 212
    aget v4, p0, v1

    shl-int/lit8 v4, v4, 0x8

    sub-int v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v3, :cond_3

    aget v4, p0, v0

    shl-int/lit8 v4, v4, 0x8

    sub-int v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v3, :cond_3

    mul-int/lit8 v4, v2, 0x3

    const/4 v5, 0x2

    aget v5, p0, v5

    shl-int/lit8 v5, v5, 0x8

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v5, v3, 0x3

    if-ge v4, v5, :cond_3

    const/4 v4, 0x3

    aget v4, p0, v4

    shl-int/lit8 v4, v4, 0x8

    sub-int v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v3, :cond_3

    const/4 v4, 0x4

    aget v4, p0, v4

    shl-int/lit8 v4, v4, 0x8

    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v3, :cond_3

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method private a()[I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 220
    iget-object v0, p0, Lfn;->a:[I

    aput v2, v0, v2

    .line 221
    iget-object v0, p0, Lfn;->a:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 222
    iget-object v0, p0, Lfn;->a:[I

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 223
    iget-object v0, p0, Lfn;->a:[I

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 224
    iget-object v0, p0, Lfn;->a:[I

    const/4 v1, 0x4

    aput v2, v0, v1

    .line 225
    iget-object v0, p0, Lfn;->a:[I

    return-object v0
.end method

.method private a()[Lfm;
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x3

    .line 497
    iget-object v0, p0, Lfn;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v6

    .line 498
    if-ge v6, v7, :cond_0

    .line 500
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0

    .line 504
    :cond_0
    if-le v6, v7, :cond_3

    move v1, v2

    move v4, v3

    move v5, v3

    .line 508
    :goto_0
    if-ge v1, v6, :cond_1

    .line 509
    iget-object v0, p0, Lfn;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfm;

    invoke-virtual {v0}, Lfm;->c()F

    move-result v0

    .line 510
    add-float/2addr v5, v0

    .line 511
    mul-float/2addr v0, v0

    add-float/2addr v4, v0

    .line 508
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 513
    :cond_1
    int-to-float v0, v6

    div-float/2addr v5, v0

    .line 514
    int-to-float v0, v6

    div-float v0, v4, v0

    mul-float v1, v5, v5

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 516
    iget-object v1, p0, Lfn;->a:Ljava/util/Vector;

    new-instance v4, Lfp;

    invoke-direct {v4, v5}, Lfp;-><init>(F)V

    invoke-static {v1, v4}, Lbh;->a(Ljava/util/Vector;Lbi;)V

    .line 518
    const v1, 0x3e4ccccd

    mul-float/2addr v1, v5

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v4

    move v1, v2

    .line 520
    :goto_1
    iget-object v0, p0, Lfn;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lfn;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v7, :cond_3

    .line 521
    iget-object v0, p0, Lfn;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfm;

    .line 522
    invoke-virtual {v0}, Lfm;->c()F

    move-result v0

    sub-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    .line 523
    iget-object v0, p0, Lfn;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 524
    add-int/lit8 v1, v1, -0x1

    .line 520
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 529
    :cond_3
    iget-object v0, p0, Lfn;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v7, :cond_5

    move v1, v2

    .line 533
    :goto_2
    iget-object v0, p0, Lfn;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 534
    iget-object v0, p0, Lfn;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfm;

    invoke-virtual {v0}, Lfm;->c()F

    move-result v0

    add-float/2addr v3, v0

    .line 533
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 537
    :cond_4
    iget-object v0, p0, Lfn;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v3, v0

    .line 539
    iget-object v1, p0, Lfn;->a:Ljava/util/Vector;

    new-instance v3, Lfo;

    invoke-direct {v3, v0}, Lfo;-><init>(F)V

    invoke-static {v1, v3}, Lbh;->a(Ljava/util/Vector;Lbi;)V

    .line 541
    iget-object v0, p0, Lfn;->a:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->setSize(I)V

    .line 544
    :cond_5
    new-array v1, v7, [Lfm;

    iget-object v0, p0, Lfn;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfm;

    aput-object v0, v1, v2

    iget-object v0, p0, Lfn;->a:Ljava/util/Vector;

    invoke-virtual {v0, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfm;

    aput-object v0, v1, v8

    iget-object v0, p0, Lfn;->a:Ljava/util/Vector;

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfm;

    aput-object v0, v1, v9

    return-object v1
.end method

.method private b(IIII)F
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v0, 0x7fc0

    .line 313
    iget-object v2, p0, Lfn;->a:Lbe;

    .line 315
    invoke-virtual {v2}, Lbe;->a()I

    move-result v3

    .line 316
    invoke-direct {p0}, Lfn;->a()[I

    move-result-object v4

    move v1, p1

    .line 319
    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {v2, v1, p2}, Lbe;->a(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 320
    const/4 v5, 0x2

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    .line 321
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 323
    :cond_0
    if-gez v1, :cond_2

    .line 372
    :cond_1
    :goto_1
    return v0

    .line 326
    :cond_2
    :goto_2
    if-ltz v1, :cond_3

    invoke-virtual {v2, v1, p2}, Lbe;->a(II)Z

    move-result v5

    if-nez v5, :cond_3

    aget v5, v4, v8

    if-gt v5, p3, :cond_3

    .line 327
    aget v5, v4, v8

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v8

    .line 328
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 330
    :cond_3
    if-ltz v1, :cond_1

    aget v5, v4, v8

    if-gt v5, p3, :cond_1

    .line 333
    :goto_3
    if-ltz v1, :cond_4

    invoke-virtual {v2, v1, p2}, Lbe;->a(II)Z

    move-result v5

    if-eqz v5, :cond_4

    aget v5, v4, v7

    if-gt v5, p3, :cond_4

    .line 334
    aget v5, v4, v7

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v7

    .line 335
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 337
    :cond_4
    aget v1, v4, v7

    if-gt v1, p3, :cond_1

    .line 341
    add-int/lit8 v1, p1, 0x1

    .line 342
    :goto_4
    if-ge v1, v3, :cond_5

    invoke-virtual {v2, v1, p2}, Lbe;->a(II)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 343
    const/4 v5, 0x2

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    .line 344
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 346
    :cond_5
    if-eq v1, v3, :cond_1

    .line 349
    :goto_5
    if-ge v1, v3, :cond_6

    invoke-virtual {v2, v1, p2}, Lbe;->a(II)Z

    move-result v5

    if-nez v5, :cond_6

    aget v5, v4, v9

    if-ge v5, p3, :cond_6

    .line 350
    aget v5, v4, v9

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v9

    .line 351
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 353
    :cond_6
    if-eq v1, v3, :cond_1

    aget v5, v4, v9

    if-ge v5, p3, :cond_1

    .line 356
    :goto_6
    if-ge v1, v3, :cond_7

    invoke-virtual {v2, v1, p2}, Lbe;->a(II)Z

    move-result v5

    if-eqz v5, :cond_7

    aget v5, v4, v10

    if-ge v5, p3, :cond_7

    .line 357
    aget v5, v4, v10

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v10

    .line 358
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 360
    :cond_7
    aget v2, v4, v10

    if-ge v2, p3, :cond_1

    .line 366
    aget v2, v4, v7

    aget v3, v4, v8

    add-int/2addr v2, v3

    const/4 v3, 0x2

    aget v3, v4, v3

    add-int/2addr v2, v3

    aget v3, v4, v9

    add-int/2addr v2, v3

    aget v3, v4, v10

    add-int/2addr v2, v3

    .line 368
    sub-int/2addr v2, p4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    if-ge v2, p4, :cond_1

    .line 372
    invoke-static {v4}, Lfn;->a([I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v4, v1}, Lfn;->a([II)F

    move-result v0

    goto/16 :goto_1
.end method


# virtual methods
.method a(Ljava/util/Hashtable;)Lfq;
    .locals 14
    .parameter

    .prologue
    const/4 v13, 0x4

    const/4 v1, 0x1

    const/4 v8, 0x2

    const/4 v4, 0x3

    const/4 v2, 0x0

    .line 76
    if-eqz p1, :cond_2

    sget-object v0, Le;->d:Le;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 77
    :goto_0
    iget-object v3, p0, Lfn;->a:Lbe;

    invoke-virtual {v3}, Lbe;->b()I

    move-result v9

    .line 78
    iget-object v3, p0, Lfn;->a:Lbe;

    invoke-virtual {v3}, Lbe;->a()I

    move-result v10

    .line 86
    mul-int/lit8 v3, v9, 0x3

    div-int/lit16 v3, v3, 0xe4

    .line 87
    if-lt v3, v4, :cond_0

    if-eqz v0, :cond_d

    :cond_0
    move v0, v4

    .line 92
    :goto_1
    const/4 v3, 0x5

    new-array v11, v3, [I

    .line 93
    add-int/lit8 v5, v0, -0x1

    move v6, v2

    move v7, v0

    :goto_2
    if-ge v5, v9, :cond_b

    if-nez v6, :cond_b

    .line 95
    aput v2, v11, v2

    .line 96
    aput v2, v11, v1

    .line 97
    aput v2, v11, v8

    .line 98
    aput v2, v11, v4

    .line 99
    aput v2, v11, v13

    move v3, v2

    move v0, v2

    .line 101
    :goto_3
    if-ge v3, v10, :cond_9

    .line 102
    iget-object v12, p0, Lfn;->a:Lbe;

    invoke-virtual {v12, v3, v5}, Lbe;->a(II)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 104
    and-int/lit8 v12, v0, 0x1

    if-ne v12, v1, :cond_1

    .line 105
    add-int/lit8 v0, v0, 0x1

    .line 107
    :cond_1
    aget v12, v11, v0

    add-int/lit8 v12, v12, 0x1

    aput v12, v11, v0

    .line 101
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    move v0, v2

    .line 76
    goto :goto_0

    .line 109
    :cond_3
    and-int/lit8 v12, v0, 0x1

    if-nez v12, :cond_8

    .line 110
    if-ne v0, v13, :cond_7

    .line 111
    invoke-static {v11}, Lfn;->a([I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 112
    invoke-virtual {p0, v11, v5, v3}, Lfn;->a([III)Z

    move-result v0

    .line 113
    if-eqz v0, :cond_5

    .line 117
    iget-boolean v0, p0, Lfn;->a:Z

    if-eqz v0, :cond_4

    .line 118
    invoke-direct {p0}, Lfn;->a()Z

    move-result v0

    .line 145
    :goto_5
    aput v2, v11, v2

    .line 146
    aput v2, v11, v1

    .line 147
    aput v2, v11, v8

    .line 148
    aput v2, v11, v4

    .line 149
    aput v2, v11, v13

    move v6, v0

    move v7, v8

    move v0, v2

    .line 150
    goto :goto_4

    .line 120
    :cond_4
    invoke-direct {p0}, Lfn;->a()I

    move-result v0

    .line 121
    aget v7, v11, v8

    if-le v0, v7, :cond_c

    .line 130
    aget v3, v11, v8

    sub-int/2addr v0, v3

    sub-int/2addr v0, v8

    add-int v3, v5, v0

    .line 131
    add-int/lit8 v0, v10, -0x1

    :goto_6
    move v5, v3

    move v3, v0

    move v0, v6

    .line 133
    goto :goto_5

    .line 135
    :cond_5
    aget v0, v11, v8

    aput v0, v11, v2

    .line 136
    aget v0, v11, v4

    aput v0, v11, v1

    .line 137
    aget v0, v11, v13

    aput v0, v11, v8

    .line 138
    aput v1, v11, v4

    .line 139
    aput v2, v11, v13

    move v0, v4

    .line 141
    goto :goto_4

    .line 151
    :cond_6
    aget v0, v11, v8

    aput v0, v11, v2

    .line 152
    aget v0, v11, v4

    aput v0, v11, v1

    .line 153
    aget v0, v11, v13

    aput v0, v11, v8

    .line 154
    aput v1, v11, v4

    .line 155
    aput v2, v11, v13

    move v0, v4

    .line 156
    goto :goto_4

    .line 159
    :cond_7
    add-int/lit8 v0, v0, 0x1

    aget v12, v11, v0

    add-int/lit8 v12, v12, 0x1

    aput v12, v11, v0

    goto :goto_4

    .line 162
    :cond_8
    aget v12, v11, v0

    add-int/lit8 v12, v12, 0x1

    aput v12, v11, v0

    goto :goto_4

    .line 166
    :cond_9
    invoke-static {v11}, Lfn;->a([I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 167
    invoke-virtual {p0, v11, v5, v10}, Lfn;->a([III)Z

    move-result v0

    .line 168
    if-eqz v0, :cond_a

    .line 169
    aget v7, v11, v2

    .line 170
    iget-boolean v0, p0, Lfn;->a:Z

    if-eqz v0, :cond_a

    .line 172
    invoke-direct {p0}, Lfn;->a()Z

    move-result v6

    .line 93
    :cond_a
    add-int/2addr v5, v7

    goto/16 :goto_2

    .line 178
    :cond_b
    invoke-direct {p0}, Lfn;->a()[Lfm;

    move-result-object v0

    .line 179
    invoke-static {v0}, Lp;->a([Lp;)V

    .line 181
    new-instance v1, Lfq;

    invoke-direct {v1, v0}, Lfq;-><init>([Lfm;)V

    return-object v1

    :cond_c
    move v0, v3

    move v3, v5

    goto :goto_6

    :cond_d
    move v0, v3

    goto/16 :goto_1
.end method

.method protected a([III)Z
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 392
    aget v0, p1, v2

    aget v3, p1, v1

    add-int/2addr v0, v3

    aget v3, p1, v6

    add-int/2addr v0, v3

    const/4 v3, 0x3

    aget v3, p1, v3

    add-int/2addr v0, v3

    const/4 v3, 0x4

    aget v3, p1, v3

    add-int/2addr v0, v3

    .line 394
    invoke-static {p1, p3}, Lfn;->a([II)F

    move-result v3

    .line 395
    float-to-int v4, v3

    aget v5, p1, v6

    invoke-direct {p0, p2, v4, v5, v0}, Lfn;->a(IIII)F

    move-result v4

    .line 396
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_3

    .line 398
    float-to-int v3, v3

    float-to-int v5, v4

    aget v6, p1, v6

    invoke-direct {p0, v3, v5, v6, v0}, Lfn;->b(IIII)F

    move-result v5

    .line 399
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_3

    .line 400
    int-to-float v0, v0

    const/high16 v3, 0x40e0

    div-float v6, v0, v3

    .line 402
    iget-object v0, p0, Lfn;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v7

    move v3, v2

    .line 403
    :goto_0
    if-ge v3, v7, :cond_0

    .line 404
    iget-object v0, p0, Lfn;->a:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfm;

    .line 406
    invoke-virtual {v0, v6, v4, v5}, Lfm;->a(FFF)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 407
    invoke-virtual {v0}, Lfm;->a()V

    move v2, v1

    .line 412
    :cond_0
    if-nez v2, :cond_1

    .line 413
    new-instance v0, Lfm;

    invoke-direct {v0, v5, v4, v6}, Lfm;-><init>(FFF)V

    .line 414
    iget-object v2, p0, Lfn;->a:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 415
    iget-object v2, p0, Lfn;->a:Lq;

    if-eqz v2, :cond_1

    .line 416
    iget-object v2, p0, Lfn;->a:Lq;

    invoke-interface {v2, v0}, Lq;->a(Lp;)V

    :cond_1
    move v0, v1

    .line 422
    :goto_1
    return v0

    .line 403
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_3
    move v0, v2

    .line 422
    goto :goto_1
.end method
