.class public Ltmsdkobf/hv;
.super Ltmsdk/bg/creator/BaseManagerB;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private mInitialized:Z

.field private qA:Ltmsdkobf/hp;

.field private qB:Landroid/os/HandlerThread;

.field private qC:Landroid/os/Handler;

.field private final qu:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field qv:Ltmsdkobf/fr;

.field qw:Ltmsdk/bg/module/permission/IUserDummyServiceCallback;

.field volatile qx:Ltmsdk/common/module/permission/PermissionTable;

.field volatile qy:Ltmsdk/common/module/permission/RidEnableList;

.field volatile qz:Ltmsdkobf/hu;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ltmsdk/bg/creator/BaseManagerB;-><init>()V

    .line 52
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Ltmsdkobf/hv;->qu:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 53
    return-void
.end method

.method private static varargs b([Ljava/lang/String;)[I
    .locals 13
    .parameter "symbol"

    .prologue
    const/4 v12, -0x1

    .line 197
    array-length v10, p0

    new-array v6, v10, [I

    .line 198
    .local v6, pids:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v10, v6

    if-ge v1, v10, :cond_0

    .line 199
    aput v12, v6, v1

    .line 198
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    :cond_0
    const/4 v5, -0x1

    .line 202
    .local v5, pid_index:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .local v7, ps_result:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v0, cmds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v10, "ps"

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-static {v7, v0}, Ltmsdk/common/utils/ScriptHelper;->runScript(Ljava/lang/StringBuilder;Ljava/util/List;)I

    .line 208
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 210
    .local v4, lines:[Ljava/lang/String;
    array-length v10, v4

    if-lez v10, :cond_2

    .line 212
    const/4 v1, 0x0

    :goto_1
    array-length v10, v4

    if-ge v1, v10, :cond_2

    .line 213
    aget-object v10, v4, v1

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    aget-object v10, v4, v1

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "pid"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 214
    aget-object v10, v4, v1

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v11, "[\\s ]+"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 215
    .local v8, titles:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    array-length v10, v8

    if-ge v2, v10, :cond_1

    .line 216
    aget-object v10, v8, v2

    const-string v11, "pid"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 217
    move v5, v2

    .line 221
    :cond_1
    if-eq v5, v12, :cond_5

    .line 228
    .end local v2           #j:I
    .end local v8           #titles:[Ljava/lang/String;
    :cond_2
    if-ltz v5, :cond_7

    .line 229
    const/4 v1, 0x1

    :goto_3
    array-length v10, v4

    if-ge v1, v10, :cond_7

    .line 230
    aget-object v10, v4, v1

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, line:Ljava/lang/String;
    const/4 v2, 0x0

    .restart local v2       #j:I
    :goto_4
    array-length v10, p0

    if-ge v2, v10, :cond_3

    .line 232
    aget-object v10, p0, v2

    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 233
    const-string v10, "[\\s ]+"

    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 234
    .local v9, tokens:[Ljava/lang/String;
    aget-object v10, v9, v5

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v6, v2

    .line 229
    .end local v9           #tokens:[Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 215
    .end local v3           #line:Ljava/lang/String;
    .restart local v8       #titles:[Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 212
    .end local v2           #j:I
    .end local v8           #titles:[Ljava/lang/String;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 231
    .restart local v2       #j:I
    .restart local v3       #line:Ljava/lang/String;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 241
    .end local v2           #j:I
    .end local v3           #line:Ljava/lang/String;
    :cond_7
    return-object v6
.end method

.method private static co()Z
    .locals 3

    .prologue
    .line 161
    const-string v0, "TMSServiceManager"

    .line 162
    .local v0, OLD_FW_SERVICE_NAME:Ljava/lang/String;
    const-string v2, "TMSServiceManager"

    invoke-static {v2}, Ltmsdkobf/ki;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 163
    .local v1, binder:Landroid/os/IBinder;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static cq()V
    .locals 0

    .prologue
    .line 391
    return-void
.end method

.method public static reboot()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 182
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->isRootGot()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "reboot"

    aput-object v2, v1, v4

    invoke-static {v1}, Ltmsdk/common/utils/ScriptHelper;->runScriptAsRoot([Ljava/lang/String;)I

    .line 186
    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "/system/bin/servicemanager"

    aput-object v2, v1, v4

    invoke-static {v1}, Ltmsdkobf/hv;->b([Ljava/lang/String;)[I

    move-result-object v0

    .line 187
    .local v0, pid:[I
    new-array v1, v3, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "kill -9 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Ltmsdk/common/utils/ScriptHelper;->runScript([Ljava/lang/String;)Ljava/lang/String;

    .line 189
    :cond_0
    return-void
.end method


# virtual methods
.method a(Ltmsdk/common/module/permission/PermissionRequestInfo;)I
    .locals 1
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 416
    :try_start_0
    invoke-virtual {p0}, Ltmsdkobf/hv;->cl()V

    .line 417
    iget-object v0, p0, Ltmsdkobf/hv;->qw:Ltmsdk/bg/module/permission/IUserDummyServiceCallback;

    invoke-interface {v0, p1}, Ltmsdk/bg/module/permission/IUserDummyServiceCallback;->onRequestAsked(Ltmsdk/common/module/permission/PermissionRequestInfo;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 419
    invoke-virtual {p0}, Ltmsdkobf/hv;->ck()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ltmsdkobf/hv;->ck()V

    throw v0
.end method

.method public addPermissionTableItem(Ltmsdk/common/module/permission/PermissionTableItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 276
    const-string v0, "PermissionManagerImpl"

    const-string v1, "addPermissionTableItem()"

    invoke-static {v0, v1}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 277
    invoke-static {}, Ltmsdkobf/hv;->cq()V

    .line 279
    :try_start_0
    invoke-virtual {p0}, Ltmsdkobf/hv;->cr()V

    .line 280
    iget-object v0, p0, Ltmsdkobf/hv;->qx:Ltmsdk/common/module/permission/PermissionTable;

    invoke-virtual {v0, p1}, Ltmsdk/common/module/permission/PermissionTable;->addItem(Ltmsdk/common/module/permission/PermissionTableItem;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    invoke-virtual {p0}, Ltmsdkobf/hv;->cs()V

    .line 284
    return-void

    .line 282
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ltmsdkobf/hv;->cs()V

    throw v0
.end method

.method b(Ltmsdk/common/module/permission/PermissionRequestInfo;)V
    .locals 3
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 424
    iget-object v1, p0, Ltmsdkobf/hv;->qC:Landroid/os/Handler;

    const/4 v2, 0x2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 425
    return-void

    .line 424
    :cond_0
    invoke-virtual {p1}, Ltmsdk/common/module/permission/PermissionRequestInfo;->clone()Ltmsdk/common/module/permission/PermissionRequestInfo;

    move-result-object v0

    goto :goto_0
.end method

.method bh(Ljava/lang/String;)V
    .locals 2
    .parameter "pkg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 410
    iget-object v0, p0, Ltmsdkobf/hv;->qC:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 411
    return-void
.end method

.method c(Ltmsdk/common/module/permission/PermissionRequestInfo;)V
    .locals 3
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 428
    iget-object v1, p0, Ltmsdkobf/hv;->qC:Landroid/os/Handler;

    const/4 v2, 0x3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 429
    return-void

    .line 428
    :cond_0
    invoke-virtual {p1}, Ltmsdk/common/module/permission/PermissionRequestInfo;->clone()Ltmsdk/common/module/permission/PermissionRequestInfo;

    move-result-object v0

    goto :goto_0
.end method

.method ck()V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Ltmsdkobf/hv;->qu:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 395
    return-void
.end method

.method cl()V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Ltmsdkobf/hv;->qu:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 399
    return-void
.end method

.method public cp()Ltmsdk/common/module/permission/RidEnableList;
    .locals 1

    .prologue
    .line 347
    :try_start_0
    invoke-virtual {p0}, Ltmsdkobf/hv;->ck()V

    .line 348
    iget-object v0, p0, Ltmsdkobf/hv;->qy:Ltmsdk/common/module/permission/RidEnableList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltmsdkobf/hv;->qy:Ltmsdk/common/module/permission/RidEnableList;

    invoke-virtual {v0}, Ltmsdk/common/module/permission/RidEnableList;->deepClone()Ltmsdk/common/module/permission/RidEnableList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 350
    :goto_0
    invoke-virtual {p0}, Ltmsdkobf/hv;->cl()V

    return-object v0

    .line 348
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 350
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ltmsdkobf/hv;->cl()V

    throw v0
.end method

.method cr()V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Ltmsdkobf/hv;->qu:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 403
    return-void
.end method

.method cs()V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Ltmsdkobf/hv;->qu:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 407
    return-void
.end method

.method public getPermissionTable()Ltmsdk/common/module/permission/PermissionTable;
    .locals 4

    .prologue
    .line 263
    invoke-static {}, Ltmsdkobf/hv;->cq()V

    .line 264
    invoke-virtual {p0}, Ltmsdkobf/hv;->ck()V

    .line 265
    iget-object v0, p0, Ltmsdkobf/hv;->qx:Ltmsdk/common/module/permission/PermissionTable;

    .line 266
    .local v0, r:Ltmsdk/common/module/permission/PermissionTable;
    invoke-virtual {p0}, Ltmsdkobf/hv;->cl()V

    .line 267
    const-string v1, "PermissionManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPermissionTable() returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 268
    return-object v0
.end method

.method public getSingletonType()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    .line 434
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 450
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 436
    :pswitch_0
    iget-object v1, p0, Ltmsdkobf/hv;->qw:Ltmsdk/bg/module/permission/IUserDummyServiceCallback;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ltmsdk/bg/module/permission/IUserDummyServiceCallback;->onAppStarted(Ljava/lang/String;)V

    goto :goto_0

    .line 447
    :catch_0
    move-exception v0

    goto :goto_0

    .line 440
    :pswitch_1
    iget-object v1, p0, Ltmsdkobf/hv;->qw:Ltmsdk/bg/module/permission/IUserDummyServiceCallback;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ltmsdk/common/module/permission/PermissionRequestInfo;

    invoke-interface {v1, v0}, Ltmsdk/bg/module/permission/IUserDummyServiceCallback;->onRequestAccepted(Ltmsdk/common/module/permission/PermissionRequestInfo;)V

    goto :goto_0

    .line 444
    :pswitch_2
    iget-object v1, p0, Ltmsdkobf/hv;->qw:Ltmsdk/bg/module/permission/IUserDummyServiceCallback;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ltmsdk/common/module/permission/PermissionRequestInfo;

    invoke-interface {v1, v0}, Ltmsdk/bg/module/permission/IUserDummyServiceCallback;->onRequestAborted(Ltmsdk/common/module/permission/PermissionRequestInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 434
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public init(Ltmsdk/bg/module/permission/IUserDummyServiceCallback;Z)I
    .locals 8
    .parameter "callback"
    .parameter "ignoreOldFramework"

    .prologue
    const/4 v7, 0x4

    const/4 v2, 0x0

    const/16 v6, 0x10

    .line 108
    const/4 v3, 0x2

    :try_start_0
    invoke-static {v3}, Ltmsdkobf/ik;->aS(I)V

    .line 109
    invoke-virtual {p0}, Ltmsdkobf/hv;->cr()V

    .line 110
    iget-boolean v3, p0, Ltmsdkobf/hv;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 155
    invoke-virtual {p0}, Ltmsdkobf/hv;->cs()V

    .line 156
    invoke-static {v6}, Ltmsdkobf/ik;->aS(I)V

    move v0, v2

    :goto_0
    return v0

    .line 113
    :cond_0
    if-nez p2, :cond_1

    :try_start_1
    invoke-static {}, Ltmsdkobf/hv;->co()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 114
    const/4 v0, 0x6

    .line 155
    invoke-virtual {p0}, Ltmsdkobf/hv;->cs()V

    .line 156
    invoke-static {v6}, Ltmsdkobf/ik;->aS(I)V

    goto :goto_0

    .line 116
    :cond_1
    :try_start_2
    iput-object p1, p0, Ltmsdkobf/hv;->qw:Ltmsdk/bg/module/permission/IUserDummyServiceCallback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    const/16 v0, 0x63

    .line 119
    .local v0, r:I
    const/4 v1, 0x0

    .local v1, retries:I
    :goto_1
    const/4 v3, 0x3

    if-ge v1, v3, :cond_3

    .line 120
    if-lez v1, :cond_2

    .line 122
    const-wide/16 v3, 0x7d0

    :try_start_3
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 127
    :cond_2
    :goto_2
    :try_start_4
    iget-object v3, p0, Ltmsdkobf/hv;->qv:Ltmsdkobf/fr;

    iget-object v4, p0, Ltmsdkobf/hv;->qz:Ltmsdkobf/hu;

    iget-object v5, p0, Ltmsdkobf/hv;->qz:Ltmsdkobf/hu;

    invoke-virtual {v3, v4, v5}, Ltmsdkobf/fr;->b(Ltmsdkobf/fq;Ltmsdkobf/fo;)I

    move-result v0

    .line 129
    if-nez v0, :cond_4

    const/4 v3, 0x1

    :goto_3
    iput-boolean v3, p0, Ltmsdkobf/hv;->mInitialized:Z

    .line 130
    if-nez v0, :cond_5

    .line 131
    const/4 v2, 0x4

    invoke-static {v2}, Ltmsdkobf/ik;->aS(I)V

    .line 133
    const-string v2, "PermissionManagerImpl"

    const-string v3, "ProxyBinderManager.init() SUCCESS!"

    invoke-static {v2, v3}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    :cond_3
    iget-boolean v2, p0, Ltmsdkobf/hv;->mInitialized:Z

    if-eqz v2, :cond_7

    .line 144
    invoke-static {}, Ltmsdkobf/ig;->cN()Ltmsdkobf/ij;

    move-result-object v2

    const-string v3, "dummy-callback-dispatcher"

    invoke-virtual {v2, v3}, Ltmsdkobf/ij;->bj(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v2

    iput-object v2, p0, Ltmsdkobf/hv;->qB:Landroid/os/HandlerThread;

    .line 146
    iget-object v2, p0, Ltmsdkobf/hv;->qB:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 147
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Ltmsdkobf/hv;->qB:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Ltmsdkobf/hv;->qC:Landroid/os/Handler;

    .line 148
    new-instance v2, Ltmsdkobf/hp;

    invoke-direct {v2, p0}, Ltmsdkobf/hp;-><init>(Ltmsdkobf/hv;)V

    iput-object v2, p0, Ltmsdkobf/hv;->qA:Ltmsdkobf/hp;

    .line 149
    iget-object v2, p0, Ltmsdkobf/hv;->qA:Ltmsdkobf/hp;

    invoke-virtual {v2}, Ltmsdkobf/hp;->cj()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 155
    :goto_4
    invoke-virtual {p0}, Ltmsdkobf/hv;->cs()V

    .line 156
    invoke-static {v6}, Ltmsdkobf/ik;->aS(I)V

    goto :goto_0

    :cond_4
    move v3, v2

    .line 129
    goto :goto_3

    .line 135
    :cond_5
    if-eq v0, v7, :cond_6

    const/4 v3, 0x5

    if-ne v0, v3, :cond_3

    .line 137
    :cond_6
    :try_start_5
    const-string v3, "PermissionManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ProxyBinderManager.init() returns "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (Retries "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ltmsdk/common/utils/Log;->w(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 151
    :cond_7
    const-string v2, "PermissionManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ProxyBinderManager.init() returns "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 155
    .end local v0           #r:I
    .end local v1           #retries:I
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Ltmsdkobf/hv;->cs()V

    .line 156
    invoke-static {v6}, Ltmsdkobf/ik;->aS(I)V

    throw v2

    .line 123
    .restart local v0       #r:I
    .restart local v1       #retries:I
    :catch_0
    move-exception v3

    goto/16 :goto_2
.end method

.method public isFinishInit()Z
    .locals 4

    .prologue
    .line 170
    invoke-virtual {p0}, Ltmsdkobf/hv;->ck()V

    .line 171
    iget-boolean v0, p0, Ltmsdkobf/hv;->mInitialized:Z

    .line 172
    .local v0, r:Z
    invoke-virtual {p0}, Ltmsdkobf/hv;->cl()V

    .line 173
    const-string v1, "PermissionManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFinishInit() returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    invoke-static {}, Ltmsdkobf/hv;->cq()V

    .line 175
    return v0
.end method

.method public isRidEnable(I)Z
    .locals 2
    .parameter "rid"

    .prologue
    .line 359
    invoke-virtual {p0}, Ltmsdkobf/hv;->ck()V

    .line 360
    iget-object v1, p0, Ltmsdkobf/hv;->qy:Ltmsdk/common/module/permission/RidEnableList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltmsdkobf/hv;->qy:Ltmsdk/common/module/permission/RidEnableList;

    invoke-virtual {v1, p1}, Ltmsdk/common/module/permission/RidEnableList;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 361
    .local v0, r:Z
    :goto_0
    invoke-virtual {p0}, Ltmsdkobf/hv;->cl()V

    .line 362
    return v0

    .line 360
    .end local v0           #r:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRidsEnable([I)Z
    .locals 3
    .parameter "rids"

    .prologue
    .line 372
    :try_start_0
    invoke-virtual {p0}, Ltmsdkobf/hv;->ck()V

    .line 373
    const/4 v1, 0x1

    .line 374
    .local v1, result:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 375
    aget v2, p1, v0

    invoke-virtual {p0, v2}, Ltmsdkobf/hv;->isRidEnable(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    and-int/2addr v1, v2

    .line 376
    if-nez v1, :cond_1

    .line 382
    :cond_0
    invoke-virtual {p0}, Ltmsdkobf/hv;->cl()V

    return v1

    .line 374
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 382
    .end local v0           #i:I
    .end local v1           #result:Z
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Ltmsdkobf/hv;->cl()V

    throw v2
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 65
    new-instance v0, Ltmsdkobf/hu;

    invoke-direct {v0, p1}, Ltmsdkobf/hu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltmsdkobf/hv;->qz:Ltmsdkobf/hu;

    .line 66
    new-instance v0, Ltmsdkobf/hy;

    invoke-direct {v0}, Ltmsdkobf/hy;-><init>()V

    invoke-static {v0}, Ltmsdkobf/ig;->a(Ltmsdkobf/ii;)V

    .line 67
    invoke-static {}, Ltmsdkobf/fr;->by()Ltmsdkobf/fr;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/hv;->qv:Ltmsdkobf/fr;

    .line 68
    return-void
.end method

.method public removePermissionTableItem(Ltmsdk/common/module/permission/PermissionTableItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 291
    const-string v0, "PermissionManagerImpl"

    const-string v1, "removePermissionTableItem()"

    invoke-static {v0, v1}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 292
    invoke-static {}, Ltmsdkobf/hv;->cq()V

    .line 294
    :try_start_0
    invoke-virtual {p0}, Ltmsdkobf/hv;->cr()V

    .line 295
    iget-object v0, p0, Ltmsdkobf/hv;->qx:Ltmsdk/common/module/permission/PermissionTable;

    invoke-virtual {v0, p1}, Ltmsdk/common/module/permission/PermissionTable;->removeItem(Ltmsdk/common/module/permission/PermissionTableItem;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    invoke-virtual {p0}, Ltmsdkobf/hv;->cs()V

    .line 299
    return-void

    .line 297
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ltmsdkobf/hv;->cs()V

    throw v0
.end method

.method public setPermissionTable(Ltmsdk/common/module/permission/PermissionTable;)V
    .locals 3
    .parameter "table"

    .prologue
    .line 245
    const-string v0, "PermissionManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPermissionTable() with table="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 246
    invoke-static {}, Ltmsdkobf/hv;->cq()V

    .line 248
    :try_start_0
    invoke-virtual {p0}, Ltmsdkobf/hv;->cr()V

    .line 249
    iget-object v0, p0, Ltmsdkobf/hv;->qx:Ltmsdk/common/module/permission/PermissionTable;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Ltmsdkobf/hv;->qx:Ltmsdk/common/module/permission/PermissionTable;

    invoke-virtual {v0}, Ltmsdk/common/module/permission/PermissionTable;->clear()V

    .line 252
    :cond_0
    iput-object p1, p0, Ltmsdkobf/hv;->qx:Ltmsdk/common/module/permission/PermissionTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    invoke-virtual {p0}, Ltmsdkobf/hv;->cs()V

    .line 257
    return-void

    .line 255
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ltmsdkobf/hv;->cs()V

    throw v0
.end method

.method public setRidEnables(Ltmsdk/common/module/permission/RidEnableList;)V
    .locals 0
    .parameter "ridenables"

    .prologue
    .line 340
    invoke-virtual {p0}, Ltmsdkobf/hv;->cr()V

    .line 341
    iput-object p1, p0, Ltmsdkobf/hv;->qy:Ltmsdk/common/module/permission/RidEnableList;

    .line 342
    invoke-virtual {p0}, Ltmsdkobf/hv;->cs()V

    .line 343
    return-void
.end method

.method public updatePermissionTable(III)V
    .locals 2
    .parameter "uid"
    .parameter "rid"
    .parameter "value"

    .prologue
    .line 309
    const-string v0, "PermissionManagerImpl"

    const-string v1, "updatePermissionTable()"

    invoke-static {v0, v1}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 310
    invoke-static {}, Ltmsdkobf/hv;->cq()V

    .line 312
    :try_start_0
    invoke-virtual {p0}, Ltmsdkobf/hv;->cr()V

    .line 313
    iget-object v0, p0, Ltmsdkobf/hv;->qx:Ltmsdk/common/module/permission/PermissionTable;

    invoke-virtual {v0, p1, p2, p3}, Ltmsdk/common/module/permission/PermissionTable;->update(III)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    invoke-virtual {p0}, Ltmsdkobf/hv;->cs()V

    .line 317
    return-void

    .line 315
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ltmsdkobf/hv;->cs()V

    throw v0
.end method

.method public updatePermissionTable(Ltmsdk/common/module/permission/PermissionTableItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 324
    const-string v0, "PermissionManagerImpl"

    const-string v1, "updatePermissionTable()"

    invoke-static {v0, v1}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 325
    invoke-static {}, Ltmsdkobf/hv;->cq()V

    .line 327
    :try_start_0
    invoke-virtual {p0}, Ltmsdkobf/hv;->cr()V

    .line 328
    iget-object v0, p0, Ltmsdkobf/hv;->qx:Ltmsdk/common/module/permission/PermissionTable;

    invoke-virtual {v0, p1}, Ltmsdk/common/module/permission/PermissionTable;->update(Ltmsdk/common/module/permission/PermissionTableItem;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    invoke-virtual {p0}, Ltmsdkobf/hv;->cs()V

    .line 332
    return-void

    .line 330
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ltmsdkobf/hv;->cs()V

    throw v0
.end method
