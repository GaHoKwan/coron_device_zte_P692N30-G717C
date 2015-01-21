.class public Lcom/zte/backup/application/AppsAction;
.super Ljava/lang/Object;
.source "AppsAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/backup/application/AppsAction$CompratorByLastModified;
    }
.end annotation


# static fields
.field private static bCancelOperation:Z

.field private static final mInstance:Lcom/zte/backup/application/AppsAction;


# instance fields
.field private appResult:I

.field private taskResult:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/zte/backup/application/AppsAction;

    invoke-direct {v0}, Lcom/zte/backup/application/AppsAction;-><init>()V

    sput-object v0, Lcom/zte/backup/application/AppsAction;->mInstance:Lcom/zte/backup/application/AppsAction;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput v0, p0, Lcom/zte/backup/application/AppsAction;->taskResult:I

    .line 51
    iput v0, p0, Lcom/zte/backup/application/AppsAction;->appResult:I

    .line 45
    return-void
.end method

.method private apkIsNeedToBackup(Lcom/zte/backup/application/BackupAppInfo;Lcom/zte/backup/composer/Composer;)Z
    .locals 15
    .parameter "appInfo"
    .parameter "compose"

    .prologue
    .line 164
    const/4 v3, 0x0

    .line 165
    .local v3, bResult:Z
    const/4 v2, 0x0

    .line 167
    .local v2, bFound:Z
    invoke-virtual/range {p2 .. p2}, Lcom/zte/backup/composer/Composer;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 168
    .local v5, desPath:Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    .local v10, sdPath:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    .line 170
    .local v9, files:[Ljava/io/File;
    array-length v12, v9

    if-lez v12, :cond_0

    .line 171
    array-length v13, v9

    const/4 v12, 0x0

    :goto_0
    if-lt v12, v13, :cond_2

    .line 195
    :cond_0
    :goto_1
    if-nez v2, :cond_1

    .line 196
    const/4 v3, 0x1

    .line 198
    :cond_1
    return v3

    .line 171
    :cond_2
    aget-object v6, v9, v12

    .line 172
    .local v6, file:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 173
    .local v7, filePath:Ljava/lang/String;
    const-string v14, ".apk"

    invoke-virtual {v7, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 171
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 177
    :cond_4
    new-instance v0, Lcom/zte/backup/data/ApkInfo;

    invoke-direct {v0}, Lcom/zte/backup/data/ApkInfo;-><init>()V

    .line 178
    .local v0, apk:Lcom/zte/backup/data/ApkInfo;
    invoke-virtual/range {p2 .. p2}, Lcom/zte/backup/composer/Composer;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {p0, v14, v7, v0}, Lcom/zte/backup/application/AppsAction;->getApkInfoFromAPKEx(Landroid/content/Context;Ljava/lang/String;Lcom/zte/backup/data/ApkInfo;)Z

    move-result v4

    .line 179
    .local v4, bRet:Z
    if-eqz v4, :cond_3

    .line 182
    invoke-virtual {v0}, Lcom/zte/backup/data/ApkInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 183
    .local v8, filename:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/zte/backup/application/BackupAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 184
    .local v11, srcname:Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 187
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 188
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v1

    .line 189
    .local v1, bDel:Z
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "bDel"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/zte/backup/common/Logging;->i(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private chAppDataOwn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I
    .locals 5
    .parameter "filename"
    .parameter "path"
    .parameter "uid"
    .parameter "cx"

    .prologue
    .line 829
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/zte/backup/common/PathInfo;->getAPPDATA()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 830
    const-string v4, "7"

    .line 829
    invoke-static {p2, v3, p3, v4}, Lcom/zte/backup/common/CommonFunctions;->socketCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 831
    .local v2, socketCommand:Ljava/lang/String;
    new-instance v0, Lcom/zte/backup/service/RootRestoreClient;

    invoke-direct {v0, p4, v2}, Lcom/zte/backup/service/RootRestoreClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 832
    .local v0, copyData:Lcom/zte/backup/service/RootRestoreClient;
    invoke-virtual {v0}, Lcom/zte/backup/service/RootRestoreClient;->getOperateResult()I

    move-result v1

    .line 833
    .local v1, dataCopy:I
    if-eqz v1, :cond_0

    .line 834
    const/16 v3, 0x2002

    .line 837
    :goto_0
    return v3

    :cond_0
    const/16 v3, 0x2001

    goto :goto_0
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 5
    .parameter "context"
    .parameter "dipValue"

    .prologue
    .line 348
    const/4 v1, 0x0

    .line 350
    .local v1, px:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    .local v2, scale:F
    mul-float v3, p1, v2

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v1, v3

    .line 356
    .end local v2           #scale:F
    :goto_0
    return v1

    .line 353
    :catch_0
    move-exception v0

    .line 354
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "App error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private excludeApk(Ljava/lang/String;)Z
    .locals 6
    .parameter "path"

    .prologue
    const/4 v3, 0x0

    .line 704
    const/4 v1, 0x0

    .line 705
    .local v1, result:Z
    const/4 v4, 0x7

    new-array v0, v4, [Ljava/lang/String;

    const-string v4, "com.cootek.smartinput"

    aput-object v4, v0, v3

    const/4 v4, 0x1

    const-string v5, "com.sohu.inputmethod.sogou"

    aput-object v5, v0, v4

    const/4 v4, 0x2

    const-string v5, "org.android.seeker.reader.hgzhz"

    aput-object v5, v0, v4

    const/4 v4, 0x3

    .line 706
    const-string v5, "com.moji.mjweather"

    aput-object v5, v0, v4

    const/4 v4, 0x4

    const-string v5, "com.nd.android.pandahome2"

    aput-object v5, v0, v4

    const/4 v4, 0x5

    const-string v5, "com.outfit7.talkingtom"

    aput-object v5, v0, v4

    const/4 v4, 0x6

    .line 707
    const-string v5, "com.outfatmob.rthunder2play"

    aput-object v5, v0, v4

    .line 708
    .local v0, list:[Ljava/lang/String;
    array-length v4, v0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 716
    :goto_1
    return v1

    .line 708
    :cond_0
    aget-object v2, v0, v3

    .line 709
    .local v2, sub:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 710
    const/4 v1, 0x1

    .line 711
    goto :goto_1

    .line 708
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getAddAssetPath()Ljava/lang/reflect/Method;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 508
    const-string v0, "android.content.res.AssetManager"

    .line 509
    .local v0, PATH_AssetManager:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 512
    .local v1, assetMagCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Class;

    .line 513
    .local v2, typeArgs:[Ljava/lang/Class;
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/Class;

    .line 514
    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    .line 515
    const-string v3, "addAssetPath"

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    return-object v3
.end method

.method private getApkInfo(Landroid/content/Context;Ljava/lang/String;Lcom/zte/backup/data/ApkInfo;)V
    .locals 7
    .parameter "context"
    .parameter "apkPath"
    .parameter "AI"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 443
    invoke-direct {p0, p2}, Lcom/zte/backup/application/AppsAction;->getAppInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 444
    .local v4, info:Landroid/content/pm/ApplicationInfo;
    invoke-direct {p0}, Lcom/zte/backup/application/AppsAction;->getAddAssetPath()Ljava/lang/reflect/Method;

    move-result-object v6

    .line 445
    .local v6, assetMag_addAssetPathMtd:Ljava/lang/reflect/Method;
    invoke-direct {p0, p1, p2, v6}, Lcom/zte/backup/application/AppsAction;->getResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/reflect/Method;)Landroid/content/res/Resources;

    move-result-object v5

    .local v5, res:Landroid/content/res/Resources;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 446
    invoke-direct/range {v0 .. v5}, Lcom/zte/backup/application/AppsAction;->setAI(Landroid/content/Context;Ljava/lang/String;Lcom/zte/backup/data/ApkInfo;Landroid/content/pm/ApplicationInfo;Landroid/content/res/Resources;)V

    .line 447
    return-void
.end method

.method private getAppInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 3
    .parameter "apkPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 520
    invoke-direct {p0}, Lcom/zte/backup/application/AppsAction;->parsePackageMtd()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 521
    .local v1, pkgParser_parsePackageMtd:Ljava/lang/reflect/Method;
    invoke-direct {p0}, Lcom/zte/backup/application/AppsAction;->parserConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 522
    .local v0, pkgParserCt:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    invoke-direct {p0, p1, v1, v0}, Lcom/zte/backup/application/AppsAction;->parseAppInfo(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Constructor;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    return-object v2
.end method

.method public static getInstance()Lcom/zte/backup/application/AppsAction;
    .locals 1

    .prologue
    .line 408
    sget-object v0, Lcom/zte/backup/application/AppsAction;->mInstance:Lcom/zte/backup/application/AppsAction;

    return-object v0
.end method

.method private getLastAPKDateFromPath(Ljava/lang/String;)Ljava/util/Date;
    .locals 8
    .parameter "strPath"

    .prologue
    .line 985
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 986
    .local v3, sdPath:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 987
    .local v2, files1:[Ljava/io/File;
    new-instance v0, Ljava/util/Date;

    const-wide/16 v4, 0x0

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 988
    .local v0, date:Ljava/util/Date;
    if-eqz v2, :cond_0

    .line 989
    new-instance v4, Lcom/zte/backup/application/AppsAction$CompratorByLastModified;

    invoke-direct {v4}, Lcom/zte/backup/application/AppsAction$CompratorByLastModified;-><init>()V

    invoke-static {v2, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 990
    array-length v4, v2

    if-lez v4, :cond_0

    .line 991
    array-length v5, v2

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_1

    .line 1000
    :cond_0
    :goto_1
    return-object v0

    .line 991
    :cond_1
    aget-object v1, v2, v4

    .line 992
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".apk"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 991
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 995
    :cond_2
    new-instance v0, Ljava/util/Date;

    .end local v0           #date:Ljava/util/Date;
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 996
    .restart local v0       #date:Ljava/util/Date;
    goto :goto_1
.end method

.method private getResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/reflect/Method;)Landroid/content/res/Resources;
    .locals 10
    .parameter "context"
    .parameter "apkPath"
    .parameter "assetMag_addAssetPathMtd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 483
    const/4 v6, 0x0

    check-cast v6, [Ljava/lang/Class;

    .line 484
    .local v6, typeArgs:[Ljava/lang/Class;
    const/4 v7, 0x0

    check-cast v7, [Ljava/lang/Object;

    .line 485
    .local v7, valueArgs:[Ljava/lang/Object;
    const-string v0, "android.content.res.AssetManager"

    .line 486
    .local v0, PATH_AssetManager1:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 487
    .local v2, assetMagCls1:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 488
    .local v3, assetMagCt2:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 489
    .local v1, assetMag:Ljava/lang/Object;
    const/4 v8, 0x1

    new-array v7, v8, [Ljava/lang/Object;

    .line 490
    const/4 v8, 0x0

    aput-object p2, v7, v8

    .line 491
    invoke-virtual {p3, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 493
    .local v4, res:Landroid/content/res/Resources;
    const/4 v8, 0x3

    new-array v6, v8, [Ljava/lang/Class;

    .line 494
    const/4 v8, 0x0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v6, v8

    .line 495
    const/4 v8, 0x1

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v6, v8

    .line 496
    const/4 v8, 0x2

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v6, v8

    .line 497
    const-class v8, Landroid/content/res/Resources;

    invoke-virtual {v8, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 498
    .local v5, resCt:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Landroid/content/res/Resources;>;"
    const/4 v8, 0x3

    new-array v7, v8, [Ljava/lang/Object;

    .line 499
    const/4 v8, 0x0

    aput-object v1, v7, v8

    .line 500
    const/4 v8, 0x1

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    aput-object v9, v7, v8

    .line 501
    const/4 v8, 0x2

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    aput-object v9, v7, v8

    .line 502
    invoke-virtual {v5, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #res:Landroid/content/res/Resources;
    check-cast v4, Landroid/content/res/Resources;

    .line 503
    .restart local v4       #res:Landroid/content/res/Resources;
    return-object v4
.end method

.method public static isBCancelOperation()Z
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/zte/backup/application/AppsAction;->bCancelOperation:Z

    return v0
.end method

.method private parseAppInfo(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Constructor;)Landroid/content/pm/ApplicationInfo;
    .locals 8
    .parameter "apkPath"
    .parameter "pkgParser_parsePackageMtd"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Constructor",
            "<*>;)",
            "Landroid/content/pm/ApplicationInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .local p3, pkgParserCt:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 527
    new-array v4, v7, [Ljava/lang/Object;

    .line 528
    .local v4, valueArgs:[Ljava/lang/Object;
    aput-object p1, v4, v6

    .line 529
    invoke-virtual {p3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 530
    .local v2, pkgParser:Ljava/lang/Object;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 531
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 532
    const/4 v5, 0x4

    new-array v4, v5, [Ljava/lang/Object;

    .line 533
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v6

    .line 534
    aput-object p1, v4, v7

    .line 535
    const/4 v5, 0x2

    aput-object v1, v4, v5

    .line 536
    const/4 v5, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 537
    invoke-virtual {p2, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 538
    .local v3, pkgParserPkg:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "applicationInfo"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 539
    .local v0, appInfoFld:Ljava/lang/reflect/Field;
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    return-object v5
.end method

.method private parsePackageMtd()Ljava/lang/reflect/Method;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 551
    const-string v0, "android.content.pm.PackageParser"

    .line 552
    .local v0, PATH_PackageParser:Ljava/lang/String;
    const-string v3, "android.content.pm.PackageParser"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 555
    .local v1, pkgParserCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v3, 0x4

    new-array v2, v3, [Ljava/lang/Class;

    .line 556
    .local v2, typeArgs:[Ljava/lang/Class;
    const/4 v3, 0x0

    const-class v4, Ljava/io/File;

    aput-object v4, v2, v3

    .line 557
    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    .line 558
    const/4 v3, 0x2

    const-class v4, Landroid/util/DisplayMetrics;

    aput-object v4, v2, v3

    .line 559
    const/4 v3, 0x3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    .line 560
    const-string v3, "parsePackage"

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    return-object v3
.end method

.method private parserConstructor()Ljava/lang/reflect/Constructor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 543
    const-string v0, "android.content.pm.PackageParser"

    .line 544
    .local v0, PATH_PackageParser:Ljava/lang/String;
    const-string v3, "android.content.pm.PackageParser"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 545
    .local v1, pkgParserCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/Class;

    .line 546
    .local v2, typeArgs:[Ljava/lang/Class;
    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    .line 547
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    return-object v3
.end method

.method public static px2dip(Landroid/content/Context;F)I
    .locals 5
    .parameter "context"
    .parameter "pxValue"

    .prologue
    .line 336
    const/4 v0, 0x0

    .line 338
    .local v0, dip:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    .local v2, scale:F
    div-float v3, p1, v2

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v0, v3

    .line 344
    .end local v2           #scale:F
    :goto_0
    return v0

    .line 341
    :catch_0
    move-exception v1

    .line 342
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "App error"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private releaseAndDelLibTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I
    .locals 8
    .parameter "filename"
    .parameter "path"
    .parameter "uid"
    .parameter "cx"

    .prologue
    .line 795
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "lib"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 796
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/zte/backup/common/PathInfo;->getAPPDATA()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/lib"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 797
    .local v3, des:Ljava/lang/String;
    const-string v6, "2"

    invoke-static {p2, v3, p3, v6}, Lcom/zte/backup/common/CommonFunctions;->socketCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 798
    .local v5, socketCommand:Ljava/lang/String;
    new-instance v1, Lcom/zte/backup/service/RootRestoreClient;

    invoke-direct {v1, p4, v5}, Lcom/zte/backup/service/RootRestoreClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 799
    .local v1, copyData:Lcom/zte/backup/service/RootRestoreClient;
    invoke-virtual {v1}, Lcom/zte/backup/service/RootRestoreClient;->getOperateResult()I

    move-result v2

    .line 801
    .local v2, dataCopy:I
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 802
    .local v4, libTar:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 803
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v0

    .line 804
    .local v0, bDel:Z
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "bDel:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zte/backup/common/Logging;->i(Ljava/lang/String;)V

    .line 807
    .end local v0           #bDel:Z
    :cond_0
    if-eqz v2, :cond_1

    .line 808
    const/16 v6, 0x2002

    .line 811
    :goto_0
    return v6

    :cond_1
    const/16 v6, 0x2001

    goto :goto_0
.end method

.method private releaseAppTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I
    .locals 5
    .parameter "filename"
    .parameter "path"
    .parameter "uid"
    .parameter "cx"

    .prologue
    .line 863
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/zte/backup/common/PathInfo;->getAPPDATA()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 864
    const-string v4, "2"

    .line 863
    invoke-static {p2, v3, p3, v4}, Lcom/zte/backup/common/CommonFunctions;->socketCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 865
    .local v2, socketCommand:Ljava/lang/String;
    new-instance v0, Lcom/zte/backup/service/RootRestoreClient;

    invoke-direct {v0, p4, v2}, Lcom/zte/backup/service/RootRestoreClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 866
    .local v0, copyData:Lcom/zte/backup/service/RootRestoreClient;
    invoke-virtual {v0}, Lcom/zte/backup/service/RootRestoreClient;->getOperateResult()I

    move-result v1

    .line 867
    .local v1, dataCopy:I
    if-eqz v1, :cond_0

    .line 868
    const/16 v3, 0x2002

    .line 871
    :goto_0
    return v3

    :cond_0
    const/16 v3, 0x2001

    goto :goto_0
.end method

.method private restoreAppsInOriginCase(Ljava/lang/String;ILandroid/content/Context;)I
    .locals 17
    .parameter "apkPath"
    .parameter "copyResult"
    .parameter "cx"

    .prologue
    .line 720
    const/4 v15, 0x1

    move/from16 v0, p2

    if-ne v0, v15, :cond_1

    .line 721
    const/16 v3, 0x2007

    .line 791
    :cond_0
    :goto_0
    return v3

    .line 722
    :cond_1
    if-eqz p2, :cond_2

    .line 723
    const/16 v3, 0x2002

    goto :goto_0

    .line 726
    :cond_2
    new-instance v2, Lcom/zte/backup/data/ApkInfo;

    invoke-direct {v2}, Lcom/zte/backup/data/ApkInfo;-><init>()V

    .line 727
    .local v2, apk:Lcom/zte/backup/data/ApkInfo;
    invoke-static {}, Lcom/zte/backup/application/AppsAction;->getInstance()Lcom/zte/backup/application/AppsAction;

    move-result-object v15

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v15, v0, v1, v2}, Lcom/zte/backup/application/AppsAction;->getApkInfoFromAPKEx(Landroid/content/Context;Ljava/lang/String;Lcom/zte/backup/data/ApkInfo;)Z

    move-result v4

    .line 728
    .local v4, bRet:Z
    if-nez v4, :cond_3

    .line 729
    const/16 v3, 0x2002

    goto :goto_0

    .line 732
    :cond_3
    const/16 v3, 0x2002

    .line 733
    .local v3, appDataResult:I
    invoke-virtual {v2}, Lcom/zte/backup/data/ApkInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 734
    .local v9, filename:Ljava/lang/String;
    const/4 v15, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, -0x3

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 736
    .local v11, pathT:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "tar"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 738
    .local v10, path:Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 739
    .local v8, file:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/zte/backup/application/AppsAction;->excludeApk(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 740
    :cond_4
    const/16 v3, 0x2001

    goto :goto_0

    .line 743
    :cond_5
    invoke-static {}, Lcom/zte/backup/application/AppsAction;->getInstance()Lcom/zte/backup/application/AppsAction;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v9, v0}, Lcom/zte/backup/application/AppsAction;->getApkUid(Ljava/lang/String;Landroid/content/Context;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    .line 744
    .local v14, uid:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v9, v10, v14, v1}, Lcom/zte/backup/application/AppsAction;->tarAppLibDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v13

    .line 763
    .local v13, tarLibDir:I
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v9, v10, v14, v1}, Lcom/zte/backup/application/AppsAction;->releaseAppTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v3

    .line 765
    const/16 v15, 0x2001

    if-ne v3, v15, :cond_6

    .line 766
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v9, v10, v14, v1}, Lcom/zte/backup/application/AppsAction;->chAppDataOwn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v3

    .line 770
    :cond_6
    const/16 v15, 0x2001

    if-ne v13, v15, :cond_7

    .line 771
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v9, v10, v14, v1}, Lcom/zte/backup/application/AppsAction;->releaseAndDelLibTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v13

    .line 776
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "releaseAndDelLibTar:"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/zte/backup/common/Logging;->i(Ljava/lang/String;)V

    .line 779
    :cond_7
    invoke-virtual {v2}, Lcom/zte/backup/data/ApkInfo;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "com.imangi.templerun2"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0x2001

    if-ne v13, v15, :cond_0

    .line 782
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 783
    .local v7, extSD:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "/Android/data/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Lcom/zte/backup/data/ApkInfo;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 784
    .local v6, desInSD:Ljava/lang/String;
    new-instance v15, Lcom/zte/backup/cloudbackup/utils/FileHelper;

    invoke-direct {v15}, Lcom/zte/backup/cloudbackup/utils/FileHelper;-><init>()V

    invoke-virtual {v15, v6}, Lcom/zte/backup/cloudbackup/utils/FileHelper;->creatDir(Ljava/lang/String;)Ljava/io/File;

    .line 785
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "/data/data/"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/zte/backup/data/ApkInfo;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/files"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v16, "5"

    move-object/from16 v0, v16

    invoke-static {v15, v6, v14, v0}, Lcom/zte/backup/common/CommonFunctions;->socketCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 786
    .local v5, cmd:Ljava/lang/String;
    new-instance v12, Lcom/zte/backup/service/RootRestoreClient;

    move-object/from16 v0, p3

    invoke-direct {v12, v0, v5}, Lcom/zte/backup/service/RootRestoreClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 787
    .local v12, rc:Lcom/zte/backup/service/RootRestoreClient;
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v12}, Lcom/zte/backup/service/RootRestoreClient;->getOperateResult()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(I)V

    goto/16 :goto_0
.end method

.method private setAI(Landroid/content/Context;Ljava/lang/String;Lcom/zte/backup/data/ApkInfo;Landroid/content/pm/ApplicationInfo;Landroid/content/res/Resources;)V
    .locals 5
    .parameter "context"
    .parameter "apkPath"
    .parameter "aI"
    .parameter "info"
    .parameter "res"

    .prologue
    .line 450
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 451
    .local v2, pm:Landroid/content/pm/PackageManager;
    iget v4, p4, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v4, :cond_0

    .line 452
    iget v4, p4, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {p5, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 457
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p3, v0}, Lcom/zte/backup/data/ApkInfo;->setApkIcon(Landroid/graphics/drawable/Drawable;)V

    .line 459
    .end local v0           #icon:Landroid/graphics/drawable/Drawable;
    :cond_0
    iget v4, p4, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v4, :cond_3

    .line 460
    iget v4, p4, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {p5, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 461
    .local v3, temp:Ljava/lang/String;
    invoke-virtual {p3, v3}, Lcom/zte/backup/data/ApkInfo;->setApkName(Ljava/lang/String;)V

    .line 466
    :goto_0
    iget-object v4, p4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 467
    iget-object v3, p4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 468
    invoke-virtual {p3, v3}, Lcom/zte/backup/data/ApkInfo;->setPackageName(Ljava/lang/String;)V

    .line 474
    :cond_1
    const/16 v4, 0x2000

    invoke-virtual {v2, p2, v4}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 475
    .local v1, infoEx:Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_2

    .line 476
    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p3, v4}, Lcom/zte/backup/data/ApkInfo;->setVersionCode(I)V

    .line 478
    :cond_2
    return-void

    .line 463
    .end local v1           #infoEx:Landroid/content/pm/PackageInfo;
    .end local v3           #temp:Ljava/lang/String;
    :cond_3
    invoke-virtual {v2, p4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 464
    .restart local v3       #temp:Ljava/lang/String;
    invoke-virtual {p3, v3}, Lcom/zte/backup/data/ApkInfo;->setApkName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setBCancelOperation(Z)V
    .locals 0
    .parameter "cancelOperation"

    .prologue
    .line 66
    sput-boolean p0, Lcom/zte/backup/application/AppsAction;->bCancelOperation:Z

    .line 67
    return-void
.end method

.method private sortAllGenerationApsList(Ljava/util/List;Lcom/zte/backup/data/ApkInfo;)V
    .locals 5
    .parameter
    .parameter "apkInfo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/backup/data/ApkInfo;",
            ">;",
            "Lcom/zte/backup/data/ApkInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 284
    .local p1, fileList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/backup/data/ApkInfo;>;"
    invoke-virtual {p2}, Lcom/zte/backup/data/ApkInfo;->getApkDir()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/zte/backup/common/PathInfo;->getAppPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 285
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lcom/zte/backup/data/ApkInfo;->setGenerationOne(Z)V

    .line 288
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 289
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    :cond_1
    return-void

    .line 291
    :cond_2
    const/4 v0, 0x0

    .line 292
    .local v0, index:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/backup/data/ApkInfo;

    .line 293
    .local v1, preApkInfo:Lcom/zte/backup/data/ApkInfo;
    invoke-virtual {v1}, Lcom/zte/backup/data/ApkInfo;->getApkName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/zte/backup/data/ApkInfo;->getApkName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lcom/zte/backup/data/ApkInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 294
    invoke-virtual {p2}, Lcom/zte/backup/data/ApkInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 295
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 297
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_3

    .line 298
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private sortAppFileList(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/backup/data/ApkInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/zte/backup/data/ApkInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 271
    .local p1, fileList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/backup/data/ApkInfo;>;"
    return-object p1
.end method

.method private tarAppLibDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I
    .locals 7
    .parameter "filename"
    .parameter "path"
    .parameter "uid"
    .parameter "cx"

    .prologue
    .line 815
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/zte/backup/common/PathInfo;->getAPPDATA()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/lib"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 816
    .local v4, src:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "lib"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 817
    .local v1, des:Ljava/lang/String;
    const-string v5, "1"

    invoke-static {v4, v1, p3, v5}, Lcom/zte/backup/common/CommonFunctions;->socketCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 818
    .local v3, socketCommand:Ljava/lang/String;
    new-instance v2, Lcom/zte/backup/service/RootRestoreClient;

    invoke-direct {v2, p4, v3}, Lcom/zte/backup/service/RootRestoreClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 819
    .local v2, rc:Lcom/zte/backup/service/RootRestoreClient;
    invoke-virtual {v2}, Lcom/zte/backup/service/RootRestoreClient;->getOperateResult()I

    move-result v0

    .line 821
    .local v0, copyResult:I
    if-nez v0, :cond_0

    .line 822
    const/16 v5, 0x2001

    .line 825
    :goto_0
    return v5

    :cond_0
    const/16 v5, 0x2002

    goto :goto_0
.end method

.method private updateG1ApkAndTar(Lcom/zte/backup/application/BackupAppInfo;Ljava/lang/String;)V
    .locals 7
    .parameter "appInfo"
    .parameter "appname"

    .prologue
    .line 147
    invoke-static {}, Lcom/zte/backup/common/PathInfo;->getAppFullPathG1()Ljava/lang/String;

    move-result-object v4

    .line 148
    .local v4, updatePath:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 149
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    .local v0, apkFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 151
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 152
    .local v1, bDel:Z
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "bDel"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zte/backup/common/Logging;->i(Ljava/lang/String;)V

    .line 154
    .end local v1           #bDel:Z
    :cond_0
    invoke-static {}, Lcom/zte/backup/common/PathInfo;->getAppFullPathG1()Ljava/lang/String;

    move-result-object v4

    .line 155
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zte/backup/application/BackupAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".tar"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 156
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    .local v3, tarFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 158
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v2

    .line 159
    .local v2, bDelTar:Z
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "bDelTar = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zte/backup/common/Logging;->i(Ljava/lang/String;)V

    .line 161
    .end local v2           #bDelTar:Z
    :cond_1
    return-void
.end method


# virtual methods
.method public apkIsUpdated(Ljava/lang/String;ILjava/util/List;)I
    .locals 6
    .parameter "packageName"
    .parameter "visionCode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/zte/backup/data/ApkInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 894
    .local p3, apkList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/backup/data/ApkInfo;>;"
    const/4 v2, 0x0

    .line 896
    .local v2, iResult:I
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 908
    const/4 v4, 0x1

    :goto_0
    return v4

    .line 896
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/backup/data/ApkInfo;

    .line 897
    .local v0, apk:Lcom/zte/backup/data/ApkInfo;
    invoke-virtual {v0}, Lcom/zte/backup/data/ApkInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 898
    .local v1, filename:Ljava/lang/String;
    move-object v3, p1

    .line 900
    .local v3, srcname:Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 901
    invoke-virtual {v0}, Lcom/zte/backup/data/ApkInfo;->getVersionCode()I

    move-result v4

    if-le p2, v4, :cond_2

    .line 902
    const/4 v2, 0x2

    :cond_2
    move v4, v2

    .line 904
    goto :goto_0
.end method

.method public applicationsBackup(Lcom/zte/backup/application/BackupAppInfo;Lcom/zte/backup/composer/Composer;)V
    .locals 21
    .parameter "appInfo"
    .parameter "compose"

    .prologue
    .line 101
    invoke-virtual/range {p2 .. p2}, Lcom/zte/backup/composer/Composer;->getPath()Ljava/lang/String;

    move-result-object v12

    .line 102
    .local v12, desPath:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/zte/backup/application/BackupAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, ".apk"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 103
    .local v5, appname:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/zte/backup/application/BackupAppInfo;->getApkResourceDir()Ljava/lang/String;

    move-result-object v4

    .line 104
    .local v4, apkSourceDir:Ljava/lang/String;
    invoke-direct/range {p0 .. p2}, Lcom/zte/backup/application/AppsAction;->apkIsNeedToBackup(Lcom/zte/backup/application/BackupAppInfo;Lcom/zte/backup/composer/Composer;)Z

    .line 106
    new-instance v8, Lcom/zte/backup/application/AppsCopyAppToSD;

    invoke-direct {v8}, Lcom/zte/backup/application/AppsCopyAppToSD;-><init>()V

    .line 107
    .local v8, cpts:Lcom/zte/backup/application/AppsCopyAppToSD;
    invoke-virtual {v8, v4, v12, v5}, Lcom/zte/backup/application/AppsCopyAppToSD;->copy1App2SD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    .line 108
    .local v15, ret:Z
    if-eqz v15, :cond_3

    .line 109
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/zte/backup/application/AppsAction;->updateG1ApkAndTar(Lcom/zte/backup/application/BackupAppInfo;Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/zte/backup/common/CommonFunctions;->isBSocket6939IsListen()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 111
    invoke-virtual/range {p1 .. p1}, Lcom/zte/backup/application/BackupAppInfo;->getUid()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    .line 112
    .local v17, uid:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/zte/backup/application/BackupAppInfo;->getDataDir()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 113
    .local v16, src:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/zte/backup/application/BackupAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".tar"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 115
    .local v11, des:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/zte/backup/application/BackupAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "com.imangi.templerun2"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 116
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    .line 117
    .local v13, extSD:Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "/Android/data/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/zte/backup/application/BackupAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .local v10, dataFileInSD:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 120
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    const-string v19, "/data/data/"

    const-string v20, "5"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/zte/backup/common/CommonFunctions;->socketCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 121
    .local v6, cmd:Ljava/lang/String;
    new-instance v14, Lcom/zte/backup/service/RootRestoreClient;

    invoke-virtual/range {p2 .. p2}, Lcom/zte/backup/composer/Composer;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v14, v0, v6}, Lcom/zte/backup/service/RootRestoreClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 122
    .local v14, rc:Lcom/zte/backup/service/RootRestoreClient;
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v14}, Lcom/zte/backup/service/RootRestoreClient;->getOperateResult()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(I)V

    .line 127
    .end local v6           #cmd:Ljava/lang/String;
    .end local v10           #dataFileInSD:Ljava/io/File;
    .end local v13           #extSD:Ljava/lang/String;
    .end local v14           #rc:Lcom/zte/backup/service/RootRestoreClient;
    :cond_0
    const-string v18, "4"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v11, v1, v2}, Lcom/zte/backup/common/CommonFunctions;->socketCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 128
    .local v9, data:Ljava/lang/String;
    new-instance v14, Lcom/zte/backup/service/RootRestoreClient;

    invoke-virtual/range {p2 .. p2}, Lcom/zte/backup/composer/Composer;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v14, v0, v9}, Lcom/zte/backup/service/RootRestoreClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 129
    .restart local v14       #rc:Lcom/zte/backup/service/RootRestoreClient;
    invoke-virtual {v14}, Lcom/zte/backup/service/RootRestoreClient;->getOperateResult()I

    move-result v7

    .line 131
    .local v7, copyResult:I
    if-nez v7, :cond_1

    .line 132
    const/16 v18, 0x2001

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zte/backup/application/AppsAction;->appResult:I

    .line 142
    .end local v7           #copyResult:I
    .end local v9           #data:Ljava/lang/String;
    .end local v11           #des:Ljava/lang/String;
    .end local v14           #rc:Lcom/zte/backup/service/RootRestoreClient;
    .end local v16           #src:Ljava/lang/String;
    .end local v17           #uid:Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/backup/application/AppsAction;->appResult:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/zte/backup/composer/Composer;->setAttached(Ljava/lang/Object;)V

    .line 143
    invoke-virtual/range {p2 .. p2}, Lcom/zte/backup/composer/Composer;->increaseComposed()V

    .line 144
    return-void

    .line 134
    .restart local v7       #copyResult:I
    .restart local v9       #data:Ljava/lang/String;
    .restart local v11       #des:Ljava/lang/String;
    .restart local v14       #rc:Lcom/zte/backup/service/RootRestoreClient;
    .restart local v16       #src:Ljava/lang/String;
    .restart local v17       #uid:Ljava/lang/String;
    :cond_1
    const/16 v18, 0x2002

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zte/backup/application/AppsAction;->appResult:I

    goto :goto_0

    .line 137
    .end local v7           #copyResult:I
    .end local v9           #data:Ljava/lang/String;
    .end local v11           #des:Ljava/lang/String;
    .end local v14           #rc:Lcom/zte/backup/service/RootRestoreClient;
    .end local v16           #src:Ljava/lang/String;
    .end local v17           #uid:Ljava/lang/String;
    :cond_2
    const/16 v18, 0x2001

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zte/backup/application/AppsAction;->appResult:I

    goto :goto_0

    .line 140
    :cond_3
    const/16 v18, 0x2002

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zte/backup/application/AppsAction;->appResult:I

    goto :goto_0
.end method

.method public applicationsRestore(Lcom/zte/backup/application/BackupAppInfo;Lcom/zte/backup/composer/Composer;)V
    .locals 8
    .parameter "appInfo"
    .parameter "compose"

    .prologue
    .line 661
    const/16 v3, 0x2002

    .line 662
    .local v3, result:I
    invoke-virtual {p1}, Lcom/zte/backup/application/BackupAppInfo;->getApkName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ZTE"

    const-string v6, "install"

    .line 663
    const-string v7, "0"

    .line 662
    invoke-static {v4, v5, v6, v7}, Lcom/zte/backup/common/CommonFunctions;->socketCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 664
    .local v1, data:Ljava/lang/String;
    new-instance v2, Lcom/zte/backup/service/RootRestoreClient;

    invoke-virtual {p2}, Lcom/zte/backup/composer/Composer;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Lcom/zte/backup/service/RootRestoreClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 665
    .local v2, install:Lcom/zte/backup/service/RootRestoreClient;
    invoke-virtual {v2}, Lcom/zte/backup/service/RootRestoreClient;->getOperateResult()I

    move-result v0

    .line 670
    .local v0, copyResult:I
    invoke-virtual {p1}, Lcom/zte/backup/application/BackupAppInfo;->getApkName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/zte/backup/composer/Composer;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v4, v0, v5}, Lcom/zte/backup/application/AppsAction;->restoreAppsInOriginCase(Ljava/lang/String;ILandroid/content/Context;)I

    move-result v3

    .line 675
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/zte/backup/composer/Composer;->setAttached(Ljava/lang/Object;)V

    .line 676
    invoke-virtual {p2}, Lcom/zte/backup/composer/Composer;->increaseComposed()V

    .line 677
    return-void
.end method

.method public bitmap2Bytes(Landroid/graphics/Bitmap;)[B
    .locals 4
    .parameter "bm"

    .prologue
    .line 388
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 390
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 392
    :catch_0
    move-exception v1

    .line 393
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "App error"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bytes2Bitmap([B)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "b"

    .prologue
    .line 399
    array-length v1, p1

    if-eqz v1, :cond_0

    .line 400
    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 403
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public drawableToBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "cx"
    .parameter "drawable"

    .prologue
    .line 360
    const/4 v1, 0x0

    .line 362
    .local v1, bitmap:Landroid/graphics/Bitmap;
    const/16 v2, 0x3c

    .line 363
    .local v2, bitmapDip:I
    :try_start_0
    invoke-static {}, Lcom/zte/backup/common/CommonFunctions;->isXhdipPhone()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 364
    const/16 v2, 0x50

    .line 369
    :cond_0
    :goto_0
    int-to-float v5, v2

    invoke-static {p1, v5}, Lcom/zte/backup/application/AppsAction;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 372
    .local v0, bimapDx:I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 370
    :goto_1
    invoke-static {v0, v0, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 374
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 375
    .local v3, canvas:Landroid/graphics/Canvas;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 379
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 384
    .end local v0           #bimapDx:I
    .end local v3           #canvas:Landroid/graphics/Canvas;
    :goto_2
    return-object v1

    .line 365
    :cond_1
    invoke-static {}, Lcom/zte/backup/common/CommonFunctions;->isXXhdipPhone()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 366
    const/16 v2, 0x78

    goto :goto_0

    .line 373
    .restart local v0       #bimapDx:I
    :cond_2
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 381
    .end local v0           #bimapDx:I
    :catch_0
    move-exception v4

    .line 382
    .local v4, e:Ljava/lang/Exception;
    const-string v5, "App error"

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public filesize(J)[Ljava/lang/String;
    .locals 6
    .parameter "size"

    .prologue
    const-wide/16 v4, 0x400

    .line 413
    const-string v2, ""

    .line 414
    .local v2, str:Ljava/lang/String;
    cmp-long v3, p1, v4

    if-ltz v3, :cond_0

    .line 415
    const-string v2, "KB"

    .line 416
    div-long/2addr p1, v4

    .line 417
    cmp-long v3, p1, v4

    if-ltz v3, :cond_0

    .line 418
    const-string v2, "MB"

    .line 419
    div-long/2addr p1, v4

    .line 422
    :cond_0
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    .line 423
    .local v0, formatter:Ljava/text/DecimalFormat;
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/text/DecimalFormat;->setGroupingSize(I)V

    .line 424
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    .line 425
    .local v1, result:[Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 426
    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 427
    return-object v1
.end method

.method public getApkInfoFromAPKEx(Landroid/content/Context;Ljava/lang/String;Lcom/zte/backup/data/ApkInfo;)Z
    .locals 3
    .parameter "context"
    .parameter "apkPath"
    .parameter "AI"

    .prologue
    const/4 v1, 0x0

    .line 432
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/zte/backup/application/AppsAction;->getApkInfo(Landroid/content/Context;Ljava/lang/String;Lcom/zte/backup/data/ApkInfo;)V

    .line 433
    invoke-virtual {p3}, Lcom/zte/backup/data/ApkInfo;->getApkIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p3}, Lcom/zte/backup/data/ApkInfo;->getApkName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 436
    :cond_0
    :goto_0
    return v1

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getApkInfoFromSDCard(Landroid/content/Context;Ljava/io/File;Lcom/zte/backup/data/ApkInfo;)Z
    .locals 6
    .parameter "cx"
    .parameter "file"
    .parameter "apkInfo"

    .prologue
    const/4 v3, 0x0

    .line 316
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".apk"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 332
    :cond_0
    :goto_0
    return v3

    .line 319
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 320
    .local v0, appSize:J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 324
    invoke-static {}, Lcom/zte/backup/application/AppsAction;->getInstance()Lcom/zte/backup/application/AppsAction;

    move-result-object v4

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5, p3}, Lcom/zte/backup/application/AppsAction;->getApkInfoFromAPKEx(Landroid/content/Context;Ljava/lang/String;Lcom/zte/backup/data/ApkInfo;)Z

    .line 325
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/zte/backup/data/ApkInfo;->setApkDir(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p3}, Lcom/zte/backup/data/ApkInfo;->getApkName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p3}, Lcom/zte/backup/data/ApkInfo;->getApkName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 330
    long-to-float v3, v0

    const/high16 v4, 0x4980

    div-float v2, v3, v4

    .line 331
    .local v2, size:F
    invoke-virtual {p3, v2}, Lcom/zte/backup/data/ApkInfo;->setApkSize(F)V

    .line 332
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public getApkInfoListFromPath(Landroid/content/Context;)Ljava/util/List;
    .locals 14
    .parameter "cx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zte/backup/data/ApkInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v5, fileList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/backup/data/ApkInfo;>;"
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    .line 220
    .local v8, sDStateString:Ljava/lang/String;
    const-string v11, "mounted"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 222
    :try_start_0
    invoke-static {}, Lcom/zte/backup/common/PathInfo;->getRestoreApkPathList()Ljava/util/List;

    move-result-object v1

    .line 223
    .local v1, apkPath:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-nez v11, :cond_2

    .line 263
    .end local v1           #apkPath:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_4

    .line 264
    const/4 v11, 0x0

    .line 266
    :goto_1
    return-object v11

    .line 223
    .restart local v1       #apkPath:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 224
    .local v7, s:Ljava/lang/String;
    move-object v10, v7

    .line 225
    .local v10, strPath:Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    .local v9, sdPath:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 227
    .local v6, files:[Ljava/io/File;
    if-eqz v6, :cond_0

    .line 230
    array-length v11, v6

    if-lez v11, :cond_0

    .line 231
    array-length v13, v6

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v13, :cond_0

    aget-object v4, v6, v11

    .line 232
    .local v4, file:Ljava/io/File;
    new-instance v0, Lcom/zte/backup/data/ApkInfo;

    invoke-direct {v0}, Lcom/zte/backup/data/ApkInfo;-><init>()V

    .line 233
    .local v0, apkInfo:Lcom/zte/backup/data/ApkInfo;
    invoke-virtual {p0, p1, v4, v0}, Lcom/zte/backup/application/AppsAction;->getApkInfoFromSDCard(Landroid/content/Context;Ljava/io/File;Lcom/zte/backup/data/ApkInfo;)Z

    move-result v2

    .line 234
    .local v2, bRet:Z
    if-nez v2, :cond_3

    .line 231
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 237
    :cond_3
    invoke-direct {p0, v5, v0}, Lcom/zte/backup/application/AppsAction;->sortAllGenerationApsList(Ljava/util/List;Lcom/zte/backup/data/ApkInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 243
    .end local v0           #apkInfo:Lcom/zte/backup/data/ApkInfo;
    .end local v1           #apkPath:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #bRet:Z
    .end local v4           #file:Ljava/io/File;
    .end local v6           #files:[Ljava/io/File;
    .end local v7           #s:Ljava/lang/String;
    .end local v9           #sdPath:Ljava/io/File;
    .end local v10           #strPath:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 244
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/zte/backup/common/Logging;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 266
    .end local v3           #e:Ljava/lang/Exception;
    :cond_4
    invoke-direct {p0, v5}, Lcom/zte/backup/application/AppsAction;->sortAppFileList(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    goto :goto_1
.end method

.method public getApkUid(Ljava/lang/String;Landroid/content/Context;)I
    .locals 5
    .parameter "apkPackage"
    .parameter "cx"

    .prologue
    .line 564
    const/4 v3, 0x0

    .line 566
    .local v3, iUid:I
    new-instance v1, Lcom/zte/backup/application/AppsGetAppsInfo;

    const/4 v4, 0x0

    invoke-direct {v1, p2, v4}, Lcom/zte/backup/application/AppsGetAppsInfo;-><init>(Landroid/content/Context;Z)V

    .line 567
    .local v1, gai:Lcom/zte/backup/application/AppsGetAppsInfo;
    invoke-virtual {v1}, Lcom/zte/backup/application/AppsGetAppsInfo;->getAppsDetailInfo()Ljava/util/ArrayList;

    move-result-object v0

    .line 568
    .local v0, apkinfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/backup/application/BackupAppInfo;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 574
    :goto_1
    return v3

    .line 569
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zte/backup/application/BackupAppInfo;

    invoke-virtual {v4}, Lcom/zte/backup/application/BackupAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 570
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zte/backup/application/BackupAppInfo;

    invoke-virtual {v4}, Lcom/zte/backup/application/BackupAppInfo;->getUid()I

    move-result v3

    .line 571
    goto :goto_1

    .line 568
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getAppResult()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/zte/backup/application/AppsAction;->appResult:I

    return v0
.end method

.method public getBackupedAppInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 17
    .parameter "cx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zte/backup/data/ApkInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v3, apkList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/backup/data/ApkInfo;>;"
    invoke-static {}, Lcom/zte/backup/common/PathInfo;->getRestoreApkPathList()Ljava/util/List;

    move-result-object v4

    .line 73
    .local v4, apkPath:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_1

    .line 97
    return-object v3

    .line 73
    :cond_1
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 74
    .local v11, s:Ljava/lang/String;
    move-object v6, v11

    .line 75
    .local v6, desPath:Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    .local v12, sdPath:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    .line 77
    .local v10, files:[Ljava/io/File;
    if-eqz v10, :cond_0

    array-length v13, v10

    if-lez v13, :cond_0

    .line 78
    array-length v15, v10

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v15, :cond_0

    aget-object v7, v10, v13

    .line 79
    .local v7, file:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 80
    .local v8, filePath:Ljava/lang/String;
    const-string v16, ".apk"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_3

    .line 78
    :cond_2
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 84
    :cond_3
    new-instance v2, Lcom/zte/backup/data/ApkInfo;

    invoke-direct {v2}, Lcom/zte/backup/data/ApkInfo;-><init>()V

    .line 85
    .local v2, apk:Lcom/zte/backup/data/ApkInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8, v2}, Lcom/zte/backup/application/AppsAction;->getApkInfoFromAPKEx(Landroid/content/Context;Ljava/lang/String;Lcom/zte/backup/data/ApkInfo;)Z

    move-result v5

    .line 86
    .local v5, bRet:Z
    if-eqz v5, :cond_2

    .line 89
    invoke-virtual {v2}, Lcom/zte/backup/data/ApkInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 90
    .local v9, filename:Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 93
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getLastBackupApkDate()Ljava/lang/String;
    .locals 20

    .prologue
    .line 947
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v15

    .line 948
    .local v15, sDStateString:Ljava/lang/String;
    const/4 v14, 0x0

    .line 949
    .local v14, lastTime:Ljava/lang/String;
    const-string v18, "mounted"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 951
    const/4 v9, 0x0

    .line 953
    .local v9, date1:Ljava/util/Date;
    const/4 v10, 0x0

    .line 954
    .local v10, date2:Ljava/util/Date;
    const/4 v11, 0x0

    .line 955
    .local v11, date3:Ljava/util/Date;
    :try_start_0
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v18, "yyyy.MM.dd"

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 956
    .local v13, formatter:Ljava/text/SimpleDateFormat;
    invoke-static {}, Lcom/zte/backup/common/PathInfo;->getRestoreApkPathList()Ljava/util/List;

    move-result-object v2

    .line 958
    .local v2, apkPath:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/zte/backup/application/AppsAction;->getLastAPKDateFromPath(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    .line 960
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/zte/backup/application/AppsAction;->getLastAPKDateFromPath(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v10

    .line 962
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/zte/backup/application/AppsAction;->getLastAPKDateFromPath(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    .line 964
    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 965
    .local v3, dataInt1:J
    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    .line 966
    .local v5, dataInt2:J
    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    .line 967
    .local v7, dataInt3:J
    move-wide/from16 v16, v3

    .line 968
    .local v16, temp:J
    cmp-long v18, v16, v5

    if-gez v18, :cond_0

    .line 969
    move-wide/from16 v16, v5

    .line 971
    :cond_0
    cmp-long v18, v16, v7

    if-gez v18, :cond_1

    .line 972
    move-wide/from16 v16, v7

    .line 975
    :cond_1
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 981
    .end local v2           #apkPath:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #dataInt1:J
    .end local v5           #dataInt2:J
    .end local v7           #dataInt3:J
    .end local v9           #date1:Ljava/util/Date;
    .end local v10           #date2:Ljava/util/Date;
    .end local v11           #date3:Ljava/util/Date;
    .end local v13           #formatter:Ljava/text/SimpleDateFormat;
    .end local v16           #temp:J
    :cond_2
    :goto_0
    return-object v14

    .line 977
    .restart local v9       #date1:Ljava/util/Date;
    .restart local v10       #date2:Ljava/util/Date;
    .restart local v11       #date3:Ljava/util/Date;
    :catch_0
    move-exception v12

    .line 978
    .local v12, e:Ljava/lang/Exception;
    const-string v18, "App origin null"

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getTaskResult()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/zte/backup/application/AppsAction;->taskResult:I

    return v0
.end method

.method public isExistApkFile(Landroid/content/Context;)Z
    .locals 14
    .parameter "cx"

    .prologue
    .line 912
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 913
    .local v3, fileList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/backup/data/ApkInfo;>;"
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    .line 914
    .local v6, sDStateString:Ljava/lang/String;
    const-string v9, "mounted"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 917
    :try_start_0
    invoke-static {}, Lcom/zte/backup/common/PathInfo;->getRestoreApkPathList()Ljava/util/List;

    move-result-object v0

    .line 918
    .local v0, apkPath:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-nez v9, :cond_2

    .line 940
    .end local v0           #apkPath:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-eqz v9, :cond_4

    .line 941
    const/4 v9, 0x1

    .line 943
    :goto_1
    return v9

    .line 918
    .restart local v0       #apkPath:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 919
    .local v5, s:Ljava/lang/String;
    move-object v8, v5

    .line 920
    .local v8, strPath:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 921
    .local v7, sdPath:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 922
    .local v4, files:[Ljava/io/File;
    if-eqz v4, :cond_0

    .line 925
    array-length v9, v4

    if-lez v9, :cond_0

    .line 926
    array-length v11, v4

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v11, :cond_0

    aget-object v2, v4, v9

    .line 927
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    const-string v13, ".apk"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v12

    if-eqz v12, :cond_3

    .line 928
    const/4 v9, 0x1

    goto :goto_1

    .line 926
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 934
    .end local v0           #apkPath:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #file:Ljava/io/File;
    .end local v4           #files:[Ljava/io/File;
    .end local v5           #s:Ljava/lang/String;
    .end local v7           #sdPath:Ljava/io/File;
    .end local v8           #strPath:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 935
    .local v1, e:Ljava/lang/Exception;
    const-string v9, "App origin null"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 943
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    const/4 v9, 0x0

    goto :goto_1
.end method

.method public restoreApps(Ljava/util/List;Lcom/zte/backup/composer/Composer;)V
    .locals 9
    .parameter
    .parameter "compose"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/backup/application/BackupAppInfo;",
            ">;",
            "Lcom/zte/backup/composer/Composer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 680
    .local p1, appList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/backup/application/BackupAppInfo;>;"
    const/16 v4, 0x2002

    .line 681
    .local v4, result:I
    const/4 v3, 0x0

    .local v3, k:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v3, v5, :cond_1

    .line 701
    :cond_0
    return-void

    .line 682
    :cond_1
    invoke-virtual {p2}, Lcom/zte/backup/composer/Composer;->isCancel()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 685
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zte/backup/application/BackupAppInfo;

    invoke-virtual {v5}, Lcom/zte/backup/application/BackupAppInfo;->getApkName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ZTE"

    const-string v7, "install"

    .line 686
    const-string v8, "0"

    .line 685
    invoke-static {v5, v6, v7, v8}, Lcom/zte/backup/common/CommonFunctions;->socketCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 687
    .local v1, data:Ljava/lang/String;
    new-instance v2, Lcom/zte/backup/service/RootRestoreClient;

    invoke-virtual {p2}, Lcom/zte/backup/composer/Composer;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5, v1}, Lcom/zte/backup/service/RootRestoreClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 688
    .local v2, install:Lcom/zte/backup/service/RootRestoreClient;
    invoke-virtual {v2}, Lcom/zte/backup/service/RootRestoreClient;->getOperateResult()I

    move-result v0

    .line 693
    .local v0, copyResult:I
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zte/backup/application/BackupAppInfo;

    invoke-virtual {v5}, Lcom/zte/backup/application/BackupAppInfo;->getApkName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/zte/backup/composer/Composer;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0, v5, v0, v6}, Lcom/zte/backup/application/AppsAction;->restoreAppsInOriginCase(Ljava/lang/String;ILandroid/content/Context;)I

    move-result v4

    .line 698
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/zte/backup/composer/Composer;->setAttached(Ljava/lang/Object;)V

    .line 699
    invoke-virtual {p2}, Lcom/zte/backup/composer/Composer;->increaseComposed()V

    .line 681
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public updateFileList(Ljava/util/List;Lcom/zte/backup/data/ApkInfo;)V
    .locals 3
    .parameter
    .parameter "apkInfo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/backup/data/ApkInfo;",
            ">;",
            "Lcom/zte/backup/data/ApkInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, fileList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/backup/data/ApkInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 203
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_0
    return-void

    .line 205
    :cond_1
    const/4 v0, 0x0

    .local v0, t:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 206
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/backup/data/ApkInfo;

    invoke-virtual {v1}, Lcom/zte/backup/data/ApkInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/zte/backup/data/ApkInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 209
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 210
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
