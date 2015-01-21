.class public Lgh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:I

.field private a:Landroid/net/ConnectivityManager;

.field private a:Landroid/os/Handler;

.field private a:Landroid/telephony/TelephonyManager;

.field private a:Lgg;

.field private a:Lgk;

.field private a:Lgm;

.field private a:Lgn;

.field private a:Ljava/lang/String;

.field private a:Ljava/util/concurrent/ExecutorService;

.field private a:Z

.field private a:[B

.field private b:I

.field private b:Landroid/os/Handler;

.field private b:Ljava/lang/String;

.field private b:Z

.field private c:I

.field private c:Ljava/lang/String;

.field private c:Z

.field private d:I

.field private d:Ljava/lang/String;

.field private d:Z

.field private e:I

.field private e:Ljava/lang/String;

.field private e:Z

.field private f:I

.field private f:Ljava/lang/String;

.field private f:Z

.field private g:I

.field private g:Ljava/lang/String;

.field private g:Z

.field private h:I

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Lgg;IIIIIIIIILjava/lang/String;Landroid/telephony/TelephonyManager;Landroid/net/ConnectivityManager;)V
    .locals 8
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
    .parameter

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v1, 0x0

    iput-object v1, p0, Lgh;->b:Landroid/os/Handler;

    .line 71
    const/4 v1, 0x0

    iput-boolean v1, p0, Lgh;->a:Z

    .line 74
    const/4 v1, 0x0

    iput-object v1, p0, Lgh;->a:Ljava/util/concurrent/ExecutorService;

    .line 76
    const/4 v1, 0x0

    iput-object v1, p0, Lgh;->a:Lgg;

    .line 80
    const/4 v1, 0x0

    iput-boolean v1, p0, Lgh;->b:Z

    .line 98
    const/4 v1, 0x0

    iput v1, p0, Lgh;->c:I

    .line 99
    const/4 v1, 0x0

    iput v1, p0, Lgh;->d:I

    .line 100
    const/4 v1, 0x0

    iput v1, p0, Lgh;->e:I

    .line 101
    const/4 v1, 0x0

    iput v1, p0, Lgh;->f:I

    .line 104
    const/4 v1, 0x0

    iput v1, p0, Lgh;->g:I

    .line 110
    const/4 v1, 0x0

    iput v1, p0, Lgh;->h:I

    .line 118
    const/4 v1, 0x0

    iput v1, p0, Lgh;->i:I

    .line 124
    const/4 v1, 0x0

    iput-boolean v1, p0, Lgh;->c:Z

    .line 125
    const/4 v1, 0x0

    iput-boolean v1, p0, Lgh;->d:Z

    .line 127
    const/4 v1, 0x0

    iput-boolean v1, p0, Lgh;->e:Z

    .line 128
    const/4 v1, 0x0

    iput-boolean v1, p0, Lgh;->f:Z

    .line 129
    const/4 v1, 0x0

    iput-boolean v1, p0, Lgh;->g:Z

    .line 136
    iput-object p1, p0, Lgh;->a:Lgg;

    .line 137
    if-nez p9, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lgh;->a:Z

    .line 138
    move/from16 v0, p10

    iput v0, p0, Lgh;->a:I

    .line 141
    move-object/from16 v0, p12

    iput-object v0, p0, Lgh;->a:Landroid/telephony/TelephonyManager;

    .line 143
    move-object/from16 v0, p13

    iput-object v0, p0, Lgh;->a:Landroid/net/ConnectivityManager;

    .line 146
    new-instance v1, Lgm;

    iget-object v2, p0, Lgh;->a:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lgh;->a:Landroid/net/ConnectivityManager;

    invoke-direct {v1, v2, v3}, Lgm;-><init>(Landroid/telephony/TelephonyManager;Landroid/net/ConnectivityManager;)V

    iput-object v1, p0, Lgh;->a:Lgm;

    .line 149
    iget-object v1, p0, Lgh;->a:Lgm;

    invoke-virtual {v1}, Lgm;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgh;->a:Ljava/lang/String;

    .line 151
    invoke-direct {p0}, Lgh;->c()V

    .line 153
    iput p5, p0, Lgh;->c:I

    .line 154
    iput p6, p0, Lgh;->d:I

    .line 155
    iput p7, p0, Lgh;->e:I

    .line 156
    move/from16 v0, p8

    iput v0, p0, Lgh;->f:I

    .line 157
    iget-boolean v6, p0, Lgh;->a:Z

    iget v7, p0, Lgh;->b:I

    move-object v1, p0

    move v2, p5

    move v3, p6

    move v4, p7

    move/from16 v5, p8

    invoke-virtual/range {v1 .. v7}, Lgh;->a(IIIIZI)V

    .line 159
    const/16 v1, 0xa

    invoke-static {p2, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgh;->d:Ljava/lang/String;

    .line 160
    move-object/from16 v0, p11

    iput-object v0, p0, Lgh;->e:Ljava/lang/String;

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 163
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgh;->f:Ljava/lang/String;

    .line 164
    const/16 v1, 0xa

    invoke-static {p3, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgh;->g:Ljava/lang/String;

    .line 165
    const/16 v1, 0xa

    invoke-static {p4, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgh;->h:Ljava/lang/String;

    .line 167
    const/4 v1, 0x0

    iput v1, p0, Lgh;->j:I

    .line 169
    const/16 v1, 0xbb8

    new-array v1, v1, [B

    iput-object v1, p0, Lgh;->a:[B

    .line 170
    iget-object v1, p0, Lgh;->a:[B

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 172
    const/4 v1, 0x0

    iput v1, p0, Lgh;->i:I

    .line 173
    const/4 v1, 0x0

    iput-boolean v1, p0, Lgh;->d:Z

    .line 175
    const/4 v1, 0x0

    iput v1, p0, Lgh;->g:I

    .line 176
    return-void

    .line 137
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private a([S)F
    .locals 7
    .parameter

    .prologue
    .line 545
    .line 546
    const-wide/16 v1, 0x0

    .line 547
    array-length v3, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-short v4, p1, v0

    .line 548
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-double v4, v4

    add-double/2addr v1, v4

    .line 547
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 550
    :cond_0
    const-wide v3, 0x40dfffc000000000L

    array-length v0, p1

    int-to-double v5, v0

    mul-double/2addr v3, v5

    const-wide v5, 0x3fa999999999999aL

    mul-double/2addr v3, v5

    div-double v0, v1, v3

    .line 551
    double-to-float v0, v0

    .line 552
    return v0
.end method

.method private a(I[B)V
    .locals 18
    .parameter
    .parameter

    .prologue
    .line 457
    .line 458
    const/4 v1, 0x0

    .line 461
    move-object/from16 v0, p0

    iget v2, v0, Lgh;->i:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_0

    if-lez p1, :cond_0

    .line 462
    rsub-int/lit8 p1, p1, 0x0

    .line 466
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lgh;->g:Z

    if-nez v2, :cond_7

    move v15, v1

    .line 467
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lgh;->j:I

    move-object/from16 v0, p2

    array-length v2, v0

    add-int/2addr v1, v2

    sub-int/2addr v1, v15

    const/16 v2, 0xbb8

    if-lt v1, v2, :cond_6

    .line 468
    move-object/from16 v0, p0

    iget v1, v0, Lgh;->i:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lgh;->i:I

    .line 469
    if-gez p1, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lgh;->j:I

    move-object/from16 v0, p2

    array-length v2, v0

    add-int/2addr v1, v2

    sub-int/2addr v1, v15

    const/16 v2, 0xbb8

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    move/from16 v16, v1

    .line 472
    :goto_1
    if-eqz v16, :cond_1

    .line 473
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lgh;->g:Z

    .line 475
    :cond_1
    const/16 v1, 0xbb8

    new-array v11, v1, [B

    .line 476
    move-object/from16 v0, p0

    iget-object v1, v0, Lgh;->a:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lgh;->j:I

    invoke-static {v1, v2, v11, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 478
    move-object/from16 v0, p0

    iget v1, v0, Lgh;->j:I

    move-object/from16 v0, p0

    iget v2, v0, Lgh;->j:I

    rsub-int v2, v2, 0xbb8

    move-object/from16 v0, p2

    invoke-static {v0, v15, v11, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lgh;->a:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v17, v0

    new-instance v1, Lgl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lgh;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lgh;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lgh;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lgh;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lgh;->f:Ljava/lang/String;

    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    iget v7, v0, Lgh;->i:I

    neg-int v7, v7

    :goto_2
    const/16 v8, 0xbb8

    move-object/from16 v0, p0

    iget-object v9, v0, Lgh;->g:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lgh;->h:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v13, p0

    invoke-direct/range {v1 .. v14}, Lgl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;[BZLgh;I)V

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 489
    if-eqz v16, :cond_2

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lgh;->a:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v17, v0

    new-instance v1, Lgl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lgh;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lgh;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lgh;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lgh;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lgh;->f:Ljava/lang/String;

    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget v7, v0, Lgh;->i:I

    neg-int v7, v7

    :goto_3
    const/16 v8, 0xbb8

    move-object/from16 v0, p0

    iget-object v9, v0, Lgh;->g:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lgh;->h:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v14, 0x1

    move-object/from16 v13, p0

    invoke-direct/range {v1 .. v14}, Lgl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;[BZLgh;I)V

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 496
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lgh;->j:I

    rsub-int v1, v1, 0xbb8

    add-int/2addr v1, v15

    .line 497
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lgh;->j:I

    move v15, v1

    .line 500
    goto/16 :goto_0

    .line 469
    :cond_3
    const/4 v1, 0x0

    move/from16 v16, v1

    goto/16 :goto_1

    .line 482
    :cond_4
    move-object/from16 v0, p0

    iget v7, v0, Lgh;->i:I

    goto :goto_2

    .line 490
    :cond_5
    move-object/from16 v0, p0

    iget v7, v0, Lgh;->i:I

    goto :goto_3

    .line 502
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lgh;->a:[B

    move-object/from16 v0, p0

    iget v2, v0, Lgh;->j:I

    move-object/from16 v0, p2

    array-length v3, v0

    sub-int/2addr v3, v15

    move-object/from16 v0, p2

    invoke-static {v0, v15, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 504
    move-object/from16 v0, p0

    iget v1, v0, Lgh;->j:I

    move-object/from16 v0, p2

    array-length v2, v0

    sub-int/2addr v2, v15

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lgh;->j:I

    .line 507
    move-object/from16 v0, p0

    iget v1, v0, Lgh;->j:I

    if-eqz v1, :cond_7

    if-gez p1, :cond_7

    .line 509
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lgh;->g:Z

    .line 511
    move-object/from16 v0, p0

    iget v1, v0, Lgh;->j:I

    new-array v11, v1, [B

    .line 512
    move-object/from16 v0, p0

    iget-object v1, v0, Lgh;->a:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lgh;->j:I

    invoke-static {v1, v2, v11, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 514
    move-object/from16 v0, p0

    iget v1, v0, Lgh;->i:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lgh;->i:I

    .line 515
    move-object/from16 v0, p0

    iget-object v15, v0, Lgh;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lgl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lgh;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lgh;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lgh;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lgh;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lgh;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lgh;->i:I

    neg-int v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lgh;->j:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lgh;->g:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lgh;->h:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v13, p0

    invoke-direct/range {v1 .. v14}, Lgl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;[BZLgh;I)V

    invoke-interface {v15, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 520
    move-object/from16 v0, p0

    iget-object v15, v0, Lgh;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lgl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lgh;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lgh;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lgh;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lgh;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lgh;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lgh;->i:I

    neg-int v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lgh;->j:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lgh;->g:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lgh;->h:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v14, 0x1

    move-object/from16 v13, p0

    invoke-direct/range {v1 .. v14}, Lgl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;[BZLgh;I)V

    invoke-interface {v15, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 524
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lgh;->j:I

    .line 529
    :cond_7
    return-void
.end method

.method private a(I[S)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 433
    iget-boolean v0, p0, Lgh;->e:Z

    if-eqz v0, :cond_0

    .line 434
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgh;->f:Z

    .line 436
    :cond_0
    iget-object v0, p0, Lgh;->a:Lgg;

    invoke-virtual {v0}, Lgg;->a()Lgj;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 437
    iget-object v0, p0, Lgh;->a:Lgg;

    invoke-virtual {v0}, Lgg;->a()Lgj;

    move-result-object v0

    invoke-interface {v0, p2}, Lgj;->a([S)V

    .line 439
    :cond_1
    iget-object v0, p0, Lgh;->a:Lgg;

    invoke-virtual {v0}, Lgg;->a()Lgj;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 440
    iget-object v0, p0, Lgh;->a:Lgg;

    invoke-virtual {v0}, Lgg;->a()Lgj;

    move-result-object v0

    invoke-direct {p0, p2}, Lgh;->a([S)F

    move-result v1

    invoke-interface {v0, v1}, Lgj;->a(F)V

    .line 443
    :cond_2
    iget-object v0, p0, Lgh;->b:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lgh;->a:Lgn;

    invoke-virtual {v0}, Lgn;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 444
    iget-object v0, p0, Lgh;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 446
    if-lez p1, :cond_4

    iget-boolean v1, p0, Lgh;->e:Z

    if-eqz v1, :cond_4

    .line 447
    neg-int v1, p1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 451
    :goto_0
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 452
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 454
    :cond_3
    return-void

    .line 449
    :cond_4
    iput p1, v0, Landroid/os/Message;->arg1:I

    goto :goto_0
.end method

.method private a(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 273
    iget-boolean v0, p0, Lgh;->d:Z

    if-nez v0, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 277
    :pswitch_0
    invoke-direct {p0}, Lgh;->h()V

    goto :goto_0

    .line 280
    :pswitch_1
    invoke-direct {p0}, Lgh;->i()V

    goto :goto_0

    .line 283
    :pswitch_2
    invoke-direct {p0}, Lgh;->j()V

    goto :goto_0

    .line 286
    :pswitch_3
    invoke-direct {p0}, Lgh;->k()V

    goto :goto_0

    .line 289
    :pswitch_4
    iget-boolean v0, p0, Lgh;->f:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lgh;->g:Z

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 292
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [S

    check-cast v0, [S

    invoke-direct {p0, v1, v0}, Lgh;->a(I[S)V

    goto :goto_0

    .line 295
    :pswitch_5
    iget-boolean v0, p0, Lgh;->g:Z

    if-nez v0, :cond_0

    .line 297
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    .line 298
    if-eqz v0, :cond_0

    .line 300
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1, v0}, Lgh;->a(I[B)V

    goto :goto_0

    .line 303
    :pswitch_6
    iget-boolean v0, p0, Lgh;->c:Z

    if-eqz v0, :cond_0

    .line 305
    invoke-static {}, Lgt;->a()Lgt;

    move-result-object v0

    iput v1, v0, Lgt;->c:I

    .line 306
    invoke-static {}, Lgt;->a()Lgt;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lgt;->f:J

    .line 307
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lgh;->a(Ljava/util/List;)V

    goto :goto_0

    .line 310
    :pswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lgh;->d(I)V

    goto :goto_0

    .line 313
    :pswitch_8
    iput-boolean v1, p0, Lgh;->d:Z

    .line 314
    invoke-direct {p0}, Lgh;->f()V

    .line 315
    invoke-direct {p0}, Lgh;->d()V

    .line 316
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 275
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method static synthetic a(Lgh;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lgh;->a(Landroid/os/Message;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .parameter

    .prologue
    .line 532
    iget-object v0, p0, Lgh;->a:Lgg;

    invoke-virtual {v0}, Lgg;->a()Lgj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lgh;->a:Lgg;

    invoke-virtual {v0}, Lgg;->a()Lgj;

    move-result-object v0

    invoke-interface {v0, p1}, Lgj;->a(Ljava/util/List;)V

    .line 534
    :cond_0
    iget-object v0, p0, Lgh;->a:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 535
    return-void
.end method

.method private c()V
    .locals 6

    .prologue
    .line 223
    new-instance v0, Lgk;

    iget v1, p0, Lgh;->a:I

    iget-object v2, p0, Lgh;->a:Landroid/telephony/TelephonyManager;

    iget-boolean v3, p0, Lgh;->a:Z

    iget-object v5, p0, Lgh;->a:Landroid/net/ConnectivityManager;

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lgk;-><init>(ILandroid/telephony/TelephonyManager;ZLgh;Landroid/net/ConnectivityManager;)V

    iput-object v0, p0, Lgh;->a:Lgk;

    .line 227
    new-instance v0, Lgn;

    iget v1, p0, Lgh;->b:I

    invoke-direct {v0, v1, p0}, Lgn;-><init>(ILgh;)V

    iput-object v0, p0, Lgh;->a:Lgn;

    .line 233
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lgh;->a:Ljava/util/concurrent/ExecutorService;

    .line 234
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 237
    iput-object v1, p0, Lgh;->a:Lgk;

    .line 238
    iput-object v1, p0, Lgh;->a:Lgn;

    .line 240
    iget-object v0, p0, Lgh;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 241
    iput-object v1, p0, Lgh;->a:Ljava/util/concurrent/ExecutorService;

    .line 242
    return-void
.end method

.method private d(I)V
    .locals 2
    .parameter

    .prologue
    .line 538
    invoke-direct {p0}, Lgh;->f()V

    .line 539
    iget-object v0, p0, Lgh;->a:Lgg;

    invoke-virtual {v0}, Lgg;->a()Lgj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lgh;->a:Lgg;

    invoke-virtual {v0}, Lgg;->a()Lgj;

    move-result-object v0

    invoke-interface {v0, p1}, Lgj;->a(I)V

    .line 541
    :cond_0
    iget-object v0, p0, Lgh;->a:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 542
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 322
    sget-object v0, Lgt;->a:Lgt;

    if-eqz v0, :cond_0

    .line 323
    sget-object v0, Lgt;->a:Lgt;

    sget-object v1, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0, v1}, Lgt;->a(Landroid/content/Context;)V

    .line 325
    :cond_0
    invoke-static {}, Lgt;->a()Lgt;

    move-result-object v0

    invoke-virtual {v0}, Lgt;->a()V

    .line 326
    invoke-static {}, Lgt;->a()Lgt;

    move-result-object v0

    iget-object v1, p0, Lgh;->a:Ljava/lang/String;

    iput-object v1, v0, Lgt;->a:Ljava/lang/String;

    .line 327
    invoke-static {}, Lgt;->a()Lgt;

    move-result-object v0

    iget-object v1, p0, Lgh;->f:Ljava/lang/String;

    iput-object v1, v0, Lgt;->b:Ljava/lang/String;

    .line 328
    invoke-static {}, Lgt;->a()Lgt;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lgt;->c:J

    .line 329
    iget-object v0, p0, Lgh;->a:Lgk;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgh;->a:Lgn;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgh;->a:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_2

    .line 330
    :cond_1
    invoke-direct {p0}, Lgh;->c()V

    .line 332
    :cond_2
    invoke-direct {p0}, Lgh;->g()V

    .line 333
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 336
    iput-boolean v2, p0, Lgh;->e:Z

    iput-boolean v2, p0, Lgh;->g:Z

    iput-boolean v2, p0, Lgh;->f:Z

    .line 337
    iput-boolean v1, p0, Lgh;->c:Z

    .line 338
    iget-object v0, p0, Lgh;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgh;->a:Lgn;

    invoke-virtual {v0}, Lgn;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lgh;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 340
    iget-object v0, p0, Lgh;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    iget-object v0, p0, Lgh;->b:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 346
    :cond_0
    iget-object v0, p0, Lgh;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 347
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 350
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lgh;->a:Lgk;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 351
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lgh;->a:Lgn;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 352
    return-void
.end method

.method private h()V
    .locals 15

    .prologue
    const/4 v6, 0x0

    .line 410
    invoke-direct {p0}, Lgh;->e()V

    .line 411
    new-instance v14, Ljava/lang/Thread;

    new-instance v0, Lgl;

    iget-object v1, p0, Lgh;->a:Ljava/lang/String;

    iget-object v2, p0, Lgh;->b:Ljava/lang/String;

    iget-object v3, p0, Lgh;->d:Ljava/lang/String;

    iget-object v4, p0, Lgh;->e:Ljava/lang/String;

    iget-object v5, p0, Lgh;->f:Ljava/lang/String;

    iget-object v8, p0, Lgh;->g:Ljava/lang/String;

    iget-object v9, p0, Lgh;->h:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x1

    move v7, v6

    move-object v12, p0

    move v13, v6

    invoke-direct/range {v0 .. v13}, Lgl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;[BZLgh;I)V

    invoke-direct {v14, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v14}, Ljava/lang/Thread;->start()V

    .line 414
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lgh;->a:Lgg;

    invoke-virtual {v0}, Lgg;->a()Lgj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lgh;->a:Lgg;

    invoke-virtual {v0}, Lgg;->a()Lgj;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lgj;->a(Landroid/os/Bundle;)V

    .line 419
    :cond_0
    return-void
.end method

.method private j()V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lgh;->a:Lgg;

    invoke-virtual {v0}, Lgg;->a()Lgj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lgh;->a:Lgg;

    invoke-virtual {v0}, Lgg;->a()Lgj;

    move-result-object v0

    invoke-interface {v0}, Lgj;->a()V

    .line 424
    :cond_0
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 427
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgh;->c:Z

    .line 428
    iget-object v0, p0, Lgh;->a:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 429
    iget-object v0, p0, Lgh;->a:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 430
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lgh;->g:I

    return v0
.end method

.method public a()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lgh;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lgh;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 394
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgh;->e:Z

    .line 395
    return-void
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput p1, p0, Lgh;->g:I

    .line 186
    return-void
.end method

.method public a(IIIIZI)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 360
    shl-int/lit8 v0, p1, 0xe

    shl-int/lit8 v1, p2, 0x9

    or-int/2addr v1, v0

    if-eqz p5, :cond_0

    const/4 v0, 0x0

    :goto_0
    shl-int/lit8 v0, v0, 0x6

    or-int/2addr v0, v1

    shl-int/lit8 v1, p6, 0x5

    or-int/2addr v0, v1

    shl-int/lit8 v1, p3, 0x3

    or-int/2addr v0, v1

    or-int/2addr v0, p4

    .line 363
    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgh;->b:Ljava/lang/String;

    .line 364
    return-void

    .line 360
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Landroid/os/Handler;)V
    .locals 0
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Lgh;->b:Landroid/os/Handler;

    .line 375
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lgh;->c:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 386
    iget-boolean v0, p0, Lgh;->d:Z

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lgh;->h:I

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 398
    iget-boolean v0, p0, Lgh;->e:Z

    if-nez v0, :cond_0

    .line 399
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgh;->e:Z

    .line 400
    iget-object v0, p0, Lgh;->a:Lgg;

    invoke-virtual {v0}, Lgg;->a()Lgj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lgh;->a:Lgg;

    invoke-virtual {v0}, Lgg;->a()Lgj;

    move-result-object v0

    invoke-interface {v0}, Lgj;->b()V

    .line 403
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1
    .parameter

    .prologue
    .line 205
    packed-switch p1, :pswitch_data_0

    .line 216
    :pswitch_0
    const/16 v0, 0x1770

    iput v0, p0, Lgh;->h:I

    .line 219
    :goto_0
    return-void

    .line 207
    :pswitch_1
    const/16 v0, 0xfa0

    iput v0, p0, Lgh;->h:I

    goto :goto_0

    .line 211
    :pswitch_2
    const/16 v0, 0x1388

    iput v0, p0, Lgh;->h:I

    goto :goto_0

    .line 205
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 406
    iget-boolean v0, p0, Lgh;->e:Z

    return v0
.end method

.method public c(I)V
    .locals 0
    .parameter

    .prologue
    .line 382
    iput p1, p0, Lgh;->b:I

    .line 383
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 253
    iput-boolean v0, p0, Lgh;->c:Z

    .line 254
    iput-boolean v0, p0, Lgh;->d:Z

    .line 255
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 257
    new-instance v0, Lgi;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lgi;-><init>(Lgh;Landroid/os/Looper;)V

    iput-object v0, p0, Lgh;->a:Landroid/os/Handler;

    .line 265
    iget-object v0, p0, Lgh;->a:Lgg;

    iget-object v1, p0, Lgh;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lgg;->a(Landroid/os/Handler;)V

    .line 266
    iget-object v0, p0, Lgh;->a:Lgk;

    iget-object v1, p0, Lgh;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lgk;->a(Landroid/os/Handler;)V

    .line 267
    iget-object v0, p0, Lgh;->a:Lgn;

    iget-object v1, p0, Lgh;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lgn;->a(Landroid/os/Handler;)V

    .line 268
    iget-object v0, p0, Lgh;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 269
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 270
    return-void
.end method
