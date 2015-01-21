.class public Lcom/android/providers/media/OmaReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OmaReceiver.java"


# static fields
.field private static final ACTION_CAPABILITY:Ljava/lang/String; = "com.mediatek.omacp.capability"

.field private static final ACTION_CAPABILITY_RESULT:Ljava/lang/String; = "com.mediatek.omacp.capability.result"

.field private static final ACTION_SETTING:Ljava/lang/String; = "com.mediatek.omacp.settings"

.field private static final ACTION_SETTING_RESULT:Ljava/lang/String; = "com.mediatek.omacp.settings.result"

.field private static final KEY_APPID:Ljava/lang/String; = "APPID"

.field private static final KEY_CAPABILITY_MAX_BANDWIDTH:Ljava/lang/String; = "rtsp_max_bandwidth"

.field private static final KEY_CAPABILITY_MAX_UDP_PORT:Ljava/lang/String; = "rtsp_max_udp_port"

.field private static final KEY_CAPABILITY_MIN_UDP_PORT:Ljava/lang/String; = "rtsp_min_udp_port"

.field private static final KEY_CAPABILITY_NAME:Ljava/lang/String; = "rtsp_name"

.field private static final KEY_CAPABILITY_NET_INFO:Ljava/lang/String; = "rtsp_net_info"

.field private static final KEY_CAPABILITY_PROVIDER_ID:Ljava/lang/String; = "rtsp_provider_id"

.field private static final KEY_CAPABILITY_RTSP:Ljava/lang/String; = "rtsp"

.field private static final KEY_CAPABILITY_TO_NAPID:Ljava/lang/String; = "rtsp_to_napid"

.field private static final KEY_CAPABILITY_TO_PROXY:Ljava/lang/String; = "rtsp_to_proxy"

.field private static final KEY_MAX_BANDWIDTH:Ljava/lang/String; = "MAX-BANDWIDTH"

.field private static final KEY_MAX_UDP_PORT:Ljava/lang/String; = "MAX-UDP-PORT"

.field private static final KEY_MIN_UDP_PORT:Ljava/lang/String; = "MIN-UDP-PORT"

.field private static final KEY_NAME:Ljava/lang/String; = "NAME"

.field private static final KEY_NETINFO:Ljava/lang/String; = "NETINFO"

.field private static final KEY_PROVIDER_ID:Ljava/lang/String; = "PROVIDER-ID"

.field private static final KEY_RESULT:Ljava/lang/String; = "result"

.field private static final KEY_RESULT_APPID:Ljava/lang/String; = "appId"

.field private static final KEY_SIM_ID:Ljava/lang/String; = "simId"

.field private static final KEY_TO_NAPID:Ljava/lang/String; = "TO-NAPID"

.field private static final KEY_TO_PROXY:Ljava/lang/String; = "TO-PROXY"

.field private static final MY_APP_ID:Ljava/lang/String; = "554"

.field private static final TAG:Ljava/lang/String; = "MediaProvider/OmacpReceiver"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private catString(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter "seperator"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 148
    .local v0, elements:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 149
    .local v2, size:I
    :goto_0
    if-lez v2, :cond_2

    .line 150
    const-string v0, ""

    .line 151
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    add-int/lit8 v3, v2, -0x1

    if-ge v1, v3, :cond_1

    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 148
    .end local v1           #i:I
    .end local v2           #size:I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 154
    .restart local v1       #i:I
    .restart local v2       #size:I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    .end local v1           #i:I
    :cond_2
    const-string v3, "MediaProvider/OmacpReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "catString() return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/providers/media/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-object v0
.end method

.method private saveRtspSetting(Landroid/os/Bundle;)V
    .locals 5
    .parameter "extras"

    .prologue
    .line 80
    const-string v2, "MediaProvider/OmacpReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveRtspSetting("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/providers/media/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    if-eqz p1, :cond_1

    .line 82
    const-string v2, "APPID"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, appid:Ljava/lang/String;
    const-string v2, "554"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.mediatek.omacp.settings.result"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "appId"

    const-string v3, "554"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string v2, "result"

    invoke-direct {p0, p1}, Lcom/android/providers/media/OmaReceiver;->writeSetting(Landroid/os/Bundle;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 87
    iget-object v2, p0, Lcom/android/providers/media/OmaReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 95
    .end local v0           #appid:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 89
    .restart local v0       #appid:Ljava/lang/String;
    :cond_0
    const-string v2, "MediaProvider/OmacpReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not rtsp app id. appid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/providers/media/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 92
    .end local v0           #appid:Ljava/lang/String;
    :cond_1
    const-string v2, "MediaProvider/OmacpReceiver"

    const-string v3, "extras is null. cannot set rtsp configuration!"

    invoke-static {v2, v3}, Lcom/android/providers/media/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendRtspCapability()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.omacp.capability.result"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "appId"

    const-string v2, "554"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string v1, "rtsp"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 67
    const-string v1, "rtsp_to_proxy"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 68
    const-string v1, "rtsp_to_napid"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 69
    const-string v1, "rtsp_net_info"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 70
    const-string v1, "rtsp_min_udp_port"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 71
    const-string v1, "rtsp_max_udp_port"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 72
    const-string v1, "rtsp_name"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 73
    const-string v1, "rtsp_provider_id"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 74
    const-string v1, "rtsp_max_bandwidth"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 75
    iget-object v1, p0, Lcom/android/providers/media/OmaReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 76
    const-string v1, "MediaProvider/OmacpReceiver"

    const-string v2, "sendRtspCapability()..."

    invoke-static {v1, v2}, Lcom/android/providers/media/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void
.end method

.method private writeSetting(Landroid/os/Bundle;)Z
    .locals 13
    .parameter "extras"

    .prologue
    .line 98
    const-string v10, "MediaProvider/OmacpReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "writeSetting("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/providers/media/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string v10, "simId"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 100
    .local v7, simid:I
    const-string v6, ""

    .line 101
    .local v6, proxy:Ljava/lang/String;
    const-string v5, "-1"

    .line 102
    .local v5, port:Ljava/lang/String;
    const/4 v2, 0x0

    .line 103
    .local v2, enableProxy:Z
    const/16 v10, 0xc

    new-array v4, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "mtk_rtsp_name"

    aput-object v11, v4, v10

    const/4 v10, 0x1

    const-string v11, "mtk_rtsp_provider_id"

    aput-object v11, v4, v10

    const/4 v10, 0x2

    const-string v11, "mtk_rtsp_max_bandwidth"

    aput-object v11, v4, v10

    const/4 v10, 0x3

    const-string v11, "mtk_rtsp_min_udp_port"

    aput-object v11, v4, v10

    const/4 v10, 0x4

    const-string v11, "mtk_rtsp_max_udp_port"

    aput-object v11, v4, v10

    const/4 v10, 0x5

    const-string v11, "mtk_rtsp_to_proxy"

    aput-object v11, v4, v10

    const/4 v10, 0x6

    const-string v11, "mtk_rtsp_to_napid"

    aput-object v11, v4, v10

    const/4 v10, 0x7

    const-string v11, "mtk_rtsp_netinfo"

    aput-object v11, v4, v10

    const/16 v10, 0x8

    const-string v11, "mtk_rtsp_sim_id"

    aput-object v11, v4, v10

    const/16 v10, 0x9

    const-string v11, "mtk_rtsp_proxy_host"

    aput-object v11, v4, v10

    const/16 v10, 0xa

    const-string v11, "mtk_rtsp_proxy_port"

    aput-object v11, v4, v10

    const/16 v10, 0xb

    const-string v11, "mtk_rtsp_proxy_enabled"

    aput-object v11, v4, v10

    .line 117
    .local v4, key:[Ljava/lang/String;
    const/16 v10, 0xc

    new-array v9, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "NAME"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "PROVIDER-ID"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "MAX-BANDWIDTH"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "MIN-UDP-PORT"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "MAX-UDP-PORT"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string v11, "TO-PROXY"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    const-string v12, ","

    invoke-direct {p0, v11, v12}, Lcom/android/providers/media/OmaReceiver;->catString(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string v11, "TO-NAPID"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    const-string v12, ","

    invoke-direct {p0, v11, v12}, Lcom/android/providers/media/OmaReceiver;->catString(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const-string v11, "NETINFO"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    const-string v12, ";"

    invoke-direct {p0, v11, v12}, Lcom/android/providers/media/OmaReceiver;->catString(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const-string v11, "simId"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0x9

    aput-object v6, v9, v10

    const/16 v10, 0xa

    aput-object v5, v9, v10

    const/16 v11, 0xb

    if-eqz v2, :cond_1

    const-string v10, "1"

    :goto_0
    aput-object v10, v9, v11

    .line 131
    .local v9, value:[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/providers/media/OmaReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 132
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 133
    .local v0, count:I
    array-length v8, v4

    .line 134
    .local v8, size:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v8, :cond_2

    .line 135
    aget-object v10, v4, v3

    aget-object v11, v9, v3

    invoke-static {v1, v10, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 136
    add-int/lit8 v0, v0, 0x1

    .line 134
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 117
    .end local v0           #count:I
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v3           #i:I
    .end local v8           #size:I
    .end local v9           #value:[Ljava/lang/String;
    :cond_1
    const-string v10, "0"

    goto :goto_0

    .line 139
    .restart local v0       #count:I
    .restart local v1       #cr:Landroid/content/ContentResolver;
    .restart local v3       #i:I
    .restart local v8       #size:I
    .restart local v9       #value:[Ljava/lang/String;
    :cond_2
    const-string v10, "MediaProvider/OmacpReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "writeSetting() count="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/providers/media/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    if-lez v0, :cond_3

    .line 141
    const/4 v10, 0x1

    .line 143
    :goto_2
    return v10

    :cond_3
    const/4 v10, 0x0

    goto :goto_2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 54
    const-string v0, "MediaProvider/OmacpReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/providers/media/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iput-object p1, p0, Lcom/android/providers/media/OmaReceiver;->mContext:Landroid/content/Context;

    .line 56
    const-string v0, "com.mediatek.omacp.settings"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/providers/media/OmaReceiver;->saveRtspSetting(Landroid/os/Bundle;)V

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    const-string v0, "com.mediatek.omacp.capability"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/android/providers/media/OmaReceiver;->sendRtspCapability()V

    goto :goto_0
.end method
