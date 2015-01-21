.class public Lcom/zte/heartyservice/main/MarketApi;
.super Ljava/lang/Object;
.source "MarketApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/main/MarketApi$1;,
        Lcom/zte/heartyservice/main/MarketApi$PackageInstallObserver;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "MAPI"


# instance fields
.field APKPath:Ljava/lang/String;

.field isRunService:Z

.field mContext:Landroid/content/Context;

.field netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

.field newJINPINVersion:I

.field newVersionCode:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "m"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const v0, 0x55bea

    iput v0, p0, Lcom/zte/heartyservice/main/MarketApi;->newJINPINVersion:I

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/main/MarketApi;->APKPath:Ljava/lang/String;

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/heartyservice/main/MarketApi;->newVersionCode:I

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/heartyservice/main/MarketApi;->isRunService:Z

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/tmp1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/main/MarketApi;->APKPath:Ljava/lang/String;

    .line 47
    const-string v0, "MAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ============="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/main/MarketApi;->APKPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iput-object p1, p0, Lcom/zte/heartyservice/main/MarketApi;->mContext:Landroid/content/Context;

    .line 49
    invoke-static {p1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/main/MarketApi;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    .line 51
    return-void
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/main/MarketApi;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/zte/heartyservice/main/MarketApi;->startTencetService()Z

    move-result v0

    return v0
.end method

.method private copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .parameter "in"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    const/high16 v2, 0x20

    new-array v0, v2, [B

    .line 286
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, read:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 287
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 289
    :cond_0
    return-void
.end method

.method public static delete(Ljava/io/File;)V
    .locals 3
    .parameter "file"

    .prologue
    .line 263
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 264
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 270
    .local v0, childFiles:[Ljava/io/File;
    if-eqz v0, :cond_2

    array-length v2, v0

    if-nez v2, :cond_3

    .line 271
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 275
    :cond_3
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_4

    .line 276
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/zte/heartyservice/main/MarketApi;->delete(Ljava/io/File;)V

    .line 275
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 278
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private extractApk()V
    .locals 7

    .prologue
    .line 83
    iget-object v5, p0, Lcom/zte/heartyservice/main/MarketApi;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 84
    .local v0, assetManager:Landroid/content/res/AssetManager;
    const/4 v2, 0x0

    .line 85
    .local v2, inputStream:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 87
    .local v3, out:Ljava/io/OutputStream;
    :try_start_0
    const-string v5, "zte_software_service.apk"

    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 90
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/zte/heartyservice/main/MarketApi;->APKPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v3           #out:Ljava/io/OutputStream;
    .local v4, out:Ljava/io/OutputStream;
    :try_start_1
    invoke-direct {p0, v2, v4}, Lcom/zte/heartyservice/main/MarketApi;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 92
    const/4 v2, 0x0

    .line 93
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 94
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    const/4 v3, 0x0

    .line 100
    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v1

    .line 98
    .local v1, e:Ljava/io/IOException;
    :goto_1
    const-string v5, "SoftWare"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 96
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v4       #out:Ljava/io/OutputStream;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    goto :goto_1
.end method

.method private getInstallAPKVersionCode()I
    .locals 6

    .prologue
    .line 104
    iget-object v3, p0, Lcom/zte/heartyservice/main/MarketApi;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 105
    .local v2, pm:Landroid/content/pm/PackageManager;
    iget-object v3, p0, Lcom/zte/heartyservice/main/MarketApi;->APKPath:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 106
    .local v1, info:Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 108
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 109
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v3, p0, Lcom/zte/heartyservice/main/MarketApi;->newVersionCode:I

    .line 110
    const-string v3, "MAPI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " newVersionCode =xx===="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/zte/heartyservice/main/MarketApi;->newVersionCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :cond_0
    iget v3, p0, Lcom/zte/heartyservice/main/MarketApi;->newVersionCode:I

    return v3
.end method

.method private needInstallOrUpdate()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 118
    const/4 v1, 0x0

    .line 119
    .local v1, isExist:Z
    const/4 v2, -0x1

    .line 120
    .local v2, oldVersionCode:I
    iget-object v5, p0, Lcom/zte/heartyservice/main/MarketApi;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    .line 121
    .local v4, packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 123
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 124
    .local v3, packageInfo:Landroid/content/pm/PackageInfo;
    const-string v5, "com.tencent.android.qqplaza4zte"

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 126
    const/4 v1, 0x1

    .line 127
    iget-object v5, p0, Lcom/zte/heartyservice/main/MarketApi;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    invoke-virtual {v5, v7}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setMarketState(I)V

    .line 129
    iget v2, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 130
    const-string v5, "MAPI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " oldVersionCode xx====="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .end local v3           #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    if-nez v1, :cond_1

    iget-object v5, p0, Lcom/zte/heartyservice/main/MarketApi;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    invoke-virtual {v5}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getMarketState()I

    move-result v5

    if-nez v5, :cond_1

    .line 137
    iget-object v5, p0, Lcom/zte/heartyservice/main/MarketApi;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    invoke-virtual {v5, v8}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setMarketState(I)V

    .line 140
    :cond_1
    if-eqz v1, :cond_2

    .line 142
    const-string v5, "MAPI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " newVersionCode ====="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/zte/heartyservice/main/MarketApi;->newVersionCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string v5, "MAPI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " oldVersionCode ====="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget v5, p0, Lcom/zte/heartyservice/main/MarketApi;->newJINPINVersion:I

    iput v5, p0, Lcom/zte/heartyservice/main/MarketApi;->newVersionCode:I

    .line 145
    iget v5, p0, Lcom/zte/heartyservice/main/MarketApi;->newVersionCode:I

    if-le v5, v2, :cond_2

    .line 147
    const/4 v1, 0x0

    .line 151
    :cond_2
    if-eqz v1, :cond_3

    .line 153
    iget-boolean v5, p0, Lcom/zte/heartyservice/main/MarketApi;->isRunService:Z

    if-eqz v5, :cond_3

    .line 155
    invoke-direct {p0}, Lcom/zte/heartyservice/main/MarketApi;->startTencetService()Z

    .line 159
    :cond_3
    const-string v5, "MAPI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "netSettingDatas.getMarketState() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/zte/heartyservice/main/MarketApi;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    invoke-virtual {v7}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getMarketState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    if-nez v1, :cond_4

    iget-boolean v5, p0, Lcom/zte/heartyservice/main/MarketApi;->isRunService:Z

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/zte/heartyservice/main/MarketApi;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    invoke-virtual {v5}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getMarketState()I

    move-result v5

    if-ne v5, v8, :cond_4

    .line 162
    const/4 v1, 0x1

    .line 165
    :cond_4
    return v1

    .line 121
    .restart local v3       #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method private startTencetService()Z
    .locals 10

    .prologue
    .line 172
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 173
    .local v3, intent:Landroid/content/Intent;
    const-string v8, "android.intent.action.MAIN"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string v8, "android.intent.category.APP_MARKET"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    iget-object v8, p0, Lcom/zte/heartyservice/main/MarketApi;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 176
    .local v7, pm:Landroid/content/pm/PackageManager;
    const/high16 v8, 0x1

    invoke-virtual {v7, v3, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 178
    .local v5, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v2, 0x0

    .line 179
    .local v2, info:Landroid/content/pm/ResolveInfo;
    const/4 v4, 0x0

    .line 180
    .local v4, isExist:Z
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 181
    .local v0, each:Landroid/content/pm/ResolveInfo;
    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 182
    .local v6, pkgName:Ljava/lang/String;
    const-string v8, "share"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string v8, "com.tencent.android.qqplaza4zte"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 184
    move-object v2, v0

    .line 185
    iget-object v8, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const/high16 v8, 0x1000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 187
    iget-object v8, p0, Lcom/zte/heartyservice/main/MarketApi;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 188
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v8

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Lcom/zte/heartyservice/main/HeartyServiceApp;->check(I)V

    .line 189
    const/4 v4, 0x1

    .line 194
    .end local v0           #each:Landroid/content/pm/ResolveInfo;
    .end local v6           #pkgName:Ljava/lang/String;
    :cond_1
    return v4
.end method


# virtual methods
.method public instatllBatch(Ljava/lang/String;)V
    .locals 13
    .parameter "path"

    .prologue
    .line 199
    const-string v10, "MAPI"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "path="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v1, 0x0

    .line 201
    .local v1, installFlags:I
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 202
    .local v4, mPackageURI:Landroid/net/Uri;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lcom/zte/heartyservice/common/utils/PackageUtil;->getPackageInfo(Ljava/io/File;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 203
    .local v5, mPkgInfo:Landroid/content/pm/PackageParser$Package;
    iget-object v3, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 204
    .local v3, mAppInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v7, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 205
    .local v7, packageName:Ljava/lang/String;
    const-string v10, "MAPI"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "====install packageName ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v10, p0, Lcom/zte/heartyservice/main/MarketApi;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 209
    .local v9, pm:Landroid/content/pm/PackageManager;
    const/16 v10, 0x2000

    :try_start_0
    invoke-virtual {v9, v7, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 211
    .local v8, pi:Landroid/content/pm/PackageInfo;
    if-eqz v8, :cond_0

    .line 212
    or-int/lit8 v1, v1, 0x2

    .line 219
    .end local v8           #pi:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    and-int/lit8 v10, v1, 0x2

    if-eqz v10, :cond_1

    .line 220
    const-string v10, "MAPI"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Replacing package:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_1
    :try_start_1
    new-instance v6, Lcom/zte/heartyservice/main/MarketApi$PackageInstallObserver;

    const/4 v10, 0x0

    invoke-direct {v6, p0, v10}, Lcom/zte/heartyservice/main/MarketApi$PackageInstallObserver;-><init>(Lcom/zte/heartyservice/main/MarketApi;Lcom/zte/heartyservice/main/MarketApi$1;)V

    .line 225
    .local v6, observer:Lcom/zte/heartyservice/main/MarketApi$PackageInstallObserver;
    invoke-virtual {v9, v4, v6, v1, v7}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 240
    .end local v6           #observer:Lcom/zte/heartyservice/main/MarketApi$PackageInstallObserver;
    :cond_2
    :goto_1
    return-void

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, e:Ljava/lang/Exception;
    const-string v10, "MAPI"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " e=================="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 226
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 228
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v10, "MAPI"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " Exception=======x==========="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-boolean v10, p0, Lcom/zte/heartyservice/main/MarketApi;->isRunService:Z

    if-eqz v10, :cond_2

    .line 232
    new-instance v2, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 233
    .local v2, intent:Landroid/content/Intent;
    const/high16 v10, 0x1000

    invoke-virtual {v2, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 234
    const-string v10, "application/vnd.android.package-archive"

    invoke-virtual {v2, v4, v10}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    const-string v10, "com.android.packageinstaller"

    const-string v11, "com.android.packageinstaller.PackageInstallerActivity"

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    iget-object v10, p0, Lcom/zte/heartyservice/main/MarketApi;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public sendTencentAction(Z)V
    .locals 5
    .parameter "isRun"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/zte/heartyservice/main/MarketApi;->isRunService:Z

    .line 59
    :try_start_0
    invoke-direct {p0}, Lcom/zte/heartyservice/main/MarketApi;->needInstallOrUpdate()Z

    move-result v1

    .line 61
    .local v1, isExist:Z
    if-nez v1, :cond_1

    .line 63
    iget-boolean v2, p0, Lcom/zte/heartyservice/main/MarketApi;->isRunService:Z

    if-eqz v2, :cond_0

    .line 65
    iget-object v2, p0, Lcom/zte/heartyservice/main/MarketApi;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0611

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 67
    :cond_0
    invoke-direct {p0}, Lcom/zte/heartyservice/main/MarketApi;->extractApk()V

    .line 69
    iget-object v2, p0, Lcom/zte/heartyservice/main/MarketApi;->APKPath:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/main/MarketApi;->instatllBatch(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v1           #isExist:Z
    :cond_1
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 76
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
