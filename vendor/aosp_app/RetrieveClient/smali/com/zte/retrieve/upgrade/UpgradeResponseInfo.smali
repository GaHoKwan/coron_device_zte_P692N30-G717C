.class public Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;
.super Ljava/lang/Object;
.source "UpgradeResponseInfo.java"


# instance fields
.field hasUpdate:Z

.field packageName:Ljava/lang/String;

.field size:J

.field summary:Ljava/lang/String;

.field updateUrl:Ljava/lang/String;

.field versionCode:I

.field versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 85
    if-ne p0, p1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v1

    .line 87
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 88
    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 90
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 91
    check-cast v0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;

    .line 92
    .local v0, other:Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;
    iget-boolean v3, p0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->hasUpdate:Z

    iget-boolean v4, v0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->hasUpdate:Z

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 93
    goto :goto_0

    .line 94
    :cond_4
    iget-object v3, p0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->packageName:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 95
    iget-object v3, v0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_6

    move v1, v2

    .line 96
    goto :goto_0

    .line 97
    :cond_5
    iget-object v3, p0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 98
    goto :goto_0

    .line 99
    :cond_6
    iget-wide v3, p0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->size:J

    iget-wide v5, v0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->size:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_7

    move v1, v2

    .line 100
    goto :goto_0

    .line 101
    :cond_7
    iget-object v3, p0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->summary:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 102
    iget-object v3, v0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->summary:Ljava/lang/String;

    if-eqz v3, :cond_9

    move v1, v2

    .line 103
    goto :goto_0

    .line 104
    :cond_8
    iget-object v3, p0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->summary:Ljava/lang/String;

    iget-object v4, v0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->summary:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    .line 105
    goto :goto_0

    .line 106
    :cond_9
    iget-object v3, p0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->updateUrl:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 107
    iget-object v3, v0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->updateUrl:Ljava/lang/String;

    if-eqz v3, :cond_b

    move v1, v2

    .line 108
    goto :goto_0

    .line 109
    :cond_a
    iget-object v3, p0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->updateUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->updateUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    move v1, v2

    .line 110
    goto :goto_0

    .line 111
    :cond_b
    iget v3, p0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->versionCode:I

    iget v4, v0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->versionCode:I

    if-eq v3, v4, :cond_c

    move v1, v2

    .line 112
    goto :goto_0

    .line 113
    :cond_c
    iget-object v3, p0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->versionName:Ljava/lang/String;

    if-nez v3, :cond_d

    .line 114
    iget-object v3, v0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->versionName:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 115
    goto :goto_0

    .line 116
    :cond_d
    iget-object v3, p0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->versionName:Ljava/lang/String;

    iget-object v4, v0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 117
    goto/16 :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->size:J

    return-wide v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->updateUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->versionCode:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 71
    const/16 v0, 0x1f

    .line 72
    .local v0, prime:I
    const/4 v1, 0x1

    .line 73
    .local v1, result:I
    iget-boolean v2, p0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->hasUpdate:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x4cf

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 74
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->packageName:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 75
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->size:J

    iget-wide v6, p0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->size:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 76
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->summary:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 77
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->updateUrl:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    .line 78
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->versionCode:I

    add-int v1, v2, v4

    .line 79
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->versionName:Ljava/lang/String;

    if-nez v4, :cond_4

    :goto_4
    add-int v1, v2, v3

    .line 80
    return v1

    .line 73
    :cond_0
    const/16 v2, 0x4d5

    goto :goto_0

    .line 74
    :cond_1
    iget-object v2, p0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 76
    :cond_2
    iget-object v2, p0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->summary:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 77
    :cond_3
    iget-object v2, p0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->updateUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 79
    :cond_4
    iget-object v3, p0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_4
.end method

.method public isHasUpdate()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->hasUpdate:Z

    return v0
.end method

.method public setHasUpdate(Z)V
    .locals 0
    .parameter "hasUpdate"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->hasUpdate:Z

    .line 36
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->packageName:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setSize(J)V
    .locals 0
    .parameter "size"

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->size:J

    .line 30
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0
    .parameter "summary"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->summary:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setUpdateUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "updateUrl"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->updateUrl:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setVersionCode(I)V
    .locals 0
    .parameter "versionCode"

    .prologue
    .line 23
    iput p1, p0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->versionCode:I

    .line 24
    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0
    .parameter "versionName"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->versionName:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UpgradeResponseInfo [versionCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->hasUpdate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 65
    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updateUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->updateUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", versionName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 66
    const-string v1, ", summary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/retrieve/upgrade/UpgradeResponseInfo;->summary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
