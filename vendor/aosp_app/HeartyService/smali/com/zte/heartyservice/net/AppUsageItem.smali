.class public Lcom/zte/heartyservice/net/AppUsageItem;
.super Ljava/lang/Object;
.source "AppUsageItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public end:J

.field private historyStats:Landroid/net/NetworkStatsHistory;

.field private mAppInfo:Landroid/content/pm/ApplicationInfo;

.field mNet:Lcom/zte/heartyservice/net/NetTrafficUtils;

.field private mPermissionCategory:I

.field private mPkgInfo:Landroid/content/pm/PackageInfo;

.field private mWifiPermissionCategory:I

.field private permissionType:I

.field private pm:Landroid/content/pm/PackageManager;

.field public start:J

.field private stats:Landroid/net/NetworkStats;

.field private statsWifi:Landroid/net/NetworkStats;

.field private title:Ljava/lang/String;

.field private utils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

.field private wifipermissionType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;IILandroid/net/NetworkStats;Landroid/net/NetworkStats;Lcom/zte/heartyservice/net/NetTrafficUtils;IJJ)V
    .locals 3
    .parameter "context"
    .parameter "pkgInfo"
    .parameter "mPermissionCategory"
    .parameter "wifipermissionType"
    .parameter "stats"
    .parameter "statsWifi"
    .parameter "mNetTrafficUtils"
    .parameter "subscription"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/zte/heartyservice/net/AppUsageItem;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 22
    iput-object v0, p0, Lcom/zte/heartyservice/net/AppUsageItem;->mPkgInfo:Landroid/content/pm/PackageInfo;

    .line 32
    iput-object v0, p0, Lcom/zte/heartyservice/net/AppUsageItem;->title:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/zte/heartyservice/net/AppUsageItem;->mPkgInfo:Landroid/content/pm/PackageInfo;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/net/AppUsageItem;->pm:Landroid/content/pm/PackageManager;

    .line 62
    iput p3, p0, Lcom/zte/heartyservice/net/AppUsageItem;->mPermissionCategory:I

    .line 63
    iput-wide p9, p0, Lcom/zte/heartyservice/net/AppUsageItem;->start:J

    .line 64
    iput-wide p11, p0, Lcom/zte/heartyservice/net/AppUsageItem;->end:J

    .line 65
    iput-object p5, p0, Lcom/zte/heartyservice/net/AppUsageItem;->stats:Landroid/net/NetworkStats;

    .line 67
    iput p4, p0, Lcom/zte/heartyservice/net/AppUsageItem;->wifipermissionType:I

    .line 68
    iput-object p6, p0, Lcom/zte/heartyservice/net/AppUsageItem;->statsWifi:Landroid/net/NetworkStats;

    .line 70
    iput-object p7, p0, Lcom/zte/heartyservice/net/AppUsageItem;->mNet:Lcom/zte/heartyservice/net/NetTrafficUtils;

    .line 72
    iget-object v0, p0, Lcom/zte/heartyservice/net/AppUsageItem;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p7, p8, v0}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getAppHistoryForUid(II)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/net/AppUsageItem;->historyStats:Landroid/net/NetworkStatsHistory;

    .line 74
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/net/AppUsageItem;->utils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/zte/heartyservice/net/AppUsageItem;->pm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/zte/heartyservice/net/AppUsageItem;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/net/AppUsageItem;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 77
    iget-object v0, p0, Lcom/zte/heartyservice/net/AppUsageItem;->utils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    iget-object v1, p0, Lcom/zte/heartyservice/net/AppUsageItem;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p3, v1}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getAppCategoryPermissionType(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/zte/heartyservice/net/AppUsageItem;->permissionType:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 6
    .parameter "another"

    .prologue
    const/4 v1, -0x1

    .line 188
    if-eqz p1, :cond_4

    instance-of v0, p1, Lcom/zte/heartyservice/net/AppUsageItem;

    if-eqz v0, :cond_4

    .line 203
    invoke-virtual {p0}, Lcom/zte/heartyservice/net/AppUsageItem;->getTrafficStats()J

    move-result-wide v2

    move-object v0, p1

    check-cast v0, Lcom/zte/heartyservice/net/AppUsageItem;

    invoke-virtual {v0}, Lcom/zte/heartyservice/net/AppUsageItem;->getTrafficStats()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 204
    invoke-virtual {p0}, Lcom/zte/heartyservice/net/AppUsageItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/zte/heartyservice/net/AppUsageItem;

    invoke-virtual {v0}, Lcom/zte/heartyservice/net/AppUsageItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 205
    :cond_0
    const/4 v0, 0x0

    .line 212
    .end local p1
    :goto_0
    return v0

    .line 207
    .restart local p1
    :cond_1
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/heartyservice/net/AppUsageItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Lcom/zte/heartyservice/net/AppUsageItem;

    .end local p1
    invoke-virtual {p1}, Lcom/zte/heartyservice/net/AppUsageItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 210
    .restart local p1
    :cond_2
    invoke-virtual {p0}, Lcom/zte/heartyservice/net/AppUsageItem;->getTrafficStats()J

    move-result-wide v2

    check-cast p1, Lcom/zte/heartyservice/net/AppUsageItem;

    .end local p1
    invoke-virtual {p1}, Lcom/zte/heartyservice/net/AppUsageItem;->getTrafficStats()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    .restart local p1
    :cond_4
    move v0, v1

    .line 212
    goto :goto_0
.end method

.method public getAppUidByte()J
    .locals 10

    .prologue
    .line 151
    const/4 v7, 0x0

    .line 152
    .local v7, entry:Landroid/net/NetworkStatsHistory$Entry;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 153
    .local v5, now:J
    iget-object v0, p0, Lcom/zte/heartyservice/net/AppUsageItem;->historyStats:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/zte/heartyservice/net/AppUsageItem;->historyStats:Landroid/net/NetworkStatsHistory;

    iget-wide v1, p0, Lcom/zte/heartyservice/net/AppUsageItem;->start:J

    iget-wide v3, p0, Lcom/zte/heartyservice/net/AppUsageItem;->end:J

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v7

    .line 156
    iget-wide v0, v7, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v2, v7, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v8, v0, v2

    .line 161
    :goto_0
    return-wide v8

    :cond_0
    const-wide/16 v8, 0x0

    goto :goto_0
.end method

.method public getAppinfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/zte/heartyservice/net/AppUsageItem;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getPackageinfo()Landroid/content/pm/PackageInfo;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/zte/heartyservice/net/AppUsageItem;->mPkgInfo:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method public getPermissonType()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/zte/heartyservice/net/AppUsageItem;->permissionType:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/zte/heartyservice/net/AppUsageItem;->title:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/zte/heartyservice/net/AppUsageItem;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/zte/heartyservice/net/AppUsageItem;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/net/AppUsageItem;->title:Ljava/lang/String;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/net/AppUsageItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTrafficStats()J
    .locals 12

    .prologue
    .line 112
    const-wide/16 v2, 0x0

    .line 113
    .local v2, rxBytes:J
    const-wide/16 v7, 0x0

    .line 114
    .local v7, txBytes:J
    const-wide/16 v5, 0x0

    .line 115
    .local v5, totalBytes:J
    const/4 v0, 0x0

    .line 116
    .local v0, entry:Landroid/net/NetworkStats$Entry;
    iget-object v10, p0, Lcom/zte/heartyservice/net/AppUsageItem;->stats:Landroid/net/NetworkStats;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/zte/heartyservice/net/AppUsageItem;->stats:Landroid/net/NetworkStats;

    invoke-virtual {v10}, Landroid/net/NetworkStats;->size()I

    move-result v4

    .line 117
    .local v4, size:I
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 118
    iget-object v10, p0, Lcom/zte/heartyservice/net/AppUsageItem;->stats:Landroid/net/NetworkStats;

    invoke-virtual {v10, v1, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 119
    iget v9, v0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 120
    .local v9, uid:I
    iget-object v10, p0, Lcom/zte/heartyservice/net/AppUsageItem;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v9, v10, :cond_0

    .line 121
    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    add-long/2addr v2, v10

    .line 122
    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v7, v10

    .line 117
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 116
    .end local v1           #i:I
    .end local v4           #size:I
    .end local v9           #uid:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 125
    .restart local v1       #i:I
    .restart local v4       #size:I
    :cond_2
    add-long v5, v2, v7

    .line 126
    return-wide v5
.end method

.method public getTrafficStatsWifi()J
    .locals 12

    .prologue
    .line 131
    const-wide/16 v2, 0x0

    .line 132
    .local v2, rxBytes:J
    const-wide/16 v7, 0x0

    .line 133
    .local v7, txBytes:J
    const-wide/16 v5, 0x0

    .line 134
    .local v5, totalBytes:J
    const/4 v0, 0x0

    .line 135
    .local v0, entry:Landroid/net/NetworkStats$Entry;
    iget-object v10, p0, Lcom/zte/heartyservice/net/AppUsageItem;->statsWifi:Landroid/net/NetworkStats;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/zte/heartyservice/net/AppUsageItem;->statsWifi:Landroid/net/NetworkStats;

    invoke-virtual {v10}, Landroid/net/NetworkStats;->size()I

    move-result v4

    .line 136
    .local v4, size:I
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 137
    iget-object v10, p0, Lcom/zte/heartyservice/net/AppUsageItem;->statsWifi:Landroid/net/NetworkStats;

    invoke-virtual {v10, v1, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 138
    iget v9, v0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 139
    .local v9, uid:I
    iget-object v10, p0, Lcom/zte/heartyservice/net/AppUsageItem;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v9, v10, :cond_0

    .line 140
    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    add-long/2addr v2, v10

    .line 141
    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v7, v10

    .line 136
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 135
    .end local v1           #i:I
    .end local v4           #size:I
    .end local v9           #uid:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 144
    .restart local v1       #i:I
    .restart local v4       #size:I
    :cond_2
    add-long v5, v2, v7

    .line 145
    return-wide v5
.end method

.method public getWifiPermissonType()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/zte/heartyservice/net/AppUsageItem;->wifipermissionType:I

    return v0
.end method

.method public setPermissonType(I)V
    .locals 4
    .parameter "type"

    .prologue
    .line 43
    iput p1, p0, Lcom/zte/heartyservice/net/AppUsageItem;->permissionType:I

    .line 44
    iget-object v0, p0, Lcom/zte/heartyservice/net/AppUsageItem;->utils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    iget v1, p0, Lcom/zte/heartyservice/net/AppUsageItem;->mPermissionCategory:I

    iget-object v2, p0, Lcom/zte/heartyservice/net/AppUsageItem;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget v3, p0, Lcom/zte/heartyservice/net/AppUsageItem;->permissionType:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->setAppCategoryPermission(ILjava/lang/String;I)V

    .line 45
    return-void
.end method

.method public setWifiPermissonType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 53
    iput p1, p0, Lcom/zte/heartyservice/net/AppUsageItem;->wifipermissionType:I

    .line 55
    return-void
.end method
