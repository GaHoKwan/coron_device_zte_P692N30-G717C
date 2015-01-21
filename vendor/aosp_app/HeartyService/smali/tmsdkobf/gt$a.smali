.class final Ltmsdkobf/gt$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdkobf/ic;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdkobf/gt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic oo:Ltmsdkobf/gt;


# direct methods
.method constructor <init>(Ltmsdkobf/gt;)V
    .locals 0
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Ltmsdkobf/gt$a;->oo:Ltmsdkobf/gt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ltmsdk/common/DataEntity;Ltmsdk/common/DataEntity;)V
    .locals 13
    .parameter "data"
    .parameter "reply"

    .prologue
    const/4 v8, 0x0

    const/4 v12, 0x1

    .line 317
    const/4 v0, 0x0

    .line 318
    .local v0, blocked:Z
    invoke-virtual {p1}, Ltmsdk/common/DataEntity;->bundle()Landroid/os/Bundle;

    move-result-object v1

    .line 319
    .local v1, bundle:Landroid/os/Bundle;
    const-string v9, "sms"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v9

    invoke-static {v9}, Ltmsdk/common/module/aresengine/SmsEntity;->unmarshall([B)Ltmsdk/common/module/aresengine/SmsEntity;

    move-result-object v7

    .line 322
    .local v7, sms:Ltmsdk/common/module/aresengine/SmsEntity;
    iget-object v9, p0, Ltmsdkobf/gt$a;->oo:Ltmsdkobf/gt;

    const-string v10, "incoming_sms"

    invoke-virtual {v9, v10}, Ltmsdkobf/gt;->findInterceptor(Ljava/lang/String;)Ltmsdk/bg/module/aresengine/DataInterceptor;

    move-result-object v5

    .line 323
    .local v5, incomingInterceptor:Ltmsdk/bg/module/aresengine/DataInterceptor;,"Ltmsdk/bg/module/aresengine/DataInterceptor<Ltmsdk/common/module/aresengine/SmsEntity;>;"
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ltmsdk/bg/module/aresengine/DataInterceptor;->dataFilter()Ltmsdk/bg/module/aresengine/DataFilter;

    move-result-object v2

    .line 324
    .local v2, filter:Ltmsdk/bg/module/aresengine/DataFilter;,"Ltmsdk/bg/module/aresengine/DataFilter<Ltmsdk/common/module/aresengine/SmsEntity;>;"
    :goto_0
    const/4 v6, 0x0

    .line 326
    .local v6, information:Ltmsdkobf/hb;
    if-eqz v5, :cond_0

    instance-of v9, v2, Ltmsdk/bg/module/aresengine/IncomingSmsFilter;

    if-eqz v9, :cond_0

    .line 327
    invoke-interface {v5}, Ltmsdk/bg/module/aresengine/DataInterceptor;->dataHandler()Ltmsdk/bg/module/aresengine/DataHandler;

    move-result-object v4

    .line 329
    .local v4, handler:Ltmsdk/bg/module/aresengine/DataHandler;
    invoke-virtual {v2}, Ltmsdkobf/gv;->unbind()V

    .line 330
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    aput-object v8, v9, v12

    invoke-virtual {v2, v7, v9}, Ltmsdk/bg/module/aresengine/DataFilter;->filter(Ltmsdk/common/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)Ltmsdk/common/module/aresengine/FilterResult;

    move-result-object v3

    .line 331
    .local v3, filterresult:Ltmsdk/common/module/aresengine/FilterResult;
    invoke-virtual {v2, v4}, Ltmsdkobf/gv;->a(Ltmsdk/bg/module/aresengine/DataHandler;)V

    .line 333
    if-eqz v3, :cond_0

    .line 334
    iget-boolean v0, v3, Ltmsdk/common/module/aresengine/FilterResult;->isBlocked:Z

    .line 335
    new-instance v6, Ltmsdkobf/hb;

    .end local v6           #information:Ltmsdkobf/hb;
    invoke-direct {v6}, Ltmsdkobf/hb;-><init>()V

    .line 336
    .restart local v6       #information:Ltmsdkobf/hb;
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Ltmsdkobf/hb;->mPkg:Ljava/lang/String;

    .line 337
    iget v8, v3, Ltmsdk/common/module/aresengine/FilterResult;->mFilterfiled:I

    iput v8, v6, Ltmsdkobf/hb;->oQ:I

    .line 338
    iget v8, v3, Ltmsdk/common/module/aresengine/FilterResult;->mState:I

    iput v8, v6, Ltmsdkobf/hb;->mState:I

    .line 339
    iget-boolean v8, v3, Ltmsdk/common/module/aresengine/FilterResult;->isBlocked:Z

    iput-boolean v8, v6, Ltmsdkobf/hb;->oR:Z

    .line 340
    invoke-virtual {p2}, Ltmsdk/common/DataEntity;->bundle()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "information"

    invoke-static {v6}, Ltmsdkobf/hb;->a(Ltmsdkobf/hb;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    .end local v3           #filterresult:Ltmsdk/common/module/aresengine/FilterResult;
    .end local v4           #handler:Ltmsdk/bg/module/aresengine/DataHandler;
    :cond_0
    invoke-virtual {p2}, Ltmsdk/common/DataEntity;->bundle()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "blocked"

    invoke-virtual {v8, v9, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 345
    return-void

    .end local v2           #filter:Ltmsdk/bg/module/aresengine/DataFilter;,"Ltmsdk/bg/module/aresengine/DataFilter<Ltmsdk/common/module/aresengine/SmsEntity;>;"
    .end local v6           #information:Ltmsdkobf/hb;
    :cond_1
    move-object v2, v8

    .line 323
    goto :goto_0
.end method

.method private b(Ltmsdk/common/DataEntity;Ltmsdk/common/DataEntity;)V
    .locals 10
    .parameter "data"
    .parameter "reply"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 348
    invoke-virtual {p1}, Ltmsdk/common/DataEntity;->bundle()Landroid/os/Bundle;

    move-result-object v0

    .line 349
    .local v0, bundle:Landroid/os/Bundle;
    const-string v6, "sms"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Ltmsdk/common/module/aresengine/SmsEntity;->unmarshall([B)Ltmsdk/common/module/aresengine/SmsEntity;

    move-result-object v5

    .line 350
    .local v5, sms:Ltmsdk/common/module/aresengine/SmsEntity;
    const-string v6, "informations"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ltmsdkobf/hb;->aW(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 352
    .local v2, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/hb;>;"
    iget-object v6, p0, Ltmsdkobf/gt$a;->oo:Ltmsdkobf/gt;

    const-string v7, "incoming_sms"

    invoke-virtual {v6, v7}, Ltmsdkobf/gt;->findInterceptor(Ljava/lang/String;)Ltmsdk/bg/module/aresengine/DataInterceptor;

    move-result-object v3

    .line 353
    .local v3, interceptor:Ltmsdk/bg/module/aresengine/DataInterceptor;,"Ltmsdk/bg/module/aresengine/DataInterceptor<+Ltmsdk/common/module/aresengine/TelephonyEntity;>;"
    const-string v6, "event_sender"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, event_sender:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 357
    invoke-interface {v3}, Ltmsdk/bg/module/aresengine/DataInterceptor;->dataMonitor()Ltmsdk/bg/module/aresengine/DataMonitor;

    move-result-object v4

    .line 360
    .local v4, monitor:Ltmsdk/bg/module/aresengine/DataMonitor;,"Ltmsdk/bg/module/aresengine/DataMonitor<Ltmsdk/common/module/aresengine/SmsEntity;>;"
    instance-of v6, v4, Ltmsdkobf/hc$a;

    if-eqz v6, :cond_1

    .line 361
    check-cast v4, Ltmsdkobf/hc$a;

    .end local v4           #monitor:Ltmsdk/bg/module/aresengine/DataMonitor;,"Ltmsdk/bg/module/aresengine/DataMonitor<Ltmsdk/common/module/aresengine/SmsEntity;>;"
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    const/4 v7, 0x1

    aput-object v1, v6, v7

    aput-object v2, v6, v9

    invoke-virtual {v4, v5, v6}, Ltmsdkobf/hc$a;->a(Ltmsdk/common/module/aresengine/SmsEntity;[Ljava/lang/Object;)V

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 363
    .restart local v4       #monitor:Ltmsdk/bg/module/aresengine/DataMonitor;,"Ltmsdk/bg/module/aresengine/DataMonitor<Ltmsdk/common/module/aresengine/SmsEntity;>;"
    :cond_1
    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ltmsdk/bg/module/aresengine/DataMonitor;->notifyDataReached(Ltmsdk/common/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private c(Ltmsdk/common/DataEntity;Ltmsdk/common/DataEntity;)V
    .locals 4
    .parameter "data"
    .parameter "reply"

    .prologue
    .line 369
    invoke-virtual {p1}, Ltmsdk/common/DataEntity;->bundle()Landroid/os/Bundle;

    move-result-object v0

    .line 370
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "command"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 371
    .local v1, commond:Ljava/lang/String;
    const-string v3, "data"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 373
    .local v2, pkg:Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 374
    const-string v3, "add"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 375
    invoke-static {}, Ltmsdkobf/gu;->bO()Ltmsdkobf/gu;

    move-result-object v3

    invoke-virtual {v3, v2}, Ltmsdkobf/gu;->aT(Ljava/lang/String;)V

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    invoke-static {}, Ltmsdkobf/gu;->bO()Ltmsdkobf/gu;

    move-result-object v3

    invoke-virtual {v3, v2}, Ltmsdkobf/gu;->aU(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private d(Ltmsdk/common/DataEntity;Ltmsdk/common/DataEntity;)V
    .locals 4
    .parameter "data"
    .parameter "reply"

    .prologue
    .line 383
    const-class v1, Ltmsdk/bg/module/aresengine/AresEngineManager;

    invoke-static {v1}, Ltmsdk/bg/creator/ManagerCreatorB;->getManager(Ljava/lang/Class;)Ltmsdk/bg/creator/BaseManagerB;

    move-result-object v1

    check-cast v1, Ltmsdk/bg/module/aresengine/AresEngineManager;

    invoke-virtual {v1}, Ltmsdk/bg/module/aresengine/AresEngineManager;->getAresEngineFactor()Ltmsdk/bg/module/aresengine/AresEngineFactor;

    move-result-object v1

    invoke-virtual {v1}, Ltmsdk/bg/module/aresengine/AresEngineFactor;->getSysDao()Ltmsdk/common/module/aresengine/AbsSysDao;

    move-result-object v1

    invoke-virtual {v1}, Ltmsdk/common/module/aresengine/AbsSysDao;->supportThisPhone()Z

    move-result v0

    .line 384
    .local v0, support_this_phone:Z
    invoke-virtual {p2}, Ltmsdk/common/DataEntity;->bundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "support_this_phone"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 385
    invoke-virtual {p2}, Ltmsdk/common/DataEntity;->bundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "pkg"

    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    return-void
.end method


# virtual methods
.method public isMatch(I)Z
    .locals 2
    .parameter "what"

    .prologue
    const/4 v0, 0x1

    .line 281
    if-lt p1, v0, :cond_0

    const/4 v1, 0x4

    if-gt p1, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onProcessing(Ltmsdk/common/DataEntity;)Ltmsdk/common/DataEntity;
    .locals 5
    .parameter "data"

    .prologue
    .line 286
    invoke-virtual {p1}, Ltmsdk/common/DataEntity;->what()I

    move-result v1

    .line 287
    .local v1, what:I
    new-instance v0, Ltmsdk/common/DataEntity;

    invoke-direct {v0, v1}, Ltmsdk/common/DataEntity;-><init>(I)V

    .line 289
    .local v0, reply:Ltmsdk/common/DataEntity;
    packed-switch v1, :pswitch_data_0

    .line 308
    invoke-virtual {v0}, Ltmsdk/common/DataEntity;->bundle()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "has_exceprtion"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 313
    :goto_0
    return-object v0

    .line 292
    :pswitch_0
    invoke-direct {p0, p1, v0}, Ltmsdkobf/gt$a;->a(Ltmsdk/common/DataEntity;Ltmsdk/common/DataEntity;)V

    goto :goto_0

    .line 296
    :pswitch_1
    invoke-direct {p0, p1, v0}, Ltmsdkobf/gt$a;->b(Ltmsdk/common/DataEntity;Ltmsdk/common/DataEntity;)V

    goto :goto_0

    .line 300
    :pswitch_2
    invoke-direct {p0, p1, v0}, Ltmsdkobf/gt$a;->c(Ltmsdk/common/DataEntity;Ltmsdk/common/DataEntity;)V

    goto :goto_0

    .line 304
    :pswitch_3
    invoke-direct {p0, p1, v0}, Ltmsdkobf/gt$a;->d(Ltmsdk/common/DataEntity;Ltmsdk/common/DataEntity;)V

    goto :goto_0

    .line 289
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
