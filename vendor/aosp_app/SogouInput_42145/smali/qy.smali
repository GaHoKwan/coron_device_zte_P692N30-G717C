.class public Lqy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lqy;


# instance fields
.field public final a:I

.field private a:Landroid/content/Context;

.field private a:Ljava/util/ArrayList;

.field private a:Ljava/util/concurrent/ExecutorService;

.field private a:Lqz;

.field private a:Lrg;

.field private a:[Ljava/lang/Thread;

.field public final b:I

.field private b:Ljava/util/ArrayList;

.field private final c:I

.field private c:Ljava/util/ArrayList;

.field private d:Ljava/util/ArrayList;

.field private e:Ljava/util/ArrayList;

.field private f:Ljava/util/ArrayList;

.field private g:Ljava/util/ArrayList;

.field private h:Ljava/util/ArrayList;

.field private i:Ljava/util/ArrayList;

.field private j:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/16 v1, 0x8

    .line 1649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lqy;->a:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lqy;->b:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lqy;->c:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lqy;->d:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lqy;->e:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lqy;->f:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lqy;->g:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lqy;->h:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lqy;->i:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lqy;->j:Ljava/util/ArrayList;

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lqy;->a:I

    .line 84
    const/4 v0, 0x7

    iput v0, p0, Lqy;->b:I

    .line 85
    iput v1, p0, Lqy;->c:I

    .line 93
    new-array v0, v1, [Ljava/lang/Thread;

    iput-object v0, p0, Lqy;->a:[Ljava/lang/Thread;

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lqy;->a:Ljava/util/concurrent/ExecutorService;

    .line 98
    new-instance v0, Lrg;

    invoke-direct {v0}, Lrg;-><init>()V

    iput-object v0, p0, Lqy;->a:Lrg;

    .line 1650
    iput-object p1, p0, Lqy;->a:Landroid/content/Context;

    .line 1703
    return-void
.end method

.method static synthetic a(Lqy;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lqy;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lqy;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lqy;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lqy;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lqy;->b:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lqy;
    .locals 1
    .parameter

    .prologue
    .line 105
    sget-object v0, Lqy;->a:Lqy;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lqy;

    invoke-direct {v0, p0}, Lqy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lqy;->a:Lqy;

    .line 108
    :cond_0
    sget-object v0, Lqy;->a:Lqy;

    return-object v0
.end method

.method static synthetic a(Lqy;)Lqz;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lqy;->a:Lqz;

    return-object v0
.end method

.method static synthetic a(Lqy;)Lrg;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lqy;->a:Lrg;

    return-object v0
.end method

.method static synthetic a(Lqy;)[Ljava/lang/Thread;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lqy;->a:[Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic b(Lqy;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lqy;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1709
    return-void
.end method

.method static synthetic c(Lqy;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lqy;->b:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lqy;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public a(I)I
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 574
    if-ltz p1, :cond_0

    const/4 v1, 0x7

    if-le p1, v1, :cond_1

    .line 600
    :cond_0
    :goto_0
    return v0

    .line 576
    :cond_1
    const/4 v1, 0x0

    .line 578
    packed-switch p1, :pswitch_data_0

    .line 598
    :goto_1
    if-eqz v1, :cond_0

    .line 600
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 580
    :pswitch_0
    iget-object v1, p0, Lqy;->a:Ljava/util/ArrayList;

    goto :goto_1

    .line 583
    :pswitch_1
    iget-object v1, p0, Lqy;->b:Ljava/util/ArrayList;

    goto :goto_1

    .line 586
    :pswitch_2
    iget-object v1, p0, Lqy;->c:Ljava/util/ArrayList;

    goto :goto_1

    .line 589
    :pswitch_3
    iget-object v1, p0, Lqy;->d:Ljava/util/ArrayList;

    goto :goto_1

    .line 592
    :pswitch_4
    iget-object v1, p0, Lqy;->e:Ljava/util/ArrayList;

    goto :goto_1

    .line 595
    :pswitch_5
    iget-object v1, p0, Lqy;->g:Ljava/util/ArrayList;

    goto :goto_1

    .line 578
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public a(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 679
    if-ltz p2, :cond_0

    const/4 v1, 0x7

    if-le p2, v1, :cond_1

    .line 712
    :cond_0
    :goto_0
    return v0

    .line 681
    :cond_1
    const/4 v1, 0x0

    .line 683
    packed-switch p2, :pswitch_data_0

    .line 709
    :goto_1
    if-eqz v1, :cond_0

    .line 712
    invoke-virtual {p0, p1, v1}, Lqy;->a(ILjava/util/ArrayList;)I

    move-result v0

    goto :goto_0

    .line 685
    :pswitch_0
    iget-object v1, p0, Lqy;->a:Ljava/util/ArrayList;

    goto :goto_1

    .line 688
    :pswitch_1
    iget-object v1, p0, Lqy;->b:Ljava/util/ArrayList;

    goto :goto_1

    .line 691
    :pswitch_2
    iget-object v1, p0, Lqy;->c:Ljava/util/ArrayList;

    goto :goto_1

    .line 694
    :pswitch_3
    iget-object v1, p0, Lqy;->d:Ljava/util/ArrayList;

    goto :goto_1

    .line 697
    :pswitch_4
    iget-object v1, p0, Lqy;->e:Ljava/util/ArrayList;

    goto :goto_1

    .line 700
    :pswitch_5
    iget-object v1, p0, Lqy;->g:Ljava/util/ArrayList;

    goto :goto_1

    .line 703
    :pswitch_6
    iget-object v1, p0, Lqy;->i:Ljava/util/ArrayList;

    goto :goto_1

    .line 706
    :pswitch_7
    iget-object v1, p0, Lqy;->j:Ljava/util/ArrayList;

    goto :goto_1

    .line 683
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
    .end packed-switch
.end method

.method public a(IILjava/lang/String;)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 604
    if-ltz p2, :cond_0

    const/4 v1, 0x7

    if-le p2, v1, :cond_1

    .line 614
    :cond_0
    :goto_0
    return v0

    .line 606
    :cond_1
    const/4 v1, 0x0

    .line 607
    packed-switch p2, :pswitch_data_0

    .line 612
    :goto_1
    if-eqz v1, :cond_0

    .line 614
    invoke-virtual {p0, p1, v1, p3}, Lqy;->a(ILjava/util/ArrayList;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 609
    :pswitch_0
    iget-object v1, p0, Lqy;->j:Ljava/util/ArrayList;

    goto :goto_1

    .line 607
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public a(ILjava/util/ArrayList;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 552
    if-nez p2, :cond_0

    move v0, v1

    .line 569
    :goto_0
    return v0

    .line 554
    :cond_0
    monitor-enter p2

    .line 555
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 556
    monitor-exit p2

    move v0, v1

    goto :goto_0

    .line 557
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsg;

    .line 560
    iget v3, v0, Lsg;->a:I

    if-ne v3, p1, :cond_2

    iget v3, v0, Lsg;->b:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_2

    .line 565
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    monitor-exit p2

    goto :goto_0

    .line 570
    :catchall_0
    move-exception v0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 569
    :cond_3
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0
.end method

.method public a(ILjava/util/ArrayList;Ljava/lang/String;)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 620
    if-nez p2, :cond_0

    move v0, v1

    .line 638
    :goto_0
    return v0

    .line 622
    :cond_0
    monitor-enter p2

    .line 623
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 624
    monitor-exit p2

    move v0, v1

    goto :goto_0

    .line 625
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsg;

    .line 628
    iget v3, v0, Lsg;->a:I

    if-ne v3, p1, :cond_2

    iget v3, v0, Lsg;->b:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_2

    iget-object v3, v0, Lsg;->b:Ljava/lang/String;

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 634
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    monitor-exit p2

    goto :goto_0

    .line 639
    :catchall_0
    move-exception v0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 638
    :cond_3
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0
.end method

.method public declared-synchronized a(ILsg;)I
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 366
    monitor-enter p0

    if-nez p2, :cond_1

    .line 495
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 367
    :cond_1
    :try_start_0
    iget v1, p2, Lsg;->a:I

    if-lez v1, :cond_6

    iget v1, p2, Lsg;->a:I

    const/16 v2, 0x32

    if-ge v1, v2, :cond_6

    .line 368
    const/4 v1, 0x2

    iput v1, p2, Lsg;->b:I

    .line 369
    iput-object p0, p2, Lsg;->a:Lqy;

    .line 370
    iget-object v1, p0, Lqy;->a:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 371
    if-gez p1, :cond_2

    :try_start_1
    monitor-exit v1

    goto :goto_0

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 366
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 372
    :cond_2
    :try_start_3
    iget-object v0, p0, Lqy;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_5

    iget-object v0, p0, Lqy;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    :goto_1
    iget v0, p2, Lsg;->a:I

    invoke-virtual {p0, v0}, Lqy;->a(I)Z

    .line 375
    iget v0, p2, Lsg;->a:I

    const/16 v2, 0xe

    if-ne v0, v2, :cond_3

    .line 376
    const/4 v0, 0x0

    .line 377
    iget-object v2, p2, Lsg;->a:Lsl;

    invoke-interface {v2, v0, p2}, Lsl;->a(Lorg/apache/http/client/HttpClient;Lsg;)V

    .line 379
    :cond_3
    iget-object v2, p0, Lqy;->a:[Ljava/lang/Thread;

    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 381
    :try_start_4
    iget-object v0, p0, Lqy;->a:[Ljava/lang/Thread;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    if-nez v0, :cond_4

    .line 382
    iget-object v0, p0, Lqy;->a:[Ljava/lang/Thread;

    const/4 v3, 0x0

    new-instance v4, Lrc;

    iget-object v5, p0, Lqy;->a:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-direct {v4, p0, v5, v6}, Lrc;-><init>(Lqy;Ljava/util/ArrayList;I)V

    aput-object v4, v0, v3

    .line 383
    iget-object v0, p0, Lqy;->a:[Ljava/lang/Thread;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 385
    :cond_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 386
    :try_start_5
    iget-object v0, p0, Lqy;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 373
    :cond_5
    iget-object v0, p0, Lqy;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 385
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 388
    :cond_6
    :try_start_8
    iget v1, p2, Lsg;->a:I

    const/16 v2, 0x32

    if-le v1, v2, :cond_a

    iget v1, p2, Lsg;->a:I

    const/16 v2, 0x64

    if-ge v1, v2, :cond_a

    .line 389
    const/4 v1, 0x2

    iput v1, p2, Lsg;->b:I

    .line 390
    iput-object p0, p2, Lsg;->a:Lqy;

    .line 391
    iget-object v1, p0, Lqy;->b:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 392
    if-gez p1, :cond_7

    :try_start_9
    monitor-exit v1

    goto/16 :goto_0

    .line 402
    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 393
    :cond_7
    :try_start_b
    iget-object v0, p0, Lqy;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_9

    iget-object v0, p0, Lqy;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    :goto_2
    iget-object v2, p0, Lqy;->a:[Ljava/lang/Thread;

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 396
    :try_start_c
    iget-object v0, p0, Lqy;->a:[Ljava/lang/Thread;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    if-nez v0, :cond_8

    .line 397
    iget-object v0, p0, Lqy;->a:[Ljava/lang/Thread;

    const/4 v3, 0x1

    new-instance v4, Lre;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lre;-><init>(Lqy;Lcom/sohu/inputmethod/internet/BackgroundService$1;)V

    aput-object v4, v0, v3

    .line 398
    iget-object v0, p0, Lqy;->a:[Ljava/lang/Thread;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 400
    :cond_8
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 401
    :try_start_d
    iget-object v0, p0, Lqy;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    monitor-exit v1

    goto/16 :goto_0

    .line 394
    :cond_9
    iget-object v0, p0, Lqy;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_2

    .line 400
    :catchall_4
    move-exception v0

    :try_start_e
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :try_start_f
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 403
    :cond_a
    :try_start_10
    iget v1, p2, Lsg;->a:I

    const/16 v2, 0x64

    if-le v1, v2, :cond_e

    iget v1, p2, Lsg;->a:I

    const/16 v2, 0x96

    if-ge v1, v2, :cond_e

    .line 404
    const/4 v1, 0x2

    iput v1, p2, Lsg;->b:I

    .line 405
    iput-object p0, p2, Lsg;->a:Lqy;

    .line 406
    iget-object v1, p0, Lqy;->a:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 407
    if-gez p1, :cond_b

    :try_start_11
    monitor-exit v1

    goto/16 :goto_0

    .line 418
    :catchall_5
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    :try_start_12
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 408
    :cond_b
    :try_start_13
    iget-object v0, p0, Lqy;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_d

    iget-object v0, p0, Lqy;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    :goto_3
    iget-object v2, p0, Lqy;->a:[Ljava/lang/Thread;

    monitor-enter v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    .line 412
    :try_start_14
    iget-object v0, p0, Lqy;->a:[Ljava/lang/Thread;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    if-nez v0, :cond_c

    .line 413
    iget-object v0, p0, Lqy;->a:[Ljava/lang/Thread;

    const/4 v3, 0x0

    new-instance v4, Lrc;

    iget-object v5, p0, Lqy;->a:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-direct {v4, p0, v5, v6}, Lrc;-><init>(Lqy;Ljava/util/ArrayList;I)V

    aput-object v4, v0, v3

    .line 414
    iget-object v0, p0, Lqy;->a:[Ljava/lang/Thread;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 416
    :cond_c
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    .line 417
    :try_start_15
    iget-object v0, p0, Lqy;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    monitor-exit v1

    goto/16 :goto_0

    .line 409
    :cond_d
    iget-object v0, p0, Lqy;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    goto :goto_3

    .line 416
    :catchall_6
    move-exception v0

    :try_start_16
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    :try_start_17
    throw v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    .line 419
    :cond_e
    :try_start_18
    iget v1, p2, Lsg;->a:I

    const/16 v2, 0x96

    if-le v1, v2, :cond_f

    iget v1, p2, Lsg;->a:I

    const/16 v2, 0xaf

    if-ge v1, v2, :cond_f

    .line 420
    const/4 v1, 0x2

    iput v1, p2, Lsg;->b:I

    .line 421
    iput-object p0, p2, Lsg;->a:Lqy;

    .line 423
    new-instance v1, Lrh;

    invoke-direct {v1, p0, p2}, Lrh;-><init>(Lqy;Lsg;)V

    invoke-virtual {v1}, Lrh;->start()V

    goto/16 :goto_0

    .line 439
    :cond_f
    iget v1, p2, Lsg;->a:I

    const/16 v2, 0xaf

    if-le v1, v2, :cond_13

    iget v1, p2, Lsg;->a:I

    const/16 v2, 0xc8

    if-ge v1, v2, :cond_13

    .line 440
    const/4 v1, 0x2

    iput v1, p2, Lsg;->b:I

    .line 441
    iput-object p0, p2, Lsg;->a:Lqy;

    .line 442
    iget-object v1, p0, Lqy;->c:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    .line 443
    if-gez p1, :cond_10

    :try_start_19
    monitor-exit v1

    goto/16 :goto_0

    .line 454
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    :try_start_1a
    throw v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    .line 444
    :cond_10
    :try_start_1b
    iget-object v0, p0, Lqy;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_11

    iget-object v0, p0, Lqy;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    :cond_11
    iget-object v0, p0, Lqy;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 446
    iget-object v2, p0, Lqy;->a:[Ljava/lang/Thread;

    monitor-enter v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    .line 448
    :try_start_1c
    iget-object v0, p0, Lqy;->a:[Ljava/lang/Thread;

    const/4 v3, 0x2

    aget-object v0, v0, v3

    if-nez v0, :cond_12

    .line 449
    iget-object v0, p0, Lqy;->a:[Ljava/lang/Thread;

    const/4 v3, 0x2

    new-instance v4, Lrd;

    iget-object v5, p0, Lqy;->c:Ljava/util/ArrayList;

    const/4 v6, 0x2

    invoke-direct {v4, p0, v5, v6}, Lrd;-><init>(Lqy;Ljava/util/ArrayList;I)V

    aput-object v4, v0, v3

    .line 450
    iget-object v0, p0, Lqy;->a:[Ljava/lang/Thread;

    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 452
    :cond_12
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    .line 453
    :try_start_1d
    iget-object v0, p0, Lqy;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    goto/16 :goto_0

    .line 452
    :catchall_8
    move-exception v0

    :try_start_1e
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    :try_start_1f
    throw v0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_7

    .line 455
    :cond_13
    :try_start_20
    iget v1, p2, Lsg;->a:I

    const/16 v2, 0xc8

    if-le v1, v2, :cond_17

    iget v1, p2, Lsg;->a:I

    const/16 v2, 0xe1

    if-ge v1, v2, :cond_17

    .line 456
    const/4 v1, 0x2

    iput v1, p2, Lsg;->b:I

    .line 457
    iput-object p0, p2, Lsg;->a:Lqy;

    .line 458
    iget-object v1, p0, Lqy;->e:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    .line 459
    if-gez p1, :cond_14

    :try_start_21
    monitor-exit v1

    goto/16 :goto_0

    .line 470
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_9

    :try_start_22
    throw v0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_1

    .line 460
    :cond_14
    :try_start_23
    iget-object v0, p0, Lqy;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_15

    iget-object v0, p0, Lqy;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    :cond_15
    iget-object v0, p0, Lqy;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 462
    iget-object v2, p0, Lqy;->a:[Ljava/lang/Thread;

    monitor-enter v2
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_9

    .line 464
    :try_start_24
    iget-object v0, p0, Lqy;->a:[Ljava/lang/Thread;

    const/4 v3, 0x4

    aget-object v0, v0, v3

    if-nez v0, :cond_16

    .line 465
    iget-object v0, p0, Lqy;->a:[Ljava/lang/Thread;

    const/4 v3, 0x4

    new-instance v4, Lrc;

    iget-object v5, p0, Lqy;->e:Ljava/util/ArrayList;

    const/4 v6, 0x4

    invoke-direct {v4, p0, v5, v6}, Lrc;-><init>(Lqy;Ljava/util/ArrayList;I)V

    aput-object v4, v0, v3

    .line 466
    iget-object v0, p0, Lqy;->a:[Ljava/lang/Thread;

    const/4 v3, 0x4

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 468
    :cond_16
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_a

    .line 469
    :try_start_25
    iget-object v0, p0, Lqy;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_9

    goto/16 :goto_0

    .line 468
    :catchall_a
    move-exception v0

    :try_start_26
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_a

    :try_start_27
    throw v0
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_9

    .line 471
    :cond_17
    :try_start_28
    iget v1, p2, Lsg;->a:I

    const/16 v2, 0xe1

    if-le v1, v2, :cond_0

    iget v1, p2, Lsg;->a:I

    const/16 v2, 0xfa

    if-ge v1, v2, :cond_0

    .line 472
    const/4 v1, 0x2

    iput v1, p2, Lsg;->b:I

    .line 473
    iput-object p0, p2, Lsg;->a:Lqy;

    .line 474
    iget-object v1, p0, Lqy;->g:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_1

    .line 475
    if-gez p1, :cond_18

    :try_start_29
    monitor-exit v1

    goto/16 :goto_0

    .line 485
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_b

    :try_start_2a
    throw v0
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_1

    .line 476
    :cond_18
    :try_start_2b
    iget-object v0, p0, Lqy;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_19

    iget-object v0, p0, Lqy;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    :cond_19
    iget-object v0, p0, Lqy;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 478
    iget-object v2, p0, Lqy;->a:[Ljava/lang/Thread;

    monitor-enter v2
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_b

    .line 479
    :try_start_2c
    iget-object v0, p0, Lqy;->a:[Ljava/lang/Thread;

    const/4 v3, 0x5

    aget-object v0, v0, v3

    if-nez v0, :cond_1a

    .line 480
    iget-object v0, p0, Lqy;->a:[Ljava/lang/Thread;

    const/4 v3, 0x5

    new-instance v4, Lrc;

    iget-object v5, p0, Lqy;->g:Ljava/util/ArrayList;

    const/4 v6, 0x5

    invoke-direct {v4, p0, v5, v6}, Lrc;-><init>(Lqy;Ljava/util/ArrayList;I)V

    aput-object v4, v0, v3

    .line 481
    iget-object v0, p0, Lqy;->a:[Ljava/lang/Thread;

    const/4 v3, 0x5

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 483
    :cond_1a
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_c

    .line 484
    :try_start_2d
    iget-object v0, p0, Lqy;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_b

    goto/16 :goto_0

    .line 483
    :catchall_c
    move-exception v0

    :try_start_2e
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_c

    :try_start_2f
    throw v0
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_b
.end method

.method public declared-synchronized a(Lsg;)I
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 190
    monitor-enter p0

    if-nez p1, :cond_0

    const/4 v0, -0x1

    .line 329
    :goto_0
    monitor-exit p0

    return v0

    .line 191
    :cond_0
    :try_start_0
    iget v2, p1, Lsg;->a:I

    if-lez v2, :cond_9

    iget v2, p1, Lsg;->a:I

    const/16 v3, 0x32

    if-ge v2, v3, :cond_9

    .line 192
    const/4 v2, 0x2

    iput v2, p1, Lsg;->b:I

    .line 193
    iput-object p0, p1, Lsg;->a:Lqy;

    .line 194
    iget v2, p1, Lsg;->a:I

    const/16 v3, 0x17

    if-ne v2, v3, :cond_4

    .line 195
    iget-object v2, p0, Lqy;->i:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 196
    :try_start_1
    iget-object v3, p0, Lqy;->i:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 197
    iget-object v3, p0, Lqy;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    iget v3, p1, Lsg;->a:I

    invoke-virtual {p0, v3}, Lqy;->a(I)Z

    .line 199
    iget-object v3, p0, Lqy;->a:[Ljava/lang/Thread;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 201
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=========mWorkThread[BIGRAM_THREAD_INDEX] == null="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lqy;->a:[Ljava/lang/Thread;

    const/4 v6, 0x6

    aget-object v5, v5, v6

    if-nez v5, :cond_3

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lqy;->b(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lqy;->a:[Ljava/lang/Thread;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    .line 203
    iget-object v0, p0, Lqy;->a:[Ljava/lang/Thread;

    const/4 v1, 0x6

    new-instance v4, Lrc;

    iget-object v5, p0, Lqy;->i:Ljava/util/ArrayList;

    const/4 v6, 0x6

    invoke-direct {v4, p0, v5, v6}, Lrc;-><init>(Lqy;Ljava/util/ArrayList;I)V

    aput-object v4, v0, v1

    .line 204
    iget-object v0, p0, Lqy;->a:[Ljava/lang/Thread;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 206
    :cond_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 207
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 329
    :cond_2
    :goto_2
    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 201
    goto :goto_1

    .line 206
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    .line 207
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 190
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0

    .line 208
    :cond_4
    :try_start_7
    iget v2, p1, Lsg;->a:I

    const/16 v3, 0x25

    if-ne v2, v3, :cond_7

    .line 209
    iget-object v2, p0, Lqy;->j:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 210
    :try_start_8
    iget-object v3, p0, Lqy;->j:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 211
    iget-object v3, p0, Lqy;->j:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    iget v3, p1, Lsg;->a:I

    invoke-virtual {p0, v3}, Lqy;->a(I)Z

    .line 213
    iget-object v3, p0, Lqy;->a:[Ljava/lang/Thread;

    monitor-enter v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 215
    :try_start_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=========mWorkThread[BIGRAM_THREAD_INDEX] == null="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lqy;->a:[Ljava/lang/Thread;

    const/4 v6, 0x7

    aget-object v5, v5, v6

    if-nez v5, :cond_6

    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lqy;->b(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lqy;->a:[Ljava/lang/Thread;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    if-nez v0, :cond_5

    .line 217
    iget-object v0, p0, Lqy;->a:[Ljava/lang/Thread;

    const/4 v1, 0x7

    new-instance v4, Lrc;

    iget-object v5, p0, Lqy;->j:Ljava/util/ArrayList;

    const/4 v6, 0x7

    invoke-direct {v4, p0, v5, v6}, Lrc;-><init>(Lqy;Ljava/util/ArrayList;I)V

    aput-object v4, v0, v1

    .line 218
    iget-object v0, p0, Lqy;->a:[Ljava/lang/Thread;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 220
    :cond_5
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 221
    :try_start_a
    monitor-exit v2

    goto :goto_2

    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :cond_6
    move v0, v1

    .line 215
    goto :goto_3

    .line 220
    :catchall_4
    move-exception v0

    :try_start_c
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 223
    :cond_7
    :try_start_e
    iget-object v1, p0, Lqy;->a:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 224
    :try_start_f
    iget-object v0, p0, Lqy;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object v2, p0, Lqy;->a:[Ljava/lang/Thread;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 227
    :try_start_10
    iget-object v0, p0, Lqy;->a:[Ljava/lang/Thread;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    if-nez v0, :cond_8

    .line 228
    iget-object v0, p0, Lqy;->a:[Ljava/lang/Thread;

    const/4 v3, 0x0

    new-instance v4, Lrc;

    iget-object v5, p0, Lqy;->a:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-direct {v4, p0, v5, v6}, Lrc;-><init>(Lqy;Ljava/util/ArrayList;I)V

    aput-object v4, v0, v3

    .line 229
    iget-object v0, p0, Lqy;->a:[Ljava/lang/Thread;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 231
    :cond_8
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 232
    :try_start_11
    monitor-exit v1

    goto/16 :goto_2

    :catchall_5
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    :try_start_12
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 231
    :catchall_6
    move-exception v0

    :try_start_13
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    :try_start_14
    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .line 234
    :cond_9
    :try_start_15
    iget v0, p1, Lsg;->a:I

    const/16 v1, 0x32

    if-le v0, v1, :cond_b

    iget v0, p1, Lsg;->a:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_b

    .line 235
    const/4 v0, 0x2

    iput v0, p1, Lsg;->b:I

    .line 236
    iput-object p0, p1, Lsg;->a:Lqy;

    .line 237
    iget-object v1, p0, Lqy;->b:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 238
    :try_start_16
    iget-object v0, p0, Lqy;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v2, p0, Lqy;->a:[Ljava/lang/Thread;

    monitor-enter v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    .line 240
    :try_start_17
    iget-object v0, p0, Lqy;->a:[Ljava/lang/Thread;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    if-nez v0, :cond_a

    .line 241
    iget-object v0, p0, Lqy;->a:[Ljava/lang/Thread;

    const/4 v3, 0x1

    new-instance v4, Lre;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lre;-><init>(Lqy;Lcom/sohu/inputmethod/internet/BackgroundService$1;)V

    aput-object v4, v0, v3

    .line 242
    iget-object v0, p0, Lqy;->a:[Ljava/lang/Thread;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 244
    :cond_a
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    .line 245
    :try_start_18
    monitor-exit v1

    goto/16 :goto_2

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    :try_start_19
    throw v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    .line 244
    :catchall_8
    move-exception v0

    :try_start_1a
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    :try_start_1b
    throw v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    .line 246
    :cond_b
    :try_start_1c
    iget v0, p1, Lsg;->a:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_d

    iget v0, p1, Lsg;->a:I

    const/16 v1, 0x96

    if-ge v0, v1, :cond_d

    .line 247
    const/4 v0, 0x2

    iput v0, p1, Lsg;->b:I

    .line 248
    iput-object p0, p1, Lsg;->a:Lqy;

    .line 249
    iget-object v1, p0, Lqy;->a:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    .line 250
    :try_start_1d
    iget-object v0, p0, Lqy;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object v2, p0, Lqy;->a:[Ljava/lang/Thread;

    monitor-enter v2
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_9

    .line 253
    :try_start_1e
    iget-object v0, p0, Lqy;->a:[Ljava/lang/Thread;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    if-nez v0, :cond_c

    .line 254
    iget-object v0, p0, Lqy;->a:[Ljava/lang/Thread;

    const/4 v3, 0x0

    new-instance v4, Lrc;

    iget-object v5, p0, Lqy;->a:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-direct {v4, p0, v5, v6}, Lrc;-><init>(Lqy;Ljava/util/ArrayList;I)V

    aput-object v4, v0, v3

    .line 255
    iget-object v0, p0, Lqy;->a:[Ljava/lang/Thread;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 257
    :cond_c
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_a

    .line 258
    :try_start_1f
    monitor-exit v1

    goto/16 :goto_2

    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_9

    :try_start_20
    throw v0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_2

    .line 257
    :catchall_a
    move-exception v0

    :try_start_21
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_a

    :try_start_22
    throw v0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_9

    .line 259
    :cond_d
    :try_start_23
    iget v0, p1, Lsg;->a:I

    const/16 v1, 0x96

    if-le v0, v1, :cond_e

    iget v0, p1, Lsg;->a:I

    const/16 v1, 0xaf

    if-ge v0, v1, :cond_e

    .line 260
    const/4 v0, 0x2

    iput v0, p1, Lsg;->b:I

    .line 261
    iput-object p0, p1, Lsg;->a:Lqy;

    .line 263
    new-instance v0, Lrh;

    invoke-direct {v0, p0, p1}, Lrh;-><init>(Lqy;Lsg;)V

    invoke-virtual {v0}, Lrh;->start()V

    goto/16 :goto_2

    .line 276
    :cond_e
    iget v0, p1, Lsg;->a:I

    const/16 v1, 0xaf

    if-le v0, v1, :cond_10

    iget v0, p1, Lsg;->a:I

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_10

    .line 277
    const/4 v0, 0x2

    iput v0, p1, Lsg;->b:I

    .line 278
    iput-object p0, p1, Lsg;->a:Lqy;

    .line 279
    iget-object v1, p0, Lqy;->c:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_2

    .line 280
    :try_start_24
    iget-object v0, p0, Lqy;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object v2, p0, Lqy;->a:[Ljava/lang/Thread;

    monitor-enter v2
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_b

    .line 283
    :try_start_25
    iget-object v0, p0, Lqy;->a:[Ljava/lang/Thread;

    const/4 v3, 0x2

    aget-object v0, v0, v3

    if-nez v0, :cond_f

    .line 284
    iget-object v0, p0, Lqy;->a:[Ljava/lang/Thread;

    const/4 v3, 0x2

    new-instance v4, Lrd;

    iget-object v5, p0, Lqy;->c:Ljava/util/ArrayList;

    const/4 v6, 0x2

    invoke-direct {v4, p0, v5, v6}, Lrd;-><init>(Lqy;Ljava/util/ArrayList;I)V

    aput-object v4, v0, v3

    .line 285
    iget-object v0, p0, Lqy;->a:[Ljava/lang/Thread;

    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 287
    :cond_f
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_c

    .line 288
    :try_start_26
    monitor-exit v1

    goto/16 :goto_2

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_b

    :try_start_27
    throw v0
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_2

    .line 287
    :catchall_c
    move-exception v0

    :try_start_28
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_c

    :try_start_29
    throw v0
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_b

    .line 289
    :cond_10
    :try_start_2a
    iget v0, p1, Lsg;->a:I

    const/16 v1, 0xc8

    if-le v0, v1, :cond_12

    iget v0, p1, Lsg;->a:I

    const/16 v1, 0xe1

    if-ge v0, v1, :cond_12

    .line 291
    const/4 v0, 0x2

    iput v0, p1, Lsg;->b:I

    .line 292
    iput-object p0, p1, Lsg;->a:Lqy;

    .line 293
    iget-object v1, p0, Lqy;->e:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_2

    .line 294
    :try_start_2b
    iget-object v0, p0, Lqy;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    iget-object v2, p0, Lqy;->a:[Ljava/lang/Thread;

    monitor-enter v2
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_d

    .line 299
    :try_start_2c
    iget-object v0, p0, Lqy;->a:[Ljava/lang/Thread;

    const/4 v3, 0x4

    aget-object v0, v0, v3

    if-nez v0, :cond_11

    .line 300
    iget-object v0, p0, Lqy;->a:[Ljava/lang/Thread;

    const/4 v3, 0x4

    new-instance v4, Lrc;

    iget-object v5, p0, Lqy;->e:Ljava/util/ArrayList;

    const/4 v6, 0x4

    invoke-direct {v4, p0, v5, v6}, Lrc;-><init>(Lqy;Ljava/util/ArrayList;I)V

    aput-object v4, v0, v3

    .line 302
    iget-object v0, p0, Lqy;->a:[Ljava/lang/Thread;

    const/4 v3, 0x4

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 304
    :cond_11
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_e

    .line 305
    :try_start_2d
    monitor-exit v1

    goto/16 :goto_2

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_d

    :try_start_2e
    throw v0
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_2

    .line 304
    :catchall_e
    move-exception v0

    :try_start_2f
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_e

    :try_start_30
    throw v0
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_d

    .line 306
    :cond_12
    :try_start_31
    iget v0, p1, Lsg;->a:I

    const/16 v1, 0xe1

    if-le v0, v1, :cond_2

    iget v0, p1, Lsg;->a:I

    const/16 v1, 0xfa

    if-ge v0, v1, :cond_2

    .line 307
    const/4 v0, 0x2

    iput v0, p1, Lsg;->b:I

    .line 308
    iput-object p0, p1, Lsg;->a:Lqy;

    .line 309
    iget-object v1, p0, Lqy;->g:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_2

    .line 310
    :try_start_32
    iget-object v0, p0, Lqy;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    iget-object v2, p0, Lqy;->a:[Ljava/lang/Thread;

    monitor-enter v2
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_f

    .line 313
    :try_start_33
    iget-object v0, p0, Lqy;->a:[Ljava/lang/Thread;

    const/4 v3, 0x5

    aget-object v0, v0, v3

    if-nez v0, :cond_13

    .line 314
    iget-object v0, p0, Lqy;->a:[Ljava/lang/Thread;

    const/4 v3, 0x5

    new-instance v4, Lrc;

    iget-object v5, p0, Lqy;->g:Ljava/util/ArrayList;

    const/4 v6, 0x5

    invoke-direct {v4, p0, v5, v6}, Lrc;-><init>(Lqy;Ljava/util/ArrayList;I)V

    aput-object v4, v0, v3

    .line 316
    iget-object v0, p0, Lqy;->a:[Ljava/lang/Thread;

    const/4 v3, 0x5

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 318
    :cond_13
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_10

    .line 319
    :try_start_34
    monitor-exit v1

    goto/16 :goto_2

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_f

    :try_start_35
    throw v0
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_2

    .line 318
    :catchall_10
    move-exception v0

    :try_start_36
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_10

    :try_start_37
    throw v0
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_f
.end method

.method public a(I)Lsg;
    .locals 4
    .parameter

    .prologue
    .line 807
    iget-object v1, p0, Lqy;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 808
    :try_start_0
    iget-object v0, p0, Lqy;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsg;

    .line 809
    iget v3, v0, Lsg;->a:I

    if-ne v3, p1, :cond_0

    .line 810
    iget v2, v0, Lsg;->b:I

    and-int/lit8 v2, v2, -0x2

    iput v2, v0, Lsg;->b:I

    .line 811
    monitor-exit v1

    .line 815
    :goto_0
    return-object v0

    .line 814
    :cond_1
    monitor-exit v1

    .line 815
    const/4 v0, 0x0

    goto :goto_0

    .line 814
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(II)Lsg;
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 819
    if-ltz p2, :cond_0

    const/4 v1, 0x7

    if-le p2, v1, :cond_1

    .line 848
    :cond_0
    :goto_0
    return-object v0

    .line 823
    :cond_1
    packed-switch p2, :pswitch_data_0

    move-object v1, v0

    .line 846
    :goto_1
    if-eqz v1, :cond_0

    .line 848
    invoke-virtual {p0, p1, v1}, Lqy;->a(ILjava/util/ArrayList;)Lsg;

    move-result-object v0

    goto :goto_0

    .line 825
    :pswitch_0
    iget-object v1, p0, Lqy;->a:Ljava/util/ArrayList;

    goto :goto_1

    .line 828
    :pswitch_1
    iget-object v1, p0, Lqy;->b:Ljava/util/ArrayList;

    goto :goto_1

    .line 831
    :pswitch_2
    iget-object v1, p0, Lqy;->c:Ljava/util/ArrayList;

    goto :goto_1

    .line 834
    :pswitch_3
    iget-object v1, p0, Lqy;->d:Ljava/util/ArrayList;

    goto :goto_1

    .line 837
    :pswitch_4
    iget-object v1, p0, Lqy;->e:Ljava/util/ArrayList;

    goto :goto_1

    .line 840
    :pswitch_5
    iget-object v1, p0, Lqy;->g:Ljava/util/ArrayList;

    goto :goto_1

    .line 843
    :pswitch_6
    iget-object v1, p0, Lqy;->i:Ljava/util/ArrayList;

    goto :goto_1

    .line 823
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public a(IILjava/lang/String;)Lsg;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 781
    if-ltz p2, :cond_0

    const/4 v1, 0x7

    if-le p2, v1, :cond_1

    .line 791
    :cond_0
    :goto_0
    return-object v0

    .line 784
    :cond_1
    packed-switch p2, :pswitch_data_0

    move-object v1, v0

    .line 789
    :goto_1
    if-eqz v1, :cond_0

    .line 791
    invoke-virtual {p0, p1, v1, p3}, Lqy;->a(ILjava/util/ArrayList;Ljava/lang/String;)Lsg;

    move-result-object v0

    goto :goto_0

    .line 786
    :pswitch_0
    iget-object v1, p0, Lqy;->j:Ljava/util/ArrayList;

    goto :goto_1

    .line 784
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public a(ILjava/lang/String;)Lsg;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 876
    iget-object v1, p0, Lqy;->h:Ljava/util/ArrayList;

    monitor-enter v1

    .line 877
    :try_start_0
    iget-object v0, p0, Lqy;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsg;

    .line 878
    iget v3, v0, Lsg;->a:I

    if-ne v3, p1, :cond_0

    iget-object v3, v0, Lsg;->b:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 880
    monitor-exit v1

    .line 884
    :goto_0
    return-object v0

    .line 883
    :cond_1
    monitor-exit v1

    .line 884
    const/4 v0, 0x0

    goto :goto_0

    .line 883
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(ILjava/util/ArrayList;)Lsg;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 852
    monitor-enter p2

    .line 853
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsg;

    .line 854
    iget v2, v0, Lsg;->a:I

    if-ne v2, p1, :cond_0

    .line 855
    iget v1, v0, Lsg;->b:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Lsg;->b:I

    .line 856
    monitor-exit p2

    .line 860
    :goto_0
    return-object v0

    .line 859
    :cond_1
    monitor-exit p2

    .line 860
    const/4 v0, 0x0

    goto :goto_0

    .line 859
    :catchall_0
    move-exception v0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(ILjava/util/ArrayList;Ljava/lang/String;)Lsg;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 795
    monitor-enter p2

    .line 796
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsg;

    .line 797
    iget v2, v0, Lsg;->a:I

    if-ne v2, p1, :cond_0

    iget-object v2, v0, Lsg;->b:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 798
    iget v1, v0, Lsg;->b:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Lsg;->b:I

    .line 799
    monitor-exit p2

    .line 803
    :goto_0
    return-object v0

    .line 802
    :cond_1
    monitor-exit p2

    .line 803
    const/4 v0, 0x0

    goto :goto_0

    .line 802
    :catchall_0
    move-exception v0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a()V
    .locals 5

    .prologue
    .line 140
    iget-object v1, p0, Lqy;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 141
    :try_start_0
    iget-object v0, p0, Lqy;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsg;

    .line 142
    invoke-virtual {v0}, Lsg;->a()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, v0, Lsg;->a:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    iget v3, v0, Lsg;->a:I

    const/16 v4, 0xe

    if-eq v3, v4, :cond_0

    iget v3, v0, Lsg;->a:I

    const/16 v4, 0x13

    if-eq v3, v4, :cond_0

    iget v3, v0, Lsg;->a:I

    const/16 v4, 0x17

    if-eq v3, v4, :cond_0

    .line 146
    iget v3, v0, Lsg;->b:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v0, Lsg;->b:I

    .line 147
    iget-object v3, v0, Lsg;->a:Lsl;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v0}, Lsl;->d(Lorg/apache/http/client/HttpClient;Lsg;)V

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 149
    :cond_0
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {v0, v3}, Lsg;->b(Z)V

    goto :goto_0

    .line 152
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 898
    iget-object v0, p0, Lqy;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 899
    return-void
.end method

.method public a(Lsg;)V
    .locals 3
    .parameter

    .prologue
    .line 156
    iget-object v1, p0, Lqy;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 157
    :try_start_0
    invoke-virtual {p1}, Lsg;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, Lsg;->a:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    .line 158
    iget v0, p1, Lsg;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p1, Lsg;->b:I

    .line 159
    iget-object v0, p1, Lsg;->a:Lsl;

    const/4 v2, 0x0

    invoke-interface {v0, v2, p1}, Lsl;->d(Lorg/apache/http/client/HttpClient;Lsg;)V

    .line 163
    :goto_0
    monitor-exit v1

    .line 164
    return-void

    .line 161
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lsg;->b(Z)V

    goto :goto_0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized a(Lsg;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1031
    monitor-enter p0

    if-ltz p2, :cond_0

    const/4 v0, 0x7

    if-le p2, v0, :cond_1

    .line 1059
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1033
    :cond_1
    const/4 v0, 0x0

    .line 1035
    packed-switch p2, :pswitch_data_0

    .line 1055
    :goto_1
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1057
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lqy;->a(Lsg;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1031
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1037
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lqy;->a:Ljava/util/ArrayList;

    goto :goto_1

    .line 1040
    :pswitch_1
    iget-object v0, p0, Lqy;->b:Ljava/util/ArrayList;

    goto :goto_1

    .line 1043
    :pswitch_2
    iget-object v0, p0, Lqy;->c:Ljava/util/ArrayList;

    goto :goto_1

    .line 1046
    :pswitch_3
    iget-object v0, p0, Lqy;->d:Ljava/util/ArrayList;

    goto :goto_1

    .line 1049
    :pswitch_4
    iget-object v0, p0, Lqy;->e:Ljava/util/ArrayList;

    goto :goto_1

    .line 1052
    :pswitch_5
    iget-object v0, p0, Lqy;->g:Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1035
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public declared-synchronized a(Lsg;Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1063
    monitor-enter p0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1072
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1066
    :cond_1
    :try_start_0
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1067
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    :try_start_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1068
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Job is queue, make the running flag to cancel index="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lqy;->b(Ljava/lang/String;)V

    .line 1069
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsg;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lsg;->a(I)V

    .line 1067
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1071
    :cond_2
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1063
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()Z
    .locals 4

    .prologue
    .line 934
    iget-object v2, p0, Lqy;->a:Ljava/util/ArrayList;

    monitor-enter v2

    .line 935
    const/4 v1, 0x0

    .line 936
    :try_start_0
    iget-object v0, p0, Lqy;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsg;

    .line 937
    iget v0, v0, Lsg;->b:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 938
    const/4 v0, 0x1

    .line 942
    :goto_0
    monitor-exit v2

    return v0

    .line 943
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public a(I)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 767
    iget-object v2, p0, Lqy;->h:Ljava/util/ArrayList;

    monitor-enter v2

    .line 768
    :try_start_0
    iget-object v0, p0, Lqy;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v2

    move v0, v1

    .line 776
    :goto_0
    return v0

    .line 770
    :cond_0
    iget-object v0, p0, Lqy;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsg;

    .line 772
    iget v4, v0, Lsg;->a:I

    if-ne v4, p1, :cond_1

    .line 773
    iget-object v1, p0, Lqy;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v2

    goto :goto_0

    .line 777
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 776
    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 902
    iget-object v0, p0, Lqy;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 903
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 904
    const/4 v0, 0x1

    .line 907
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 4

    .prologue
    .line 167
    iget-object v1, p0, Lqy;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 168
    :try_start_0
    iget-object v0, p0, Lqy;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 169
    iget-object v0, p0, Lqy;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsg;

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[[getBackgroundRunningRequestType]] rq index 0 type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lsg;->a(Lsg;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lqy;->b(Ljava/lang/String;)V

    .line 171
    iget-boolean v2, v0, Lsg;->b:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget v2, v0, Lsg;->b:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    iget v2, v0, Lsg;->b:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    iget v2, v0, Lsg;->b:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[[getBackgroundRunningRequestType]] return the type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lsg;->a(Lsg;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lqy;->b(Ljava/lang/String;)V

    .line 174
    iget v0, v0, Lsg;->a:I

    monitor-exit v1

    .line 179
    :goto_0
    return v0

    .line 177
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    const-string v0, "[[getBackgroundRunningRequestType]] return -1"

    invoke-direct {p0, v0}, Lqy;->b(Ljava/lang/String;)V

    .line 179
    const/4 v0, -0x1

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(I)I
    .locals 5
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 717
    iget-object v2, p0, Lqy;->a:Ljava/util/ArrayList;

    monitor-enter v2

    .line 718
    :try_start_0
    iget-object v0, p0, Lqy;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v2

    move v0, v1

    .line 728
    :goto_0
    return v0

    .line 720
    :cond_0
    iget-object v0, p0, Lqy;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsg;

    .line 722
    iget v4, v0, Lsg;->a:I

    if-ne v4, p1, :cond_1

    iget v4, v0, Lsg;->b:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_1

    .line 725
    iget-object v1, p0, Lqy;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    monitor-exit v2

    goto :goto_0

    .line 729
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 728
    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0
.end method

.method public declared-synchronized b(Lsg;)I
    .locals 4
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 345
    monitor-enter p0

    if-nez p1, :cond_1

    .line 362
    :cond_0
    :goto_0
    monitor-exit p0

    return v3

    .line 346
    :cond_1
    :try_start_0
    iget v0, p1, Lsg;->a:I

    if-lez v0, :cond_0

    iget v0, p1, Lsg;->a:I

    const/16 v1, 0x32

    if-ge v0, v1, :cond_0

    .line 347
    const/4 v0, 0x2

    iput v0, p1, Lsg;->b:I

    .line 348
    iput-object p0, p1, Lsg;->a:Lqy;

    .line 349
    iget v0, p1, Lsg;->a:I

    const/16 v1, 0x25

    if-ne v0, v1, :cond_0

    .line 350
    iget-object v1, p0, Lqy;->j:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 351
    :try_start_1
    iget-object v0, p0, Lqy;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    iget v0, p1, Lsg;->a:I

    invoke-virtual {p0, v0}, Lqy;->a(I)Z

    .line 353
    iget-object v0, p0, Lqy;->a:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_2

    .line 354
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lqy;->a:Ljava/util/concurrent/ExecutorService;

    .line 356
    :cond_2
    new-instance v0, Lra;

    iget-object v2, p0, Lqy;->j:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v2, p1}, Lra;-><init>(Lqy;Ljava/util/ArrayList;Lsg;)V

    .line 357
    iget-object v2, p0, Lqy;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 358
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 345
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(I)Lsg;
    .locals 4
    .parameter

    .prologue
    .line 864
    iget-object v1, p0, Lqy;->h:Ljava/util/ArrayList;

    monitor-enter v1

    .line 865
    :try_start_0
    iget-object v0, p0, Lqy;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsg;

    .line 866
    iget v3, v0, Lsg;->a:I

    if-ne v3, p1, :cond_0

    .line 868
    monitor-exit v1

    .line 872
    :goto_0
    return-object v0

    .line 871
    :cond_1
    monitor-exit v1

    .line 872
    const/4 v0, 0x0

    goto :goto_0

    .line 871
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method b(Lsg;)V
    .locals 1
    .parameter

    .prologue
    .line 952
    if-eqz p1, :cond_0

    .line 953
    iget-object v0, p1, Lsg;->a:Lsl;

    invoke-interface {v0, p1}, Lsl;->a(Lsg;)V

    .line 961
    iget v0, p1, Lsg;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 966
    :cond_0
    return-void
.end method

.method public c(I)I
    .locals 5
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 734
    iget-object v2, p0, Lqy;->h:Ljava/util/ArrayList;

    monitor-enter v2

    .line 735
    :try_start_0
    iget-object v0, p0, Lqy;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v2

    move v0, v1

    .line 745
    :goto_0
    return v0

    .line 737
    :cond_0
    iget-object v0, p0, Lqy;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsg;

    .line 739
    iget v4, v0, Lsg;->a:I

    if-ne v4, p1, :cond_1

    iget v4, v0, Lsg;->b:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_1

    .line 742
    iget-object v1, p0, Lqy;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    monitor-exit v2

    goto :goto_0

    .line 746
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 745
    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0
.end method

.method public c(Lsg;)I
    .locals 6
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 509
    if-nez p1, :cond_0

    move v0, v1

    .line 521
    :goto_0
    return v0

    .line 510
    :cond_0
    iget-object v2, p0, Lqy;->a:Ljava/util/ArrayList;

    monitor-enter v2

    .line 511
    :try_start_0
    iget v0, p1, Lsg;->a:I

    const/16 v3, 0xe

    if-ne v0, v3, :cond_1

    monitor-exit v2

    move v0, v1

    goto :goto_0

    .line 512
    :cond_1
    iget-object v0, p0, Lqy;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    monitor-exit v2

    move v0, v1

    goto :goto_0

    .line 513
    :cond_2
    iget-object v0, p0, Lqy;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsg;

    .line 515
    iget v4, v0, Lsg;->a:I

    iget v5, p1, Lsg;->a:I

    if-ne v4, v5, :cond_3

    iget v4, v0, Lsg;->b:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_3

    .line 518
    iget-object v1, p0, Lqy;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    monitor-exit v2

    goto :goto_0

    .line 522
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 521
    :cond_4
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0
.end method

.method c(Lsg;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 970
    if-eqz p1, :cond_0

    .line 971
    iget-object v1, p0, Lqy;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 972
    :try_start_0
    iget v0, p1, Lsg;->b:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_2

    .line 973
    iget-object v0, p0, Lqy;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 974
    iget-object v0, p0, Lqy;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v2, :cond_1

    .line 975
    iget-object v0, p0, Lqy;->a:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 984
    :goto_0
    iget-object v0, p1, Lsg;->a:Lsl;

    invoke-interface {v0, p1}, Lsl;->b(Lsg;)V

    .line 985
    monitor-exit v1

    .line 987
    :cond_0
    return-void

    .line 977
    :cond_1
    iget-object v0, p0, Lqy;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 985
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 980
    :cond_2
    :try_start_1
    iget v0, p1, Lsg;->a:I

    const/16 v2, 0xe

    if-ne v0, v2, :cond_3

    .line 981
    iget-object v0, p0, Lqy;->a:Landroid/content/Context;

    invoke-static {v0}, Lsc;->c(Landroid/content/Context;)V

    goto :goto_0

    .line 982
    :cond_3
    iget-object v0, p0, Lqy;->a:Landroid/content/Context;

    invoke-static {v0}, Lsc;->a(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized d(Lsg;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 996
    monitor-enter p0

    if-nez p1, :cond_0

    .line 1022
    :goto_0
    monitor-exit p0

    return-void

    .line 998
    :cond_0
    :try_start_0
    iget-object v2, p0, Lqy;->a:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 999
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[[cancelRequest]] mDictQueue 0 type = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lqy;->a:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsg;

    iget v0, v0, Lsg;->a:I

    invoke-static {v0}, Lsg;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " input request type = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p1, Lsg;->a:I

    invoke-static {v3}, Lsg;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lqy;->b(Ljava/lang/String;)V

    .line 1001
    iget-object v0, p0, Lqy;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lqy;->a:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsg;

    iget v0, v0, Lsg;->a:I

    iget v3, p1, Lsg;->a:I

    if-ne v0, v3, :cond_2

    .line 1003
    iget-object v0, p0, Lqy;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsg;

    iget v0, v0, Lsg;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 1004
    iget-object v0, p0, Lqy;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsg;->a(I)V

    .line 1008
    :goto_1
    monitor-exit v2

    goto :goto_0

    .line 1021
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 996
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1006
    :cond_1
    :try_start_3
    iget-object v0, p0, Lqy;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsg;->a(I)V

    goto :goto_1

    .line 1010
    :cond_2
    :goto_2
    iget-object v0, p0, Lqy;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1011
    iget-object v0, p0, Lqy;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsg;

    iget v0, v0, Lsg;->a:I

    iget v3, p1, Lsg;->a:I

    if-ne v0, v3, :cond_3

    .line 1013
    iget-object v0, p0, Lqy;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsg;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lsg;->a(I)V

    .line 1010
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1021
    :cond_4
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method
