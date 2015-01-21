.class public Lcom/zte/update/data/CacheAppInfo;
.super Ljava/lang/Object;
.source "CacheAppInfo.java"

# interfaces
.implements Lcom/zte/update/data/IStorageInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/update/data/CacheAppInfo$1;,
        Lcom/zte/update/data/CacheAppInfo$Data;
    }
.end annotation


# instance fields
.field private data:Lcom/zte/update/data/CacheAppInfo$Data;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/zte/update/data/CacheAppInfo$Data;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zte/update/data/CacheAppInfo$Data;-><init>(Lcom/zte/update/data/CacheAppInfo;Lcom/zte/update/data/CacheAppInfo$1;)V

    iput-object v0, p0, Lcom/zte/update/data/CacheAppInfo;->data:Lcom/zte/update/data/CacheAppInfo$Data;

    .line 187
    return-void
.end method


# virtual methods
.method public getAllSize()J
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/zte/update/data/CacheAppInfo;->data:Lcom/zte/update/data/CacheAppInfo$Data;

    iget-wide v0, v0, Lcom/zte/update/data/CacheAppInfo$Data;->allSze:J

    return-wide v0
.end method

.method public getApkUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/zte/update/data/CacheAppInfo;->data:Lcom/zte/update/data/CacheAppInfo$Data;

    iget-object v0, v0, Lcom/zte/update/data/CacheAppInfo$Data;->apkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/zte/update/data/CacheAppInfo;->data:Lcom/zte/update/data/CacheAppInfo$Data;

    iget-object v0, v0, Lcom/zte/update/data/CacheAppInfo$Data;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/zte/update/data/CacheAppInfo;->data:Lcom/zte/update/data/CacheAppInfo$Data;

    iget-object v0, v0, Lcom/zte/update/data/CacheAppInfo$Data;->appUid:Ljava/lang/String;

    return-object v0
.end method

.method public getMainKeyValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/zte/update/data/CacheAppInfo;->data:Lcom/zte/update/data/CacheAppInfo$Data;

    iget-object v0, v0, Lcom/zte/update/data/CacheAppInfo$Data;->mainKeyValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zte/update/data/CacheAppInfo;->data:Lcom/zte/update/data/CacheAppInfo$Data;

    iget-object v0, v0, Lcom/zte/update/data/CacheAppInfo$Data;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPatchSize()J
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zte/update/data/CacheAppInfo;->data:Lcom/zte/update/data/CacheAppInfo$Data;

    iget-wide v0, v0, Lcom/zte/update/data/CacheAppInfo$Data;->patchSize:J

    return-wide v0
.end method

.method public getPublishTime()J
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/zte/update/data/CacheAppInfo;->data:Lcom/zte/update/data/CacheAppInfo$Data;

    #getter for: Lcom/zte/update/data/CacheAppInfo$Data;->publishTime:J
    invoke-static {v0}, Lcom/zte/update/data/CacheAppInfo$Data;->access$400(Lcom/zte/update/data/CacheAppInfo$Data;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/zte/update/data/CacheAppInfo;->data:Lcom/zte/update/data/CacheAppInfo$Data;

    #getter for: Lcom/zte/update/data/CacheAppInfo$Data;->summary:Ljava/lang/String;
    invoke-static {v0}, Lcom/zte/update/data/CacheAppInfo$Data;->access$300(Lcom/zte/update/data/CacheAppInfo$Data;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/zte/update/data/CacheAppInfo;->data:Lcom/zte/update/data/CacheAppInfo$Data;

    #getter for: Lcom/zte/update/data/CacheAppInfo$Data;->versionCode:I
    invoke-static {v0}, Lcom/zte/update/data/CacheAppInfo$Data;->access$100(Lcom/zte/update/data/CacheAppInfo$Data;)I

    move-result v0

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/zte/update/data/CacheAppInfo;->data:Lcom/zte/update/data/CacheAppInfo$Data;

    #getter for: Lcom/zte/update/data/CacheAppInfo$Data;->versionName:Ljava/lang/String;
    invoke-static {v0}, Lcom/zte/update/data/CacheAppInfo$Data;->access$200(Lcom/zte/update/data/CacheAppInfo$Data;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reload(Ljava/lang/Object;)V
    .locals 2
    .parameter "o"

    .prologue
    .line 178
    instance-of v1, p1, Lcom/zte/update/data/CacheAppInfo;

    if-nez v1, :cond_0

    .line 185
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 181
    check-cast v0, Lcom/zte/update/data/CacheAppInfo;

    .line 182
    .local v0, info:Lcom/zte/update/data/CacheAppInfo;
    iget-object v1, v0, Lcom/zte/update/data/CacheAppInfo;->data:Lcom/zte/update/data/CacheAppInfo$Data;

    iput-object v1, p0, Lcom/zte/update/data/CacheAppInfo;->data:Lcom/zte/update/data/CacheAppInfo$Data;

    goto :goto_0
.end method

.method public setAllSize(J)V
    .locals 1
    .parameter "allSze"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/zte/update/data/CacheAppInfo;->data:Lcom/zte/update/data/CacheAppInfo$Data;

    iput-wide p1, v0, Lcom/zte/update/data/CacheAppInfo$Data;->allSze:J

    .line 31
    return-void
.end method

.method public setApkUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "apkUrl"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/zte/update/data/CacheAppInfo;->data:Lcom/zte/update/data/CacheAppInfo$Data;

    iput-object p1, v0, Lcom/zte/update/data/CacheAppInfo$Data;->apkUrl:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 1
    .parameter "appName"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/zte/update/data/CacheAppInfo;->data:Lcom/zte/update/data/CacheAppInfo$Data;

    iput-object p1, v0, Lcom/zte/update/data/CacheAppInfo$Data;->appName:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setAppUid(Ljava/lang/String;)V
    .locals 1
    .parameter "appUid"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/zte/update/data/CacheAppInfo;->data:Lcom/zte/update/data/CacheAppInfo$Data;

    iput-object p1, v0, Lcom/zte/update/data/CacheAppInfo$Data;->appUid:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setMainKey(Ljava/lang/Object;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/zte/update/data/CacheAppInfo;->data:Lcom/zte/update/data/CacheAppInfo$Data;

    iput-object p1, v0, Lcom/zte/update/data/CacheAppInfo$Data;->mainKeyValue:Ljava/lang/Object;

    .line 107
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zte/update/data/CacheAppInfo;->data:Lcom/zte/update/data/CacheAppInfo$Data;

    iput-object p1, v0, Lcom/zte/update/data/CacheAppInfo$Data;->packageName:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setPatchSize(J)V
    .locals 1
    .parameter "patchSize"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/zte/update/data/CacheAppInfo;->data:Lcom/zte/update/data/CacheAppInfo$Data;

    iput-wide p1, v0, Lcom/zte/update/data/CacheAppInfo$Data;->patchSize:J

    .line 37
    return-void
.end method

.method public setPublishTime(J)V
    .locals 1
    .parameter "publishTime"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/zte/update/data/CacheAppInfo;->data:Lcom/zte/update/data/CacheAppInfo$Data;

    #setter for: Lcom/zte/update/data/CacheAppInfo$Data;->publishTime:J
    invoke-static {v0, p1, p2}, Lcom/zte/update/data/CacheAppInfo$Data;->access$402(Lcom/zte/update/data/CacheAppInfo$Data;J)J

    .line 97
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 1
    .parameter "summary"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/zte/update/data/CacheAppInfo;->data:Lcom/zte/update/data/CacheAppInfo$Data;

    #setter for: Lcom/zte/update/data/CacheAppInfo$Data;->summary:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/zte/update/data/CacheAppInfo$Data;->access$302(Lcom/zte/update/data/CacheAppInfo$Data;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setVersionCode(I)V
    .locals 1
    .parameter "versionCode"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/zte/update/data/CacheAppInfo;->data:Lcom/zte/update/data/CacheAppInfo$Data;

    #setter for: Lcom/zte/update/data/CacheAppInfo$Data;->versionCode:I
    invoke-static {v0, p1}, Lcom/zte/update/data/CacheAppInfo$Data;->access$102(Lcom/zte/update/data/CacheAppInfo$Data;I)I

    .line 61
    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 1
    .parameter "versionName"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/zte/update/data/CacheAppInfo;->data:Lcom/zte/update/data/CacheAppInfo$Data;

    #setter for: Lcom/zte/update/data/CacheAppInfo$Data;->versionName:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/zte/update/data/CacheAppInfo$Data;->access$202(Lcom/zte/update/data/CacheAppInfo$Data;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    return-void
.end method
