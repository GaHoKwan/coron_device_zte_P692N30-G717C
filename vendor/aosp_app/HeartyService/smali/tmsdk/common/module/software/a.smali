.class final Ltmsdk/common/module/software/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static AZ:I

.field private static Ba:I

.field private static Bb:I

.field private static Bc:I

.field public static Bd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 43
    sput v1, Ltmsdk/common/module/software/a;->AZ:I

    .line 44
    sput v1, Ltmsdk/common/module/software/a;->Ba:I

    .line 45
    sput v1, Ltmsdk/common/module/software/a;->Bb:I

    .line 48
    sput v1, Ltmsdk/common/module/software/a;->Bc:I

    .line 51
    const-class v1, Ltmsdkobf/gs;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ltmsdk/common/module/software/a;->Bd:Ljava/lang/String;

    .line 55
    :try_start_0
    const-string v1, "android.content.pm.IPackageManager$Stub"

    invoke-static {v1}, Ltmsdkobf/kh;->aN(Ljava/lang/String;)Z

    .line 56
    const-string v1, "TRANSACTION_getInstallLocation"

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ltmsdkobf/kh;->c(Ljava/lang/String;I)I

    move-result v1

    sput v1, Ltmsdk/common/module/software/a;->Bb:I

    .line 57
    const-string v1, "TRANSACTION_setInstallLocation"

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ltmsdkobf/kh;->c(Ljava/lang/String;I)I

    move-result v1

    sput v1, Ltmsdk/common/module/software/a;->Ba:I

    .line 58
    const-string v1, "TRANSACTION_movePackage"

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ltmsdkobf/kh;->c(Ljava/lang/String;I)I

    move-result v1

    sput v1, Ltmsdk/common/module/software/a;->AZ:I
    :try_end_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .local v0, e:Ljava/lang/ExceptionInInitializerError;
    :goto_0
    return-void

    .line 59
    .end local v0           #e:Ljava/lang/ExceptionInInitializerError;
    :catch_0
    move-exception v0

    .line 60
    .restart local v0       #e:Ljava/lang/ExceptionInInitializerError;
    const-string v1, "AppMovedHelper"

    invoke-virtual {v0}, Ljava/lang/ExceptionInInitializerError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2
    .parameter "info"

    .prologue
    .line 105
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/pm/PackageInfo;)Z
    .locals 2
    .parameter "pkgInfo"

    .prologue
    .line 178
    invoke-static {}, Ltmsdk/common/utils/SDKUtil;->getSDKVersion()I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 179
    invoke-static {}, Ltmsdk/common/module/software/a;->fQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    const/4 v0, 0x0

    .line 183
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Ltmsdk/common/module/software/a;->b(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    goto :goto_0
.end method

.method public static a(Landroid/content/pm/PackageInfo;Z)Z
    .locals 5
    .parameter "pkgInfo"
    .parameter "useRoot"

    .prologue
    const/4 v4, 0x2

    .line 147
    invoke-static {}, Ltmsdk/common/utils/SDKUtil;->getSDKVersion()I

    move-result v2

    const/16 v3, 0xe

    if-lt v2, v3, :cond_1

    .line 148
    invoke-static {}, Ltmsdk/common/module/software/a;->fQ()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    const/4 v1, 0x0

    .line 169
    :cond_0
    :goto_0
    return v1

    .line 153
    :cond_1
    const/4 v1, 0x0

    .line 154
    .local v1, result:Z
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2}, Ltmsdk/common/module/software/a;->b(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2}, Ltmsdk/common/module/software/a;->c(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2}, Ltmsdk/common/module/software/a;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 155
    const/4 v0, 0x1

    .line 156
    .local v0, apk_install_location:I
    const-string v2, "installLocation"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Ltmsdkobf/kh;->a(Ljava/lang/Object;Ljava/lang/String;I)I

    move-result v0

    .line 158
    if-eq v0, v4, :cond_2

    if-nez v0, :cond_3

    .line 159
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 160
    :cond_3
    const/4 v2, -0x1

    if-ne v0, v2, :cond_4

    invoke-static {}, Ltmsdk/common/module/software/a;->fP()I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 161
    const/4 v1, 0x1

    goto :goto_0

    .line 162
    :cond_4
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->providerSupportPmRelative()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->isSystemUid()Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz p1, :cond_0

    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->canRunAtRoot()I

    move-result v2

    if-nez v2, :cond_0

    .line 165
    :cond_5
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static b(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2
    .parameter "info"

    .prologue
    .line 114
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 123
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized fP()I
    .locals 9

    .prologue
    .line 69
    const-class v5, Ltmsdk/common/module/software/a;

    monitor-enter v5

    :try_start_0
    sget v4, Ltmsdk/common/module/software/a;->Bc:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 70
    sget v4, Ltmsdk/common/module/software/a;->Bc:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .local v2, result:Ljava/lang/String;
    .local v3, script:Ljava/lang/String;
    :goto_0
    monitor-exit v5

    return v4

    .line 73
    .end local v2           #result:Ljava/lang/String;
    .end local v3           #script:Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v4, "service call package %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget v8, Ltmsdk/common/module/software/a;->Bb:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 74
    .restart local v3       #script:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v4, v6

    invoke-static {v4}, Ltmsdk/common/utils/ScriptHelper;->runScript([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    .restart local v2       #result:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 76
    const-string v4, "[ ]+"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, frag:[Ljava/lang/String;
    array-length v4, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v6, 0x3

    if-le v4, v6, :cond_1

    .line 79
    const/4 v4, 0x2

    :try_start_2
    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sput v4, Ltmsdk/common/module/software/a;->Bc:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 85
    .end local v1           #frag:[Ljava/lang/String;
    :cond_1
    :goto_1
    :try_start_3
    sget v4, Ltmsdk/common/module/software/a;->Bc:I

    goto :goto_0

    .line 80
    .restart local v1       #frag:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    sput v4, Ltmsdk/common/module/software/a;->Bc:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 69
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v1           #frag:[Ljava/lang/String;
    .end local v2           #result:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static fQ()Z
    .locals 6

    .prologue
    .line 131
    const/4 v2, 0x1

    .line 133
    .local v2, state:Z
    :try_start_0
    const-class v3, Landroid/os/Environment;

    const-string v4, "isExternalStorageEmulated"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 134
    .local v1, mtd:Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 138
    .end local v1           #mtd:Ljava/lang/reflect/Method;
    :goto_0
    return v2

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static movePackageToExternal(Ljava/lang/String;)Z
    .locals 6
    .parameter "pkg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 209
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->providerSupportPmRelative()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 211
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->provider()Ltmsdkobf/ln;

    move-result-object v1

    invoke-interface {v1, p0}, Ltmsdkobf/ln;->cC(Ljava/lang/String;)Z

    move-result v1

    .line 215
    :cond_0
    :goto_0
    return v1

    .line 214
    :cond_1
    const-string v3, "service call package %d s16 %s i32 2"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    sget v5, Ltmsdk/common/module/software/a;->AZ:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object p0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, script:Ljava/lang/String;
    new-array v3, v1, [Ljava/lang/String;

    aput-object v0, v3, v2

    invoke-static {v3}, Ltmsdk/common/utils/ScriptHelper;->runScriptIfSystemUidOrAsRoot([Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public static movePackageToInteranl(Ljava/lang/String;)Z
    .locals 6
    .parameter "pkg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 193
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->providerSupportPmRelative()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 195
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->provider()Ltmsdkobf/ln;

    move-result-object v1

    invoke-interface {v1, p0}, Ltmsdkobf/ln;->cB(Ljava/lang/String;)Z

    move-result v1

    .line 199
    :cond_0
    :goto_0
    return v1

    .line 198
    :cond_1
    const-string v3, "service call package %d s16 %s i32 1"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    sget v5, Ltmsdk/common/module/software/a;->AZ:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object p0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, script:Ljava/lang/String;
    new-array v3, v1, [Ljava/lang/String;

    aput-object v0, v3, v2

    invoke-static {v3}, Ltmsdk/common/utils/ScriptHelper;->runScriptIfSystemUidOrAsRoot([Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public static moveToExternal(Ljava/lang/String;)I
    .locals 9
    .parameter "pkg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    .line 232
    if-eqz p0, :cond_0

    const-string v5, ""

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 249
    :cond_0
    :goto_0
    return v4

    .line 235
    :cond_1
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 238
    .local v0, apkPath:Ljava/lang/String;
    const-string v5, "export CLASSPATH=%s && exec app_process /system/bin %s move %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v8

    sget-object v7, Ltmsdk/common/module/software/a;->Bd:Ljava/lang/String;

    aput-object v7, v6, v4

    const/4 v7, 0x2

    aput-object p0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, cmd:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .local v3, res:Ljava/lang/StringBuilder;
    const v5, 0x186a0

    new-array v6, v4, [Ljava/lang/String;

    aput-object v1, v6, v8

    invoke-static {v5, v3, v6}, Ltmsdk/common/utils/ScriptHelper;->runScriptIfSystemUidOrAsRoot(ILjava/lang/StringBuilder;[Ljava/lang/String;)I

    .line 245
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 246
    .local v2, output:Ljava/lang/String;
    const-string v5, "Header"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 247
    const-string v5, "\n"

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v4, v5, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 249
    :cond_2
    const/16 v4, 0x8

    goto :goto_0
.end method

.method public static moveToInteranl(Ljava/lang/String;)I
    .locals 9
    .parameter "pkg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    .line 265
    if-eqz p0, :cond_0

    const-string v5, ""

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 282
    :cond_0
    :goto_0
    return v4

    .line 268
    :cond_1
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 271
    .local v0, apkPath:Ljava/lang/String;
    const-string v5, "export CLASSPATH=%s && exec app_process /system/bin %s move -l %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v8

    sget-object v7, Ltmsdk/common/module/software/a;->Bd:Ljava/lang/String;

    aput-object v7, v6, v4

    const/4 v7, 0x2

    aput-object p0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, cmd:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    .local v3, res:Ljava/lang/StringBuilder;
    const v5, 0x186a0

    new-array v6, v4, [Ljava/lang/String;

    aput-object v1, v6, v8

    invoke-static {v5, v3, v6}, Ltmsdk/common/utils/ScriptHelper;->runScriptIfSystemUidOrAsRoot(ILjava/lang/StringBuilder;[Ljava/lang/String;)I

    .line 278
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 279
    .local v2, output:Ljava/lang/String;
    const-string v5, "Header"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 280
    const-string v5, "\n"

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v4, v5, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 282
    :cond_2
    const/16 v4, 0x8

    goto :goto_0
.end method
