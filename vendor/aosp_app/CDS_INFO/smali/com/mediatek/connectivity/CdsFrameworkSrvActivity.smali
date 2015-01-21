.class public Lcom/mediatek/connectivity/CdsFrameworkSrvActivity;
.super Landroid/app/Activity;
.source "CdsFrameworkSrvActivity.java"


# static fields
.field private static final NULL_INFO:Ljava/lang/String; = "N/A"

.field private static final TAG:Ljava/lang/String; = "CdsFrameworkSrvActivity"


# instance fields
.field private mActiveNetworkInfo:Landroid/widget/TextView;

.field private mActiveNetworkLinkProperties:Landroid/widget/TextView;

.field private mActiveNetworkQuotaInfo:Landroid/widget/TextView;

.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mNetPolicyMgr:Landroid/net/NetworkPolicyManager;

.field private mNetworkInfo:Landroid/widget/TextView;

.field private mNetworkPolicy:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private updateFrameworkSrvInfo()V
    .locals 12

    .prologue
    .line 126
    const/4 v1, 0x0

    .line 130
    .local v1, i:I
    const-string v2, ""

    .line 136
    .local v2, infoString:Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/mediatek/connectivity/CdsFrameworkSrvActivity;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 137
    .local v4, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v4, :cond_2

    .line 138
    iget-object v8, p0, Lcom/mediatek/connectivity/CdsFrameworkSrvActivity;->mActiveNetworkInfo:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x2c

    const/16 v11, 0xa

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    :goto_0
    iget-object v8, p0, Lcom/mediatek/connectivity/CdsFrameworkSrvActivity;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v3

    .line 146
    .local v3, linkProperties:Landroid/net/LinkProperties;
    if-eqz v3, :cond_0

    .line 147
    const-string v8, "CdsFrameworkSrvActivity"

    invoke-virtual {v3}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    if-eqz v4, :cond_3

    .line 151
    iget-object v8, p0, Lcom/mediatek/connectivity/CdsFrameworkSrvActivity;->mActiveNetworkLinkProperties:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "]"

    const-string v11, "]\n"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    :goto_1
    iget-object v8, p0, Lcom/mediatek/connectivity/CdsFrameworkSrvActivity;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;

    move-result-object v7

    .line 161
    .local v7, networkQuotaInfo:Landroid/net/NetworkQuotaInfo;
    if-eqz v7, :cond_4

    .line 162
    const-string v8, "CdsFrameworkSrvActivity"

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Actual:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Landroid/net/NetworkQuotaInfo;->getEstimatedBytes()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Warning:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Landroid/net/NetworkQuotaInfo;->getSoftLimitBytes()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Limit:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Landroid/net/NetworkQuotaInfo;->getHardLimitBytes()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 164
    iget-object v8, p0, Lcom/mediatek/connectivity/CdsFrameworkSrvActivity;->mActiveNetworkQuotaInfo:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    :goto_2
    const-string v2, ""

    .line 171
    iget-object v8, p0, Lcom/mediatek/connectivity/CdsFrameworkSrvActivity;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v5

    .line 172
    .local v5, networkInfoArr:[Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    :goto_3
    array-length v8, v5

    if-ge v1, v8, :cond_5

    .line 173
    aget-object v4, v5, v1

    .line 174
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x2c

    const/16 v11, 0xa

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n----------------------\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 175
    const/16 v8, 0x2c

    const/16 v9, 0xa

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 179
    iget-object v8, p0, Lcom/mediatek/connectivity/CdsFrameworkSrvActivity;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v3

    .line 180
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n----------------------\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 172
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 140
    .end local v3           #linkProperties:Landroid/net/LinkProperties;
    .end local v5           #networkInfoArr:[Landroid/net/NetworkInfo;
    .end local v7           #networkQuotaInfo:Landroid/net/NetworkQuotaInfo;
    :cond_2
    iget-object v8, p0, Lcom/mediatek/connectivity/CdsFrameworkSrvActivity;->mActiveNetworkInfo:Landroid/widget/TextView;

    const-string v9, "N/A"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 193
    .end local v4           #networkInfo:Landroid/net/NetworkInfo;
    :catch_0
    move-exception v0

    .line 194
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 196
    .end local v0           #e:Ljava/lang/Exception;
    :goto_4
    return-void

    .line 153
    .restart local v3       #linkProperties:Landroid/net/LinkProperties;
    .restart local v4       #networkInfo:Landroid/net/NetworkInfo;
    :cond_3
    :try_start_1
    iget-object v8, p0, Lcom/mediatek/connectivity/CdsFrameworkSrvActivity;->mActiveNetworkLinkProperties:Landroid/widget/TextView;

    const-string v9, "N/A"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 166
    .restart local v7       #networkQuotaInfo:Landroid/net/NetworkQuotaInfo;
    :cond_4
    iget-object v8, p0, Lcom/mediatek/connectivity/CdsFrameworkSrvActivity;->mActiveNetworkQuotaInfo:Landroid/widget/TextView;

    const-string v9, "N/A"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 183
    .restart local v5       #networkInfoArr:[Landroid/net/NetworkInfo;
    :cond_5
    iget-object v8, p0, Lcom/mediatek/connectivity/CdsFrameworkSrvActivity;->mNetworkInfo:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v8, p0, Lcom/mediatek/connectivity/CdsFrameworkSrvActivity;->mNetPolicyMgr:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v8}, Landroid/net/NetworkPolicyManager;->getNetworkPolicies()[Landroid/net/NetworkPolicy;

    move-result-object v6

    .line 186
    .local v6, networkPolicy:[Landroid/net/NetworkPolicy;
    const-string v2, ""

    .line 187
    const/4 v1, 0x0

    :goto_5
    array-length v8, v6

    if-ge v1, v8, :cond_6

    .line 188
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v1

    invoke-virtual {v9}, Landroid/net/NetworkPolicy;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x2c

    const/16 v11, 0xa

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n----------------------\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 190
    :cond_6
    iget-object v8, p0, Lcom/mediatek/connectivity/CdsFrameworkSrvActivity;->mNetworkPolicy:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    const-string v8, "CdsFrameworkSrvActivity"

    const-string v9, "updateFrameworkSrvInfo Done"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 93
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/connectivity/CdsFrameworkSrvActivity;->mContext:Landroid/content/Context;

    .line 94
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsFrameworkSrvActivity;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 95
    const-string v0, "CdsFrameworkSrvActivity"

    const-string v1, "Could not get Conext of this activity"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/mediatek/connectivity/CdsFrameworkSrvActivity;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 99
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsFrameworkSrvActivity;->mConnMgr:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    .line 100
    const-string v0, "CdsFrameworkSrvActivity"

    const-string v1, "Could not get Connectivity Manager"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsFrameworkSrvActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/connectivity/CdsFrameworkSrvActivity;->mNetPolicyMgr:Landroid/net/NetworkPolicyManager;

    .line 105
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsFrameworkSrvActivity;->mNetPolicyMgr:Landroid/net/NetworkPolicyManager;

    if-nez v0, :cond_2

    .line 106
    const-string v0, "CdsFrameworkSrvActivity"

    const-string v1, "Could not get Network policy manager"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    :cond_2
    const v0, 0x7f070010

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/connectivity/CdsFrameworkSrvActivity;->mActiveNetworkInfo:Landroid/widget/TextView;

    .line 111
    const v0, 0x7f070012

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/connectivity/CdsFrameworkSrvActivity;->mActiveNetworkLinkProperties:Landroid/widget/TextView;

    .line 112
    const v0, 0x7f070013

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/connectivity/CdsFrameworkSrvActivity;->mActiveNetworkQuotaInfo:Landroid/widget/TextView;

    .line 113
    const v0, 0x7f070015

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/connectivity/CdsFrameworkSrvActivity;->mNetworkPolicy:Landroid/widget/TextView;

    .line 114
    const v0, 0x7f070014

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/connectivity/CdsFrameworkSrvActivity;->mNetworkInfo:Landroid/widget/TextView;

    .line 116
    const-string v0, "CdsFrameworkSrvActivity"

    const-string v1, "CdsFrameworkSrvActivity is started"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 200
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 203
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 121
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 122
    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsFrameworkSrvActivity;->updateFrameworkSrvInfo()V

    .line 123
    return-void
.end method
