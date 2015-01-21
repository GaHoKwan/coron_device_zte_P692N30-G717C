.class public Ltmsdkobf/ix;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ltmsdk/fg/module/qscanner/QScanResult;)Ltmsdk/common/module/qscanner/QScanResultEntity;
    .locals 2
    .parameter "result"

    .prologue
    .line 19
    if-nez p0, :cond_0

    .line 20
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    .line 23
    :cond_0
    new-instance v0, Ltmsdk/common/module/qscanner/QScanResultEntity;

    invoke-direct {v0}, Ltmsdk/common/module/qscanner/QScanResultEntity;-><init>()V

    .line 24
    .local v0, resultEntity:Ltmsdk/common/module/qscanner/QScanResultEntity;
    iget-object v1, p0, Ltmsdk/fg/module/qscanner/QScanResult;->apkkey:Ltmsdk/fg/module/qscanner/ApkKey;

    iget-object v1, v1, Ltmsdk/fg/module/qscanner/ApkKey;->pkgName:Ljava/lang/String;

    iput-object v1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    .line 25
    iget-object v1, p0, Ltmsdk/fg/module/qscanner/QScanResult;->apkkey:Ltmsdk/fg/module/qscanner/ApkKey;

    iget-object v1, v1, Ltmsdk/fg/module/qscanner/ApkKey;->softName:Ljava/lang/String;

    iput-object v1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->softName:Ljava/lang/String;

    .line 26
    iget-object v1, p0, Ltmsdk/fg/module/qscanner/QScanResult;->apkkey:Ltmsdk/fg/module/qscanner/ApkKey;

    iget-object v1, v1, Ltmsdk/fg/module/qscanner/ApkKey;->version:Ljava/lang/String;

    iput-object v1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->version:Ljava/lang/String;

    .line 27
    iget-object v1, p0, Ltmsdk/fg/module/qscanner/QScanResult;->apkkey:Ltmsdk/fg/module/qscanner/ApkKey;

    iget v1, v1, Ltmsdk/fg/module/qscanner/ApkKey;->versionCode:I

    iput v1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->versionCode:I

    .line 28
    iget-object v1, p0, Ltmsdk/fg/module/qscanner/QScanResult;->apkkey:Ltmsdk/fg/module/qscanner/ApkKey;

    iget-object v1, v1, Ltmsdk/fg/module/qscanner/ApkKey;->path:Ljava/lang/String;

    iput-object v1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->path:Ljava/lang/String;

    .line 29
    iget-object v1, p0, Ltmsdk/fg/module/qscanner/QScanResult;->apkkey:Ltmsdk/fg/module/qscanner/ApkKey;

    iget v1, v1, Ltmsdk/fg/module/qscanner/ApkKey;->apkType:I

    iput v1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->apkType:I

    .line 30
    iget-object v1, p0, Ltmsdk/fg/module/qscanner/QScanResult;->apkkey:Ltmsdk/fg/module/qscanner/ApkKey;

    iget-object v1, v1, Ltmsdk/fg/module/qscanner/ApkKey;->certMd5:Ljava/lang/String;

    iput-object v1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->certMd5:Ljava/lang/String;

    .line 31
    iget-object v1, p0, Ltmsdk/fg/module/qscanner/QScanResult;->apkkey:Ltmsdk/fg/module/qscanner/ApkKey;

    iget v1, v1, Ltmsdk/fg/module/qscanner/ApkKey;->size:I

    iput v1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->size:I

    .line 32
    iget v1, p0, Ltmsdk/fg/module/qscanner/QScanResult;->type:I

    iput v1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->type:I

    .line 33
    iget v1, p0, Ltmsdk/fg/module/qscanner/QScanResult;->advice:I

    iput v1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->advice:I

    .line 34
    iget v1, p0, Ltmsdk/fg/module/qscanner/QScanResult;->malwareid:I

    iput v1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->malwareid:I

    .line 35
    iget-object v1, p0, Ltmsdk/fg/module/qscanner/QScanResult;->name:Ljava/lang/String;

    iput-object v1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->name:Ljava/lang/String;

    .line 36
    iget-object v1, p0, Ltmsdk/fg/module/qscanner/QScanResult;->label:Ljava/lang/String;

    iput-object v1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->label:Ljava/lang/String;

    .line 37
    iget-object v1, p0, Ltmsdk/fg/module/qscanner/QScanResult;->discription:Ljava/lang/String;

    iput-object v1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->discription:Ljava/lang/String;

    .line 38
    iget-object v1, p0, Ltmsdk/fg/module/qscanner/QScanResult;->url:Ljava/lang/String;

    iput-object v1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->url:Ljava/lang/String;

    .line 39
    iget v1, p0, Ltmsdk/fg/module/qscanner/QScanResult;->safelevel:I

    iput v1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->safeLevel:I

    .line 40
    iget v1, p0, Ltmsdk/fg/module/qscanner/QScanResult;->product:I

    iput v1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->product:I

    .line 41
    iget-object v1, p0, Ltmsdk/fg/module/qscanner/QScanResult;->dexsha1:Ljava/lang/String;

    iput-object v1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->dexSha1:Ljava/lang/String;

    .line 42
    iget-object v1, p0, Ltmsdk/fg/module/qscanner/QScanResult;->plugins:Ljava/util/ArrayList;

    invoke-static {v1}, Ltmsdkobf/ix;->i(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->plugins:Ljava/util/ArrayList;

    .line 43
    iget-object v1, p0, Ltmsdk/fg/module/qscanner/QScanResult;->name:Ljava/lang/String;

    iput-object v1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Ltmsdk/common/module/qscanner/QScanResultEntity;I)Ltmsdkobf/br;
    .locals 12
    .parameter "result"
    .parameter "virusBaseVersion"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 49
    if-nez p0, :cond_1

    move-object v7, v11

    .line 76
    :cond_0
    :goto_0
    return-object v7

    .line 52
    :cond_1
    new-instance v7, Ltmsdkobf/br;

    invoke-direct {v7}, Ltmsdkobf/br;-><init>()V

    .line 53
    .local v7, feature:Ltmsdkobf/br;
    new-instance v0, Ltmsdkobf/af;

    iget-object v1, p0, Ltmsdk/common/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    iget-object v2, p0, Ltmsdk/common/module/qscanner/QScanResultEntity;->softName:Ljava/lang/String;

    iget-object v3, p0, Ltmsdk/common/module/qscanner/QScanResultEntity;->version:Ljava/lang/String;

    iget v4, p0, Ltmsdk/common/module/qscanner/QScanResultEntity;->versionCode:I

    iget-object v5, p0, Ltmsdk/common/module/qscanner/QScanResultEntity;->certMd5:Ljava/lang/String;

    iget v6, p0, Ltmsdk/common/module/qscanner/QScanResultEntity;->size:I

    invoke-direct/range {v0 .. v6}, Ltmsdkobf/af;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 55
    .local v0, featureKey:Ltmsdkobf/af;
    iput-object v0, v7, Ltmsdkobf/br;->B:Ltmsdkobf/af;

    .line 56
    iput v10, v7, Ltmsdkobf/br;->fQ:I

    .line 57
    iget v1, p0, Ltmsdk/common/module/qscanner/QScanResultEntity;->apkType:I

    if-ne v1, v10, :cond_3

    move v1, v10

    :goto_1
    iput-boolean v1, v7, Ltmsdkobf/br;->fR:Z

    .line 59
    const/4 v1, 0x4

    iput v1, v7, Ltmsdkobf/br;->fT:I

    .line 60
    iget-object v1, p0, Ltmsdk/common/module/qscanner/QScanResultEntity;->dexSha1:Ljava/lang/String;

    iput-object v1, v7, Ltmsdkobf/br;->dexSha1:Ljava/lang/String;

    .line 61
    const-string v1, "QScanInternalUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dex-sha1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v7, Ltmsdkobf/br;->dexSha1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltmsdk/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    iget v1, p0, Ltmsdk/common/module/qscanner/QScanResultEntity;->type:I

    iput v1, v7, Ltmsdkobf/br;->fU:I

    .line 63
    iget v1, p0, Ltmsdk/common/module/qscanner/QScanResultEntity;->malwareid:I

    iput v1, v7, Ltmsdkobf/br;->fW:I

    .line 64
    iget-object v1, p0, Ltmsdk/common/module/qscanner/QScanResultEntity;->name:Ljava/lang/String;

    iput-object v1, v7, Ltmsdkobf/br;->fV:Ljava/lang/String;

    .line 65
    iput p1, v7, Ltmsdkobf/br;->fY:I

    .line 66
    iget-object v1, p0, Ltmsdk/common/module/qscanner/QScanResultEntity;->plugins:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ltmsdk/common/module/qscanner/QScanResultEntity;->plugins:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 68
    :cond_2
    iput-object v11, v7, Ltmsdkobf/br;->fZ:Ljava/util/ArrayList;

    goto :goto_0

    .line 57
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 71
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Ltmsdk/common/module/qscanner/QScanResultEntity;->plugins:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v7, Ltmsdkobf/br;->fZ:Ljava/util/ArrayList;

    .line 72
    iget-object v1, p0, Ltmsdk/common/module/qscanner/QScanResultEntity;->plugins:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ltmsdk/common/module/qscanner/QScanAdPluginEntity;

    .line 73
    .local v9, plugin:Ltmsdk/common/module/qscanner/QScanAdPluginEntity;
    iget-object v1, v7, Ltmsdkobf/br;->fZ:Ljava/util/ArrayList;

    iget v2, v9, Ltmsdk/common/module/qscanner/QScanAdPluginEntity;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public static i(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltmsdkobf/c;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/qscanner/QScanAdPluginEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, qqpimAdPluginList:Ljava/util/List;,"Ljava/util/List<Ltmsdkobf/c;>;"
    if-nez p0, :cond_1

    .line 81
    const/4 v3, 0x0

    .line 94
    :cond_0
    return-object v3

    .line 83
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    .local v3, r:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/qscanner/QScanAdPluginEntity;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltmsdkobf/c;

    .line 85
    .local v2, qqpimAdPlugin:Ltmsdkobf/c;
    new-instance v0, Ltmsdk/common/module/qscanner/QScanAdPluginEntity;

    invoke-direct {v0}, Ltmsdk/common/module/qscanner/QScanAdPluginEntity;-><init>()V

    .line 86
    .local v0, et:Ltmsdk/common/module/qscanner/QScanAdPluginEntity;
    iget v4, v2, Ltmsdkobf/c;->id:I

    iput v4, v0, Ltmsdk/common/module/qscanner/QScanAdPluginEntity;->id:I

    .line 87
    iget v4, v2, Ltmsdkobf/c;->type:I

    iput v4, v0, Ltmsdk/common/module/qscanner/QScanAdPluginEntity;->type:I

    .line 88
    iget v4, v2, Ltmsdkobf/c;->y:I

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    iget v6, v2, Ltmsdkobf/c;->x:I

    int-to-long v6, v6

    or-long/2addr v4, v6

    iput-wide v4, v0, Ltmsdk/common/module/qscanner/QScanAdPluginEntity;->behaviors:J

    .line 89
    iget-object v4, v2, Ltmsdkobf/c;->banUrls:Ljava/util/ArrayList;

    iput-object v4, v0, Ltmsdk/common/module/qscanner/QScanAdPluginEntity;->banUrls:Ljava/util/ArrayList;

    .line 90
    iget-object v4, v2, Ltmsdkobf/c;->banIps:Ljava/util/ArrayList;

    iput-object v4, v0, Ltmsdk/common/module/qscanner/QScanAdPluginEntity;->banIps:Ljava/util/ArrayList;

    .line 91
    iget-object v4, v2, Ltmsdkobf/c;->name:Ljava/lang/String;

    iput-object v4, v0, Ltmsdk/common/module/qscanner/QScanAdPluginEntity;->name:Ljava/lang/String;

    .line 92
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
