.class public Lgq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static s:I


# instance fields
.field a:D

.field a:I

.field a:Lgu;

.field a:Ljava/lang/String;

.field a:Ljava/util/ArrayList;

.field a:Z

.field a:[S

.field b:D

.field b:I

.field b:Z

.field b:[S

.field c:D

.field c:I

.field c:Z

.field d:D

.field d:I

.field e:D

.field e:I

.field f:D

.field f:I

.field g:I

.field h:I

.field i:I

.field j:I

.field k:I

.field l:I

.field m:I

.field n:I

.field o:I

.field p:I

.field q:I

.field r:I

.field t:I

.field u:I

.field v:I

.field w:I

.field x:I

.field y:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 548
    const/4 v0, 0x0

    sput v0, Lgq;->s:I

    return-void
.end method

.method public constructor <init>(IIIIIIIDDDII)V
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 555
    const/4 v2, -0x1

    iput v2, p0, Lgq;->x:I

    .line 556
    const/4 v2, -0x1

    iput v2, p0, Lgq;->y:I

    .line 557
    const/4 v2, 0x0

    iput-boolean v2, p0, Lgq;->c:Z

    .line 558
    const-string v2, ""

    iput-object v2, p0, Lgq;->a:Ljava/lang/String;

    .line 559
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lgq;->e:D

    .line 560
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lgq;->a:Ljava/util/ArrayList;

    .line 561
    const-wide/high16 v2, 0x4000

    iput-wide v2, p0, Lgq;->f:D

    .line 16
    iput p1, p0, Lgq;->a:I

    .line 17
    iput p2, p0, Lgq;->b:I

    .line 19
    move/from16 v0, p3

    iput v0, p0, Lgq;->c:I

    .line 20
    move/from16 v0, p4

    iput v0, p0, Lgq;->d:I

    .line 22
    move/from16 v0, p5

    iput v0, p0, Lgq;->e:I

    .line 23
    move/from16 v0, p6

    iput v0, p0, Lgq;->f:I

    .line 24
    move/from16 v0, p7

    iput v0, p0, Lgq;->g:I

    .line 26
    move-wide/from16 v0, p8

    iput-wide v0, p0, Lgq;->a:D

    .line 27
    move-wide/from16 v0, p10

    iput-wide v0, p0, Lgq;->b:D

    .line 28
    move-wide/from16 v0, p12

    iput-wide v0, p0, Lgq;->c:D

    .line 29
    move/from16 v0, p14

    iput v0, p0, Lgq;->h:I

    .line 30
    mul-int v2, p1, p2

    div-int/lit8 v2, v2, 0x8

    iput v2, p0, Lgq;->i:I

    .line 32
    new-instance v2, Lgu;

    iget v3, p0, Lgq;->e:I

    iget v4, p0, Lgq;->f:I

    iget-wide v5, p0, Lgq;->a:D

    iget-wide v7, p0, Lgq;->b:D

    iget-wide v9, p0, Lgq;->c:D

    iget v11, p0, Lgq;->h:I

    int-to-double v11, v11

    invoke-direct/range {v2 .. v12}, Lgu;-><init>(IIDDDD)V

    iput-object v2, p0, Lgq;->a:Lgu;

    .line 35
    const/4 v2, 0x0

    iput v2, p0, Lgq;->k:I

    .line 36
    const/4 v2, 0x0

    iput v2, p0, Lgq;->l:I

    .line 37
    const/4 v2, -0x1

    iput v2, p0, Lgq;->n:I

    .line 38
    const/4 v2, -0x1

    iput v2, p0, Lgq;->o:I

    .line 39
    const/4 v2, 0x0

    iput v2, p0, Lgq;->p:I

    .line 40
    const/4 v2, 0x0

    iput v2, p0, Lgq;->q:I

    .line 41
    const/4 v2, 0x2

    iput v2, p0, Lgq;->j:I

    .line 42
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lgq;->d:D

    .line 43
    const/4 v2, 0x0

    iput v2, p0, Lgq;->r:I

    .line 44
    const/4 v2, 0x0

    iput-boolean v2, p0, Lgq;->a:Z

    .line 45
    const/4 v2, 0x0

    iput-boolean v2, p0, Lgq;->b:Z

    .line 46
    const/4 v2, 0x0

    iput v2, p0, Lgq;->m:I

    .line 47
    iget v2, p0, Lgq;->i:I

    mul-int v2, v2, p15

    iput v2, p0, Lgq;->u:I

    .line 48
    iget v2, p0, Lgq;->u:I

    div-int/lit8 v2, v2, 0x2

    new-array v2, v2, [S

    iput-object v2, p0, Lgq;->a:[S

    .line 49
    iget v2, p0, Lgq;->c:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lgq;->f:I

    mul-int/2addr v2, v3

    iget v3, p0, Lgq;->e:I

    add-int/2addr v2, v3

    iput v2, p0, Lgq;->v:I

    .line 50
    iget v2, p0, Lgq;->v:I

    new-array v2, v2, [S

    iput-object v2, p0, Lgq;->b:[S

    .line 53
    invoke-virtual {p0}, Lgq;->a()V

    .line 54
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lgq;->k:I

    return v0
.end method

.method public a([S)I
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 147
    .line 159
    iget-boolean v0, p0, Lgq;->a:Z

    if-nez v0, :cond_5

    .line 160
    array-length v0, p1

    iget v2, p0, Lgq;->w:I

    add-int/2addr v0, v2

    .line 161
    array-length v2, p1

    iget v3, p0, Lgq;->v:I

    if-lt v2, v3, :cond_0

    .line 164
    iget v0, p0, Lgq;->v:I

    iput v0, p0, Lgq;->w:I

    .line 165
    array-length v0, p1

    iget v2, p0, Lgq;->v:I

    sub-int v2, v0, v2

    move v0, v1

    .line 166
    :goto_0
    iget v3, p0, Lgq;->w:I

    if-ge v0, v3, :cond_6

    .line 167
    iget-object v3, p0, Lgq;->b:[S

    add-int v4, v2, v0

    aget-short v4, p1, v4

    aput-short v4, v3, v0

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_0
    iget v2, p0, Lgq;->v:I

    if-lt v0, v2, :cond_3

    .line 173
    iget v2, p0, Lgq;->w:I

    iget v3, p0, Lgq;->e:I

    sub-int/2addr v2, v3

    iget v3, p0, Lgq;->f:I

    add-int/2addr v2, v3

    iget v3, p0, Lgq;->f:I

    div-int/2addr v2, v3

    .line 175
    iget v3, p0, Lgq;->w:I

    iget v4, p0, Lgq;->f:I

    mul-int/2addr v4, v2

    sub-int/2addr v3, v4

    .line 176
    sub-int/2addr v0, v3

    .line 177
    iget v3, p0, Lgq;->v:I

    if-le v0, v3, :cond_2

    .line 180
    iget v0, p0, Lgq;->v:I

    array-length v3, p1

    sub-int/2addr v0, v3

    .line 181
    iget v3, p0, Lgq;->f:I

    mul-int/2addr v2, v3

    sub-int/2addr v2, v0

    .line 182
    iput v1, p0, Lgq;->w:I

    .line 183
    iput v1, p0, Lgq;->w:I

    :goto_1
    iget v3, p0, Lgq;->w:I

    if-ge v3, v0, :cond_1

    .line 184
    iget-object v3, p0, Lgq;->b:[S

    iget v4, p0, Lgq;->w:I

    iget-object v5, p0, Lgq;->b:[S

    iget v6, p0, Lgq;->w:I

    add-int/2addr v6, v2

    aget-short v5, v5, v6

    aput-short v5, v3, v4

    .line 183
    iget v3, p0, Lgq;->w:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lgq;->w:I

    goto :goto_1

    :cond_1
    move v0, v1

    .line 189
    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_6

    .line 190
    iget-object v2, p0, Lgq;->b:[S

    iget v3, p0, Lgq;->w:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lgq;->w:I

    aget-short v4, p1, v0

    aput-short v4, v2, v3

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 195
    :cond_2
    iget v0, p0, Lgq;->w:I

    iget v3, p0, Lgq;->f:I

    mul-int/2addr v2, v3

    sub-int v2, v0, v2

    .line 196
    array-length v0, p1

    sub-int v3, v0, v2

    move v0, v1

    .line 199
    :goto_3
    if-ge v0, v3, :cond_6

    .line 200
    iget-object v4, p0, Lgq;->b:[S

    iget v5, p0, Lgq;->w:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lgq;->w:I

    add-int v6, v2, v0

    aget-short v6, p1, v6

    aput-short v6, v4, v5

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 207
    :cond_3
    iget v0, p0, Lgq;->w:I

    iget v2, p0, Lgq;->e:I

    sub-int/2addr v0, v2

    iget v2, p0, Lgq;->f:I

    add-int/2addr v0, v2

    iget v2, p0, Lgq;->f:I

    div-int/2addr v0, v2

    .line 209
    iget v2, p0, Lgq;->w:I

    if-eqz v2, :cond_4

    .line 210
    iget v2, p0, Lgq;->w:I

    iget v3, p0, Lgq;->f:I

    mul-int/2addr v0, v3

    sub-int v0, v2, v0

    :goto_4
    move v2, v1

    .line 215
    :goto_5
    array-length v3, p1

    sub-int/2addr v3, v0

    if-ge v2, v3, :cond_6

    .line 216
    iget-object v3, p0, Lgq;->b:[S

    iget v4, p0, Lgq;->w:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lgq;->w:I

    add-int v5, v2, v0

    aget-short v5, p1, v5

    aput-short v5, v3, v4

    .line 215
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_4
    move v0, v1

    .line 212
    goto :goto_4

    .line 224
    :cond_5
    array-length v0, p1

    iget v2, p0, Lgq;->e:I

    sub-int/2addr v0, v2

    iget v2, p0, Lgq;->f:I

    add-int/2addr v0, v2

    iget v2, p0, Lgq;->f:I

    div-int/2addr v0, v2

    .line 226
    array-length v2, p1

    iget v3, p0, Lgq;->f:I

    mul-int/2addr v0, v3

    sub-int v0, v2, v0

    iput v0, p0, Lgq;->w:I

    .line 227
    array-length v0, p1

    iget v2, p0, Lgq;->w:I

    sub-int v2, v0, v2

    move v0, v1

    .line 231
    :goto_6
    iget v3, p0, Lgq;->w:I

    if-ge v0, v3, :cond_6

    .line 232
    iget-object v3, p0, Lgq;->b:[S

    add-int v4, v2, v0

    aget-short v4, p1, v4

    aput-short v4, v3, v0

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 238
    :cond_6
    return v1
.end method

.method public a([SI)Lgr;
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 368
    new-instance v4, Lgr;

    invoke-direct {v4, p0}, Lgr;-><init>(Lgq;)V

    .line 378
    invoke-virtual {p0, p1, p2}, Lgq;->a([SI)[S

    move-result-object v5

    .line 379
    array-length v6, v5

    .line 380
    iput-boolean v12, v4, Lgr;->a:Z

    .line 381
    iput-boolean v2, v4, Lgr;->c:Z

    .line 384
    iget v0, p0, Lgq;->e:I

    sub-int v0, v6, v0

    iget v1, p0, Lgq;->f:I

    add-int/2addr v0, v1

    iget v1, p0, Lgq;->f:I

    div-int v7, v0, v1

    .line 385
    iget v0, p0, Lgq;->g:I

    add-int/2addr v0, v7

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lgq;->g:I

    div-int v8, v0, v1

    move v1, v2

    move v3, v2

    .line 392
    :goto_0
    if-ge v1, v8, :cond_6

    .line 393
    iget v0, p0, Lgq;->g:I

    mul-int/2addr v0, v1

    sub-int v0, v7, v0

    .line 395
    iget v9, p0, Lgq;->g:I

    if-lt v0, v9, :cond_0

    .line 396
    iget v0, p0, Lgq;->g:I

    .line 402
    :cond_0
    iget-object v9, p0, Lgq;->a:Lgu;

    invoke-virtual {v9, v5, v3, v6, v0}, Lgu;->a([SIII)I

    move-result v9

    .line 404
    mul-int/lit8 v10, v9, 0x2

    if-le v10, v0, :cond_3

    .line 405
    iget-object v10, p0, Lgq;->a:Ljava/util/ArrayList;

    iget v11, p0, Lgq;->q:I

    mul-int/lit8 v11, v11, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    iget v10, p0, Lgq;->m:I

    iget v11, p0, Lgq;->f:I

    mul-int/2addr v11, v0

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    iput v10, p0, Lgq;->m:I

    .line 407
    iput v2, p0, Lgq;->k:I

    .line 408
    iget v10, p0, Lgq;->l:I

    add-int/2addr v9, v10

    iput v9, p0, Lgq;->l:I

    .line 410
    iget-boolean v9, p0, Lgq;->a:Z

    if-eqz v9, :cond_2

    .line 411
    invoke-virtual {p0, v5, v3, v0}, Lgq;->a([SII)Z

    .line 445
    :cond_1
    :goto_1
    iget v9, p0, Lgq;->f:I

    mul-int/2addr v0, v9

    add-int/2addr v0, v3

    .line 392
    :goto_2
    add-int/lit8 v1, v1, 0x1

    move v3, v0

    goto :goto_0

    .line 413
    :cond_2
    iput-boolean v12, p0, Lgq;->a:Z

    .line 414
    invoke-virtual {p0, v5, v3}, Lgq;->a([SI)Z

    .line 415
    invoke-virtual {p0, v5, v3, v0}, Lgq;->a([SII)Z

    goto :goto_1

    .line 421
    :cond_3
    iget-boolean v9, p0, Lgq;->a:Z

    if-eqz v9, :cond_4

    .line 422
    invoke-virtual {p0, v5, v3, v0}, Lgq;->a([SII)Z

    .line 425
    :cond_4
    iget v9, p0, Lgq;->k:I

    add-int/2addr v9, v0

    iput v9, p0, Lgq;->k:I

    .line 426
    iget-object v9, p0, Lgq;->a:Ljava/util/ArrayList;

    iget v10, p0, Lgq;->q:I

    mul-int/lit8 v10, v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    iget-boolean v9, p0, Lgq;->a:Z

    if-eqz v9, :cond_1

    iget v9, p0, Lgq;->k:I

    const/16 v10, 0x50

    if-le v9, v10, :cond_1

    .line 430
    iget v9, p0, Lgq;->l:I

    const/16 v10, 0x14

    if-ge v9, v10, :cond_5

    .line 431
    iput-boolean v2, p0, Lgq;->a:Z

    .line 432
    iget v9, p0, Lgq;->k:I

    .line 434
    iget v10, p0, Lgq;->f:I

    mul-int/2addr v0, v10

    add-int/2addr v0, v3

    .line 435
    iget v3, p0, Lgq;->w:I

    .line 436
    invoke-virtual {p0}, Lgq;->a()V

    .line 437
    iput v3, p0, Lgq;->w:I

    .line 438
    iput v9, p0, Lgq;->k:I

    goto :goto_2

    .line 441
    :cond_5
    iput-boolean v12, v4, Lgr;->c:Z

    .line 447
    :cond_6
    invoke-virtual {p0, v5}, Lgq;->a([S)I

    .line 448
    return-object v4
.end method

.method public a()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 493
    iput v2, p0, Lgq;->k:I

    .line 494
    iput v2, p0, Lgq;->l:I

    .line 495
    iput v3, p0, Lgq;->n:I

    .line 496
    iput v3, p0, Lgq;->o:I

    .line 497
    iput v2, p0, Lgq;->p:I

    .line 498
    iput v2, p0, Lgq;->q:I

    .line 499
    sput v2, Lgq;->s:I

    .line 500
    iput v2, p0, Lgq;->t:I

    .line 501
    const/4 v0, 0x2

    iput v0, p0, Lgq;->j:I

    .line 502
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lgq;->d:D

    .line 503
    iput v2, p0, Lgq;->r:I

    .line 504
    iput v2, p0, Lgq;->w:I

    .line 506
    iput-boolean v2, p0, Lgq;->a:Z

    .line 507
    iput-boolean v2, p0, Lgq;->b:Z

    .line 508
    iput v3, p0, Lgq;->x:I

    .line 509
    iput v3, p0, Lgq;->y:I

    .line 510
    iput-boolean v2, p0, Lgq;->c:Z

    .line 511
    iget-object v0, p0, Lgq;->a:Lgu;

    invoke-virtual {v0}, Lgu;->a()V

    .line 512
    return-void
.end method

.method a([SI)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 329
    .line 332
    iget v0, p0, Lgq;->t:I

    .line 333
    iget v2, p0, Lgq;->w:I

    if-lt v0, v2, :cond_0

    move v0, v1

    :goto_0
    move v2, v1

    .line 340
    :goto_1
    if-ge v2, v0, :cond_1

    .line 341
    iget-object v3, p0, Lgq;->a:[S

    iget v4, p0, Lgq;->q:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lgq;->q:I

    iget-object v5, p0, Lgq;->b:[S

    aget-short v5, v5, v2

    aput-short v5, v3, v4

    .line 340
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 336
    :cond_0
    iget v2, p0, Lgq;->w:I

    sub-int v0, v2, v0

    goto :goto_0

    .line 344
    :cond_1
    iget v0, p0, Lgq;->q:I

    if-eqz v0, :cond_2

    .line 352
    :goto_2
    return v1

    :cond_2
    move v0, v1

    .line 347
    :goto_3
    if-ge v0, p2, :cond_3

    .line 348
    iget-object v2, p0, Lgq;->a:[S

    iget v3, p0, Lgq;->q:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lgq;->q:I

    aget-short v4, p1, v0

    aput-short v4, v2, v3

    .line 347
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 350
    :cond_3
    iput v1, p0, Lgq;->w:I

    .line 352
    const/4 v1, 0x1

    goto :goto_2
.end method

.method a([SII)Z
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 356
    .line 359
    iget v0, p0, Lgq;->f:I

    mul-int v1, p3, v0

    .line 360
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget v2, p0, Lgq;->q:I

    iget-object v3, p0, Lgq;->a:[S

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 361
    iget-object v2, p0, Lgq;->a:[S

    iget v3, p0, Lgq;->q:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lgq;->q:I

    add-int v4, p2, v0

    aget-short v4, p1, v4

    aput-short v4, v2, v3

    .line 360
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 364
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public a(I)[S
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 271
    .line 272
    iget-boolean v0, p0, Lgq;->a:Z

    if-eqz v0, :cond_0

    if-gtz p1, :cond_1

    :cond_0
    move-object v0, v1

    .line 323
    :goto_0
    return-object v0

    .line 278
    :cond_1
    iget v0, p0, Lgq;->q:I

    sget v2, Lgq;->s:I

    sub-int/2addr v0, v2

    .line 281
    if-gez v0, :cond_2

    move-object v0, v1

    .line 286
    goto :goto_0

    .line 290
    :cond_2
    iget-boolean v2, p0, Lgq;->b:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 296
    :goto_1
    if-gtz v0, :cond_4

    move-object v0, v1

    .line 299
    goto :goto_0

    .line 293
    :cond_3
    rem-int v2, v0, p1

    sub-int/2addr v0, v2

    goto :goto_1

    .line 303
    :cond_4
    sget v1, Lgq;->s:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lgq;->a:[S

    array-length v2, v2

    if-lt v1, v2, :cond_5

    .line 304
    iget-object v0, p0, Lgq;->a:[S

    array-length v0, v0

    sget v1, Lgq;->s:I

    sub-int/2addr v0, v1

    .line 309
    :cond_5
    rem-int v1, v0, p1

    .line 310
    if-nez v1, :cond_6

    move v1, v0

    .line 314
    :goto_2
    new-array v2, v1, [S

    move v3, v4

    .line 315
    :goto_3
    if-ge v3, v0, :cond_7

    .line 316
    iget-object v5, p0, Lgq;->a:[S

    sget v6, Lgq;->s:I

    add-int/2addr v6, v3

    aget-short v5, v5, v6

    aput-short v5, v2, v3

    .line 315
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 313
    :cond_6
    add-int v2, v0, p1

    sub-int v1, v2, v1

    goto :goto_2

    .line 319
    :cond_7
    :goto_4
    if-ge v3, v1, :cond_8

    .line 320
    aput-short v4, v2, v3

    .line 319
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 321
    :cond_8
    sget v1, Lgq;->s:I

    add-int/2addr v0, v1

    sput v0, Lgq;->s:I

    move-object v0, v2

    .line 323
    goto :goto_0
.end method

.method public a([SI)[S
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 114
    .line 119
    iget v0, p0, Lgq;->e:I

    .line 120
    iget v2, p0, Lgq;->w:I

    if-le v0, v2, :cond_0

    .line 121
    iget v0, p0, Lgq;->w:I

    .line 127
    :goto_0
    iget v2, p0, Lgq;->w:I

    sub-int v3, v2, v0

    .line 128
    iput v0, p0, Lgq;->t:I

    .line 129
    add-int v2, p2, v0

    .line 133
    new-array v4, v2, [S

    move v2, v1

    .line 137
    :goto_1
    if-ge v2, v0, :cond_1

    .line 138
    iget-object v5, p0, Lgq;->b:[S

    add-int v6, v3, v2

    aget-short v5, v5, v6

    aput-short v5, v4, v2

    .line 137
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 123
    :cond_0
    iget v0, p0, Lgq;->w:I

    iget v2, p0, Lgq;->w:I

    iget v3, p0, Lgq;->e:I

    sub-int/2addr v2, v3

    iget v3, p0, Lgq;->f:I

    add-int/2addr v2, v3

    iget v3, p0, Lgq;->f:I

    div-int/2addr v2, v3

    iget v3, p0, Lgq;->f:I

    mul-int/2addr v2, v3

    sub-int/2addr v0, v2

    goto :goto_0

    .line 140
    :cond_1
    :goto_2
    if-ge v1, p2, :cond_2

    .line 141
    add-int v2, v0, v1

    aget-short v3, p1, v1

    aput-short v3, v4, v2

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 143
    :cond_2
    return-object v4
.end method
