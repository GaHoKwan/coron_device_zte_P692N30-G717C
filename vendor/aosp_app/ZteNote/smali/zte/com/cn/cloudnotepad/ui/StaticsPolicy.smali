.class public Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;
.super Ljava/lang/Object;
.source "StaticsPolicy.java"


# static fields
.field private static final MAX_COUNT_NUMBER:I = 0x1d

.field private static final ONE_MONTH:I = -0x65813800

.field private static final ONE_WEEK:I = 0x240c8400

.field private static final TAG:Ljava/lang/String; = "StaticsPolicy"

.field private static final TWO_MONTH:I = 0x34fd9000


# instance fields
.field private editor:Landroid/content/SharedPreferences$Editor;

.field private mContext:Landroid/content/Context;

.field private preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;->mContext:Landroid/content/Context;

    .line 31
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;->preferences:Landroid/content/SharedPreferences;

    .line 32
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;->editor:Landroid/content/SharedPreferences$Editor;

    .line 33
    return-void
.end method

.method private acceptPolicy()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const-wide/16 v9, 0x0

    .line 80
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;->preferences:Landroid/content/SharedPreferences;

    const-string v6, "UserInfoCount"

    invoke-interface {v5, v6, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 81
    .local v0, currentCount:I
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;->preferences:Landroid/content/SharedPreferences;

    const-string v6, "lastTime"

    invoke-interface {v5, v6, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 82
    .local v1, lastTime:J
    cmp-long v5, v1, v9

    if-nez v5, :cond_0

    .line 83
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "lastTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-interface {v5, v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 85
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;->preferences:Landroid/content/SharedPreferences;

    const-string v8, "lastTime"

    invoke-interface {v7, v8, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    sub-long v3, v5, v7

    .line 86
    .local v3, timeInterval:J
    const/16 v5, 0x1d

    if-ge v0, v5, :cond_1

    const-wide/32 v5, 0x240c8400

    cmp-long v5, v3, v5

    if-ltz v5, :cond_4

    .line 87
    :cond_1
    const-string v5, "StaticsPolicy"

    const-string v6, "send"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;->checkNetworkState()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 89
    invoke-static {}, Lcom/zte/statistics/sdk/ZTEStatistics;->sendCollectionInfo()V

    .line 90
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "isByProxy"

    invoke-interface {v5, v6, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 96
    :cond_2
    :goto_0
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "UserInfoCount"

    invoke-interface {v5, v6, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 97
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "lastTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-interface {v5, v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 101
    :goto_1
    return-void

    .line 92
    :cond_3
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;->mContext:Landroid/content/Context;

    instance-of v5, v5, Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    if-eqz v5, :cond_2

    .line 93
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;->mContext:Landroid/content/Context;

    check-cast v5, Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    invoke-virtual {v5, v12}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->setIsNeedReSend(Z)V

    goto :goto_0

    .line 99
    :cond_4
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "UserInfoCount"

    add-int/lit8 v7, v0, 0x1

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1
.end method

.method static synthetic access$0(Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;)Z
    .locals 1
    .parameter

    .prologue
    .line 155
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;->checkNetworkState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkNetworkState()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 156
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 157
    .local v1, manager:Landroid/net/ConnectivityManager;
    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 158
    .local v0, gprs:Landroid/net/NetworkInfo;
    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 159
    .local v2, wifi:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v3, v4

    .line 162
    :cond_1
    return v3
.end method

.method private sendByProxy()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;->ONLYBYPROXY:Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;

    invoke-static {v0, v1}, Lcom/zte/statistics/sdk/ZTEStatistics;->init(Landroid/content/Context;Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;)V

    .line 73
    const-string v0, "com.zte.aliveupdate"

    invoke-static {v0}, Lcom/zte/statistics/sdk/ZTEStatistics;->setProxyPackageName(Ljava/lang/String;)Z

    .line 74
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/statistics/sdk/ZTEStatistics;->increaseUseTimes(Landroid/content/Context;)V

    .line 75
    invoke-static {}, Lcom/zte/statistics/sdk/ZTEStatistics;->sendCollectionInfo()V

    .line 76
    return-void
.end method

.method private sendBySelf()V
    .locals 4

    .prologue
    .line 57
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;->ONLYBYSELF:Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;

    invoke-static {v1, v2}, Lcom/zte/statistics/sdk/ZTEStatistics;->init(Landroid/content/Context;Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;)V

    .line 58
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/statistics/sdk/ZTEStatistics;->increaseUseTimes(Landroid/content/Context;)V

    .line 61
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "isAccept"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 62
    .local v0, isAccept:Z
    const-string v1, "StaticsPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isAccept="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    if-eqz v0, :cond_0

    .line 64
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;->acceptPolicy()V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;->unacceptPolicy()V

    goto :goto_0
.end method

.method private showCheckUpdateDialog()V
    .locals 3

    .prologue
    .line 125
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 126
    const v1, 0x7f090097

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 127
    const v1, 0x7f0900fb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 128
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 129
    const v1, 0x7f090045

    new-instance v2, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy$1;

    invoke-direct {v2, p0}, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy$1;-><init>(Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 143
    const v1, 0x7f090044

    new-instance v2, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy$2;

    invoke-direct {v2, p0}, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy$2;-><init>(Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 153
    return-void
.end method

.method private unacceptPolicy()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const-wide/16 v8, 0x0

    .line 106
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;->preferences:Landroid/content/SharedPreferences;

    const-string v5, "lastTime"

    invoke-interface {v4, v5, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 107
    .local v0, lastTime:J
    cmp-long v4, v0, v8

    if-nez v4, :cond_0

    .line 108
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "lastTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 110
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;->preferences:Landroid/content/SharedPreferences;

    const-string v7, "lastTime"

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 112
    .local v2, timeInterval:J
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;->checkNetworkState()Z

    move-result v4

    if-eqz v4, :cond_2

    const-wide/32 v4, -0x65813800

    cmp-long v4, v2, v4

    if-ltz v4, :cond_2

    .line 113
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;->showCheckUpdateDialog()V

    .line 114
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "isByProxy"

    invoke-interface {v4, v5, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 120
    :cond_1
    :goto_0
    return-void

    .line 116
    :cond_2
    const-wide/32 v4, 0x34fd9000

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1

    .line 117
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "isAccept"

    invoke-interface {v4, v5, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method


# virtual methods
.method public setAcceptPreference(Z)V
    .locals 3
    .parameter "isAccept"

    .prologue
    .line 36
    if-eqz p1, :cond_0

    .line 37
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "isAccept"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "isAccept"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public setZteStatsInfo()V
    .locals 4

    .prologue
    .line 44
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "isByProxy"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 45
    .local v0, isByProxy:Z
    if-eqz v0, :cond_0

    .line 46
    const-string v1, "StaticsPolicy"

    const-string v2, "sendByProxy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;->sendByProxy()V

    .line 48
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "isByProxy"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 53
    :goto_0
    return-void

    .line 50
    :cond_0
    const-string v1, "StaticsPolicy"

    const-string v2, "sendBySelf"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/StaticsPolicy;->sendBySelf()V

    goto :goto_0
.end method
