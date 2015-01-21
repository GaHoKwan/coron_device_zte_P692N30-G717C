.class public final Ltmsdkobf/ly;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static Ew:Ltmsdkobf/mf;


# direct methods
.method public static a(Ltmsdkobf/mf;)V
    .locals 0
    .parameter "dao"

    .prologue
    .line 25
    sput-object p0, Ltmsdkobf/ly;->Ew:Ltmsdkobf/mf;

    .line 26
    return-void
.end method

.method public static declared-synchronized b(Ltmsdkobf/bn;)V
    .locals 6
    .parameter "serverCmdInfo"

    .prologue
    .line 66
    const-class v3, Ltmsdkobf/ly;

    monitor-enter v3

    :try_start_0
    const-string v2, "Chord"

    const-string v4, "execute()"

    invoke-static {v2, v4}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    if-nez p0, :cond_0

    .line 83
    :goto_0
    monitor-exit v3

    return-void

    .line 71
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ltmsdkobf/bn;->y()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, executeTipsId:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 73
    const-string v2, "Chord"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "execute() executeTipsId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    :cond_1
    const-string v2, "Chord"

    const-string v4, "execute() begin"

    invoke-static {v2, v4}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    sget-object v2, Ltmsdkobf/ly;->Ew:Ltmsdkobf/mf;

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ltmsdkobf/mf;->H(Z)V

    .line 78
    sget-object v2, Ltmsdkobf/ly;->Ew:Ltmsdkobf/mf;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Ltmsdkobf/mf;->A(J)V

    .line 80
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Ltmsdkobf/ly;->Ew:Ltmsdkobf/mf;

    invoke-static {v2, v4}, Ltmsdkobf/ma;->a(Landroid/content/Context;Ltmsdkobf/mf;)Ltmsdkobf/ma;

    move-result-object v0

    .line 81
    .local v0, cloudEngine:Ltmsdkobf/ma;
    invoke-virtual {v0, p0}, Ltmsdkobf/ma;->e(Ltmsdkobf/bn;)V

    .line 82
    const-string v2, "Chord"

    const-string v4, "execute() end"

    invoke-static {v2, v4}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 66
    .end local v0           #cloudEngine:Ltmsdkobf/ma;
    .end local v1           #executeTipsId:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized hk()V
    .locals 10

    .prologue
    .line 33
    const-class v7, Ltmsdkobf/ly;

    monitor-enter v7

    :try_start_0
    const-string v6, "Chord"

    const-string v8, "getCloudService()"

    invoke-static {v6, v8}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    const-class v6, Ltmsdkobf/lk;

    invoke-static {v6}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v5

    check-cast v5, Ltmsdkobf/lk;

    .line 35
    .local v5, wupSessionManager:Ltmsdkobf/lk;
    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 36
    .local v4, serverCmdInfoRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ltmsdkobf/bn;>;"
    invoke-virtual {v5}, Ltmsdkobf/lk;->gf()Z

    move-result v1

    .line 37
    .local v1, couldFetchCloud:Z
    const-string v6, "Chord"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getCloudService() couldFetchCloud:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    if-nez v1, :cond_1

    .line 59
    :cond_0
    :goto_0
    monitor-exit v7

    return-void

    .line 42
    :cond_1
    :try_start_1
    invoke-virtual {v5, v4}, Ltmsdkobf/lk;->a(Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v2

    .line 45
    .local v2, err:I
    sget-object v8, Ltmsdkobf/ly;->Ew:Ltmsdkobf/mf;

    if-nez v2, :cond_3

    const/4 v6, 0x1

    :goto_1
    invoke-interface {v8, v6}, Ltmsdkobf/mf;->H(Z)V

    .line 46
    if-nez v2, :cond_2

    .line 47
    sget-object v6, Ltmsdkobf/ly;->Ew:Ltmsdkobf/mf;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-interface {v6, v8, v9}, Ltmsdkobf/mf;->A(J)V

    .line 50
    :cond_2
    const-string v6, "Chord"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getCloudService() getMainTips() err:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    const-string v6, "Chord"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getCloudService() getMainTips() err:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltmsdkobf/bn;

    .line 55
    .local v3, serverCmdInfo:Ltmsdkobf/bn;
    if-eqz v3, :cond_0

    .line 56
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget-object v8, Ltmsdkobf/ly;->Ew:Ltmsdkobf/mf;

    invoke-static {v6, v8}, Ltmsdkobf/ma;->a(Landroid/content/Context;Ltmsdkobf/mf;)Ltmsdkobf/ma;

    move-result-object v0

    .line 57
    .local v0, cloudEngine:Ltmsdkobf/ma;
    invoke-virtual {v0, v3}, Ltmsdkobf/ma;->e(Ltmsdkobf/bn;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 33
    .end local v0           #cloudEngine:Ltmsdkobf/ma;
    .end local v1           #couldFetchCloud:Z
    .end local v2           #err:I
    .end local v3           #serverCmdInfo:Ltmsdkobf/bn;
    .end local v4           #serverCmdInfoRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ltmsdkobf/bn;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 45
    .restart local v1       #couldFetchCloud:Z
    .restart local v2       #err:I
    .restart local v4       #serverCmdInfoRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ltmsdkobf/bn;>;"
    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public static declared-synchronized hl()V
    .locals 5

    .prologue
    .line 89
    const-class v3, Ltmsdkobf/ly;

    monitor-enter v3

    :try_start_0
    const-string v2, "Chord"

    const-string v4, "tryGetCloudService()"

    invoke-static {v2, v4}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    const-class v2, Ltmsdkobf/lk;

    invoke-static {v2}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v2

    check-cast v2, Ltmsdkobf/lk;

    invoke-virtual {v2}, Ltmsdkobf/lk;->go()Ltmsdkobf/lf;

    move-result-object v1

    .line 91
    .local v1, helperImpl:Ltmsdkobf/lf;
    if-eqz v1, :cond_0

    .line 92
    invoke-interface {v1}, Ltmsdkobf/lf;->ga()V

    .line 95
    :cond_0
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Ltmsdkobf/ly;->Ew:Ltmsdkobf/mf;

    invoke-static {v2, v4}, Ltmsdkobf/ma;->a(Landroid/content/Context;Ltmsdkobf/mf;)Ltmsdkobf/ma;

    move-result-object v0

    .line 96
    .local v0, cloudEngine:Ltmsdkobf/ma;
    invoke-virtual {v0}, Ltmsdkobf/ma;->hl()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit v3

    return-void

    .line 89
    .end local v0           #cloudEngine:Ltmsdkobf/ma;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
