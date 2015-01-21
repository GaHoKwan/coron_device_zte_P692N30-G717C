.class public Ltmsdkobf/im;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static rp:Ltmsdkobf/im;


# instance fields
.field private mContext:Landroid/content/Context;

.field private ro:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltmsdkobf/im;->ro:Z

    .line 40
    iput-object p1, p0, Ltmsdkobf/im;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method private a(Ltmsdkobf/jg;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .parameter "sp"
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltmsdkobf/jg;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 698
    invoke-interface {p1, p2, v8}, Ltmsdkobf/jg;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 699
    .local v2, existString:Ljava/lang/String;
    if-nez v2, :cond_1

    move-object v6, v8

    .line 714
    :cond_0
    :goto_0
    return-object v6

    .line 703
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 704
    .local v6, valueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v9, "\\|"

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 706
    .local v7, values:[Ljava/lang/String;
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/String;
    :try_start_0
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 707
    .local v5, str:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 709
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #str:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 710
    .local v1, e:Ljava/lang/NumberFormatException;
    new-instance v9, Ljava/lang/Thread;

    invoke-direct {v9}, Ljava/lang/Thread;-><init>()V

    const-string v10, "format failed"

    invoke-static {v9, v1, v10, v8}, Ltmsdkobf/eu;->a(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;[B)Z

    goto :goto_0
.end method

.method public static a(II)V
    .locals 1
    .parameter "actionType"
    .parameter "integerData"

    .prologue
    .line 608
    invoke-static {}, Ltmsdkobf/im;->cU()Ltmsdkobf/im;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Ltmsdkobf/im;->b(II)V

    .line 609
    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter "keyName"
    .parameter "actionType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/il;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 233
    .local p1, entityList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/il;>;"
    invoke-direct {p0}, Ltmsdkobf/im;->cW()Ltmsdkobf/jg;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p2, v3}, Ltmsdkobf/jg;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, tempActionStr:Ljava/lang/String;
    invoke-direct {p0, v0, p3}, Ltmsdkobf/im;->f(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 236
    .local v1, tempStatsDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/il;>;"
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 237
    return-void
.end method

.method private a(Ltmsdkobf/jg;Ljava/lang/String;I)V
    .locals 3
    .parameter "sp"
    .parameter "name"
    .parameter "integerData"

    .prologue
    .line 683
    const/4 v1, 0x0

    invoke-interface {p1, p2, v1}, Ltmsdkobf/jg;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 684
    .local v0, existString:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 685
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 690
    :goto_0
    invoke-interface {p1, p2, v0}, Ltmsdkobf/jg;->g(Ljava/lang/String;Ljava/lang/String;)Z

    .line 691
    return-void

    .line 687
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static aT(I)V
    .locals 3
    .parameter "actionType"

    .prologue
    .line 93
    const/16 v0, 0x6819

    if-ne v0, p0, :cond_0

    .line 97
    :cond_0
    invoke-static {}, Ltmsdkobf/im;->cU()Ltmsdkobf/im;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ltmsdkobf/im;->b(ILjava/lang/String;)V

    .line 98
    return-void
.end method

.method public static aU(I)V
    .locals 3
    .parameter "switchType"

    .prologue
    .line 339
    invoke-static {}, Ltmsdkobf/im;->cU()Ltmsdkobf/im;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ltmsdkobf/im;->c(ILjava/lang/String;)V

    .line 340
    return-void
.end method

.method public static aV(I)V
    .locals 3
    .parameter "switchType"

    .prologue
    .line 349
    invoke-static {}, Ltmsdkobf/im;->cU()Ltmsdkobf/im;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ltmsdkobf/im;->d(ILjava/lang/String;)V

    .line 350
    return-void
.end method

.method private aW(I)Ltmsdkobf/bh;
    .locals 5
    .parameter "actionType"

    .prologue
    .line 587
    new-instance v0, Ltmsdkobf/bh;

    invoke-direct {v0}, Ltmsdkobf/bh;-><init>()V

    .line 588
    .local v0, sui:Ltmsdkobf/bh;
    invoke-virtual {v0, p1}, Ltmsdkobf/bh;->setId(I)V

    .line 589
    invoke-direct {p0}, Ltmsdkobf/im;->cZ()Ltmsdkobf/jg;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ltmsdkobf/im;->a(Ltmsdkobf/jg;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltmsdkobf/bh;->h(Ljava/util/ArrayList;)V

    .line 590
    invoke-virtual {v0}, Ltmsdkobf/bh;->v()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    .line 591
    const/4 v0, 0x0

    .line 596
    .end local v0           #sui:Ltmsdkobf/bh;
    :goto_0
    return-object v0

    .line 593
    .restart local v0       #sui:Ltmsdkobf/bh;
    :cond_0
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ltmsdkobf/bh;->I(Ljava/lang/String;)V

    .line 594
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ltmsdkobf/bh;->B(I)V

    goto :goto_0
.end method

.method private aX(I)Ltmsdkobf/bh;
    .locals 5
    .parameter "actionType"

    .prologue
    .line 666
    new-instance v0, Ltmsdkobf/bh;

    invoke-direct {v0}, Ltmsdkobf/bh;-><init>()V

    .line 667
    .local v0, sui:Ltmsdkobf/bh;
    invoke-virtual {v0, p1}, Ltmsdkobf/bh;->setId(I)V

    .line 668
    invoke-direct {p0}, Ltmsdkobf/im;->da()Ltmsdkobf/jg;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ltmsdkobf/im;->a(Ltmsdkobf/jg;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltmsdkobf/bh;->h(Ljava/util/ArrayList;)V

    .line 669
    invoke-virtual {v0}, Ltmsdkobf/bh;->v()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    .line 670
    const/4 v0, 0x0

    .line 675
    .end local v0           #sui:Ltmsdkobf/bh;
    :goto_0
    return-object v0

    .line 672
    .restart local v0       #sui:Ltmsdkobf/bh;
    :cond_0
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ltmsdkobf/bh;->I(Ljava/lang/String;)V

    .line 673
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ltmsdkobf/bh;->B(I)V

    goto :goto_0
.end method

.method private b(II)V
    .locals 3
    .parameter "actionType"
    .parameter "integerData"

    .prologue
    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ltmsdkobf/im;->e(ILjava/lang/String;)V

    .line 623
    invoke-direct {p0}, Ltmsdkobf/im;->da()Ltmsdkobf/jg;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Ltmsdkobf/im;->a(Ltmsdkobf/jg;Ljava/lang/String;I)V

    .line 624
    return-void
.end method

.method private b(ILjava/lang/String;)V
    .locals 10
    .parameter "actionType"
    .parameter "editorName"

    .prologue
    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 114
    .local v1, currentTime:J
    invoke-direct {p0}, Ltmsdkobf/im;->cW()Ltmsdkobf/jg;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, p2, v9}, Ltmsdkobf/jg;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, actionStr:Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Ltmsdkobf/im;->f(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v7

    .line 117
    .local v7, tempActionStatsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/il;>;"
    const/4 v4, 0x0

    .line 118
    .local v4, isFinded:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_0

    .line 119
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ltmsdkobf/il;

    iget-wide v8, v8, Ltmsdkobf/il;->rl:J

    cmp-long v8, v1, v8

    if-nez v8, :cond_2

    .line 120
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ltmsdkobf/il;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ltmsdkobf/il;

    iget v9, v9, Ltmsdkobf/il;->rk:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Ltmsdkobf/il;->rk:I

    .line 122
    const/4 v4, 0x1

    .line 126
    :cond_0
    if-nez v4, :cond_1

    .line 127
    new-instance v6, Ltmsdkobf/il;

    invoke-direct {v6}, Ltmsdkobf/il;-><init>()V

    .line 128
    .local v6, tempActionStatsEntity:Ltmsdkobf/il;
    iput p1, v6, Ltmsdkobf/il;->rj:I

    .line 129
    iput-wide v1, v6, Ltmsdkobf/il;->rl:J

    .line 130
    const/4 v8, 0x1

    iput v8, v6, Ltmsdkobf/il;->rk:I

    .line 131
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    .end local v6           #tempActionStatsEntity:Ltmsdkobf/il;
    :cond_1
    invoke-direct {p0, v7}, Ltmsdkobf/im;->o(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v5

    .line 136
    .local v5, statsStr:Ljava/lang/String;
    invoke-direct {p0}, Ltmsdkobf/im;->cW()Ltmsdkobf/jg;

    move-result-object v8

    invoke-interface {v8, p2, v5}, Ltmsdkobf/jg;->g(Ljava/lang/String;Ljava/lang/String;)Z

    .line 137
    return-void

    .line 118
    .end local v5           #statsStr:Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private b(Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter "key"
    .parameter "patternType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/il;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 484
    .local p1, patternStatsEntityList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/il;>;"
    invoke-direct {p0}, Ltmsdkobf/im;->cY()Ltmsdkobf/jg;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p2, v3}, Ltmsdkobf/jg;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 485
    .local v0, tempActionStr:Ljava/lang/String;
    invoke-direct {p0, v0, p3}, Ltmsdkobf/im;->f(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 487
    .local v1, tempStatsDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/il;>;"
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 488
    return-void
.end method

.method private c(ILjava/lang/String;)V
    .locals 5
    .parameter "switchType"
    .parameter "editorName"

    .prologue
    .line 354
    invoke-direct {p0, p1, p2}, Ltmsdkobf/im;->d(ILjava/lang/String;)V

    .line 357
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 358
    .local v1, switchStatsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/il;>;"
    new-instance v2, Ltmsdkobf/il;

    invoke-direct {v2}, Ltmsdkobf/il;-><init>()V

    .line 359
    .local v2, tempActionStatsEntity:Ltmsdkobf/il;
    iput p1, v2, Ltmsdkobf/il;->rj:I

    .line 360
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Ltmsdkobf/il;->rl:J

    .line 361
    const/4 v3, 0x1

    iput v3, v2, Ltmsdkobf/il;->rk:I

    .line 362
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    invoke-direct {p0, v1}, Ltmsdkobf/im;->o(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, statsStr:Ljava/lang/String;
    invoke-direct {p0}, Ltmsdkobf/im;->cX()Ltmsdkobf/jg;

    move-result-object v3

    invoke-interface {v3, p2, v0}, Ltmsdkobf/jg;->g(Ljava/lang/String;Ljava/lang/String;)Z

    .line 366
    return-void
.end method

.method private c(Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter "key"
    .parameter "switchType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/il;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 522
    .local p1, switchStatsEntityList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/il;>;"
    invoke-direct {p0}, Ltmsdkobf/im;->cX()Ltmsdkobf/jg;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p2, v3}, Ltmsdkobf/jg;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 523
    .local v0, tempActionStr:Ljava/lang/String;
    invoke-direct {p0, v0, p3}, Ltmsdkobf/im;->f(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 525
    .local v1, tempStatsDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/il;>;"
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 526
    return-void
.end method

.method public static declared-synchronized cU()Ltmsdkobf/im;
    .locals 3

    .prologue
    .line 50
    const-class v1, Ltmsdkobf/im;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ltmsdkobf/im;->rp:Ltmsdkobf/im;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ltmsdkobf/im;

    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Ltmsdkobf/im;-><init>(Landroid/content/Context;)V

    sput-object v0, Ltmsdkobf/im;->rp:Ltmsdkobf/im;

    .line 54
    :cond_0
    sget-object v0, Ltmsdkobf/im;->rp:Ltmsdkobf/im;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private cV()Ltmsdkobf/jg;
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Ltmsdkobf/im;->mContext:Landroid/content/Context;

    const-string v1, "actionConfig"

    invoke-static {v0, v1}, Ltmsdkobf/jh;->e(Landroid/content/Context;Ljava/lang/String;)Ltmsdkobf/jg;

    move-result-object v0

    return-object v0
.end method

.method private cW()Ltmsdkobf/jg;
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Ltmsdkobf/im;->mContext:Landroid/content/Context;

    const-string v1, "actionStats"

    invoke-static {v0, v1}, Ltmsdkobf/jh;->e(Landroid/content/Context;Ljava/lang/String;)Ltmsdkobf/jg;

    move-result-object v0

    return-object v0
.end method

.method private cX()Ltmsdkobf/jg;
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Ltmsdkobf/im;->mContext:Landroid/content/Context;

    const-string v1, "switchStats"

    invoke-static {v0, v1}, Ltmsdkobf/jh;->e(Landroid/content/Context;Ljava/lang/String;)Ltmsdkobf/jg;

    move-result-object v0

    return-object v0
.end method

.method private cY()Ltmsdkobf/jg;
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Ltmsdkobf/im;->mContext:Landroid/content/Context;

    const-string v1, "patternStats"

    invoke-static {v0, v1}, Ltmsdkobf/jh;->e(Landroid/content/Context;Ljava/lang/String;)Ltmsdkobf/jg;

    move-result-object v0

    return-object v0
.end method

.method private cZ()Ltmsdkobf/jg;
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Ltmsdkobf/im;->mContext:Landroid/content/Context;

    const-string v1, "mulDataStats"

    invoke-static {v0, v1}, Ltmsdkobf/jh;->e(Landroid/content/Context;Ljava/lang/String;)Ltmsdkobf/jg;

    move-result-object v0

    return-object v0
.end method

.method private d(ILjava/lang/String;)V
    .locals 1
    .parameter "switchType"
    .parameter "editorName"

    .prologue
    .line 369
    invoke-direct {p0}, Ltmsdkobf/im;->cX()Ltmsdkobf/jg;

    move-result-object v0

    invoke-interface {v0, p2}, Ltmsdkobf/jg;->bq(Ljava/lang/String;)Z

    .line 370
    return-void
.end method

.method private da()Ltmsdkobf/jg;
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Ltmsdkobf/im;->mContext:Landroid/content/Context;

    const-string v1, "usgDataStats"

    invoke-static {v0, v1}, Ltmsdkobf/jh;->e(Landroid/content/Context;Ljava/lang/String;)Ltmsdkobf/jg;

    move-result-object v0

    return-object v0
.end method

.method private e(ILjava/lang/String;)V
    .locals 1
    .parameter "actionType"
    .parameter "editorName"

    .prologue
    .line 627
    invoke-direct {p0}, Ltmsdkobf/im;->da()Ltmsdkobf/jg;

    move-result-object v0

    invoke-interface {v0, p2}, Ltmsdkobf/jg;->bq(Ljava/lang/String;)Z

    .line 628
    return-void
.end method

.method private f(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 10
    .parameter "statsStr"
    .parameter "actionType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/il;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 265
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v3, tempActionStatsEntityList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/il;>;"
    if-nez p1, :cond_2

    .line 308
    :cond_0
    :goto_0
    return-object v3

    .line 303
    .local v0, poundIndex:I
    .local v1, subStatsStr:Ljava/lang/String;
    .local v2, tempActionStatsEntity:Ltmsdkobf/il;
    :cond_1
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 270
    .end local v0           #poundIndex:I
    .end local v1           #subStatsStr:Ljava/lang/String;
    .end local v2           #tempActionStatsEntity:Ltmsdkobf/il;
    :cond_2
    const-string v4, ";"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 271
    .restart local v0       #poundIndex:I
    if-eq v0, v8, :cond_0

    .line 272
    new-instance v2, Ltmsdkobf/il;

    invoke-direct {v2}, Ltmsdkobf/il;-><init>()V

    .line 273
    .restart local v2       #tempActionStatsEntity:Ltmsdkobf/il;
    invoke-virtual {p1, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 274
    .restart local v1       #subStatsStr:Ljava/lang/String;
    const-string v4, "&"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v8, :cond_4

    .line 275
    iput p2, v2, Ltmsdkobf/il;->rj:I

    .line 276
    const-string v4, "&"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Ltmsdkobf/il;->rl:J

    .line 279
    iget-wide v4, v2, Ltmsdkobf/il;->rl:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Ltmsdkobf/il;->rl:J

    .line 284
    :cond_3
    const-string v4, "&"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 286
    const-string v4, "&"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v8, :cond_5

    .line 287
    const-string v4, "&"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Ltmsdkobf/il;->rk:I

    .line 291
    const-string v4, "&"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Ltmsdkobf/il;->errorCode:I

    .line 298
    :goto_1
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v0, v4, :cond_1

    goto :goto_0

    .line 295
    :cond_5
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Ltmsdkobf/il;->rk:I

    goto :goto_1
.end method

.method private o(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/il;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 316
    .local p1, actionStatsEntityList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/il;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 318
    .local v0, actionStrSB:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 319
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltmsdkobf/il;

    iget-wide v2, v2, Ltmsdkobf/il;->rl:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 320
    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 321
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltmsdkobf/il;

    iget v2, v2, Ltmsdkobf/il;->rk:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 322
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltmsdkobf/il;

    iget v2, v2, Ltmsdkobf/il;->errorCode:I

    if-eqz v2, :cond_0

    .line 323
    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 324
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltmsdkobf/il;

    iget v2, v2, Ltmsdkobf/il;->errorCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 326
    :cond_0
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 318
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 329
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public db()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/bh;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v2, entityList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/il;>;"
    sget-object v0, Ltmsdkobf/il;->rm:[I

    .local v0, arr$:[I
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget v1, v0, v4

    .line 214
    .local v1, emodelID:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v2, v7, v1}, Ltmsdkobf/im;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    .line 213
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 217
    .end local v1           #emodelID:I
    :cond_0
    iget-boolean v7, p0, Ltmsdkobf/im;->ro:Z

    if-eqz v7, :cond_1

    .line 218
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 219
    const-string v8, "ActionStatsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " action stats - actionType "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ltmsdkobf/il;

    iget v7, v7, Ltmsdkobf/il;->rj:I

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " actionTime "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ltmsdkobf/il;

    iget-wide v10, v7, Ltmsdkobf/il;->rl:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " actionCount "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ltmsdkobf/il;

    iget v7, v7, Ltmsdkobf/il;->rk:I

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " action ErrorCode "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ltmsdkobf/il;

    iget v7, v7, Ltmsdkobf/il;->errorCode:I

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 218
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 227
    .end local v3           #i:I
    :cond_1
    invoke-virtual {p0, v2}, Ltmsdkobf/im;->n(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v6

    .line 228
    .local v6, suis:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/bh;>;"
    return-object v6
.end method

.method public dc()V
    .locals 2

    .prologue
    .line 243
    invoke-direct {p0}, Ltmsdkobf/im;->cW()Ltmsdkobf/jg;

    move-result-object v0

    invoke-interface {v0}, Ltmsdkobf/jg;->clear()V

    .line 244
    const-string v0, ""

    const-string v1, " ActionStatsManager cleanAllActionStantsData "

    invoke-static {v0, v1}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 245
    return-void
.end method

.method public dd()Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/bh;",
            ">;"
        }
    .end annotation

    .prologue
    .line 455
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 457
    .local v10, patternStatsEntityList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/il;>;"
    sget-object v1, Ltmsdkobf/il;->rn:[[I

    .local v1, arr$:[[I
    array-length v7, v1

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    move v6, v5

    .end local v1           #arr$:[[I
    .end local v5           #i$:I
    .end local v7           #len$:I
    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v9, v1, v6

    .line 458
    .local v9, pattern:[I
    move-object v2, v9

    .local v2, arr$:[I
    array-length v8, v2

    .local v8, len$:I
    const/4 v5, 0x0

    .end local v6           #i$:I
    .restart local v5       #i$:I
    :goto_1
    if-ge v5, v8, :cond_0

    aget v3, v2, v5

    .line 459
    .local v3, emodelID:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v12, v3}, Ltmsdkobf/im;->b(Ljava/util/ArrayList;Ljava/lang/String;I)V

    .line 458
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 457
    .end local v3           #emodelID:I
    :cond_0
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    .end local v5           #i$:I
    .restart local v6       #i$:I
    goto :goto_0

    .line 464
    .end local v2           #arr$:[I
    .end local v8           #len$:I
    .end local v9           #pattern:[I
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Ltmsdkobf/im;->ro:Z

    if-eqz v12, :cond_2

    .line 465
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v4, v12, :cond_2

    .line 466
    const-string v13, "ActionStatsManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "pattern stats - patternType "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ltmsdkobf/il;

    iget v12, v12, Ltmsdkobf/il;->rj:I

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " actionTime "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ltmsdkobf/il;

    iget-wide v15, v12, Ltmsdkobf/il;->rl:J

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " actionCount "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ltmsdkobf/il;

    iget v12, v12, Ltmsdkobf/il;->rk:I

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " action ErrorCode "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ltmsdkobf/il;

    iget v12, v12, Ltmsdkobf/il;->errorCode:I

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 465
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 477
    .end local v4           #i:I
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Ltmsdkobf/im;->n(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v11

    .line 478
    .local v11, suis:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/bh;>;"
    return-object v11
.end method

.method public de()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/bh;",
            ">;"
        }
    .end annotation

    .prologue
    .line 496
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 498
    .local v6, switchStatsEntityList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/il;>;"
    sget-object v0, Ltmsdkobf/il;->rm:[I

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget v1, v0, v3

    .line 499
    .local v1, emodelID:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7, v1}, Ltmsdkobf/im;->c(Ljava/util/ArrayList;Ljava/lang/String;I)V

    .line 498
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 502
    .end local v1           #emodelID:I
    :cond_0
    iget-boolean v7, p0, Ltmsdkobf/im;->ro:Z

    if-eqz v7, :cond_1

    .line 503
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 504
    const-string v8, "ActionStatsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "switch stats - switchType "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ltmsdkobf/il;

    iget v7, v7, Ltmsdkobf/il;->rj:I

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " actionTime "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ltmsdkobf/il;

    iget-wide v10, v7, Ltmsdkobf/il;->rl:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " actionCount "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ltmsdkobf/il;

    iget v7, v7, Ltmsdkobf/il;->rk:I

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " action ErrorCode "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ltmsdkobf/il;

    iget v7, v7, Ltmsdkobf/il;->errorCode:I

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 503
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 515
    .end local v2           #i:I
    :cond_1
    invoke-virtual {p0, v6}, Ltmsdkobf/im;->n(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v5

    .line 516
    .local v5, suis:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/bh;>;"
    return-object v5
.end method

.method public df()V
    .locals 1

    .prologue
    .line 544
    invoke-direct {p0}, Ltmsdkobf/im;->cZ()Ltmsdkobf/jg;

    move-result-object v0

    invoke-interface {v0}, Ltmsdkobf/jg;->clear()V

    .line 545
    return-void
.end method

.method public dg()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/bh;",
            ">;"
        }
    .end annotation

    .prologue
    .line 551
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 552
    .local v6, suis:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/bh;>;"
    sget-object v0, Ltmsdkobf/il;->rm:[I

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, v0, v3

    .line 553
    .local v1, emodelID:I
    invoke-direct {p0, v1}, Ltmsdkobf/im;->aW(I)Ltmsdkobf/bh;

    move-result-object v5

    .line 554
    .local v5, sui:Ltmsdkobf/bh;
    if-eqz v5, :cond_0

    .line 555
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 559
    .end local v1           #emodelID:I
    .end local v5           #sui:Ltmsdkobf/bh;
    :cond_1
    iget-boolean v9, p0, Ltmsdkobf/im;->ro:Z

    if-eqz v9, :cond_4

    .line 560
    const/4 v2, 0x0

    .end local v3           #i$:I
    .local v2, i:I
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_4

    .line 561
    const-string v8, ""

    .line 562
    .local v8, values:Ljava/lang/String;
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ltmsdkobf/bh;

    iget-object v9, v9, Ltmsdkobf/bh;->fb:Ljava/util/ArrayList;

    if-eqz v9, :cond_3

    .line 563
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ltmsdkobf/bh;

    iget-object v9, v9, Ltmsdkobf/bh;->fb:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 564
    .local v7, value:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 566
    .end local v7           #value:I
    :cond_2
    const/4 v9, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 569
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_3
    const-string v10, "ActionStatsManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "multi value - id:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ltmsdkobf/bh;

    iget v9, v9, Ltmsdkobf/bh;->id:I

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", time "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ltmsdkobf/bh;

    iget v9, v9, Ltmsdkobf/bh;->time:I

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", desc:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ltmsdkobf/bh;

    iget-object v9, v9, Ltmsdkobf/bh;->eb:Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", values:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", param:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ltmsdkobf/bh;

    iget-object v9, v9, Ltmsdkobf/bh;->fc:Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 560
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 576
    .end local v2           #i:I
    .end local v8           #values:Ljava/lang/String;
    :cond_4
    return-object v6
.end method

.method public dh()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/bh;",
            ">;"
        }
    .end annotation

    .prologue
    .line 634
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 635
    .local v6, suis:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/bh;>;"
    sget-object v0, Ltmsdkobf/il;->rm:[I

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, v0, v3

    .line 636
    .local v1, emodelID:I
    invoke-direct {p0, v1}, Ltmsdkobf/im;->aX(I)Ltmsdkobf/bh;

    move-result-object v5

    .line 637
    .local v5, sui:Ltmsdkobf/bh;
    if-eqz v5, :cond_0

    .line 638
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 642
    .end local v1           #emodelID:I
    .end local v5           #sui:Ltmsdkobf/bh;
    :cond_1
    iget-boolean v9, p0, Ltmsdkobf/im;->ro:Z

    if-eqz v9, :cond_4

    .line 643
    const/4 v2, 0x0

    .end local v3           #i$:I
    .local v2, i:I
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_4

    .line 644
    const-string v8, ""

    .line 645
    .local v8, values:Ljava/lang/String;
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ltmsdkobf/bh;

    iget-object v9, v9, Ltmsdkobf/bh;->fb:Ljava/util/ArrayList;

    if-eqz v9, :cond_3

    .line 646
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ltmsdkobf/bh;

    iget-object v9, v9, Ltmsdkobf/bh;->fb:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 647
    .local v7, value:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 649
    .end local v7           #value:I
    :cond_2
    const/4 v9, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 652
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_3
    const-string v10, "ActionStatsManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "usage value - id:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ltmsdkobf/bh;

    iget v9, v9, Ltmsdkobf/bh;->id:I

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", time "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ltmsdkobf/bh;

    iget v9, v9, Ltmsdkobf/bh;->time:I

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", desc:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ltmsdkobf/bh;

    iget-object v9, v9, Ltmsdkobf/bh;->eb:Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", values:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", param:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ltmsdkobf/bh;

    iget-object v9, v9, Ltmsdkobf/bh;->fc:Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 643
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 659
    .end local v2           #i:I
    .end local v8           #values:Ljava/lang/String;
    :cond_4
    return-object v6
.end method

.method public di()J
    .locals 2

    .prologue
    .line 722
    invoke-direct {p0}, Ltmsdkobf/im;->cV()Ltmsdkobf/jg;

    move-result-object v0

    const-string v1, "last_report_time"

    invoke-interface {v0, v1}, Ltmsdkobf/jg;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public dj()J
    .locals 2

    .prologue
    .line 738
    invoke-direct {p0}, Ltmsdkobf/im;->cV()Ltmsdkobf/jg;

    move-result-object v0

    const-string v1, "last_report_applist_time"

    invoke-interface {v0, v1}, Ltmsdkobf/jg;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public n(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/il;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/bh;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, entityList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/il;>;"
    if-nez p1, :cond_1

    .line 179
    const/4 v4, 0x0

    .line 202
    :cond_0
    return-object v4

    .line 181
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v4, suis:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/bh;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdkobf/il;

    .line 184
    .local v0, action:Ltmsdkobf/il;
    iget v5, v0, Ltmsdkobf/il;->rk:I

    if-lez v5, :cond_2

    .line 185
    new-instance v3, Ltmsdkobf/bh;

    invoke-direct {v3}, Ltmsdkobf/bh;-><init>()V

    .line 186
    .local v3, sui:Ltmsdkobf/bh;
    iget v5, v0, Ltmsdkobf/il;->rj:I

    invoke-virtual {v3, v5}, Ltmsdkobf/bh;->setId(I)V

    .line 189
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Ltmsdkobf/il;->rk:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ltmsdkobf/bh;->I(Ljava/lang/String;)V

    .line 191
    iget-wide v5, v0, Ltmsdkobf/il;->rl:J

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v1, v5

    .line 192
    .local v1, curTime:I
    invoke-virtual {v3, v1}, Ltmsdkobf/bh;->B(I)V

    .line 194
    iget v5, v0, Ltmsdkobf/il;->errorCode:I

    if-eqz v5, :cond_3

    .line 195
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v3, Ltmsdkobf/bh;->fb:Ljava/util/ArrayList;

    .line 196
    iget-object v5, v3, Ltmsdkobf/bh;->fb:Ljava/util/ArrayList;

    iget v6, v0, Ltmsdkobf/il;->errorCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_3
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public n(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 730
    invoke-direct {p0}, Ltmsdkobf/im;->cV()Ltmsdkobf/jg;

    move-result-object v0

    const-string v1, "last_report_time"

    invoke-interface {v0, v1, p1, p2}, Ltmsdkobf/jg;->a(Ljava/lang/String;J)Z

    .line 731
    return-void
.end method

.method public o(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 746
    invoke-direct {p0}, Ltmsdkobf/im;->cV()Ltmsdkobf/jg;

    move-result-object v0

    const-string v1, "last_report_applist_time"

    invoke-interface {v0, v1, p1, p2}, Ltmsdkobf/jg;->a(Ljava/lang/String;J)Z

    .line 747
    return-void
.end method
