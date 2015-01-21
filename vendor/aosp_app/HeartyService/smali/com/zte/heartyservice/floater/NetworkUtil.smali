.class public Lcom/zte/heartyservice/floater/NetworkUtil;
.super Ljava/lang/Object;
.source "NetworkUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkUtil"

.field static flowInfoStr:Ljava/lang/String;

.field static flowInfofloat:F

.field static initData:Z

.field static mobileConnected:Z

.field static oldreciveBytes:F

.field static oldsendBytes:F

.field static oldtime:J

.field static preUpdateTime:J

.field static viewId:I

.field static wifiConnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 13
    sput-boolean v0, Lcom/zte/heartyservice/floater/NetworkUtil;->wifiConnected:Z

    .line 14
    sput-boolean v0, Lcom/zte/heartyservice/floater/NetworkUtil;->mobileConnected:Z

    .line 16
    sput v1, Lcom/zte/heartyservice/floater/NetworkUtil;->oldreciveBytes:F

    .line 17
    sput v1, Lcom/zte/heartyservice/floater/NetworkUtil;->oldsendBytes:F

    .line 20
    sput-boolean v0, Lcom/zte/heartyservice/floater/NetworkUtil;->initData:Z

    .line 21
    sput-wide v2, Lcom/zte/heartyservice/floater/NetworkUtil;->oldtime:J

    .line 22
    sput-wide v2, Lcom/zte/heartyservice/floater/NetworkUtil;->preUpdateTime:J

    .line 23
    sput v0, Lcom/zte/heartyservice/floater/NetworkUtil;->viewId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatString(F)Ljava/lang/String;
    .locals 12
    .parameter "data"

    .prologue
    const-wide/high16 v10, 0x4090

    const-wide/high16 v8, 0x4024

    .line 151
    const-string v1, "0.0K/S"

    .line 152
    .local v1, dataString:Ljava/lang/String;
    const/high16 v4, 0x447a

    mul-float/2addr v4, p0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 153
    .local v0, allData:I
    const/16 v4, 0x3e8

    if-lt v0, v4, :cond_2

    .line 155
    const/high16 v4, 0x4120

    mul-float/2addr v4, p0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-double v4, v4

    div-double v2, v4, v8

    .line 156
    .local v2, tmp:D
    div-double v4, v2, v10

    const-wide/high16 v6, 0x3ff0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    .line 158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    div-double v5, v2, v10

    mul-double/2addr v5, v8

    div-double/2addr v5, v8

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "M/S"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 168
    .end local v2           #tmp:D
    :cond_0
    :goto_0
    return-object v1

    .line 162
    .restart local v2       #tmp:D
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "K/S"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 164
    .end local v2           #tmp:D
    :cond_2
    if-lez v0, :cond_0

    .line 166
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v5, 0x4480

    mul-float/2addr v5, p0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "B/S"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getFlowData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/zte/heartyservice/floater/NetworkUtil;->flowInfoStr:Ljava/lang/String;

    return-object v0
.end method

.method public static getFlowFloatData()F
    .locals 1

    .prologue
    .line 145
    sget v0, Lcom/zte/heartyservice/floater/NetworkUtil;->flowInfofloat:F

    return v0
.end method

.method public static getMobileState()Z
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/zte/heartyservice/floater/NetworkUtil;->mobileConnected:Z

    return v0
.end method

.method public static getWifiState()Z
    .locals 1

    .prologue
    .line 61
    sget-boolean v0, Lcom/zte/heartyservice/floater/NetworkUtil;->wifiConnected:Z

    return v0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    .line 25
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 26
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 27
    const-string v3, "NetWorkState"

    const-string v4, "Unavailabel"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 29
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 30
    .local v2, info:[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_2

    .line 31
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 32
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_1

    .line 33
    const-string v3, "NetworkUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v2, v1

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Availabel"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 37
    .end local v1           #i:I
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static updateConnectedFlags(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 46
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 49
    .local v1, connMgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 50
    .local v0, activeInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 51
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v3, :cond_0

    move v2, v3

    :goto_0
    sput-boolean v2, Lcom/zte/heartyservice/floater/NetworkUtil;->wifiConnected:Z

    .line 52
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    sput-boolean v3, Lcom/zte/heartyservice/floater/NetworkUtil;->mobileConnected:Z

    .line 57
    :goto_2
    return-void

    :cond_0
    move v2, v4

    .line 51
    goto :goto_0

    :cond_1
    move v3, v4

    .line 52
    goto :goto_1

    .line 54
    :cond_2
    sput-boolean v4, Lcom/zte/heartyservice/floater/NetworkUtil;->wifiConnected:Z

    .line 55
    sput-boolean v4, Lcom/zte/heartyservice/floater/NetworkUtil;->mobileConnected:Z

    goto :goto_2
.end method

.method public static updateFlowData(Landroid/content/Context;I)V
    .locals 17
    .parameter "context"
    .parameter "mViewId"

    .prologue
    .line 71
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 72
    .local v4, nowtime:J
    sget-wide v13, Lcom/zte/heartyservice/floater/NetworkUtil;->preUpdateTime:J

    sub-long v11, v4, v13

    .line 73
    .local v11, updateDuration:J
    sget v13, Lcom/zte/heartyservice/floater/NetworkUtil;->viewId:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    if-nez p1, :cond_0

    const-wide/16 v13, 0x3e8

    div-long v13, v11, v13

    const-wide/32 v15, 0x2dc6c0

    cmp-long v13, v13, v15

    if-gez v13, :cond_0

    .line 135
    :goto_0
    return-void

    .line 77
    :cond_0
    sput-wide v4, Lcom/zte/heartyservice/floater/NetworkUtil;->preUpdateTime:J

    .line 79
    const-string v13, "0.0K/S"

    sput-object v13, Lcom/zte/heartyservice/floater/NetworkUtil;->flowInfoStr:Ljava/lang/String;

    .line 80
    invoke-static/range {p0 .. p0}, Lcom/zte/heartyservice/floater/NetworkUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 82
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v13

    long-to-float v13, v13

    const/high16 v14, 0x4480

    div-float v7, v13, v14

    .line 83
    .local v7, reciveTotalBytes:F
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v13

    long-to-float v13, v13

    const/high16 v14, 0x4480

    div-float v9, v13, v14

    .line 84
    .local v9, sendTotalBytes:F
    const-string v13, "NetworkUtil"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "reciveTotalBytes="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",sendTotalBytes="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v13

    long-to-float v13, v13

    const/high16 v14, 0x4480

    div-float v6, v13, v14

    .line 87
    .local v6, reciveBytes:F
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v13

    long-to-float v13, v13

    const/high16 v14, 0x4480

    div-float v8, v13, v14

    .line 88
    .local v8, sendBytes:F
    const-string v13, "NetworkUtil"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "reciveBytes==="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",sendBytes==="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-static/range {p0 .. p0}, Lcom/zte/heartyservice/floater/NetworkUtil;->updateConnectedFlags(Landroid/content/Context;)V

    .line 91
    invoke-static {}, Lcom/zte/heartyservice/floater/NetworkUtil;->getWifiState()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 93
    const-string v13, "NetworkUtil"

    const-string v14, "wifi ==========================="

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    sub-float v6, v7, v6

    .line 95
    sub-float v8, v9, v8

    .line 99
    :cond_1
    sget v13, Lcom/zte/heartyservice/floater/NetworkUtil;->oldreciveBytes:F

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-nez v13, :cond_3

    .line 101
    const/4 v13, 0x0

    sput-boolean v13, Lcom/zte/heartyservice/floater/NetworkUtil;->initData:Z

    .line 107
    :goto_1
    sget v13, Lcom/zte/heartyservice/floater/NetworkUtil;->oldreciveBytes:F

    sub-float v2, v6, v13

    .line 108
    .local v2, m_reciveBytes:F
    sget v13, Lcom/zte/heartyservice/floater/NetworkUtil;->oldsendBytes:F

    sub-float v3, v8, v13

    .line 110
    .local v3, m_sendBytes:F
    sget-wide v13, Lcom/zte/heartyservice/floater/NetworkUtil;->oldtime:J

    sub-long v0, v4, v13

    .line 111
    .local v0, duration:J
    const-string v13, "NetworkUtil"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "duration ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    sput-wide v4, Lcom/zte/heartyservice/floater/NetworkUtil;->oldtime:J

    .line 114
    sput v6, Lcom/zte/heartyservice/floater/NetworkUtil;->oldreciveBytes:F

    .line 115
    sput v8, Lcom/zte/heartyservice/floater/NetworkUtil;->oldsendBytes:F

    .line 118
    add-float v13, v2, v3

    long-to-float v14, v0

    div-float/2addr v13, v14

    const v14, 0x4e6e6b28

    mul-float v10, v13, v14

    .line 119
    .local v10, tmpData:F
    sget-boolean v13, Lcom/zte/heartyservice/floater/NetworkUtil;->initData:Z

    if-eqz v13, :cond_4

    .line 121
    invoke-static {v10}, Lcom/zte/heartyservice/floater/NetworkUtil;->formatString(F)Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/zte/heartyservice/floater/NetworkUtil;->flowInfoStr:Ljava/lang/String;

    .line 122
    sput v10, Lcom/zte/heartyservice/floater/NetworkUtil;->flowInfofloat:F

    .line 129
    :goto_2
    const-string v13, "NetworkUtil"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "reciveBytes="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",sendBytes="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .end local v0           #duration:J
    .end local v2           #m_reciveBytes:F
    .end local v3           #m_sendBytes:F
    .end local v6           #reciveBytes:F
    .end local v7           #reciveTotalBytes:F
    .end local v8           #sendBytes:F
    .end local v9           #sendTotalBytes:F
    .end local v10           #tmpData:F
    :cond_2
    sput p1, Lcom/zte/heartyservice/floater/NetworkUtil;->viewId:I

    goto/16 :goto_0

    .line 105
    .restart local v6       #reciveBytes:F
    .restart local v7       #reciveTotalBytes:F
    .restart local v8       #sendBytes:F
    .restart local v9       #sendTotalBytes:F
    :cond_3
    const/4 v13, 0x1

    sput-boolean v13, Lcom/zte/heartyservice/floater/NetworkUtil;->initData:Z

    goto :goto_1

    .line 126
    .restart local v0       #duration:J
    .restart local v2       #m_reciveBytes:F
    .restart local v3       #m_sendBytes:F
    .restart local v10       #tmpData:F
    :cond_4
    const-string v13, "0.0K/S"

    sput-object v13, Lcom/zte/heartyservice/floater/NetworkUtil;->flowInfoStr:Ljava/lang/String;

    .line 127
    const/4 v13, 0x0

    sput v13, Lcom/zte/heartyservice/floater/NetworkUtil;->flowInfofloat:F

    goto :goto_2
.end method
