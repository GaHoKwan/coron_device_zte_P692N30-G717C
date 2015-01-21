.class public Lcom/zte/heartyservice/interceptad/FeatureParser;
.super Ljava/lang/Object;
.source "FeatureParser.java"


# static fields
.field private static final ADS_FEATURE_DATABASE:Ljava/lang/String; = "ads.db"

.field private static final TAG:Ljava/lang/String; = "FeatureParser"

.field private static features:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;

.field private static mDBHelper:Lcom/zte/heartyservice/interceptad/FeaturesDBHelper;

.field private static mInstance:Lcom/zte/heartyservice/interceptad/FeatureParser;

.field public static mRecordDBHelper:Lcom/zte/heartyservice/interceptad/RecordDBHelper;

.field private static map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/zte/heartyservice/interceptad/AdInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static map_ids:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/zte/heartyservice/interceptad/AdInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    sput-object v0, Lcom/zte/heartyservice/interceptad/FeatureParser;->mInstance:Lcom/zte/heartyservice/interceptad/FeatureParser;

    .line 33
    sput-object v0, Lcom/zte/heartyservice/interceptad/FeatureParser;->mContext:Landroid/content/Context;

    .line 34
    sput-object v0, Lcom/zte/heartyservice/interceptad/FeatureParser;->features:Ljava/util/List;

    .line 35
    sput-object v0, Lcom/zte/heartyservice/interceptad/FeatureParser;->map:Ljava/util/HashMap;

    .line 36
    sput-object v0, Lcom/zte/heartyservice/interceptad/FeatureParser;->map_ids:Ljava/util/HashMap;

    .line 37
    sput-object v0, Lcom/zte/heartyservice/interceptad/FeatureParser;->mDBHelper:Lcom/zte/heartyservice/interceptad/FeaturesDBHelper;

    .line 38
    sput-object v0, Lcom/zte/heartyservice/interceptad/FeatureParser;->mRecordDBHelper:Lcom/zte/heartyservice/interceptad/RecordDBHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {}, Lcom/zte/heartyservice/interceptad/FeatureParser;->init()V

    .line 56
    return-void
.end method

.method private clearPkgAdsRecord(Landroid/content/pm/PackageInfo;)V
    .locals 10
    .parameter "pkgInfo"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 343
    iget v3, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 344
    .local v3, vCode:I
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 345
    .local v2, pkgName:Ljava/lang/String;
    sget-object v5, Lcom/zte/heartyservice/interceptad/FeatureParser;->mRecordDBHelper:Lcom/zte/heartyservice/interceptad/RecordDBHelper;

    new-array v6, v8, [Ljava/lang/String;

    const-string v7, "version"

    aput-object v7, v6, v9

    const-string v7, "app = ? "

    new-array v8, v8, [Ljava/lang/String;

    aput-object v2, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Lcom/zte/heartyservice/interceptad/RecordDBHelper;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 347
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 349
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 350
    const-string v5, "version"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 351
    .local v4, version:I
    if-eq v3, v4, :cond_0

    .line 352
    const-string v5, "lmj-ads"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": new version: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "--- old version: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - has ads!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    sget-object v5, Lcom/zte/heartyservice/interceptad/FeatureParser;->mRecordDBHelper:Lcom/zte/heartyservice/interceptad/RecordDBHelper;

    const-string v6, "app = ? AND version = ?"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/zte/heartyservice/interceptad/RecordDBHelper;->delete(Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    if-eqz v0, :cond_1

    .line 364
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 368
    .end local v4           #version:I
    :cond_1
    :goto_0
    return-void

    .line 363
    :cond_2
    if-eqz v0, :cond_1

    .line 364
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 359
    :catch_0
    move-exception v1

    .line 360
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 361
    const-string v5, "FeatureParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "catch exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 363
    if-eqz v0, :cond_1

    .line 364
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 363
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_3

    .line 364
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v5
.end method

.method private findClassesInApk(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .parameter "apkPath"
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    const/4 v3, 0x0

    .line 216
    .local v3, dexFile:Ldalvik/system/DexFile;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v2, classNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, "FeatureParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "findClassesInApk::apkPath is: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :try_start_0
    invoke-direct {p0, p2}, Lcom/zte/heartyservice/interceptad/FeatureParser;->isAdSDKPkg(Ljava/lang/String;)Z

    move-result v6

    .line 222
    .local v6, mIsAdSDKPkg:Z
    new-instance v4, Ldalvik/system/DexFile;

    invoke-direct {v4, p1}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 223
    .end local v3           #dexFile:Ldalvik/system/DexFile;
    .local v4, dexFile:Ldalvik/system/DexFile;
    :try_start_1
    invoke-virtual {v4}, Ldalvik/system/DexFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 224
    .local v0, apkClassNames:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 225
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 226
    .local v1, className:Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 227
    invoke-direct {p0, v1}, Lcom/zte/heartyservice/interceptad/FeatureParser;->isNoramlClass(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-direct {p0, v1}, Lcom/zte/heartyservice/interceptad/FeatureParser;->isToplevelClass(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 228
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 237
    .end local v0           #apkClassNames:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v1           #className:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v3, v4

    .line 238
    .end local v4           #dexFile:Ldalvik/system/DexFile;
    .end local v6           #mIsAdSDKPkg:Z
    .restart local v3       #dexFile:Ldalvik/system/DexFile;
    .local v5, e:Ljava/io/IOException;
    :goto_1
    :try_start_2
    const-string v7, "FeatureParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error finding classes at apk path: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 240
    if-eqz v3, :cond_1

    .line 242
    invoke-virtual {v3}, Ldalvik/system/DexFile;->close()V

    .line 245
    .end local v5           #e:Ljava/io/IOException;
    :cond_1
    :goto_2
    return-object v2

    .line 231
    .end local v3           #dexFile:Ldalvik/system/DexFile;
    .restart local v0       #apkClassNames:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v1       #className:Ljava/lang/String;
    .restart local v4       #dexFile:Ldalvik/system/DexFile;
    .restart local v6       #mIsAdSDKPkg:Z
    :cond_2
    :try_start_3
    invoke-direct {p0, v1}, Lcom/zte/heartyservice/interceptad/FeatureParser;->isNoramlClass(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-direct {p0, v1}, Lcom/zte/heartyservice/interceptad/FeatureParser;->isToplevelClass(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 233
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 240
    .end local v0           #apkClassNames:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v1           #className:Ljava/lang/String;
    :catchall_0
    move-exception v7

    move-object v3, v4

    .end local v4           #dexFile:Ldalvik/system/DexFile;
    .end local v6           #mIsAdSDKPkg:Z
    .restart local v3       #dexFile:Ldalvik/system/DexFile;
    :goto_3
    if-eqz v3, :cond_3

    .line 242
    invoke-virtual {v3}, Ldalvik/system/DexFile;->close()V

    :cond_3
    throw v7

    .line 240
    .end local v3           #dexFile:Ldalvik/system/DexFile;
    .restart local v0       #apkClassNames:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v4       #dexFile:Ldalvik/system/DexFile;
    .restart local v6       #mIsAdSDKPkg:Z
    :cond_4
    if-eqz v4, :cond_5

    .line 242
    invoke-virtual {v4}, Ldalvik/system/DexFile;->close()V

    move-object v3, v4

    .end local v4           #dexFile:Ldalvik/system/DexFile;
    .restart local v3       #dexFile:Ldalvik/system/DexFile;
    goto :goto_2

    .line 240
    .end local v0           #apkClassNames:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v6           #mIsAdSDKPkg:Z
    :catchall_1
    move-exception v7

    goto :goto_3

    .line 237
    :catch_1
    move-exception v5

    goto :goto_1

    .end local v3           #dexFile:Ldalvik/system/DexFile;
    .restart local v0       #apkClassNames:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v4       #dexFile:Ldalvik/system/DexFile;
    .restart local v6       #mIsAdSDKPkg:Z
    :cond_5
    move-object v3, v4

    .end local v4           #dexFile:Ldalvik/system/DexFile;
    .restart local v3       #dexFile:Ldalvik/system/DexFile;
    goto :goto_2
.end method

.method private findClassesInDex(Ldalvik/system/DexFile;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .parameter "dexFile"
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/DexFile;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v2, classNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/zte/heartyservice/interceptad/FeatureParser;->isAdSDKPkg(Ljava/lang/String;)Z

    move-result v3

    .line 196
    .local v3, mIsAdSDKPkg:Z
    invoke-virtual {p1}, Ldalvik/system/DexFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 197
    .local v0, apkClassNames:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 198
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 199
    .local v1, className:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 200
    invoke-direct {p0, v1}, Lcom/zte/heartyservice/interceptad/FeatureParser;->isNoramlClass(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v1}, Lcom/zte/heartyservice/interceptad/FeatureParser;->isToplevelClass(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 201
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 204
    :cond_1
    invoke-direct {p0, v1}, Lcom/zte/heartyservice/interceptad/FeatureParser;->isNoramlClass(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v1}, Lcom/zte/heartyservice/interceptad/FeatureParser;->isToplevelClass(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 206
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 211
    .end local v1           #className:Ljava/lang/String;
    :cond_2
    return-object v2
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/interceptad/FeatureParser;
    .locals 1
    .parameter "context"

    .prologue
    .line 116
    sget-object v0, Lcom/zte/heartyservice/interceptad/FeatureParser;->mInstance:Lcom/zte/heartyservice/interceptad/FeatureParser;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/zte/heartyservice/interceptad/FeatureParser;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/interceptad/FeatureParser;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/heartyservice/interceptad/FeatureParser;->mInstance:Lcom/zte/heartyservice/interceptad/FeatureParser;

    .line 119
    :cond_0
    sget-object v0, Lcom/zte/heartyservice/interceptad/FeatureParser;->mInstance:Lcom/zte/heartyservice/interceptad/FeatureParser;

    return-object v0
.end method

.method private getPackageAdsList(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/interceptad/AdInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 300
    .local p1, classNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 302
    .local v5, localList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/interceptad/AdInfo;>;"
    sget-object v6, Lcom/zte/heartyservice/interceptad/FeatureParser;->features:Ljava/util/List;

    if-eqz v6, :cond_2

    .line 303
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 304
    .local v0, className:Ljava/lang/String;
    sget-object v6, Lcom/zte/heartyservice/interceptad/FeatureParser;->features:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 305
    .local v1, f:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 306
    sget-object v6, Lcom/zte/heartyservice/interceptad/FeatureParser;->map:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/interceptad/AdInfo;

    .line 307
    .local v4, info:Lcom/zte/heartyservice/interceptad/AdInfo;
    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 308
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 315
    .end local v0           #className:Ljava/lang/String;
    .end local v1           #f:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #info:Lcom/zte/heartyservice/interceptad/AdInfo;
    :cond_2
    return-object v5
.end method

.method private getPackageAdsRecord(Landroid/content/pm/PackageInfo;Ljava/util/List;)I
    .locals 17
    .parameter "pkgInfo"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/interceptad/AdInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 249
    .local p2, pkgAdsList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/interceptad/AdInfo;>;"
    const/4 v7, -0x1

    .line 250
    .local v7, isblock:I
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 251
    .local v9, pkgName:Ljava/lang/String;
    move-object/from16 v0, p1

    iget v10, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 252
    .local v10, vCode:I
    sget-object v11, Lcom/zte/heartyservice/interceptad/FeatureParser;->mRecordDBHelper:Lcom/zte/heartyservice/interceptad/RecordDBHelper;

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "ads,isblock"

    aput-object v14, v12, v13

    const-string v13, "pkgname = ? AND version = ?"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v9, v14, v15

    const/4 v15, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v11, v12, v13, v14}, Lcom/zte/heartyservice/interceptad/RecordDBHelper;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 255
    .local v5, cursor:Landroid/database/Cursor;
    if-eqz v5, :cond_1

    .line 257
    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 258
    const/4 v11, 0x0

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 259
    .local v3, ads:Ljava/lang/String;
    const/4 v11, 0x1

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 260
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_0

    .line 261
    const-string v11, "\\|"

    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, _ids:[Ljava/lang/String;
    move-object v4, v2

    .local v4, arr$:[Ljava/lang/String;
    array-length v8, v4

    .local v8, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v1, v4, v6

    .line 263
    .local v1, _id:Ljava/lang/String;
    sget-object v11, Lcom/zte/heartyservice/interceptad/FeatureParser;->map_ids:Ljava/util/HashMap;

    invoke-virtual {v11, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 270
    .end local v1           #_id:Ljava/lang/String;
    .end local v2           #_ids:[Ljava/lang/String;
    .end local v3           #ads:Ljava/lang/String;
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v8           #len$:I
    :cond_0
    if-eqz v5, :cond_1

    .line 271
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 275
    :cond_1
    :goto_1
    return v7

    .line 267
    :catch_0
    move-exception v11

    .line 270
    if-eqz v5, :cond_1

    .line 271
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 270
    :catchall_0
    move-exception v11

    if-eqz v5, :cond_2

    .line 271
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v11
.end method

.method public static init()V
    .locals 21

    .prologue
    .line 59
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v17

    sput-object v17, Lcom/zte/heartyservice/interceptad/FeatureParser;->mContext:Landroid/content/Context;

    .line 60
    sget-object v17, Lcom/zte/heartyservice/interceptad/FeatureParser;->mRecordDBHelper:Lcom/zte/heartyservice/interceptad/RecordDBHelper;

    if-nez v17, :cond_0

    .line 61
    new-instance v17, Lcom/zte/heartyservice/interceptad/RecordDBHelper;

    sget-object v18, Lcom/zte/heartyservice/interceptad/FeatureParser;->mContext:Landroid/content/Context;

    invoke-direct/range {v17 .. v18}, Lcom/zte/heartyservice/interceptad/RecordDBHelper;-><init>(Landroid/content/Context;)V

    sput-object v17, Lcom/zte/heartyservice/interceptad/FeatureParser;->mRecordDBHelper:Lcom/zte/heartyservice/interceptad/RecordDBHelper;

    .line 68
    :cond_0
    sget-object v17, Lcom/zte/heartyservice/interceptad/FeatureParser;->mDBHelper:Lcom/zte/heartyservice/interceptad/FeaturesDBHelper;

    if-nez v17, :cond_1

    .line 69
    invoke-static {}, Lcom/zte/heartyservice/interceptad/FeatureParser;->initiAdsFeatureDB()I

    move-result v6

    .line 70
    .local v6, db_version:I
    new-instance v17, Lcom/zte/heartyservice/interceptad/FeaturesDBHelper;

    sget-object v18, Lcom/zte/heartyservice/interceptad/FeatureParser;->mContext:Landroid/content/Context;

    const-string v19, "ads.db"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v6}, Lcom/zte/heartyservice/interceptad/FeaturesDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sput-object v17, Lcom/zte/heartyservice/interceptad/FeatureParser;->mDBHelper:Lcom/zte/heartyservice/interceptad/FeaturesDBHelper;

    .line 74
    :cond_1
    sget-object v17, Lcom/zte/heartyservice/interceptad/FeatureParser;->features:Ljava/util/List;

    if-nez v17, :cond_3

    .line 75
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    sput-object v17, Lcom/zte/heartyservice/interceptad/FeatureParser;->features:Ljava/util/List;

    .line 76
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    sput-object v17, Lcom/zte/heartyservice/interceptad/FeatureParser;->map:Ljava/util/HashMap;

    .line 77
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    sput-object v17, Lcom/zte/heartyservice/interceptad/FeatureParser;->map_ids:Ljava/util/HashMap;

    .line 78
    const/4 v5, 0x0

    .line 80
    .local v5, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v17, Lcom/zte/heartyservice/interceptad/FeatureParser;->mDBHelper:Lcom/zte/heartyservice/interceptad/FeaturesDBHelper;

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "_id, name, version, feature, flag, interceptType, keyword"

    aput-object v20, v18, v19

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Lcom/zte/heartyservice/interceptad/FeaturesDBHelper;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 81
    if-eqz v5, :cond_4

    .line 82
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 83
    const-string v17, "_id"

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 84
    .local v3, _id:I
    const-string v17, "name"

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 85
    .local v15, name:Ljava/lang/String;
    const-string v17, "version"

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 86
    .local v16, version:Ljava/lang/String;
    const-string v17, "feature"

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 87
    .local v8, feature:Ljava/lang/String;
    const-string v17, "flag"

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 88
    .local v9, flag:I
    const-string v17, "interceptType"

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 89
    .local v12, interceptType:I
    const-string v17, "keyword"

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 90
    .local v13, keyword:Ljava/lang/String;
    new-instance v11, Lcom/zte/heartyservice/interceptad/AdInfo;

    invoke-direct {v11}, Lcom/zte/heartyservice/interceptad/AdInfo;-><init>()V

    .line 91
    .local v11, info:Lcom/zte/heartyservice/interceptad/AdInfo;
    iput v3, v11, Lcom/zte/heartyservice/interceptad/AdInfo;->_id:I

    .line 92
    iput-object v15, v11, Lcom/zte/heartyservice/interceptad/AdInfo;->name:Ljava/lang/String;

    .line 93
    move-object/from16 v0, v16

    iput-object v0, v11, Lcom/zte/heartyservice/interceptad/AdInfo;->version:Ljava/lang/String;

    .line 94
    const-string v17, "\\|"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v11, Lcom/zte/heartyservice/interceptad/AdInfo;->feature:[Ljava/lang/String;

    .line 95
    iput v9, v11, Lcom/zte/heartyservice/interceptad/AdInfo;->flag:I

    .line 96
    iput v12, v11, Lcom/zte/heartyservice/interceptad/AdInfo;->interceptType:I

    .line 97
    iput-object v13, v11, Lcom/zte/heartyservice/interceptad/AdInfo;->keyword:Ljava/lang/String;

    .line 98
    iget-object v4, v11, Lcom/zte/heartyservice/interceptad/AdInfo;->feature:[Ljava/lang/String;

    .local v4, arr$:[Ljava/lang/String;
    array-length v14, v4

    .local v14, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_1
    if-ge v10, v14, :cond_2

    aget-object v7, v4, v10

    .line 99
    .local v7, f:Ljava/lang/String;
    sget-object v17, Lcom/zte/heartyservice/interceptad/FeatureParser;->features:Ljava/util/List;

    move-object/from16 v0, v17

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v17, Lcom/zte/heartyservice/interceptad/FeatureParser;->map:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 102
    .end local v7           #f:Ljava/lang/String;
    :cond_2
    sget-object v17, Lcom/zte/heartyservice/interceptad/FeatureParser;->map_ids:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 105
    .end local v3           #_id:I
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v8           #feature:Ljava/lang/String;
    .end local v9           #flag:I
    .end local v10           #i$:I
    .end local v11           #info:Lcom/zte/heartyservice/interceptad/AdInfo;
    .end local v12           #interceptType:I
    .end local v13           #keyword:Ljava/lang/String;
    .end local v14           #len$:I
    .end local v15           #name:Ljava/lang/String;
    .end local v16           #version:Ljava/lang/String;
    :catch_0
    move-exception v17

    .line 108
    if-eqz v5, :cond_3

    .line 109
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 113
    .end local v5           #cursor:Landroid/database/Cursor;
    :cond_3
    :goto_2
    return-void

    .line 108
    .restart local v5       #cursor:Landroid/database/Cursor;
    :cond_4
    if-eqz v5, :cond_3

    .line 109
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 108
    :catchall_0
    move-exception v17

    if-eqz v5, :cond_5

    .line 109
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v17
.end method

.method private static initiAdsFeatureDB()I
    .locals 14

    .prologue
    .line 134
    sget-object v11, Lcom/zte/heartyservice/interceptad/FeatureParser;->mContext:Landroid/content/Context;

    const-string v12, "ads.db"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 137
    .local v5, file:Ljava/io/File;
    sget-object v11, Lcom/zte/heartyservice/interceptad/FeatureParser;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090014

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 138
    .local v7, new_version:I
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 140
    const/4 v3, 0x0

    .line 142
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 143
    .local v9, path:Ljava/lang/String;
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v9, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 145
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v10

    .line 146
    .local v10, version:I
    if-ge v10, v7, :cond_3

    .line 147
    const-string v11, "FeatureParser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "cur version "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " < new version "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 149
    const/4 v3, 0x0

    .line 150
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 151
    sget-object v11, Lcom/zte/heartyservice/interceptad/FeatureParser;->mRecordDBHelper:Lcom/zte/heartyservice/interceptad/RecordDBHelper;

    invoke-virtual {v11}, Lcom/zte/heartyservice/interceptad/RecordDBHelper;->clear()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 159
    if-eqz v3, :cond_0

    .line 160
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 161
    const/4 v3, 0x0

    .line 166
    .end local v3           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v9           #path:Ljava/lang/String;
    .end local v10           #version:I
    :cond_0
    :goto_0
    const-string v11, "FeatureParser"

    const-string v12, "begin to copy db file to data"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    sget-object v11, Lcom/zte/heartyservice/interceptad/FeatureParser;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 170
    .local v0, am:Landroid/content/res/AssetManager;
    const/4 v2, -0x1

    .line 171
    .local v2, ch:I
    const/16 v11, 0x400

    :try_start_1
    new-array v1, v11, [B

    .line 172
    .local v1, buf:[B
    const-string v11, "ads.db"

    invoke-virtual {v0, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 173
    .local v6, input:Ljava/io/InputStream;
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 174
    .local v8, output:Ljava/io/FileOutputStream;
    :goto_1
    invoke-virtual {v6, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v11, -0x1

    if-eq v2, v11, :cond_1

    .line 175
    const/4 v11, 0x0

    invoke-virtual {v8, v1, v11, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 177
    .end local v1           #buf:[B
    .end local v6           #input:Ljava/io/InputStream;
    .end local v8           #output:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v4

    .line 178
    .local v4, e:Ljava/io/IOException;
    const-string v11, "FeatureParser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "catch IOException:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4           #e:Ljava/io/IOException;
    :cond_1
    move v10, v7

    .line 181
    .end local v0           #am:Landroid/content/res/AssetManager;
    .end local v2           #ch:I
    :cond_2
    :goto_2
    return v10

    .line 159
    .restart local v3       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9       #path:Ljava/lang/String;
    .restart local v10       #version:I
    :cond_3
    if-eqz v3, :cond_2

    .line 160
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 161
    const/4 v3, 0x0

    goto :goto_2

    .line 155
    .end local v9           #path:Ljava/lang/String;
    .end local v10           #version:I
    :catch_1
    move-exception v4

    .line 156
    .local v4, e:Ljava/lang/Exception;
    :try_start_2
    const-string v11, "FeatureParser"

    const-string v12, "db file error"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    if-eqz v3, :cond_0

    .line 160
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 161
    const/4 v3, 0x0

    goto :goto_0

    .line 159
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    if-eqz v3, :cond_4

    .line 160
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 161
    const/4 v3, 0x0

    :cond_4
    throw v11
.end method

.method private isAdSDKPkg(Ljava/lang/String;)Z
    .locals 10
    .parameter "pkg"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 319
    const/4 v1, 0x0

    .line 321
    .local v1, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v6, Lcom/zte/heartyservice/interceptad/FeatureParser;->mDBHelper:Lcom/zte/heartyservice/interceptad/FeaturesDBHelper;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "name, feature"

    aput-object v9, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/zte/heartyservice/interceptad/FeaturesDBHelper;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 322
    if-eqz v1, :cond_3

    .line 323
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 324
    const-string v6, "name"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, adName:Ljava/lang/String;
    const-string v6, "feature"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 326
    .local v3, feature:Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    .line 335
    if-eqz v1, :cond_1

    .line 336
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    move v4, v5

    .line 339
    .end local v0           #adName:Ljava/lang/String;
    .end local v3           #feature:Ljava/lang/String;
    :cond_2
    :goto_0
    return v4

    .line 335
    :cond_3
    if-eqz v1, :cond_2

    .line 336
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 331
    :catch_0
    move-exception v2

    .line 332
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 335
    if-eqz v1, :cond_2

    .line 336
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 335
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_4

    .line 336
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v4
.end method

.method private isNoramlClass(Ljava/lang/String;)Z
    .locals 1
    .parameter "fileName"

    .prologue
    .line 189
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isToplevelClass(Ljava/lang/String;)Z
    .locals 1
    .parameter "fileName"

    .prologue
    .line 185
    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private listContains(Ljava/util/List;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter "adName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/interceptad/AdInfo;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/interceptad/AdInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/interceptad/AdInfo;

    .line 126
    .local v1, info:Lcom/zte/heartyservice/interceptad/AdInfo;
    iget-object v2, v1, Lcom/zte/heartyservice/interceptad/AdInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    const/4 v2, 0x1

    .line 130
    .end local v1           #info:Lcom/zte/heartyservice/interceptad/AdInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private savePackageAdsRecord(Landroid/content/pm/PackageInfo;Ljava/util/List;)V
    .locals 8
    .parameter "pkgInfo"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/interceptad/AdInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 279
    .local p2, adsList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/interceptad/AdInfo;>;"
    iget-object v4, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 280
    .local v4, pkgName:Ljava/lang/String;
    iget v5, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 281
    .local v5, vCode:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .local v1, ads:Ljava/lang/StringBuilder;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 283
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/interceptad/AdInfo;

    .line 284
    .local v0, ad:Lcom/zte/heartyservice/interceptad/AdInfo;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_0

    .line 285
    iget v6, v0, Lcom/zte/heartyservice/interceptad/AdInfo;->_id:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 287
    :cond_0
    const-string v6, "|"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/zte/heartyservice/interceptad/AdInfo;->_id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 291
    .end local v0           #ad:Lcom/zte/heartyservice/interceptad/AdInfo;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 292
    .local v2, cv:Landroid/content/ContentValues;
    const-string v6, "pkgname"

    invoke-virtual {v2, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v6, "version"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 294
    const-string v6, "ads"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v6, "isblock"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 296
    sget-object v6, Lcom/zte/heartyservice/interceptad/FeatureParser;->mRecordDBHelper:Lcom/zte/heartyservice/interceptad/RecordDBHelper;

    invoke-virtual {v6, v2}, Lcom/zte/heartyservice/interceptad/RecordDBHelper;->insert(Landroid/content/ContentValues;)J

    .line 297
    return-void
.end method


# virtual methods
.method public parsePackage(Landroid/content/pm/PackageInfo;)Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;
    .locals 10
    .parameter "pkgInfo"

    .prologue
    const/4 v6, 0x0

    .line 381
    const/4 v0, 0x0

    .line 382
    .local v0, appInfo:Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 385
    .local v4, pkgAdsList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/interceptad/AdInfo;>;"
    invoke-direct {p0, p1, v4}, Lcom/zte/heartyservice/interceptad/FeatureParser;->getPackageAdsRecord(Landroid/content/pm/PackageInfo;Ljava/util/List;)I

    move-result v3

    .line 386
    .local v3, isblock:I
    const/4 v7, -0x1

    if-eq v3, v7, :cond_1

    .line 387
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 388
    new-instance v0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;

    .end local v0           #appInfo:Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;
    invoke-direct {v0}, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;-><init>()V

    .line 389
    .restart local v0       #appInfo:Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;
    iget-object v6, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v6, v0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->packageName:Ljava/lang/String;

    .line 390
    iget v6, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v6, v0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->versionCode:I

    .line 391
    iput v3, v0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->isblock:I

    .line 392
    iput-object v4, v0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->adList:Ljava/util/List;

    move-object v6, v0

    .line 427
    :cond_0
    :goto_0
    return-object v6

    .line 401
    :cond_1
    const/4 v5, 0x0

    .line 402
    .local v5, pkgContext:Landroid/content/Context;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 404
    .local v1, classNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    const-string v7, "FeatureParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parsePackage:: packageName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    sget-object v7, Lcom/zte/heartyservice/interceptad/FeatureParser;->mContext:Landroid/content/Context;

    iget-object v8, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x3

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5

    .line 407
    invoke-virtual {v5}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v7, v8}, Lcom/zte/heartyservice/interceptad/FeatureParser;->findClassesInApk(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 417
    invoke-direct {p0, v1}, Lcom/zte/heartyservice/interceptad/FeatureParser;->getPackageAdsList(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v4

    .line 418
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 419
    new-instance v0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;

    .end local v0           #appInfo:Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;
    invoke-direct {v0}, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;-><init>()V

    .line 420
    .restart local v0       #appInfo:Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;
    iget-object v6, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v6, v0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->packageName:Ljava/lang/String;

    .line 421
    iget v6, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v6, v0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->versionCode:I

    .line 422
    const/4 v6, 0x0

    iput v6, v0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->isblock:I

    .line 423
    iput-object v4, v0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->adList:Ljava/util/List;

    .line 425
    :cond_2
    invoke-direct {p0, p1, v4}, Lcom/zte/heartyservice/interceptad/FeatureParser;->savePackageAdsRecord(Landroid/content/pm/PackageInfo;Ljava/util/List;)V

    move-object v6, v0

    .line 427
    goto :goto_0

    .line 408
    :catch_0
    move-exception v2

    .line 409
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 411
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 412
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public parsePackage(Ljava/lang/String;ILdalvik/system/DexFile;)Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;
    .locals 7
    .parameter "packageName"
    .parameter "versionCode"
    .parameter "dexFile"

    .prologue
    .line 432
    const/4 v0, 0x0

    .line 433
    .local v0, appInfo:Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;
    const/4 v3, 0x0

    .line 438
    .local v3, pkgAdsList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/interceptad/AdInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 440
    .local v1, classNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    const-string v4, "FeatureParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parsePackage:: packageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-direct {p0, p3, p1}, Lcom/zte/heartyservice/interceptad/FeatureParser;->findClassesInDex(Ldalvik/system/DexFile;Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 448
    invoke-direct {p0, v1}, Lcom/zte/heartyservice/interceptad/FeatureParser;->getPackageAdsList(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v3

    .line 449
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 450
    new-instance v0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;

    .end local v0           #appInfo:Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;
    invoke-direct {v0}, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;-><init>()V

    .line 451
    .restart local v0       #appInfo:Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;
    iput-object p1, v0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->packageName:Ljava/lang/String;

    .line 452
    iput p2, v0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->versionCode:I

    .line 453
    const/4 v4, 0x0

    iput v4, v0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->isblock:I

    .line 454
    iput-object v3, v0, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->adList:Ljava/util/List;

    :cond_0
    move-object v4, v0

    .line 457
    :goto_0
    return-object v4

    .line 442
    :catch_0
    move-exception v2

    .line 443
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 444
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public scanNewInstalledPkgAds(Ljava/lang/String;)Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;
    .locals 4
    .parameter "pkg"

    .prologue
    .line 372
    :try_start_0
    sget-object v2, Lcom/zte/heartyservice/interceptad/FeatureParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 373
    .local v1, pkgInfo:Landroid/content/pm/PackageInfo;
    invoke-direct {p0, v1}, Lcom/zte/heartyservice/interceptad/FeatureParser;->clearPkgAdsRecord(Landroid/content/pm/PackageInfo;)V

    .line 374
    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/interceptad/FeatureParser;->parsePackage(Landroid/content/pm/PackageInfo;)Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 376
    .end local v1           #pkgInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method
