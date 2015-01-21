.class public final Lcom/nuance/a/a/a/c/a/d;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:I

.field private static final d:Lcom/nuance/a/a/a/a/b/a/b$a;


# instance fields
.field private e:Landroid/content/Context;

.field private f:Z

.field private g:Lcom/nuance/a/a/a/c/a/c;

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/Object;

.field private final k:Lcom/nuance/a/a/a/c/a/e;

.field private l:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/nuance/a/a/a/c/a/b;

    invoke-static {v0}, Lcom/nuance/a/a/a/a/b/a/b;->a(Ljava/lang/Class;)Lcom/nuance/a/a/a/a/b/a/b$a;

    move-result-object v0

    sput-object v0, Lcom/nuance/a/a/a/c/a/d;->d:Lcom/nuance/a/a/a/a/b/a/b$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12

    const/4 v0, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nuance/a/a/a/c/a/d;->g:Lcom/nuance/a/a/a/c/a/c;

    iput-boolean v4, p0, Lcom/nuance/a/a/a/c/a/d;->h:Z

    iput-boolean v4, p0, Lcom/nuance/a/a/a/c/a/d;->i:Z

    iput-object v0, p0, Lcom/nuance/a/a/a/c/a/d;->j:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nuance/a/a/a/c/a/d;->l:Ljava/lang/Object;

    iput-object p1, p0, Lcom/nuance/a/a/a/c/a/d;->e:Landroid/content/Context;

    new-instance v0, Lcom/nuance/a/a/a/c/a/e;

    invoke-direct {v0}, Lcom/nuance/a/a/a/c/a/e;-><init>()V

    iput-object v0, p0, Lcom/nuance/a/a/a/c/a/d;->k:Lcom/nuance/a/a/a/c/a/e;

    sget v0, Lcom/nuance/a/a/a/c/a/a;->a:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_4

    iput-boolean v3, p0, Lcom/nuance/a/a/a/c/a/d;->f:Z

    sget-object v0, Lcom/nuance/a/a/a/c/a/c;->b:Ljava/lang/String;

    sput-object v0, Lcom/nuance/a/a/a/c/a/d;->a:Ljava/lang/String;

    sget-object v0, Lcom/nuance/a/a/a/c/a/c;->d:Ljava/lang/String;

    sput-object v0, Lcom/nuance/a/a/a/c/a/d;->b:Ljava/lang/String;

    sget v0, Lcom/nuance/a/a/a/c/a/c;->j:I

    sput v0, Lcom/nuance/a/a/a/c/a/d;->c:I

    new-instance v0, Lcom/nuance/a/a/a/c/a/d$1;

    invoke-direct {v0, p0}, Lcom/nuance/a/a/a/c/a/d$1;-><init>(Lcom/nuance/a/a/a/c/a/d;)V

    iget-object v1, p0, Lcom/nuance/a/a/a/c/a/d;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v4, Lcom/nuance/a/a/a/c/a/c;

    iget-object v5, p0, Lcom/nuance/a/a/a/c/a/d;->e:Landroid/content/Context;

    invoke-direct {v4, v5, v0}, Lcom/nuance/a/a/a/c/a/c;-><init>(Landroid/content/Context;Lcom/nuance/a/a/a/c/a/c$a;)V

    iput-object v4, p0, Lcom/nuance/a/a/a/c/a/d;->g:Lcom/nuance/a/a/a/c/a/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/nuance/a/a/a/c/a/d;->l:Ljava/lang/Object;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    iget-boolean v0, p0, Lcom/nuance/a/a/a/c/a/d;->i:Z

    if-nez v0, :cond_3

    sget-object v0, Lcom/nuance/a/a/a/c/a/d;->d:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/nuance/a/a/a/c/a/d;->d:Lcom/nuance/a/a/a/a/b/a/b$a;

    const-string v2, "BluetoothHeadsetOEM reflected service NOT connected in time. Gave up!!!"

    invoke-virtual {v0, v2}, Lcom/nuance/a/a/a/a/b/a/b$a;->e(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/a/a/a/c/a/d;->h:Z

    invoke-direct {p0}, Lcom/nuance/a/a/a/c/a/d;->d()V

    :cond_2
    :goto_1
    monitor-exit v1

    :goto_2
    return-void

    :catch_0
    move-exception v0

    sget-object v4, Lcom/nuance/a/a/a/c/a/d;->d:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v4}, Lcom/nuance/a/a/a/a/b/a/b$a;->e()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/nuance/a/a/a/c/a/d;->d:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "BluetoothHeadsetOEM reflected mHeadsetSyncObj.wait() threw exception:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->e(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    :try_start_3
    sget-object v0, Lcom/nuance/a/a/a/c/a/d;->d:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/nuance/a/a/a/c/a/d;->d:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "BluetoothHeadsetOEM reflected service connection took "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v2, v5, v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nuance/a/a/a/a/b/a/b$a;->c(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_4
    iput-boolean v4, p0, Lcom/nuance/a/a/a/c/a/d;->f:Z

    iget-object v0, p0, Lcom/nuance/a/a/a/c/a/d;->k:Lcom/nuance/a/a/a/c/a/e;

    const-string v0, "android.bluetooth.BluetoothHeadset"

    invoke-static {v0}, Lcom/nuance/a/a/a/c/a/e;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iget-object v0, p0, Lcom/nuance/a/a/a/c/a/d;->k:Lcom/nuance/a/a/a/c/a/e;

    const-string v0, "ACTION_AUDIO_STATE_CHANGED"

    invoke-static {v1, v0}, Lcom/nuance/a/a/a/c/a/e;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/nuance/a/a/a/c/a/d;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/a/a/a/c/a/d;->k:Lcom/nuance/a/a/a/c/a/e;

    const-string v0, "EXTRA_STATE"

    invoke-static {v1, v0}, Lcom/nuance/a/a/a/c/a/e;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/nuance/a/a/a/c/a/d;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/a/a/a/c/a/d;->k:Lcom/nuance/a/a/a/c/a/e;

    const-string v0, "STATE_AUDIO_CONNECTED"

    invoke-static {v1, v0}, Lcom/nuance/a/a/a/c/a/e;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/nuance/a/a/a/c/a/d;->c:I

    sget v0, Lcom/nuance/a/a/a/c/a/a;->a:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_5

    sget v0, Lcom/nuance/a/a/a/c/a/a;->a:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_5

    sget v0, Lcom/nuance/a/a/a/c/a/a;->a:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_7

    :cond_5
    new-array v0, v2, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/nuance/a/a/a/c/a/d$2;

    invoke-direct {v2, v0}, Lcom/nuance/a/a/a/c/a/d$2;-><init>([Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_3
    aget-object v1, v0, v4

    if-nez v1, :cond_6

    const-wide/16 v1, 0xa

    :try_start_4
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_3

    :cond_6
    aget-object v0, v0, v3

    check-cast v0, Landroid/bluetooth/BluetoothAdapter;

    move-object v1, v0

    :goto_4
    iget-object v0, p0, Lcom/nuance/a/a/a/c/a/d;->k:Lcom/nuance/a/a/a/c/a/e;

    const-string v0, "android.bluetooth.BluetoothProfile$ServiceListener"

    invoke-static {v0}, Lcom/nuance/a/a/a/c/a/e;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Class;

    aput-object v2, v3, v4

    new-instance v4, Lcom/nuance/a/a/a/c/a/d$3;

    invoke-direct {v4, p0}, Lcom/nuance/a/a/a/c/a/d$3;-><init>(Lcom/nuance/a/a/a/c/a/d;)V

    invoke-static {v0, v3, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/a/a/a/c/a/d;->l:Ljava/lang/Object;

    monitor-enter v4

    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v0, p0, Lcom/nuance/a/a/a/c/a/d;->k:Lcom/nuance/a/a/a/c/a/e;

    const-string v0, "android.bluetooth.BluetoothProfile"

    invoke-static {v0}, Lcom/nuance/a/a/a/c/a/e;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    iget-object v0, p0, Lcom/nuance/a/a/a/c/a/d;->k:Lcom/nuance/a/a/a/c/a/e;

    const-string v0, "android.bluetooth.BluetoothAdapter"

    invoke-static {v0}, Lcom/nuance/a/a/a/c/a/e;->a(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v8

    :try_start_6
    iget-object v0, p0, Lcom/nuance/a/a/a/c/a/d;->k:Lcom/nuance/a/a/a/c/a/e;

    const-string v0, "isEnabled"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-static {v8, v0, v9}, Lcom/nuance/a/a/a/c/a/e;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-result v0

    if-nez v0, :cond_8

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_7
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    move-object v1, v0

    goto :goto_4

    :catch_2
    move-exception v0

    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    iget-object v0, p0, Lcom/nuance/a/a/a/c/a/d;->k:Lcom/nuance/a/a/a/c/a/e;

    const-string v0, "getProfileProxy"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v2, v9, v10

    const/4 v2, 0x2

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v2

    invoke-static {v8, v0, v9}, Lcom/nuance/a/a/a/c/a/e;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v0

    const/4 v2, 0x3

    :try_start_9
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v2, v8

    const/4 v8, 0x1

    aput-object v3, v2, v8

    const/4 v3, 0x2

    iget-object v8, p0, Lcom/nuance/a/a/a/c/a/d;->k:Lcom/nuance/a/a/a/c/a/e;

    const-string v8, "HEADSET"

    invoke-static {v7, v8}, Lcom/nuance/a/a/a/c/a/e;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    :goto_5
    :try_start_a
    iget-object v0, p0, Lcom/nuance/a/a/a/c/a/d;->l:Ljava/lang/Object;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_4

    :cond_9
    :goto_6
    :try_start_b
    iget-boolean v0, p0, Lcom/nuance/a/a/a/c/a/d;->i:Z

    if-nez v0, :cond_c

    sget-object v0, Lcom/nuance/a/a/a/c/a/d;->d:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->e()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/nuance/a/a/a/c/a/d;->d:Lcom/nuance/a/a/a/a/b/a/b$a;

    const-string v1, "BluetoothHeadsetOEM native service NOT connected in time. Gave up!!!"

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->e(Ljava/lang/Object;)V

    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/a/a/a/c/a/d;->h:Z

    :cond_b
    :goto_7
    monitor-exit v4

    goto/16 :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :catch_4
    move-exception v0

    sget-object v1, Lcom/nuance/a/a/a/c/a/d;->d:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->e()Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lcom/nuance/a/a/a/c/a/d;->d:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BluetoothHeadsetOEM native mHeadsetSyncObj.wait() threw exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->e(Ljava/lang/Object;)V

    goto :goto_6

    :cond_c
    sget-object v0, Lcom/nuance/a/a/a/c/a/d;->d:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->c()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/nuance/a/a/a/c/a/d;->d:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BluetoothHeadsetOEM native service connection took "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->c(Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_7
.end method

.method static synthetic a(Lcom/nuance/a/a/a/c/a/d;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nuance/a/a/a/c/a/d;->l:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/nuance/a/a/a/c/a/d;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/nuance/a/a/a/c/a/d;->j:Ljava/lang/Object;

    return-object p1
.end method

.method private a(Ljava/lang/Object;)V
    .locals 7

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/nuance/a/a/a/c/a/d;->k:Lcom/nuance/a/a/a/c/a/e;

    const-string v0, "android.bluetooth.BluetoothProfile"

    invoke-static {v0}, Lcom/nuance/a/a/a/c/a/e;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/a/a/a/c/a/d;->k:Lcom/nuance/a/a/a/c/a/e;

    const-string v1, "android.bluetooth.BluetoothAdapter"

    invoke-static {v1}, Lcom/nuance/a/a/a/c/a/e;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/a/a/a/c/a/d;->k:Lcom/nuance/a/a/a/c/a/e;

    const-string v2, "closeProfileProxy"

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Lcom/nuance/a/a/a/c/a/e;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    const/4 v3, 0x2

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nuance/a/a/a/c/a/d;->k:Lcom/nuance/a/a/a/c/a/e;

    const-string v5, "HEADSET"

    invoke-static {v0, v5}, Lcom/nuance/a/a/a/c/a/e;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object p1, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/nuance/a/a/a/c/a/d;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/a/a/a/c/a/d;->a(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcom/nuance/a/a/a/c/a/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/a/a/a/c/a/d;->h:Z

    return v0
.end method

.method static synthetic c()Lcom/nuance/a/a/a/a/b/a/b$a;
    .locals 1

    sget-object v0, Lcom/nuance/a/a/a/c/a/d;->d:Lcom/nuance/a/a/a/a/b/a/b$a;

    return-object v0
.end method

.method static synthetic c(Lcom/nuance/a/a/a/c/a/d;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/a/a/a/c/a/d;->i:Z

    return v0
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/a/a/a/c/a/d;->g:Lcom/nuance/a/a/a/c/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/a/a/a/c/a/d;->g:Lcom/nuance/a/a/a/c/a/c;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/c/a/c;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/a/a/a/c/a/d;->g:Lcom/nuance/a/a/a/c/a/c;

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/nuance/a/a/a/c/a/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/a/a/a/c/a/d;->d()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/bluetooth/BluetoothDevice;
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/nuance/a/a/a/c/a/d;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/a/a/a/c/a/d;->g:Lcom/nuance/a/a/a/c/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/a/a/a/c/a/d;->g:Lcom/nuance/a/a/a/c/a/c;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/c/a/c;->a()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/nuance/a/a/a/c/a/d;->f:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/a/a/a/c/a/d;->j:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/a/a/a/c/a/d;->k:Lcom/nuance/a/a/a/c/a/e;

    const-string v0, "android.bluetooth.BluetoothProfile"

    invoke-static {v0}, Lcom/nuance/a/a/a/c/a/e;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/a/a/a/c/a/d;->k:Lcom/nuance/a/a/a/c/a/e;

    const-string v2, "getConnectedDevices"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-static {v0, v2, v3}, Lcom/nuance/a/a/a/c/a/e;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Lcom/nuance/a/a/a/c/a/d;->j:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/a/a/a/c/a/d;->f:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/nuance/a/a/a/c/a/d;->d()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/a/a/a/c/a/d;->j:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/a/a/a/c/a/d;->j:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/nuance/a/a/a/c/a/d;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/a/a/a/c/a/d;->j:Ljava/lang/Object;

    goto :goto_0
.end method
