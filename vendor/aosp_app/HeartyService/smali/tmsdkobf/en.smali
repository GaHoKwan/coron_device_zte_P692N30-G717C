.class public final Ltmsdkobf/en;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static jP:Ljava/lang/String;

.field private static kZ:Ljava/lang/Boolean;

.field private static la:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    sput-object v0, Ltmsdkobf/en;->jP:Ljava/lang/String;

    .line 35
    sput-object v0, Ltmsdkobf/en;->kZ:Ljava/lang/Boolean;

    sput-object v0, Ltmsdkobf/en;->la:Ljava/lang/Boolean;

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 326
    const-string v1, "rqdp{  AppInfo.isContainReadLogPermission() start}"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 355
    :cond_0
    :goto_0
    return v0

    .line 332
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 333
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 335
    if-eqz v2, :cond_3

    .line 337
    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    .line 339
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_2

    .line 340
    const-string v1, "rqdp{  AppInfo.isContainReadLogPermission() end}"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_0

    .line 337
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 352
    :cond_3
    const-string v1, "rqdp{  AppInfo.isContainReadLogPermission() end}"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 345
    :catch_0
    move-exception v1

    .line 347
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 352
    const-string v1, "rqdp{  AppInfo.isContainReadLogPermission() end}"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "rqdp{  AppInfo.isContainReadLogPermission() end}"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v0}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 361
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 375
    :cond_0
    :goto_0
    return-object v0

    .line 365
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 366
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 367
    if-eqz v1, :cond_0

    .line 368
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 370
    :catch_0
    move-exception v1

    .line 372
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 477
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    move v0, v2

    .line 510
    :goto_0
    return v0

    .line 482
    :cond_1
    :try_start_0
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 483
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 484
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 486
    :cond_2
    const-string v0, "rqdp{  no running proc}"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 487
    goto :goto_0

    .line 490
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 493
    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v5, 0x64

    if-ne v4, v5, :cond_4

    .line 495
    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 497
    const-string v3, "rqdp{  current seen proc:}%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 498
    goto :goto_0

    .line 503
    :catch_0
    move-exception v0

    .line 505
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 506
    const-string v3, "rqdp{  Failed to judge }[%s]"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ltmsdkobf/eq;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 509
    :cond_5
    const-string v0, "rqdp{  current unseen proc:}%s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 510
    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 174
    if-nez p0, :cond_0

    .line 175
    const/4 v0, 0x0

    .line 176
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized e(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 185
    const-class v4, Ltmsdkobf/en;

    monitor-enter v4

    if-nez p0, :cond_1

    move-object v0, v1

    .line 191
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 192
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 193
    iget v5, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 195
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    .line 196
    :cond_0
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_1
    monitor-exit v4

    return-object v1

    .line 185
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 200
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    move v0, v3

    .line 201
    :goto_2
    array-length v7, v6

    if-ge v3, v7, :cond_4

    .line 203
    aget-char v7, v6, v3

    const/16 v8, 0x2e

    if-ne v7, v8, :cond_3

    .line 205
    add-int/lit8 v0, v0, 0x1

    .line 201
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 208
    :cond_4
    const/4 v3, 0x3

    if-ge v0, v3, :cond_5

    .line 210
    const-string v0, "rqdp{  add versionCode} %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v0, v3}, Ltmsdkobf/eq;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    :goto_3
    const-string v2, "rqdp{  version:} %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ltmsdkobf/eq;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v0

    .line 214
    goto :goto_1

    .line 216
    :catch_0
    move-exception v0

    .line 218
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 219
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ltmsdkobf/eq;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_5
    move-object v0, v2

    goto :goto_3
.end method

.method public static declared-synchronized f(Landroid/content/Context;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 268
    const-class v1, Ltmsdkobf/en;

    monitor-enter v1

    :try_start_0
    const-string v2, "rqdp{  Read Log Permittion! start}"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    if-nez p0, :cond_0

    .line 276
    :goto_0
    monitor-exit v1

    return v0

    .line 272
    :cond_0
    :try_start_1
    sget-object v0, Ltmsdkobf/en;->kZ:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 274
    const-string v0, "android.permission.READ_LOGS"

    invoke-static {p0, v0}, Ltmsdkobf/en;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Ltmsdkobf/en;->kZ:Ljava/lang/Boolean;

    .line 276
    :cond_1
    sget-object v0, Ltmsdkobf/en;->kZ:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized g(Landroid/content/Context;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 281
    const-class v1, Ltmsdkobf/en;

    monitor-enter v1

    :try_start_0
    const-string v2, "rqdp{  Read write Permittion! start}"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltmsdkobf/eq;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    if-nez p0, :cond_0

    .line 289
    :goto_0
    monitor-exit v1

    return v0

    .line 285
    :cond_0
    :try_start_1
    sget-object v0, Ltmsdkobf/en;->la:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 287
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Ltmsdkobf/en;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Ltmsdkobf/en;->la:Ljava/lang/Boolean;

    .line 289
    :cond_1
    sget-object v0, Ltmsdkobf/en;->la:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 380
    if-nez p0, :cond_0

    .line 391
    :goto_0
    return-object v0

    .line 383
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Ltmsdkobf/en;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 385
    if-nez v1, :cond_1

    .line 387
    const-string v1, "rqdp{  No found the apk file on the device,please check it!}"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltmsdkobf/eq;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 390
    :cond_1
    const-string v0, "SHA-1"

    invoke-static {v1, v0}, Ltmsdkobf/er;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 391
    invoke-static {v0, v2}, Ltmsdkobf/er;->a([BZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 399
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 400
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 402
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 404
    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v1, :cond_0

    .line 406
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    :goto_0
    return-object v0

    .line 410
    :catch_0
    move-exception v0

    .line 412
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 414
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
