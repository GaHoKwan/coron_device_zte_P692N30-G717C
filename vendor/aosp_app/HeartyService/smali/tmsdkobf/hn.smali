.class public final Ltmsdkobf/hn;
.super Ltmsdk/bg/creator/BaseManagerB;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdkobf/hn$a;
    }
.end annotation


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final pT:Landroid/net/Uri;

.field private final pU:Landroid/net/Uri;

.field private final pV:Landroid/net/Uri;

.field private pW:Landroid/net/wifi/WifiManager;

.field private pX:Landroid/bluetooth/BluetoothAdapter;

.field private pY:Landroid/net/ConnectivityManager;

.field private final pZ:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 37
    invoke-direct {p0}, Ltmsdk/bg/creator/BaseManagerB;-><init>()V

    .line 55
    const-string v0, "content://telephony/carriers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/hn;->pT:Landroid/net/Uri;

    .line 56
    const-string v0, "content://telephony/carriers/current"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/hn;->pU:Landroid/net/Uri;

    .line 57
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/hn;->pV:Landroid/net/Uri;

    .line 65
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "apn"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "type"

    aput-object v2, v0, v1

    iput-object v0, p0, Ltmsdkobf/hn;->pZ:[Ljava/lang/String;

    .line 481
    return-void
.end method

.method private be(Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltmsdkobf/hn$a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltmsdk/common/exception/OperationSecurityException;
        }
    .end annotation

    .prologue
    .line 494
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "apn"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "type"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "current"

    aput-object v1, v2, v0

    .line 495
    .local v2, projection:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 496
    .local v9, cursor:Landroid/database/Cursor;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 498
    .local v12, list:Ljava/util/List;,"Ljava/util/List<Ltmsdkobf/hn$a;>;"
    :try_start_0
    iget-object v0, p0, Ltmsdkobf/hn;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Ltmsdkobf/hn;->pT:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 499
    if-nez v9, :cond_1

    .line 533
    :cond_0
    :goto_0
    return-object v12

    .line 502
    :cond_1
    const-string v0, "_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 503
    .local v11, id_index:I
    const-string v0, "type"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 504
    .local v13, type_index:I
    const-string v0, "current"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 505
    .local v8, current_index:I
    const-string v0, "apn"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 507
    .local v7, apn_index:I
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 508
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 509
    new-instance v6, Ltmsdkobf/hn$a;

    invoke-direct {v6}, Ltmsdkobf/hn$a;-><init>()V

    .line 511
    .local v6, apn:Ltmsdkobf/hn$a;
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Ltmsdkobf/hn$a;->id:Ljava/lang/String;

    .line 512
    invoke-interface {v9, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Ltmsdkobf/hn$a;->apn:Ljava/lang/String;

    .line 513
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Ltmsdkobf/hn$a;->type:Ljava/lang/String;

    .line 514
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Ltmsdkobf/hn$a;->current:Ljava/lang/String;

    .line 516
    iget-object v0, v6, Ltmsdkobf/hn$a;->current:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, v6, Ltmsdkobf/hn$a;->current:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v6, Ltmsdkobf/hn$a;->apn:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, v6, Ltmsdkobf/hn$a;->apn:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v6, Ltmsdkobf/hn$a;->type:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, v6, Ltmsdkobf/hn$a;->type:Ljava/lang/String;

    invoke-direct {p0, v0}, Ltmsdkobf/hn;->bf(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 518
    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 524
    .end local v6           #apn:Ltmsdkobf/hn$a;
    .end local v7           #apn_index:I
    .end local v8           #current_index:I
    .end local v11           #id_index:I
    .end local v13           #type_index:I
    :catch_0
    move-exception v10

    .line 525
    .local v10, e:Ljava/lang/SecurityException;
    invoke-virtual {v10}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 526
    new-instance v0, Ltmsdk/common/exception/OperationSecurityException;

    invoke-direct {v0, v10}, Ltmsdk/common/exception/OperationSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 529
    .end local v10           #e:Ljava/lang/SecurityException;
    .restart local v7       #apn_index:I
    .restart local v8       #current_index:I
    .restart local v11       #id_index:I
    .restart local v13       #type_index:I
    :cond_3
    if-eqz v9, :cond_0

    .line 530
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private bf(Ljava/lang/String;)Z
    .locals 2
    .parameter "type"

    .prologue
    .line 543
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private bg(Ljava/lang/String;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 553
    if-eqz p1, :cond_0

    const-string v0, "_suffix_apn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cg()Landroid/bluetooth/BluetoothAdapter;
    .locals 9

    .prologue
    .line 88
    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 90
    .local v4, result:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Landroid/bluetooth/BluetoothAdapter;>;"
    new-instance v1, Ltmsdkobf/hn$1;

    invoke-direct {v1, p0, v4}, Ltmsdkobf/hn$1;-><init>(Ltmsdkobf/hn;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 101
    .local v1, getBluetoothAdapter:Ljava/lang/Runnable;
    invoke-static {}, Ltmsdkobf/ig;->cN()Ltmsdkobf/ij;

    move-result-object v5

    const-string v6, "getBluetoothAdapter"

    invoke-virtual {v5, v6}, Ltmsdkobf/ij;->bj(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v2

    .line 102
    .local v2, getBluetoothAdapterThread:Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 104
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 105
    .local v3, handler:Landroid/os/Handler;
    invoke-virtual {v3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 108
    :try_start_0
    const-class v6, Ltmsdkobf/hn;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :try_start_1
    const-class v5, Ltmsdkobf/hn;

    const-wide/16 v7, 0xbb8

    invoke-virtual {v5, v7, v8}, Ljava/lang/Object;->wait(J)V

    .line 110
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :goto_0
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Looper;->quit()V

    .line 118
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothAdapter;

    return-object v5

    .line 110
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private ch()Z
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Ltmsdkobf/hn;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 285
    const/4 v0, 0x1

    .line 287
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ci()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 310
    :try_start_0
    iget-object v2, p0, Ltmsdkobf/hn;->pY:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getMobileDataEnabled"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 311
    .local v1, method:Ljava/lang/reflect/Method;
    iget-object v2, p0, Ltmsdkobf/hn;->pY:Landroid/net/ConnectivityManager;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v2

    .line 321
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return v2

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .end local v0           #e:Ljava/lang/SecurityException;
    :goto_1
    move v2, v3

    .line 321
    goto :goto_0

    .line 314
    :catch_1
    move-exception v0

    .line 315
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 316
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 317
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 318
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 319
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

.method private j(Z)Z
    .locals 10
    .parameter "enabled"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 257
    invoke-direct {p0}, Ltmsdkobf/hn;->ch()Z

    move-result v8

    if-ne v8, p1, :cond_0

    .line 279
    :goto_0
    return v6

    .line 264
    :cond_0
    :try_start_0
    iget-object v8, p0, Ltmsdkobf/hn;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 265
    .local v5, telephonyManagerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v8, "getITelephony"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v5, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 266
    .local v4, getITelephonyMethod:Ljava/lang/reflect/Method;
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 267
    iget-object v8, p0, Ltmsdkobf/hn;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v4, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 268
    .local v1, ITelephonyStub:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 269
    .local v0, ITelephonyClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz p1, :cond_1

    .line 270
    const-string v8, "enableDataConnectivity"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v0, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 274
    .local v2, dataConnSwitchmethod:Ljava/lang/reflect/Method;
    :goto_1
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 275
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 277
    .end local v0           #ITelephonyClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #ITelephonyStub:Ljava/lang/Object;
    .end local v2           #dataConnSwitchmethod:Ljava/lang/reflect/Method;
    .end local v4           #getITelephonyMethod:Ljava/lang/reflect/Method;
    .end local v5           #telephonyManagerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v3

    .line 278
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move v6, v7

    .line 279
    goto :goto_0

    .line 272
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v0       #ITelephonyClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v1       #ITelephonyStub:Ljava/lang/Object;
    .restart local v4       #getITelephonyMethod:Ljava/lang/reflect/Method;
    .restart local v5       #telephonyManagerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1
    :try_start_1
    const-string v8, "disableDataConnectivity"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v0, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .restart local v2       #dataConnSwitchmethod:Ljava/lang/reflect/Method;
    goto :goto_1
.end method

.method private k(Z)Z
    .locals 9
    .parameter "enabled"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 293
    :try_start_0
    iget-object v4, p0, Ltmsdkobf/hn;->pY:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "setMobileDataEnabled"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 294
    .local v1, method:Ljava/lang/reflect/Method;
    iget-object v4, p0, Ltmsdkobf/hn;->pY:Landroid/net/ConnectivityManager;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 305
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return v2

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .end local v0           #e:Ljava/lang/SecurityException;
    :goto_1
    move v2, v3

    .line 305
    goto :goto_0

    .line 298
    :catch_1
    move-exception v0

    .line 299
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 300
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 301
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 302
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 303
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public disableBluetooth()Z
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Ltmsdkobf/hn;->pX:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 210
    const/4 v0, 0x0

    .line 215
    :goto_0
    return v0

    .line 212
    :cond_0
    iget-object v0, p0, Ltmsdkobf/hn;->pX:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 213
    const/4 v0, 0x1

    goto :goto_0

    .line 215
    :cond_1
    iget-object v0, p0, Ltmsdkobf/hn;->pX:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v0

    goto :goto_0
.end method

.method public enableBluetooth()Z
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Ltmsdkobf/hn;->pX:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 197
    const/4 v0, 0x0

    .line 202
    :goto_0
    return v0

    .line 199
    :cond_0
    iget-object v0, p0, Ltmsdkobf/hn;->pX:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    const/4 v0, 0x1

    goto :goto_0

    .line 202
    :cond_1
    iget-object v0, p0, Ltmsdkobf/hn;->pX:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    goto :goto_0
.end method

.method public getAPNType(Ljava/lang/String;)I
    .locals 2
    .parameter "apnname"

    .prologue
    .line 374
    const/4 v0, -0x1

    .line 376
    .local v0, result:I
    invoke-static {p1}, Ltmsdkobf/hk;->aZ(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 377
    const/4 v0, 0x0

    .line 382
    :cond_0
    :goto_0
    return v0

    .line 378
    :cond_1
    invoke-static {p1}, Ltmsdkobf/hk;->ba(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getApnState()Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltmsdk/common/exception/OperationSecurityException;
        }
    .end annotation

    .prologue
    .line 401
    const/4 v9, 0x0

    .line 402
    .local v9, result:Z
    const/4 v6, 0x0

    .line 403
    .local v6, counter:I
    const/4 v7, 0x0

    .line 405
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Ltmsdkobf/hn;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Ltmsdkobf/hn;->pU:Landroid/net/Uri;

    iget-object v2, p0, Ltmsdkobf/hn;->pZ:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 406
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    const-string v0, "type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 410
    .local v11, typeIndex:I
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 411
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 413
    .local v10, type:Ljava/lang/String;
    if-nez v10, :cond_0

    .line 414
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 436
    .end local v10           #type:Ljava/lang/String;
    .end local v11           #typeIndex:I
    :catch_0
    move-exception v8

    .line 437
    .local v8, e:Ljava/lang/SecurityException;
    invoke-virtual {v8}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 438
    new-instance v0, Ltmsdk/common/exception/OperationSecurityException;

    invoke-direct {v0, v8}, Ltmsdk/common/exception/OperationSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 419
    .end local v8           #e:Ljava/lang/SecurityException;
    .restart local v10       #type:Ljava/lang/String;
    .restart local v11       #typeIndex:I
    :cond_0
    :try_start_1
    invoke-direct {p0, v10}, Ltmsdkobf/hn;->bg(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    .line 420
    const/4 v9, 0x0

    .line 441
    .end local v10           #type:Ljava/lang/String;
    .end local v11           #typeIndex:I
    :cond_1
    :goto_1
    if-eqz v7, :cond_2

    .line 442
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 445
    :cond_2
    return v9

    .line 422
    .restart local v10       #type:Ljava/lang/String;
    .restart local v11       #typeIndex:I
    :cond_3
    :try_start_2
    invoke-direct {p0, v10}, Ltmsdkobf/hn;->bf(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 423
    add-int/lit8 v6, v6, 0x1

    .line 427
    :cond_4
    if-lez v6, :cond_5

    .line 428
    const/4 v9, 0x1

    .line 429
    goto :goto_1

    .line 432
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public getBluetoothState()I
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Ltmsdkobf/hn;->pX:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 225
    const/4 v0, -0x1

    .line 227
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ltmsdkobf/hn;->pX:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    goto :goto_0
.end method

.method public getCurUsedApn()Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltmsdk/common/exception/OperationSecurityException;
        }
    .end annotation

    .prologue
    .line 343
    const/4 v10, 0x0

    .line 344
    .local v10, result:Ljava/lang/String;
    const/4 v7, 0x0

    .line 346
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Ltmsdkobf/hn;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Ltmsdkobf/hn;->pV:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 348
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    const-string v0, "apn"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 350
    .local v9, index:I
    const/4 v6, 0x0

    .line 352
    .local v6, apn:Ljava/lang/String;
    const/4 v0, -0x1

    if-eq v9, v0, :cond_0

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    invoke-static {v6}, Ltmsdkobf/hk;->aY(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 361
    .end local v6           #apn:Ljava/lang/String;
    .end local v9           #index:I
    :cond_0
    if-eqz v7, :cond_1

    .line 362
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 365
    :cond_1
    return-object v10

    .line 356
    :catch_0
    move-exception v8

    .line 357
    .local v8, e:Ljava/lang/SecurityException;
    invoke-virtual {v8}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 358
    new-instance v0, Ltmsdk/common/exception/OperationSecurityException;

    invoke-direct {v0, v8}, Ltmsdk/common/exception/OperationSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getCurUsedApnType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltmsdk/common/exception/OperationSecurityException;
        }
    .end annotation

    .prologue
    .line 392
    invoke-virtual {p0}, Ltmsdkobf/hn;->getCurUsedApn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltmsdkobf/hn;->getAPNType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMobileDataConnectivity()Z
    .locals 2

    .prologue
    .line 249
    invoke-static {}, Ltmsdk/common/utils/SDKUtil;->getSDKVersion()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    .line 250
    invoke-direct {p0}, Ltmsdkobf/hn;->ci()Z

    move-result v0

    .line 252
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Ltmsdkobf/hn;->ch()Z

    move-result v0

    goto :goto_0
.end method

.method public getSingletonType()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public getWifiRssi()I
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Ltmsdkobf/hn;->pW:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 175
    const/4 v0, -0x1

    .line 177
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ltmsdkobf/hn;->pW:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    goto :goto_0
.end method

.method public getWifiState()I
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Ltmsdkobf/hn;->pW:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 163
    const/4 v0, 0x4

    .line 165
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ltmsdkobf/hn;->pW:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    goto :goto_0
.end method

.method public isBluetoothEnabled()Z
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Ltmsdkobf/hn;->pX:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 187
    const/4 v0, 0x0

    .line 189
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ltmsdkobf/hn;->pX:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public isMobileDataConnectivityActive()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 330
    iget-object v2, p0, Ltmsdkobf/hn;->pY:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 331
    .local v0, info:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v3, :cond_1

    .line 334
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isWifiActive()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 127
    iget-object v3, p0, Ltmsdkobf/hn;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 128
    .local v1, mg:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 129
    .local v0, activeNetInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isWifiEnabled()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Ltmsdkobf/hn;->pW:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 139
    const/4 v0, 0x0

    .line 141
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ltmsdkobf/hn;->pW:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 74
    iput-object p1, p0, Ltmsdkobf/hn;->mContext:Landroid/content/Context;

    .line 75
    iget-object v0, p0, Ltmsdkobf/hn;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/hn;->mContentResolver:Landroid/content/ContentResolver;

    .line 76
    iget-object v0, p0, Ltmsdkobf/hn;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Ltmsdkobf/hn;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 77
    iget-object v0, p0, Ltmsdkobf/hn;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Ltmsdkobf/hn;->pW:Landroid/net/wifi/WifiManager;

    .line 78
    invoke-direct {p0}, Ltmsdkobf/hn;->cg()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/hn;->pX:Landroid/bluetooth/BluetoothAdapter;

    .line 79
    iget-object v0, p0, Ltmsdkobf/hn;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Ltmsdkobf/hn;->pY:Landroid/net/ConnectivityManager;

    .line 80
    return-void
.end method

.method public setMobileDataConnectivity(Z)Z
    .locals 2
    .parameter "enabled"

    .prologue
    .line 236
    invoke-static {}, Ltmsdk/common/utils/SDKUtil;->getSDKVersion()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    .line 237
    invoke-direct {p0, p1}, Ltmsdkobf/hn;->k(Z)Z

    move-result v0

    .line 239
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Ltmsdkobf/hn;->j(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public setWifiEnabled(Z)Z
    .locals 1
    .parameter "enabled"

    .prologue
    .line 150
    iget-object v0, p0, Ltmsdkobf/hn;->pW:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 151
    const/4 v0, 0x0

    .line 153
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ltmsdkobf/hn;->pW:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public switchTo(I)Z
    .locals 10
    .parameter "apntype"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltmsdk/common/exception/OperationSecurityException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 454
    const/4 v5, 0x0

    .line 455
    .local v5, result:Z
    invoke-virtual {p0}, Ltmsdkobf/hn;->getCurUsedApn()Ljava/lang/String;

    move-result-object v2

    .line 456
    .local v2, apnname:Ljava/lang/String;
    invoke-virtual {p0, v2}, Ltmsdkobf/hn;->getAPNType(Ljava/lang/String;)I

    move-result v3

    .line 458
    .local v3, cur_type:I
    if-eq v3, p1, :cond_0

    const/4 v7, -0x1

    if-eq p1, v7, :cond_0

    invoke-static {}, Ltmsdk/common/utils/SDKUtil;->getSDKVersion()I

    move-result v7

    const/16 v8, 0xe

    if-ge v7, v8, :cond_0

    .line 459
    if-nez p1, :cond_1

    const-string v4, "net"

    .line 460
    .local v4, keyword:Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v4}, Ltmsdkobf/hn;->be(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 462
    .local v1, apnlist:Ljava/util/List;,"Ljava/util/List<Ltmsdkobf/hn$a;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 463
    const/4 v7, 0x0

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdkobf/hn$a;

    .line 465
    .local v0, apn:Ltmsdkobf/hn$a;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 466
    .local v6, values:Landroid/content/ContentValues;
    const-string v7, "apn_id"

    iget-object v8, v0, Ltmsdkobf/hn$a;->id:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object v7, p0, Ltmsdkobf/hn;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v8, p0, Ltmsdkobf/hn;->pV:Landroid/net/Uri;

    invoke-virtual {v7, v8, v6, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 469
    const/4 v5, 0x1

    .line 473
    .end local v0           #apn:Ltmsdkobf/hn$a;
    .end local v1           #apnlist:Ljava/util/List;,"Ljava/util/List<Ltmsdkobf/hn$a;>;"
    .end local v4           #keyword:Ljava/lang/String;
    .end local v6           #values:Landroid/content/ContentValues;
    :cond_0
    return v5

    .line 459
    :cond_1
    const-string v4, "wap"

    goto :goto_0
.end method
