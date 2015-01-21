.class final Ltmsdk/common/module/optimize/f;
.super Ltmsdk/common/creator/BaseManagerC;
.source "SourceFile"


# instance fields
.field private Ae:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private Af:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/ServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private Ag:[B

.field private Ah:Ltmsdk/common/module/optimize/IAutoBootHelper;

.field private Ai:Ltmsdk/common/module/optimize/IMemoryHelper;

.field private Aj:Ltmsdk/common/module/optimize/ICpuHelper;

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ltmsdk/common/creator/BaseManagerC;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltmsdk/common/module/optimize/f;->Af:Ljava/util/HashMap;

    .line 44
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Ltmsdk/common/module/optimize/f;->Ag:[B

    return-void
.end method

.method private a(I[I)I
    .locals 2
    .parameter "priority"
    .parameter "groups"

    .prologue
    .line 149
    if-eqz p2, :cond_2

    .line 150
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 151
    aget v1, p2, v0

    if-gt p1, v1, :cond_0

    .line 157
    .end local v0           #i:I
    :goto_1
    return v0

    .line 150
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_1
    array-length v1, p2

    add-int/lit8 v0, v1, -0x1

    goto :goto_1

    .line 157
    .end local v0           #i:I
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private b(Ljava/lang/String;ZZ)Z
    .locals 6
    .parameter "pkg"
    .parameter "hasroot"
    .parameter "enforcecheck"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 318
    invoke-static {}, Ltmsdk/common/utils/SDKUtil;->getSDKVersion()I

    move-result v0

    .line 321
    .local v0, sdk_version:I
    iget-object v1, p0, Ltmsdk/common/module/optimize/f;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 323
    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    const/4 v1, 0x7

    if-gt v0, v1, :cond_1

    .line 324
    invoke-direct {p0, p1}, Ltmsdk/common/module/optimize/f;->cr(Ljava/lang/String;)V

    .line 325
    iget-object v1, p0, Ltmsdk/common/module/optimize/f;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v1, p1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    .line 336
    :cond_0
    :goto_0
    return v5

    .line 326
    :cond_1
    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 328
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->isSystemUid()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez p2, :cond_2

    if-eqz p3, :cond_3

    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->canRunAtRoot()I

    move-result v1

    if-nez v1, :cond_3

    .line 329
    :cond_2
    new-array v1, v5, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "service call activity 79 s16 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Ltmsdk/common/utils/ScriptHelper;->runScriptIfSystemUidOrAsRoot([Ljava/lang/String;)I

    goto :goto_0

    .line 331
    :cond_3
    invoke-direct {p0, p1}, Ltmsdk/common/module/optimize/f;->cr(Ljava/lang/String;)V

    .line 332
    iget-object v1, p0, Ltmsdk/common/module/optimize/f;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v1, p1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private bI(I)I
    .locals 9
    .parameter "pid"

    .prologue
    .line 186
    const/16 v5, -0xf

    .line 187
    .local v5, priority:I
    const/4 v3, 0x0

    .line 188
    .local v3, fileInputStream:Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 190
    .local v0, dataInputStream:Ljava/io/DataInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/proc/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/oom_adj"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 191
    .end local v3           #fileInputStream:Ljava/io/FileInputStream;
    .local v4, fileInputStream:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 192
    .end local v0           #dataInputStream:Ljava/io/DataInputStream;
    .local v1, dataInputStream:Ljava/io/DataInputStream;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 193
    .local v6, value:Ljava/lang/String;
    if-eqz v6, :cond_0

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 194
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    move-result v5

    .line 199
    :cond_0
    if-eqz v1, :cond_6

    .line 201
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 205
    :goto_0
    const/4 v0, 0x0

    .line 207
    .end local v1           #dataInputStream:Ljava/io/DataInputStream;
    .restart local v0       #dataInputStream:Ljava/io/DataInputStream;
    :goto_1
    if-eqz v4, :cond_5

    .line 209
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 213
    :goto_2
    const/4 v3, 0x0

    .line 216
    .end local v4           #fileInputStream:Ljava/io/FileInputStream;
    .end local v6           #value:Ljava/lang/String;
    .restart local v3       #fileInputStream:Ljava/io/FileInputStream;
    :cond_1
    :goto_3
    return v5

    .line 202
    .end local v0           #dataInputStream:Ljava/io/DataInputStream;
    .end local v3           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v1       #dataInputStream:Ljava/io/DataInputStream;
    .restart local v4       #fileInputStream:Ljava/io/FileInputStream;
    .restart local v6       #value:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 203
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 210
    .end local v1           #dataInputStream:Ljava/io/DataInputStream;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v0       #dataInputStream:Ljava/io/DataInputStream;
    :catch_1
    move-exception v2

    .line 211
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 196
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #fileInputStream:Ljava/io/FileInputStream;
    .end local v6           #value:Ljava/lang/String;
    .restart local v3       #fileInputStream:Ljava/io/FileInputStream;
    :catch_2
    move-exception v2

    .line 197
    .restart local v2       #e:Ljava/io/IOException;
    :goto_4
    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 199
    if-eqz v0, :cond_2

    .line 201
    :try_start_6
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 205
    :goto_5
    const/4 v0, 0x0

    .line 207
    :cond_2
    if-eqz v3, :cond_1

    .line 209
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 213
    :goto_6
    const/4 v3, 0x0

    goto :goto_3

    .line 202
    :catch_3
    move-exception v2

    .line 203
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 210
    :catch_4
    move-exception v2

    .line 211
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 199
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_7
    if-eqz v0, :cond_3

    .line 201
    :try_start_8
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 205
    :goto_8
    const/4 v0, 0x0

    .line 207
    :cond_3
    if-eqz v3, :cond_4

    .line 209
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 213
    :goto_9
    const/4 v3, 0x0

    :cond_4
    throw v7

    .line 202
    :catch_5
    move-exception v2

    .line 203
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 210
    .end local v2           #e:Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 211
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 199
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v4       #fileInputStream:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v3       #fileInputStream:Ljava/io/FileInputStream;
    goto :goto_7

    .end local v0           #dataInputStream:Ljava/io/DataInputStream;
    .end local v3           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v1       #dataInputStream:Ljava/io/DataInputStream;
    .restart local v4       #fileInputStream:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1           #dataInputStream:Ljava/io/DataInputStream;
    .restart local v0       #dataInputStream:Ljava/io/DataInputStream;
    move-object v3, v4

    .end local v4           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v3       #fileInputStream:Ljava/io/FileInputStream;
    goto :goto_7

    .line 196
    .end local v3           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v4       #fileInputStream:Ljava/io/FileInputStream;
    :catch_7
    move-exception v2

    move-object v3, v4

    .end local v4           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v3       #fileInputStream:Ljava/io/FileInputStream;
    goto :goto_4

    .end local v0           #dataInputStream:Ljava/io/DataInputStream;
    .end local v3           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v1       #dataInputStream:Ljava/io/DataInputStream;
    .restart local v4       #fileInputStream:Ljava/io/FileInputStream;
    :catch_8
    move-exception v2

    move-object v0, v1

    .end local v1           #dataInputStream:Ljava/io/DataInputStream;
    .restart local v0       #dataInputStream:Ljava/io/DataInputStream;
    move-object v3, v4

    .end local v4           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v3       #fileInputStream:Ljava/io/FileInputStream;
    goto :goto_4

    .end local v3           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v4       #fileInputStream:Ljava/io/FileInputStream;
    .restart local v6       #value:Ljava/lang/String;
    :cond_5
    move-object v3, v4

    .end local v4           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v3       #fileInputStream:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v0           #dataInputStream:Ljava/io/DataInputStream;
    .end local v3           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v1       #dataInputStream:Ljava/io/DataInputStream;
    .restart local v4       #fileInputStream:Ljava/io/FileInputStream;
    :cond_6
    move-object v0, v1

    .end local v1           #dataInputStream:Ljava/io/DataInputStream;
    .restart local v0       #dataInputStream:Ljava/io/DataInputStream;
    goto :goto_1
.end method

.method private cq(Ljava/lang/String;)Z
    .locals 7
    .parameter "pkg"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 119
    const/4 v1, 0x0

    .line 129
    .local v1, pkginfo:Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v4, p0, Ltmsdk/common/module/optimize/f;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v4, p1, v5, v6}, Ltmsdkobf/id;->b(Landroid/content/pm/PackageManager;Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 134
    :goto_0
    if-eqz v1, :cond_0

    .line 135
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 139
    :goto_1
    return v2

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0

    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    move v2, v3

    .line 139
    goto :goto_1
.end method

.method private cr(Ljava/lang/String;)V
    .locals 9
    .parameter "pkg"

    .prologue
    .line 344
    iget-object v6, p0, Ltmsdk/common/module/optimize/f;->Ag:[B

    monitor-enter v6

    .line 345
    :try_start_0
    iget-object v5, p0, Ltmsdk/common/module/optimize/f;->Ae:Ljava/util/List;

    if-nez v5, :cond_0

    .line 346
    monitor-exit v6

    .line 381
    :goto_0
    return-void

    .line 349
    :cond_0
    iget-object v5, p0, Ltmsdk/common/module/optimize/f;->Ae:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 350
    .local v2, info:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v5, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 351
    iget-object v5, p0, Ltmsdk/common/module/optimize/f;->Af:Ljava/util/HashMap;

    iget-object v7, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    .local v4, service:Landroid/content/pm/ServiceInfo;
    if-nez v4, :cond_2

    .line 354
    :try_start_1
    iget-object v5, p0, Ltmsdk/common/module/optimize/f;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v7, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    .line 360
    :goto_2
    if-eqz v4, :cond_2

    .line 361
    :try_start_2
    iget-object v5, p0, Ltmsdk/common/module/optimize/f;->Af:Ljava/util/HashMap;

    iget-object v7, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    :cond_2
    if-eqz v4, :cond_1

    iget-object v5, v4, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    if-nez v5, :cond_1

    iget-boolean v5, v4, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eqz v5, :cond_1

    .line 366
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 367
    .local v3, intent:Landroid/content/Intent;
    iget-object v5, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 370
    :try_start_3
    iget-object v5, p0, Ltmsdk/common/module/optimize/f;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 371
    :catch_0
    move-exception v5

    goto :goto_1

    .line 355
    .end local v3           #intent:Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 356
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_4
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 380
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #info:Landroid/app/ActivityManager$RunningServiceInfo;
    .end local v4           #service:Landroid/content/pm/ServiceInfo;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 357
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #info:Landroid/app/ActivityManager$RunningServiceInfo;
    .restart local v4       #service:Landroid/content/pm/ServiceInfo;
    :catch_2
    move-exception v0

    .line 358
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_5
    invoke-static {v0}, Ltmsdkobf/id;->a(Ljava/lang/RuntimeException;)V

    goto :goto_2

    .line 380
    .end local v0           #e:Ljava/lang/RuntimeException;
    .end local v2           #info:Landroid/app/ActivityManager$RunningServiceInfo;
    .end local v4           #service:Landroid/content/pm/ServiceInfo;
    :cond_3
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method private fJ()[I
    .locals 7

    .prologue
    const/4 v6, 0x6

    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, groups:[I
    const-string v4, "/sys/module/lowmemorykiller/parameters/adj"

    invoke-static {v4}, Ltmsdkobf/jv;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, result:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 168
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[,\\s]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, values:[Ljava/lang/String;
    if-eqz v3, :cond_1

    array-length v4, v3

    if-ne v4, v6, :cond_1

    .line 170
    new-array v0, v6, [I

    .line 171
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v6, :cond_0

    .line 172
    aget-object v4, v3, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v0, v1

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v4, v0

    .line 177
    .end local v1           #i:I
    .end local v3           #values:[Ljava/lang/String;
    :goto_1
    return-object v4

    :cond_1
    new-array v4, v6, [I

    fill-array-data v4, :array_0

    goto :goto_1

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public closeProcess(Ljava/lang/String;)Z
    .locals 2
    .parameter "pkg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 228
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Ltmsdk/common/module/optimize/f;->closeProcess(Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public closeProcess(Ljava/lang/String;ZZ)Z
    .locals 2
    .parameter "pkg"
    .parameter "hasroot"
    .parameter "enforecheck"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 246
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->provider()Ltmsdkobf/ln;

    move-result-object v0

    .line 247
    .local v0, p:Ltmsdkobf/ln;
    if-eqz v0, :cond_0

    .line 248
    invoke-interface {v0, p1}, Ltmsdkobf/ln;->closeProcess(Ljava/lang/String;)Z

    move-result v1

    .line 250
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Ltmsdk/common/module/optimize/f;->b(Ljava/lang/String;ZZ)Z

    move-result v1

    goto :goto_0
.end method

.method public closeProcess(Ljava/util/List;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 262
    .local p1, pkgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Ltmsdk/common/module/optimize/f;->closeProcess(Ljava/util/List;ZZ)Z

    move-result v0

    return v0
.end method

.method public closeProcess(Ljava/util/List;ZZ)Z
    .locals 9
    .parameter
    .parameter "hasroot"
    .parameter "enforcecheck"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .local p1, pkgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    .line 274
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 276
    .end local p1           #pkgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local v6, pkgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v8, p0, Ltmsdk/common/module/optimize/f;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 278
    const/4 v0, 0x0

    .line 279
    .local v0, closedByProvider:Z
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->provider()Ltmsdkobf/ln;

    move-result-object v4

    .line 280
    .local v4, p:Ltmsdkobf/ln;
    if-eqz v4, :cond_1

    .line 281
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 282
    .local v5, pkg:Ljava/lang/String;
    invoke-interface {v4, v5}, Ltmsdkobf/ln;->closeProcess(Ljava/lang/String;)Z

    move-result v0

    .line 283
    if-nez v0, :cond_0

    .line 288
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #pkg:Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_3

    .line 307
    :cond_2
    return v7

    .line 295
    :cond_3
    if-eqz p2, :cond_4

    .line 296
    const/4 v2, 0x1

    .line 297
    .local v2, final_hasroot:Z
    const/4 v1, 0x0

    .line 303
    .local v1, final_enforcecheck:Z
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 304
    .restart local v5       #pkg:Ljava/lang/String;
    invoke-direct {p0, v5, v2, v1}, Ltmsdk/common/module/optimize/f;->b(Ljava/lang/String;ZZ)Z

    goto :goto_1

    .line 299
    .end local v1           #final_enforcecheck:Z
    .end local v2           #final_hasroot:Z
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #pkg:Ljava/lang/String;
    :cond_4
    if-eqz p3, :cond_5

    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->canRunAtRoot()I

    move-result v8

    if-nez v8, :cond_5

    move v2, v7

    .line 300
    .restart local v2       #final_hasroot:Z
    :goto_2
    const/4 v1, 0x0

    .restart local v1       #final_enforcecheck:Z
    goto :goto_0

    .line 299
    .end local v1           #final_enforcecheck:Z
    .end local v2           #final_hasroot:Z
    :cond_5
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public getAllRunningProcess(Z)Ljava/util/ArrayList;
    .locals 18
    .parameter "containSysApp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/optimize/ProcessEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    move-object/from16 v0, p0

    iget-object v15, v0, Ltmsdk/common/module/optimize/f;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v15}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v14

    .line 71
    .local v14, runInfos:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v13, processEntitys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/optimize/ProcessEntity;>;"
    invoke-direct/range {p0 .. p0}, Ltmsdk/common/module/optimize/f;->fJ()[I

    move-result-object v12

    .line 73
    .local v12, priorityGroups:[I
    if-eqz v14, :cond_5

    .line 74
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 75
    .local v7, info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v15, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v15, :cond_0

    .line 78
    iget v15, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Ltmsdk/common/module/optimize/f;->bI(I)I

    move-result v11

    .line 79
    .local v11, priority:I
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Ltmsdk/common/module/optimize/f;->a(I[I)I

    move-result v3

    .line 81
    .local v3, group:I
    iget-object v1, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v9, v1

    .local v9, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    move v6, v5

    .end local v5           #i$:I
    .local v6, i$:I
    :goto_0
    if-ge v6, v9, :cond_0

    aget-object v10, v1, v6

    .line 82
    .local v10, pkg:Ljava/lang/String;
    const/16 v15, 0x3a

    invoke-virtual {v10, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    if-gez v15, :cond_4

    .line 84
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v6           #i$:I
    .local v5, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltmsdk/common/module/optimize/ProcessEntity;

    .line 85
    .local v2, entity:Ltmsdk/common/module/optimize/ProcessEntity;
    iget-object v15, v2, Ltmsdk/common/module/optimize/ProcessEntity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    goto :goto_1

    .line 91
    .end local v2           #entity:Ltmsdk/common/module/optimize/ProcessEntity;
    :cond_2
    if-nez p1, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Ltmsdk/common/module/optimize/f;->cq(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 92
    :cond_3
    new-instance v8, Ltmsdk/common/module/optimize/ProcessEntity;

    invoke-direct {v8}, Ltmsdk/common/module/optimize/ProcessEntity;-><init>()V

    .line 93
    .local v8, item:Ltmsdk/common/module/optimize/ProcessEntity;
    iput-object v10, v8, Ltmsdk/common/module/optimize/ProcessEntity;->mPackageName:Ljava/lang/String;

    .line 94
    iget-object v15, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iput-object v15, v8, Ltmsdk/common/module/optimize/ProcessEntity;->mProcessName:Ljava/lang/String;

    .line 95
    iput v11, v8, Ltmsdk/common/module/optimize/ProcessEntity;->mPriority:I

    .line 96
    iput v3, v8, Ltmsdk/common/module/optimize/ProcessEntity;->mPriorityGroup:I

    .line 97
    iget v15, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iput v15, v8, Ltmsdk/common/module/optimize/ProcessEntity;->mPid:I

    .line 98
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v8           #item:Ltmsdk/common/module/optimize/ProcessEntity;
    :cond_4
    add-int/lit8 v5, v6, 0x1

    .local v5, i$:I
    move v6, v5

    .end local v5           #i$:I
    .restart local v6       #i$:I
    goto :goto_0

    .line 107
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #group:I
    .end local v6           #i$:I
    .end local v7           #info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v9           #len$:I
    .end local v10           #pkg:Ljava/lang/String;
    .end local v11           #priority:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdk/common/module/optimize/f;->Ag:[B

    move-object/from16 v16, v0

    monitor-enter v16

    .line 108
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Ltmsdk/common/module/optimize/f;->mActivityManager:Landroid/app/ActivityManager;

    const/16 v17, 0x64

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Ltmsdk/common/module/optimize/f;->Ae:Ljava/util/List;

    .line 109
    monitor-exit v16

    .line 110
    return-object v13

    .line 109
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15
.end method

.method public declared-synchronized getAutoBootHelper()Ltmsdk/common/module/optimize/IAutoBootHelper;
    .locals 2

    .prologue
    .line 390
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltmsdk/common/module/optimize/f;->Ah:Ltmsdk/common/module/optimize/IAutoBootHelper;

    if-nez v0, :cond_0

    .line 391
    new-instance v0, Ltmsdk/common/module/optimize/a;

    iget-object v1, p0, Ltmsdk/common/module/optimize/f;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Ltmsdk/common/module/optimize/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltmsdk/common/module/optimize/f;->Ah:Ltmsdk/common/module/optimize/IAutoBootHelper;

    .line 394
    :cond_0
    iget-object v0, p0, Ltmsdk/common/module/optimize/f;->Ah:Ltmsdk/common/module/optimize/IAutoBootHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 390
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCpuHelper()Ltmsdk/common/module/optimize/ICpuHelper;
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Ltmsdk/common/module/optimize/f;->Aj:Ltmsdk/common/module/optimize/ICpuHelper;

    if-nez v0, :cond_0

    .line 415
    new-instance v0, Ltmsdk/common/module/optimize/CpuHelperImpl;

    iget-object v1, p0, Ltmsdk/common/module/optimize/f;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Ltmsdk/common/module/optimize/CpuHelperImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltmsdk/common/module/optimize/f;->Aj:Ltmsdk/common/module/optimize/ICpuHelper;

    .line 417
    :cond_0
    iget-object v0, p0, Ltmsdk/common/module/optimize/f;->Aj:Ltmsdk/common/module/optimize/ICpuHelper;

    return-object v0
.end method

.method public declared-synchronized getMemoryHelper()Ltmsdk/common/module/optimize/IMemoryHelper;
    .locals 2

    .prologue
    .line 402
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltmsdk/common/module/optimize/f;->Ai:Ltmsdk/common/module/optimize/IMemoryHelper;

    if-nez v0, :cond_0

    .line 403
    new-instance v0, Ltmsdk/common/module/optimize/b;

    iget-object v1, p0, Ltmsdk/common/module/optimize/f;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Ltmsdk/common/module/optimize/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltmsdk/common/module/optimize/f;->Ai:Ltmsdk/common/module/optimize/IMemoryHelper;

    .line 406
    :cond_0
    iget-object v0, p0, Ltmsdk/common/module/optimize/f;->Ai:Ltmsdk/common/module/optimize/IMemoryHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 402
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSingletonType()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 52
    iput-object p1, p0, Ltmsdk/common/module/optimize/f;->mContext:Landroid/content/Context;

    .line 53
    iget-object v0, p0, Ltmsdk/common/module/optimize/f;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Ltmsdk/common/module/optimize/f;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 54
    iget-object v0, p0, Ltmsdk/common/module/optimize/f;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Ltmsdk/common/module/optimize/f;->mActivityManager:Landroid/app/ActivityManager;

    .line 55
    return-void
.end method
