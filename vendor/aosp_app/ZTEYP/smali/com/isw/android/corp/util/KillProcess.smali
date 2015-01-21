.class public Lcom/isw/android/corp/util/KillProcess;
.super Ljava/lang/Object;
.source "KillProcess.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KillProcess"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static restartApp()V
    .locals 12

    .prologue
    .line 13
    :try_start_0
    const-string v7, "ccoverlay"

    .line 14
    const-string v8, "com.huimao.bobo,com.qihoo360.mobilesafe,"

    .line 13
    invoke-static {v7, v8}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 15
    .local v6, thirdAppList:Ljava/lang/String;
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 16
    .local v5, sub:[Ljava/lang/String;
    sget-object v7, Lcom/isw/android/corp/util/WinksApplication;->context:Landroid/content/Context;

    .line 17
    const-string v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 16
    check-cast v0, Landroid/app/ActivityManager;

    .line 18
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v7, v5

    if-lt v4, v7, :cond_0

    .line 55
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v4           #i:I
    .end local v5           #sub:[Ljava/lang/String;
    :goto_1
    return-void

    .line 19
    .restart local v0       #am:Landroid/app/ActivityManager;
    .restart local v4       #i:I
    .restart local v5       #sub:[Ljava/lang/String;
    :cond_0
    aget-object v7, v5, v4

    invoke-static {v7}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    move-result v7

    if-nez v7, :cond_1

    .line 37
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 38
    const-string v8, "forceStopPackage"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    .line 39
    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    .line 38
    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 40
    .local v3, forceStopPackage:Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 41
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aget-object v9, v5, v4

    aput-object v9, v7, v8

    invoke-virtual {v3, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    .line 18
    .end local v3           #forceStopPackage:Ljava/lang/reflect/Method;
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 45
    :catch_0
    move-exception v1

    .line 46
    .local v1, err:Ljava/lang/Error;
    :try_start_2
    const-string v7, "KillProcess"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "err: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 50
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #err:Ljava/lang/Error;
    .end local v4           #i:I
    .end local v5           #sub:[Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 51
    .local v2, ex:Ljava/lang/Exception;
    const-string v7, "KillProcess"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "ex: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 52
    .end local v2           #ex:Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 53
    .restart local v1       #err:Ljava/lang/Error;
    const-string v7, "KillProcess"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "err: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 43
    .end local v1           #err:Ljava/lang/Error;
    .restart local v0       #am:Landroid/app/ActivityManager;
    .restart local v4       #i:I
    .restart local v5       #sub:[Ljava/lang/String;
    :catch_3
    move-exception v7

    goto :goto_2
.end method
