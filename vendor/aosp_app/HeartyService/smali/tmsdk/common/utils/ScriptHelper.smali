.class public final Ltmsdk/common/utils/ScriptHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdk/common/utils/ScriptHelper$Callback;,
        Ltmsdk/common/utils/ScriptHelper$b;,
        Ltmsdk/common/utils/ScriptHelper$a;
    }
.end annotation


# static fields
.field private static final El:Ljava/lang/String; = null

.field private static final Em:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field private static final En:Z = false

.field private static Eo:Z = false

.field private static Ep:Ljava/lang/Object; = null

.field private static Eq:Ltmsdkobf/ln; = null

.field public static final ROOT_GOT:I = 0x0

.field public static final ROOT_NOT_GOT:I = 0x2

.field public static final ROOT_NOT_SUPPORT:I = 0x1

.field public static final ROOT_NO_RESPOND:I = -0x1

.field public static final isSuExist:Z

.field public static sCurrRootState:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 35
    const-string v0, "athena_name"

    invoke-static {v0}, Ltmsdk/common/TMSDKContext;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltmsdk/common/utils/ScriptHelper;->El:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ltmsdk/common/utils/ScriptHelper;->El:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltmsdk/common/utils/ScriptHelper;->Em:Ljava/lang/String;

    .line 38
    const-string v0, "/system/bin/su"

    invoke-static {v0}, Ltmsdkobf/jv;->bZ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/system/xbin/su"

    invoke-static {v0}, Ltmsdkobf/jv;->bZ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/sbin/su"

    invoke-static {v0}, Ltmsdkobf/jv;->bZ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ltmsdk/common/utils/ScriptHelper;->isSuExist:Z

    .line 39
    new-instance v0, Ljava/io/File;

    const-string v2, "/dev/socket/script_socket"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Ltmsdk/common/utils/ScriptHelper;->En:Z

    .line 47
    const/4 v0, 0x2

    sput v0, Ltmsdk/common/utils/ScriptHelper;->sCurrRootState:I

    .line 49
    sput-boolean v1, Ltmsdk/common/utils/ScriptHelper;->Eo:Z

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ltmsdk/common/utils/ScriptHelper;->Ep:Ljava/lang/Object;

    .line 582
    const/4 v0, 0x0

    sput-object v0, Ltmsdk/common/utils/ScriptHelper;->Eq:Ltmsdkobf/ln;

    return-void

    :cond_1
    move v0, v1

    .line 38
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    return-void
.end method

.method private static declared-synchronized a(Ltmsdk/common/utils/ScriptHelper$a;Z)Ltmsdk/common/utils/ScriptHelper$b;
    .locals 11
    .parameter "request"
    .parameter "failRetry"

    .prologue
    .line 258
    const-class v8, Ltmsdk/common/utils/ScriptHelper;

    monitor-enter v8

    :try_start_0
    new-instance v6, Landroid/net/LocalSocket;

    invoke-direct {v6}, Landroid/net/LocalSocket;-><init>()V

    .line 260
    .local v6, socket:Landroid/net/LocalSocket;
    const/4 v4, 0x0

    .line 261
    .local v4, os:Ljava/io/OutputStream;
    const/4 v3, 0x0

    .line 262
    .local v3, is:Ljava/io/InputStream;
    new-instance v5, Ltmsdk/common/utils/ScriptHelper$b;

    invoke-direct {v5}, Ltmsdk/common/utils/ScriptHelper$b;-><init>()V

    .line 265
    .local v5, respond:Ltmsdk/common/utils/ScriptHelper$b;
    sget-boolean v7, Ltmsdk/common/utils/ScriptHelper;->En:Z

    if-eqz v7, :cond_3

    .line 266
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v7, "/dev/socket/script_socket"

    sget-object v9, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v7, v9}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 274
    .local v0, address:Landroid/net/LocalSocketAddress;
    :goto_0
    :try_start_1
    invoke-virtual {v6, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 287
    :cond_0
    :try_start_2
    invoke-virtual {v6}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 288
    invoke-virtual {v6}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 289
    invoke-virtual {p0, v4}, Ltmsdk/common/utils/ScriptHelper$a;->writeToStream(Ljava/io/OutputStream;)V

    .line 290
    invoke-virtual {v5, v3}, Ltmsdk/common/utils/ScriptHelper$b;->c(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    .line 297
    if-eqz v4, :cond_1

    .line 299
    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 303
    :goto_1
    const/4 v4, 0x0

    .line 305
    :cond_1
    if-eqz v3, :cond_2

    .line 307
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 311
    :goto_2
    const/4 v3, 0x0

    .line 314
    :cond_2
    :try_start_5
    invoke-virtual {v6}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 318
    :goto_3
    const/4 v6, 0x0

    .line 320
    .end local v5           #respond:Ltmsdk/common/utils/ScriptHelper$b;
    :goto_4
    monitor-exit v8

    return-object v5

    .line 268
    .end local v0           #address:Landroid/net/LocalSocketAddress;
    .restart local v5       #respond:Ltmsdk/common/utils/ScriptHelper$b;
    :cond_3
    :try_start_6
    new-instance v0, Landroid/net/LocalSocketAddress;

    sget-object v7, Ltmsdk/common/utils/ScriptHelper;->Em:Ljava/lang/String;

    sget-object v9, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v7, v9}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .restart local v0       #address:Landroid/net/LocalSocketAddress;
    goto :goto_0

    .line 275
    :catch_0
    move-exception v1

    .line 276
    .local v1, e:Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 278
    sget-boolean v7, Ltmsdk/common/utils/ScriptHelper;->En:Z

    if-nez v7, :cond_0

    if-eqz p1, :cond_0

    .line 279
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->hh()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 280
    const-wide/16 v9, 0xc8

    :try_start_8
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1

    .line 281
    :goto_5
    const/4 v7, 0x0

    :try_start_9
    invoke-static {p0, v7}, Ltmsdk/common/utils/ScriptHelper;->a(Ltmsdk/common/utils/ScriptHelper$a;Z)Ltmsdk/common/utils/ScriptHelper$b;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v5

    .line 297
    .end local v5           #respond:Ltmsdk/common/utils/ScriptHelper$b;
    if-eqz v4, :cond_4

    .line 299
    :try_start_a
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 303
    :goto_6
    const/4 v4, 0x0

    .line 305
    :cond_4
    if-eqz v3, :cond_5

    .line 307
    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 311
    :goto_7
    const/4 v3, 0x0

    .line 314
    :cond_5
    :try_start_c
    invoke-virtual {v6}, Landroid/net/LocalSocket;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    .line 318
    :goto_8
    const/4 v6, 0x0

    goto :goto_4

    .line 280
    .restart local v5       #respond:Ltmsdk/common/utils/ScriptHelper$b;
    :catch_1
    move-exception v2

    .local v2, ie:Ljava/lang/InterruptedException;
    :try_start_d
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_5

    .line 297
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #ie:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v7

    if-eqz v4, :cond_6

    .line 299
    :try_start_e
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c

    .line 303
    :goto_9
    const/4 v4, 0x0

    .line 305
    :cond_6
    if-eqz v3, :cond_7

    .line 307
    :try_start_f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_d

    .line 311
    :goto_a
    const/4 v3, 0x0

    .line 314
    :cond_7
    :try_start_10
    invoke-virtual {v6}, Landroid/net/LocalSocket;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_e

    .line 318
    :goto_b
    const/4 v6, 0x0

    :try_start_11
    throw v7
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 258
    .end local v0           #address:Landroid/net/LocalSocketAddress;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #os:Ljava/io/OutputStream;
    .end local v5           #respond:Ltmsdk/common/utils/ScriptHelper$b;
    .end local v6           #socket:Landroid/net/LocalSocket;
    :catchall_1
    move-exception v7

    monitor-exit v8

    throw v7

    .line 300
    .restart local v0       #address:Landroid/net/LocalSocketAddress;
    .restart local v1       #e:Ljava/io/IOException;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #os:Ljava/io/OutputStream;
    .restart local v6       #socket:Landroid/net/LocalSocket;
    :catch_2
    move-exception v1

    .line 301
    :try_start_12
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 308
    :catch_3
    move-exception v1

    .line 309
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 315
    :catch_4
    move-exception v1

    .line 316
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 300
    .end local v1           #e:Ljava/io/IOException;
    .restart local v5       #respond:Ltmsdk/common/utils/ScriptHelper$b;
    :catch_5
    move-exception v1

    .line 301
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 308
    .end local v1           #e:Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 309
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 315
    .end local v1           #e:Ljava/io/IOException;
    :catch_7
    move-exception v1

    .line 316
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto :goto_3

    .line 292
    .end local v1           #e:Ljava/io/IOException;
    :catch_8
    move-exception v1

    .line 293
    .restart local v1       #e:Ljava/io/IOException;
    :try_start_13
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 297
    if-eqz v4, :cond_8

    .line 299
    :try_start_14
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_9

    .line 303
    :goto_c
    const/4 v4, 0x0

    .line 305
    :cond_8
    if-eqz v3, :cond_9

    .line 307
    :try_start_15
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_a

    .line 311
    :goto_d
    const/4 v3, 0x0

    .line 314
    :cond_9
    :try_start_16
    invoke-virtual {v6}, Landroid/net/LocalSocket;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_b

    .line 318
    :goto_e
    const/4 v6, 0x0

    .line 320
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 300
    :catch_9
    move-exception v1

    .line 301
    :try_start_17
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 308
    :catch_a
    move-exception v1

    .line 309
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 315
    :catch_b
    move-exception v1

    .line 316
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 300
    .end local v1           #e:Ljava/io/IOException;
    :catch_c
    move-exception v1

    .line 301
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 308
    .end local v1           #e:Ljava/io/IOException;
    :catch_d
    move-exception v1

    .line 309
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 315
    .end local v1           #e:Ljava/io/IOException;
    :catch_e
    move-exception v1

    .line 316
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    goto :goto_b
.end method

.method public static canRunAtRoot()I
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x1

    invoke-static {v0}, Ltmsdk/common/utils/ScriptHelper;->canRunAtRoot(I)I

    move-result v0

    return v0
.end method

.method public static canRunAtRoot(I)I
    .locals 2
    .parameter "tryCount"

    .prologue
    .line 114
    invoke-static {p0}, Ltmsdk/common/utils/ScriptHelper;->cl(I)I

    move-result v0

    .line 115
    .local v0, state:I
    if-nez v0, :cond_0

    .line 116
    const/16 v1, 0x80

    invoke-static {v1}, Ltmsdkobf/ik;->aS(I)V

    .line 118
    :cond_0
    const/16 v1, 0x40

    invoke-static {v1}, Ltmsdkobf/ik;->aS(I)V

    .line 119
    return v0
.end method

.method public static canRunAtRoot(Ltmsdk/common/utils/ScriptHelper$Callback;)V
    .locals 3
    .parameter "callback"

    .prologue
    .line 137
    invoke-static {}, Ltmsdkobf/ig;->cN()Ltmsdkobf/ij;

    move-result-object v0

    new-instance v1, Ltmsdk/common/utils/ScriptHelper$1;

    invoke-direct {v1, p0}, Ltmsdk/common/utils/ScriptHelper$1;-><init>(Ltmsdk/common/utils/ScriptHelper$Callback;)V

    const-string v2, "canRunAtRootThread"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/ij;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method private static cl(I)I
    .locals 7
    .parameter "tryCount"

    .prologue
    const/4 v6, 0x1

    .line 53
    const/16 v5, 0x20

    invoke-static {v5}, Ltmsdkobf/ik;->aS(I)V

    .line 54
    const-string v5, "root_got_action"

    invoke-static {v5}, Ltmsdk/common/TMSDKContext;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, ROOT_GOT_ACTION:Ljava/lang/String;
    sget-boolean v5, Ltmsdk/common/utils/ScriptHelper;->En:Z

    if-eqz v5, :cond_1

    .line 56
    const/4 v5, 0x0

    sput v5, Ltmsdk/common/utils/ScriptHelper;->sCurrRootState:I

    .line 57
    sget-boolean v5, Ltmsdk/common/utils/ScriptHelper;->Eo:Z

    if-nez v5, :cond_0

    .line 59
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    .local v3, intent:Landroid/content/Intent;
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 61
    const/4 v5, 0x1

    sput-boolean v5, Ltmsdk/common/utils/ScriptHelper;->Eo:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 67
    .end local v3           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    sget v5, Ltmsdk/common/utils/ScriptHelper;->sCurrRootState:I

    .line 103
    :goto_1
    return v5

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, e:Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 70
    .end local v1           #e:Ljava/lang/SecurityException;
    :cond_1
    sget-boolean v5, Ltmsdk/common/utils/ScriptHelper;->isSuExist:Z

    if-nez v5, :cond_2

    .line 78
    sput v6, Ltmsdk/common/utils/ScriptHelper;->sCurrRootState:I

    .line 79
    sget v5, Ltmsdk/common/utils/ScriptHelper;->sCurrRootState:I

    goto :goto_1

    .line 82
    :cond_2
    sget-object v6, Ltmsdk/common/utils/ScriptHelper;->Ep:Ljava/lang/Object;

    monitor-enter v6

    .line 83
    const/4 v4, 0x2

    .line 84
    .local v4, state:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, p0, :cond_3

    .line 85
    :try_start_1
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->hg()I

    move-result v4

    .line 86
    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    .line 90
    :cond_3
    if-nez v4, :cond_4

    sget-boolean v5, Ltmsdk/common/utils/ScriptHelper;->Eo:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_4

    .line 92
    :try_start_2
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 94
    const/4 v5, 0x1

    sput-boolean v5, Ltmsdk/common/utils/ScriptHelper;->Eo:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 101
    .end local v3           #intent:Landroid/content/Intent;
    :cond_4
    :goto_3
    :try_start_3
    sput v4, Ltmsdk/common/utils/ScriptHelper;->sCurrRootState:I

    .line 102
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 103
    sget v5, Ltmsdk/common/utils/ScriptHelper;->sCurrRootState:I

    goto :goto_1

    .line 84
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 95
    :catch_1
    move-exception v1

    .line 96
    .restart local v1       #e:Ljava/lang/SecurityException;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_3

    .line 102
    .end local v1           #e:Ljava/lang/SecurityException;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 97
    :catch_2
    move-exception v5

    goto :goto_3

    .line 64
    .end local v2           #i:I
    .end local v4           #state:I
    :catch_3
    move-exception v5

    goto :goto_0
.end method

.method public static varargs exec(Ljava/io/File;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .parameter "dir"
    .parameter "cmd"

    .prologue
    .line 687
    const/4 v5, 0x0

    .line 689
    .local v5, lines:[Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 690
    .local v7, reault:Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/ProcessBuilder;

    invoke-direct {v1, p1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 691
    .local v1, builder:Ljava/lang/ProcessBuilder;
    if-eqz p0, :cond_0

    .line 692
    invoke-virtual {v1, p0}, Ljava/lang/ProcessBuilder;->directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    .line 693
    :cond_0
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 694
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v6

    .line 695
    .local v6, process:Ljava/lang/Process;
    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 696
    .local v3, in:Ljava/io/InputStream;
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 697
    .local v0, buffer:[B
    const/4 v4, -0x1

    .line 698
    .local v4, length:I
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_1

    .line 699
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 704
    .end local v0           #buffer:[B
    .end local v1           #builder:Ljava/lang/ProcessBuilder;
    .end local v3           #in:Ljava/io/InputStream;
    .end local v4           #length:I
    .end local v6           #process:Ljava/lang/Process;
    .end local v7           #reault:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v2

    .line 705
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 708
    .end local v2           #e:Ljava/io/IOException;
    :goto_1
    return-object v5

    .line 701
    .restart local v0       #buffer:[B
    .restart local v1       #builder:Ljava/lang/ProcessBuilder;
    .restart local v3       #in:Ljava/io/InputStream;
    .restart local v4       #length:I
    .restart local v6       #process:Ljava/lang/Process;
    .restart local v7       #reault:Ljava/lang/StringBuffer;
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 702
    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V

    .line 703
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_1
.end method

.method public static varargs exec([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "cmd"

    .prologue
    .line 712
    const/4 v0, 0x0

    invoke-static {v0, p0}, Ltmsdk/common/utils/ScriptHelper;->exec(Ljava/io/File;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static hg()I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 151
    const/4 v2, 0x2

    .line 152
    .local v2, state:I
    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "id"

    aput-object v4, v3, v5

    invoke-static {v3}, Ltmsdk/common/utils/ScriptHelper;->runScript([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, result:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 154
    const/4 v2, 0x2

    .line 177
    :cond_0
    :goto_0
    return v2

    .line 155
    :cond_1
    const-string v3, "uid=0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 156
    const/4 v2, 0x0

    goto :goto_0

    .line 158
    :cond_2
    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "su"

    aput-object v4, v3, v5

    invoke-static {v3}, Ltmsdk/common/utils/ScriptHelper;->runScript([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 159
    if-nez v1, :cond_3

    .line 160
    const/4 v2, 0x2

    goto :goto_0

    .line 161
    :cond_3
    const-string v3, "Kill"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "kill"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 162
    :cond_4
    const/4 v2, -0x1

    goto :goto_0

    .line 164
    :cond_5
    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "id"

    aput-object v4, v3, v5

    invoke-static {v3}, Ltmsdk/common/utils/ScriptHelper;->runScript([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 165
    if-nez v1, :cond_6

    .line 166
    const/4 v2, 0x2

    goto :goto_0

    .line 167
    :cond_6
    const-string v3, "uid=0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    const/4 v2, 0x0

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v0, cmds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Ltmsdk/common/utils/ScriptHelper;->r(Ljava/util/List;)V

    .line 172
    invoke-static {v0}, Ltmsdk/common/utils/ScriptHelper;->runScript(Ljava/util/List;)Ljava/lang/String;

    goto :goto_0
.end method

.method private static hh()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 372
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 373
    .local v2, context:Landroid/content/Context;
    sget-object v8, Ltmsdk/common/utils/ScriptHelper;->El:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v2, v8, v9}, Ltmsdkobf/jv;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 374
    .local v4, daemonPath:Ljava/lang/String;
    const-string v8, "%s %s %d"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v4, v9, v12

    sget-object v10, Ltmsdk/common/utils/ScriptHelper;->Em:Ljava/lang/String;

    aput-object v10, v9, v13

    const/4 v10, 0x2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 375
    .local v3, daemonCmd:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "chmod 755 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 377
    .local v1, cmd:Ljava/lang/String;
    new-instance v0, Ljava/lang/ProcessBuilder;

    new-array v8, v12, [Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 378
    .local v0, builder:Ljava/lang/ProcessBuilder;
    new-array v8, v13, [Ljava/lang/String;

    const-string v9, "sh"

    aput-object v9, v8, v12

    invoke-virtual {v0, v8}, Ljava/lang/ProcessBuilder;->command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    .line 379
    const/4 v6, 0x0

    .line 381
    .local v6, os:Ljava/io/OutputStream;
    const/4 v8, 0x1

    :try_start_0
    invoke-virtual {v0, v8}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 382
    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v7

    .line 383
    .local v7, proc:Ljava/lang/Process;
    invoke-virtual {v7}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    .line 384
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/OutputStream;->write([B)V

    .line 385
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 390
    if-eqz v6, :cond_0

    .line 392
    :try_start_1
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 396
    :goto_0
    const/4 v6, 0x0

    .line 399
    .end local v7           #proc:Ljava/lang/Process;
    :cond_0
    :goto_1
    return-void

    .line 393
    .restart local v7       #proc:Ljava/lang/Process;
    :catch_0
    move-exception v5

    .line 394
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 387
    .end local v5           #e:Ljava/io/IOException;
    .end local v7           #proc:Ljava/lang/Process;
    :catch_1
    move-exception v5

    .line 388
    .restart local v5       #e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 390
    if-eqz v6, :cond_0

    .line 392
    :try_start_3
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 396
    :goto_2
    const/4 v6, 0x0

    goto :goto_1

    .line 393
    :catch_2
    move-exception v5

    .line 394
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 390
    .end local v5           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    if-eqz v6, :cond_1

    .line 392
    :try_start_4
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 396
    :goto_3
    const/4 v6, 0x0

    :cond_1
    throw v8

    .line 393
    :catch_3
    move-exception v5

    .line 394
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public static isRootGot()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 417
    new-instance v0, Ltmsdk/common/utils/ScriptHelper$a;

    invoke-direct {v0}, Ltmsdk/common/utils/ScriptHelper$a;-><init>()V

    .line 418
    .local v0, request:Ltmsdk/common/utils/ScriptHelper$a;
    const/16 v3, 0x3e8

    iput v3, v0, Ltmsdk/common/utils/ScriptHelper$a;->time:I

    .line 419
    const-string v3, "id\n"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iput-object v3, v0, Ltmsdk/common/utils/ScriptHelper$a;->data:[B

    .line 420
    invoke-static {v0, v2}, Ltmsdk/common/utils/ScriptHelper;->a(Ltmsdk/common/utils/ScriptHelper$a;Z)Ltmsdk/common/utils/ScriptHelper$b;

    move-result-object v1

    .line 421
    .local v1, respond:Ltmsdk/common/utils/ScriptHelper$b;
    if-eqz v1, :cond_0

    new-instance v3, Ljava/lang/String;

    iget-object v4, v1, Ltmsdk/common/utils/ScriptHelper$b;->data:[B

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    const-string v4, "uid=0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 422
    const/4 v2, 0x1

    .line 424
    :cond_0
    return v2
.end method

.method public static isSystemUid()Z
    .locals 2

    .prologue
    .line 651
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static provider()Ltmsdkobf/ln;
    .locals 1

    .prologue
    .line 610
    sget-object v0, Ltmsdk/common/utils/ScriptHelper;->Eq:Ltmsdkobf/ln;

    return-object v0
.end method

.method public static providerSupportCancelMissCall()Z
    .locals 2

    .prologue
    .line 626
    sget-object v0, Ltmsdk/common/utils/ScriptHelper;->Eq:Ltmsdkobf/ln;

    if-eqz v0, :cond_0

    sget-object v0, Ltmsdk/common/utils/ScriptHelper;->Eq:Ltmsdkobf/ln;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ltmsdkobf/ln;->ca(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static providerSupportCpuRelative()Z
    .locals 2

    .prologue
    .line 634
    sget-object v0, Ltmsdk/common/utils/ScriptHelper;->Eq:Ltmsdkobf/ln;

    if-eqz v0, :cond_0

    sget-object v0, Ltmsdk/common/utils/ScriptHelper;->Eq:Ltmsdkobf/ln;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ltmsdkobf/ln;->ca(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static providerSupportGetAllApkFiles()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 618
    sget-object v1, Ltmsdk/common/utils/ScriptHelper;->Eq:Ltmsdkobf/ln;

    if-eqz v1, :cond_0

    sget-object v1, Ltmsdk/common/utils/ScriptHelper;->Eq:Ltmsdkobf/ln;

    invoke-interface {v1, v0}, Ltmsdkobf/ln;->ca(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static providerSupportPmRelative()Z
    .locals 2

    .prologue
    .line 642
    sget-object v0, Ltmsdk/common/utils/ScriptHelper;->Eq:Ltmsdkobf/ln;

    if-eqz v0, :cond_0

    sget-object v0, Ltmsdk/common/utils/ScriptHelper;->Eq:Ltmsdkobf/ln;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ltmsdkobf/ln;->ca(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static r(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, cmds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/ProcessBuilder;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/ProcessBuilder;->environment()Ljava/util/Map;

    move-result-object v2

    .line 185
    .local v2, envs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 186
    .local v1, entrys:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 187
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "export "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 189
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public static runScript(ILjava/lang/StringBuilder;Ljava/util/List;)I
    .locals 2
    .parameter "sec"
    .parameter "res"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 547
    .local p2, scripts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p2}, Ltmsdk/common/utils/ScriptHelper;->runScript(ILjava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, result:Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 549
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static varargs runScript(ILjava/lang/StringBuilder;[Ljava/lang/String;)I
    .locals 2
    .parameter "sec"
    .parameter "res"
    .parameter "scripts"

    .prologue
    .line 563
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, p1, v0}, Ltmsdk/common/utils/ScriptHelper;->runScript(ILjava/lang/StringBuilder;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public static runScript(Ljava/lang/StringBuilder;Ljava/util/List;)I
    .locals 2
    .parameter "res"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 521
    .local p1, scripts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Ltmsdk/common/utils/ScriptHelper;->runScript(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 522
    .local v0, result:Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 523
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static varargs runScript(Ljava/lang/StringBuilder;[Ljava/lang/String;)I
    .locals 2
    .parameter "res"
    .parameter "scripts"

    .prologue
    .line 535
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, v0}, Ltmsdk/common/utils/ScriptHelper;->runScript(Ljava/lang/StringBuilder;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public static runScript(ILjava/util/List;)Ljava/lang/String;
    .locals 7
    .parameter "msec"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 201
    .local p1, cmds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .local v4, strbuild:Ljava/lang/StringBuilder;
    invoke-static {p1}, Ltmsdk/common/utils/ScriptHelper;->r(Ljava/util/List;)V

    .line 205
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 206
    .local v0, cmd:Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 209
    .end local v0           #cmd:Ljava/lang/String;
    :cond_0
    new-instance v2, Ltmsdk/common/utils/ScriptHelper$a;

    invoke-direct {v2}, Ltmsdk/common/utils/ScriptHelper$a;-><init>()V

    .line 210
    .local v2, request:Ltmsdk/common/utils/ScriptHelper$a;
    iput p0, v2, Ltmsdk/common/utils/ScriptHelper$a;->time:I

    .line 211
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    iput-object v5, v2, Ltmsdk/common/utils/ScriptHelper$a;->data:[B

    .line 212
    const/4 v5, 0x1

    invoke-static {v2, v5}, Ltmsdk/common/utils/ScriptHelper;->a(Ltmsdk/common/utils/ScriptHelper$a;Z)Ltmsdk/common/utils/ScriptHelper$b;

    move-result-object v3

    .line 213
    .local v3, respond:Ltmsdk/common/utils/ScriptHelper$b;
    if-eqz v3, :cond_1

    .line 214
    new-instance v5, Ljava/lang/String;

    iget-object v6, v3, Ltmsdk/common/utils/ScriptHelper$b;->data:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 216
    :goto_1
    return-object v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static varargs runScript(I[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "msec"
    .parameter "cmds"

    .prologue
    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, v0}, Ltmsdk/common/utils/ScriptHelper;->runScript(ILjava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static runScript(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 240
    .local p0, cmds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/16 v0, 0x7530

    invoke-static {v0, p0}, Ltmsdk/common/utils/ScriptHelper;->runScript(ILjava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs runScript([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "cmds"

    .prologue
    .line 251
    const/16 v0, 0x7530

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Ltmsdk/common/utils/ScriptHelper;->runScript(ILjava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static runScriptAsRoot(ILjava/lang/StringBuilder;Ljava/util/List;)I
    .locals 3
    .parameter "sec"
    .parameter "res"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p2, scripts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, -0x1

    .line 453
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->canRunAtRoot()I

    move-result v2

    if-eqz v2, :cond_1

    .line 460
    :cond_0
    :goto_0
    return v1

    .line 456
    :cond_1
    invoke-static {p0, p2}, Ltmsdk/common/utils/ScriptHelper;->runScript(ILjava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, result:Ljava/lang/String;
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 458
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    :cond_2
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static varargs runScriptAsRoot(ILjava/lang/StringBuilder;[Ljava/lang/String;)I
    .locals 2
    .parameter "sec"
    .parameter "res"
    .parameter "scripts"

    .prologue
    .line 482
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, p1, v0}, Ltmsdk/common/utils/ScriptHelper;->runScriptAsRoot(ILjava/lang/StringBuilder;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public static runScriptAsRoot(ILjava/util/List;)I
    .locals 1
    .parameter "sec"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 502
    .local p1, scripts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v0, p1}, Ltmsdk/common/utils/ScriptHelper;->runScriptAsRoot(ILjava/lang/StringBuilder;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public static runScriptAsRoot(Ljava/lang/StringBuilder;Ljava/util/List;)I
    .locals 3
    .parameter "res"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, scripts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, -0x1

    .line 434
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->canRunAtRoot()I

    move-result v2

    if-eqz v2, :cond_1

    .line 441
    :cond_0
    :goto_0
    return v1

    .line 437
    :cond_1
    invoke-static {p1}, Ltmsdk/common/utils/ScriptHelper;->runScript(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, result:Ljava/lang/String;
    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    .line 439
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    :cond_2
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static varargs runScriptAsRoot(Ljava/lang/StringBuilder;[Ljava/lang/String;)I
    .locals 2
    .parameter "res"
    .parameter "scripts"

    .prologue
    .line 470
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, v0}, Ltmsdk/common/utils/ScriptHelper;->runScriptAsRoot(Ljava/lang/StringBuilder;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public static runScriptAsRoot(Ljava/util/List;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 491
    .local p0, scripts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p0}, Ltmsdk/common/utils/ScriptHelper;->runScriptAsRoot(Ljava/lang/StringBuilder;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public static varargs runScriptAsRoot([Ljava/lang/String;)I
    .locals 3
    .parameter "scripts"

    .prologue
    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Ltmsdk/common/utils/ScriptHelper;->runScriptAsRoot(Ljava/lang/StringBuilder;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public static varargs runScriptIfSystemUidOrAsRoot(ILjava/lang/StringBuilder;[Ljava/lang/String;)I
    .locals 1
    .parameter "msec"
    .parameter "res"
    .parameter "scripts"

    .prologue
    .line 725
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->isSystemUid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 726
    invoke-static {p0, p1, p2}, Ltmsdk/common/utils/ScriptHelper;->runScript(ILjava/lang/StringBuilder;[Ljava/lang/String;)I

    move-result v0

    .line 728
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1, p2}, Ltmsdk/common/utils/ScriptHelper;->runScriptAsRoot(ILjava/lang/StringBuilder;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static runScriptIfSystemUidOrAsRoot(Ljava/util/List;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 675
    .local p0, scripts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->isSystemUid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p0}, Ltmsdk/common/utils/ScriptHelper;->runScript(Ljava/lang/StringBuilder;Ljava/util/List;)I

    move-result v0

    .line 678
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Ltmsdk/common/utils/ScriptHelper;->runScriptAsRoot(Ljava/util/List;)I

    move-result v0

    goto :goto_0
.end method

.method public static varargs runScriptIfSystemUidOrAsRoot([Ljava/lang/String;)I
    .locals 1
    .parameter "scripts"

    .prologue
    .line 661
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->isSystemUid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p0}, Ltmsdk/common/utils/ScriptHelper;->runScript(Ljava/lang/StringBuilder;[Ljava/lang/String;)I

    move-result v0

    .line 664
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Ltmsdk/common/utils/ScriptHelper;->runScriptAsRoot([Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static varargs runScriptSplitLines([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "scripts"

    .prologue
    .line 572
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 573
    .local v1, res:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v2}, Ltmsdk/common/utils/ScriptHelper;->runScript(Ljava/lang/StringBuilder;Ljava/util/List;)I

    .line 574
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 575
    .local v0, lines:[Ljava/lang/String;
    return-object v0
.end method

.method public static setProvider(Ltmsdkobf/ln;)V
    .locals 7
    .parameter "provider"

    .prologue
    .line 589
    const/4 v3, 0x0

    .line 590
    .local v3, isAcceptableCaller:Z
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/StackTraceElement;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v0, v2

    .line 591
    .local v1, e:Ljava/lang/StackTraceElement;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ltmsdk/common/TMSDKContext;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "init"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_1

    .line 592
    const/4 v3, 0x1

    .line 597
    .end local v1           #e:Ljava/lang/StackTraceElement;
    :cond_0
    if-nez v3, :cond_2

    .line 598
    const-string v5, "ScriptHelper"

    const-string v6, "Unauthorized caller"

    invoke-static {v5, v6}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 603
    :goto_1
    return-void

    .line 590
    .restart local v1       #e:Ljava/lang/StackTraceElement;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 602
    .end local v1           #e:Ljava/lang/StackTraceElement;
    :cond_2
    sput-object p0, Ltmsdk/common/utils/ScriptHelper;->Eq:Ltmsdkobf/ln;

    goto :goto_1
.end method
