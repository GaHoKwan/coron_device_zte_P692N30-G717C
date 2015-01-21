.class public final Ltmsdkobf/ma;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static EH:Ltmsdkobf/ma;


# instance fields
.field private final EF:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ltmsdkobf/n;",
            ">;"
        }
    .end annotation
.end field

.field private EG:Ltmsdkobf/mf;

.field private EI:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Ltmsdkobf/ma;->EH:Ltmsdkobf/ma;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ltmsdkobf/mf;)V
    .locals 1
    .parameter "context"
    .parameter "dao"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Ltmsdkobf/ma;->EF:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Ltmsdkobf/ma;->EI:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Ltmsdkobf/ma;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Ltmsdkobf/ma;->EG:Ltmsdkobf/mf;

    .line 45
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ltmsdkobf/mf;)Ltmsdkobf/ma;
    .locals 2
    .parameter "context"
    .parameter "dao"

    .prologue
    .line 48
    const-class v1, Ltmsdkobf/ma;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ltmsdkobf/ma;->EH:Ltmsdkobf/ma;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ltmsdkobf/ma;

    invoke-direct {v0, p0, p1}, Ltmsdkobf/ma;-><init>(Landroid/content/Context;Ltmsdkobf/mf;)V

    sput-object v0, Ltmsdkobf/ma;->EH:Ltmsdkobf/ma;

    .line 51
    :cond_0
    sget-object v0, Ltmsdkobf/ma;->EH:Ltmsdkobf/ma;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized a(Ltmsdkobf/n;Z)V
    .locals 6
    .parameter "cloudInfo"
    .parameter "autoExec"

    .prologue
    .line 364
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ltmsdkobf/n;->h()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 365
    .local v1, cloudCmdList:Ljava/util/List;,"Ljava/util/List<Ltmsdkobf/m;>;"
    if-nez v1, :cond_1

    .line 386
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 369
    :cond_1
    if-eqz p2, :cond_0

    .line 371
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdkobf/m;

    .line 372
    .local v0, cloudCmd:Ltmsdkobf/m;
    invoke-static {v0}, Ltmsdkobf/mi;->a(Ltmsdkobf/m;)Ltmsdkobf/lx;

    move-result-object v4

    .line 373
    .local v4, instr:Ltmsdkobf/lx;
    if-eqz v4, :cond_2

    .line 374
    invoke-virtual {v4}, Ltmsdkobf/lx;->hj()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 378
    .local v2, err:I
    const/4 v5, 0x1

    if-eq v2, v5, :cond_2

    goto :goto_0

    .line 364
    .end local v0           #cloudCmd:Ltmsdkobf/m;
    .end local v1           #cloudCmdList:Ljava/util/List;,"Ljava/util/List<Ltmsdkobf/m;>;"
    .end local v2           #err:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #instr:Ltmsdkobf/lx;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private a(Ltmsdkobf/n;)Z
    .locals 7
    .parameter "cloudInfo"

    .prologue
    .line 278
    invoke-virtual {p1}, Ltmsdkobf/n;->f()Ltmsdkobf/ca;

    move-result-object v2

    .line 279
    .local v2, timeCtrl:Ltmsdkobf/ca;
    invoke-virtual {p1}, Ltmsdkobf/n;->f()Ltmsdkobf/ca;

    move-result-object v3

    invoke-virtual {v3}, Ltmsdkobf/ca;->A()I

    move-result v1

    .line 280
    .local v1, time:I
    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v2}, Ltmsdkobf/ca;->A()I

    move-result v5

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 282
    .local v0, isValidTime:Z
    :goto_0
    return v0

    .line 280
    .end local v0           #isValidTime:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ltmsdkobf/n;)V
    .locals 2
    .parameter "cloudInfo"

    .prologue
    .line 330
    invoke-direct {p0, p1}, Ltmsdkobf/ma;->a(Ltmsdkobf/n;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 352
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 335
    :cond_1
    invoke-virtual {p1}, Ltmsdkobf/n;->g()Ltmsdkobf/cc;

    move-result-object v0

    .line 336
    .local v0, tipsInfo:Ltmsdkobf/cc;
    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {v0}, Ltmsdkobf/cc;->getType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 346
    :sswitch_1
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Ltmsdkobf/ma;->a(Ltmsdkobf/n;Z)V

    goto :goto_0

    .line 337
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x6 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method private c(Ltmsdkobf/bn;)Ljava/util/ArrayList;
    .locals 5
    .parameter "serverCmdInfo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltmsdkobf/bn;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/n;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 94
    if-nez p1, :cond_1

    .line 118
    :cond_0
    return-object v1

    .line 98
    :cond_1
    invoke-virtual {p1}, Ltmsdkobf/bn;->w()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v1, gfTips:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/n;>;"
    invoke-virtual {p1}, Ltmsdkobf/bn;->w()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdkobf/n;

    .line 104
    .local v0, cloudInfo:Ltmsdkobf/n;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ltmsdkobf/n;->h()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 105
    invoke-virtual {v0}, Ltmsdkobf/n;->h()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltmsdkobf/m;

    invoke-virtual {v3}, Ltmsdkobf/m;->d()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 111
    :pswitch_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private d(Ltmsdkobf/bn;)I
    .locals 7
    .parameter "serverCmdInfo"

    .prologue
    const/4 v4, 0x0

    .line 129
    const-string v3, "Chord"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "selectQQSecureTips() tipsId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ltmsdkobf/bn;->y()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " serverCmdInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ltmsdkobf/bn;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    iget-object v3, p1, Ltmsdkobf/bn;->fx:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    move v1, v4

    .line 167
    :goto_0
    return v1

    .line 135
    :cond_0
    const/4 v1, 0x0

    .line 136
    .local v1, flag:I
    iget-object v3, p1, Ltmsdkobf/bn;->fx:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdkobf/n;

    .line 137
    .local v0, cloudInfo:Ltmsdkobf/n;
    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {v0}, Ltmsdkobf/n;->h()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 145
    invoke-virtual {v0}, Ltmsdkobf/n;->h()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltmsdkobf/m;

    invoke-virtual {v3}, Ltmsdkobf/m;->d()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 153
    :pswitch_0
    or-int/lit8 v1, v1, 0x4

    .line 154
    goto :goto_1

    .line 147
    :pswitch_1
    or-int/lit8 v1, v1, 0x1

    .line 148
    goto :goto_1

    .line 150
    :pswitch_2
    or-int/lit8 v1, v1, 0x2

    .line 151
    goto :goto_1

    .line 156
    :pswitch_3
    or-int/lit8 v1, v1, 0x8

    .line 157
    goto :goto_1

    .line 159
    :pswitch_4
    or-int/lit8 v1, v1, 0x10

    .line 160
    goto :goto_1

    .line 166
    .end local v0           #cloudInfo:Ltmsdkobf/n;
    :cond_2
    const-string v3, "Chord"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selectQQSecureTips()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ltmsdkobf/bn;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " flag:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private h(Ltmsdkobf/bn;)V
    .locals 3
    .parameter "serverCmdInfo"

    .prologue
    .line 243
    const-string v1, "Chord"

    const-string v2, "doGFTips()"

    invoke-static {v1, v2}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 245
    invoke-direct {p0, p1}, Ltmsdkobf/ma;->c(Ltmsdkobf/bn;)Ljava/util/ArrayList;

    move-result-object v0

    .line 246
    .local v0, gfTips:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/n;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    iget-object v1, p0, Ltmsdkobf/ma;->EF:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 251
    iget-object v1, p0, Ltmsdkobf/ma;->EF:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->addAll(Ljava/util/Collection;)Z

    .line 252
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ltmsdkobf/ma;->cm(I)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized cm(I)V
    .locals 5
    .parameter "triggerTime"

    .prologue
    .line 293
    monitor-enter p0

    :try_start_0
    const-string v3, "Chord"

    const-string v4, "triggerProcessCloudInfo()"

    invoke-static {v3, v4}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 295
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .local v2, processList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/n;>;"
    iget-object v3, p0, Ltmsdkobf/ma;->EF:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdkobf/n;

    .line 297
    .local v0, cloudInfo:Ltmsdkobf/n;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ltmsdkobf/n;->f()Ltmsdkobf/ca;

    move-result-object v3

    invoke-virtual {v3}, Ltmsdkobf/ca;->z()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 298
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 293
    .end local v0           #cloudInfo:Ltmsdkobf/n;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #processList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/n;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 302
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #processList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/n;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 303
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdkobf/n;

    .line 304
    .restart local v0       #cloudInfo:Ltmsdkobf/n;
    invoke-direct {p0, v0}, Ltmsdkobf/ma;->b(Ltmsdkobf/n;)V

    .line 305
    iget-object v3, p0, Ltmsdkobf/ma;->EF:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 308
    .end local v0           #cloudInfo:Ltmsdkobf/n;
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized e(Ltmsdkobf/bn;)V
    .locals 3
    .parameter "serverCmdInfo"

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    const-string v1, "Chord"

    const-string v2, "handleTips()"

    invoke-static {v1, v2}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    invoke-virtual {p0, p1}, Ltmsdkobf/ma;->g(Ltmsdkobf/bn;)I

    move-result v0

    .line 174
    .local v0, err:I
    if-nez v0, :cond_0

    .line 176
    invoke-virtual {p0, p1}, Ltmsdkobf/ma;->f(Ltmsdkobf/bn;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    :goto_0
    monitor-exit p0

    return-void

    .line 179
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ltmsdkobf/ma;->hq()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 171
    .end local v0           #err:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized f(Ltmsdkobf/bn;)V
    .locals 4
    .parameter "serverCmdInfo"

    .prologue
    .line 189
    monitor-enter p0

    :try_start_0
    const-string v2, "Chord"

    const-string v3, "notifyQQSecureTips()"

    invoke-static {v2, v3}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 190
    invoke-direct {p0, p1}, Ltmsdkobf/ma;->d(Ltmsdkobf/bn;)I

    move-result v0

    .line 191
    .local v0, flag:I
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 192
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "action_qqsecure_tips"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 194
    iget-object v2, p0, Ltmsdkobf/ma;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    monitor-exit p0

    return-void

    .line 189
    .end local v0           #flag:I
    .end local v1           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized g(Ltmsdkobf/bn;)I
    .locals 7
    .parameter "serverCmdInfo"

    .prologue
    .line 216
    monitor-enter p0

    :try_start_0
    const-string v3, "Chord"

    const-string v4, "handleGFTips()"

    invoke-static {v3, v4}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    if-nez p1, :cond_0

    .line 218
    const/4 v0, -0x6

    .line 239
    :goto_0
    monitor-exit p0

    return v0

    .line 221
    :cond_0
    const/4 v0, -0x2

    .line 222
    .local v0, err:I
    :try_start_1
    const-string v3, "Chord"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGFTips()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ltmsdkobf/bn;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 223
    const-string v3, "Chord"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGFTips()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ltmsdkobf/bn;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1}, Ltmsdkobf/bn;->x()I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    add-long v1, v3, v5

    .line 226
    .local v1, nextTime:J
    iget-object v3, p0, Ltmsdkobf/ma;->EG:Ltmsdkobf/mf;

    invoke-interface {v3, v1, v2}, Ltmsdkobf/mf;->B(J)V

    .line 229
    iget-object v3, p0, Ltmsdkobf/ma;->EI:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Ltmsdkobf/ma;->EI:Ljava/lang/String;

    invoke-virtual {p1}, Ltmsdkobf/bn;->y()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 230
    const-string v3, "Chord"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGFTips() duplicated cmd:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ltmsdkobf/bn;->y()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 216
    .end local v0           #err:I
    .end local v1           #nextTime:J
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 234
    .restart local v0       #err:I
    .restart local v1       #nextTime:J
    :cond_1
    :try_start_2
    invoke-direct {p0, p1}, Ltmsdkobf/ma;->h(Ltmsdkobf/bn;)V

    .line 235
    invoke-virtual {p1}, Ltmsdkobf/bn;->y()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ltmsdkobf/ma;->EI:Ljava/lang/String;

    .line 236
    const-string v3, "Chord"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGFTips() new cmd:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ltmsdkobf/bn;->y()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 239
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public declared-synchronized hl()V
    .locals 12

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    const-string v8, "Chord"

    const-string v9, "tryGetCloudService()"

    invoke-static {v8, v9}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    iget-object v8, p0, Ltmsdkobf/ma;->EG:Ltmsdkobf/mf;

    invoke-interface {v8}, Ltmsdkobf/mf;->hn()Z

    move-result v3

    .line 66
    .local v3, lastGetTipsSuccess:Z
    iget-object v8, p0, Ltmsdkobf/ma;->EG:Ltmsdkobf/mf;

    invoke-interface {v8}, Ltmsdkobf/mf;->ho()J

    move-result-wide v4

    .line 67
    .local v4, lastGetTipsTime:J
    iget-object v8, p0, Ltmsdkobf/ma;->EG:Ltmsdkobf/mf;

    invoke-interface {v8}, Ltmsdkobf/mf;->hp()J

    move-result-wide v6

    .line 69
    .local v6, nextGetTipsTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 70
    .local v0, curTime:J
    const-string v8, "CloudEngine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "tryGetCloudService() lastGetTipsSuccess:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " lastGetTipsTime:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " nextGetTipsTime:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " curTime:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    if-eqz v3, :cond_0

    const-wide/32 v8, 0xea60

    add-long/2addr v8, v6

    cmp-long v8, v0, v8

    if-gtz v8, :cond_0

    sub-long v8, v0, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/32 v10, 0x240c8400

    cmp-long v8, v8, v10

    if-lez v8, :cond_1

    .line 78
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 79
    .local v2, intent:Landroid/content/Intent;
    const-string v8, "action_verify"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v8, "from_id"

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    iget-object v8, p0, Ltmsdkobf/ma;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 83
    const-string v8, "Chord"

    const-string v9, "tryGetCloudService() try done"

    invoke-static {v8, v9}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    monitor-exit p0

    return-void

    .line 64
    .end local v0           #curTime:J
    .end local v3           #lastGetTipsSuccess:Z
    .end local v4           #lastGetTipsTime:J
    .end local v6           #nextGetTipsTime:J
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public declared-synchronized hq()V
    .locals 4

    .prologue
    .line 201
    monitor-enter p0

    :try_start_0
    const-string v2, "Chord"

    const-string v3, "notifyQQSecureTips()"

    invoke-static {v2, v3}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, flag:I
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 204
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "action_qqsecure_tips"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 206
    iget-object v2, p0, Ltmsdkobf/ma;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    monitor-exit p0

    return-void

    .line 201
    .end local v0           #flag:I
    .end local v1           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
