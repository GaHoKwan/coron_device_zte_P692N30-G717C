.class public final Ltmsdk/bg/module/network/NetworkManager;
.super Ltmsdk/bg/creator/BaseManagerB;
.source "SourceFile"


# static fields
.field public static final INTERVAL_CUSTOM:I = 0x3

.field public static final INTERVAL_FOR_BACKGROUND:I = 0x0

.field public static final INTERVAL_FOR_REALTIME:I = 0x2

.field public static final INTERVAL_FOR_UI:I = 0x1


# instance fields
.field private vT:Ltmsdk/bg/module/network/g;

.field private vU:Ltmsdk/bg/module/network/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ltmsdk/bg/creator/BaseManagerB;-><init>()V

    return-void
.end method


# virtual methods
.method public addDefaultMobileMonitor(Ljava/lang/String;Ltmsdk/bg/module/network/INetworkInfoDao;)Z
    .locals 1
    .parameter "name"
    .parameter "dao"

    .prologue
    .line 220
    invoke-static {}, Ltmsdk/bg/module/network/NetworkManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    const/4 v0, 0x0

    .line 222
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/network/NetworkManager;->vT:Ltmsdk/bg/module/network/g;

    invoke-virtual {v0, p1, p2}, Ltmsdk/bg/module/network/g;->addDefaultMobileMonitor(Ljava/lang/String;Ltmsdk/bg/module/network/INetworkInfoDao;)Z

    move-result v0

    goto :goto_0
.end method

.method public addDefaultWifiMonitor(Ljava/lang/String;Ltmsdk/bg/module/network/INetworkInfoDao;)Z
    .locals 1
    .parameter "name"
    .parameter "dao"

    .prologue
    .line 232
    invoke-static {}, Ltmsdk/bg/module/network/NetworkManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    const/4 v0, 0x0

    .line 234
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/network/NetworkManager;->vT:Ltmsdk/bg/module/network/g;

    invoke-virtual {v0, p1, p2}, Ltmsdk/bg/module/network/g;->addDefaultWifiMonitor(Ljava/lang/String;Ltmsdk/bg/module/network/INetworkInfoDao;)Z

    move-result v0

    goto :goto_0
.end method

.method public addMonitor(Ljava/lang/String;Ltmsdk/bg/module/network/NetDataEntityFactory;Ltmsdk/bg/module/network/INetworkInfoDao;)Z
    .locals 1
    .parameter "name"
    .parameter "factory"
    .parameter "dao"

    .prologue
    .line 245
    invoke-static {}, Ltmsdk/bg/module/network/NetworkManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    const/4 v0, 0x0

    .line 247
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/network/NetworkManager;->vT:Ltmsdk/bg/module/network/g;

    invoke-virtual {v0, p1, p2, p3}, Ltmsdk/bg/module/network/g;->addMonitor(Ljava/lang/String;Ltmsdk/bg/module/network/NetDataEntityFactory;Ltmsdk/bg/module/network/INetworkInfoDao;)Z

    move-result v0

    goto :goto_0
.end method

.method public clearTrafficInfo([Ljava/lang/String;)V
    .locals 1
    .parameter "pkgs"

    .prologue
    .line 180
    invoke-static {}, Ltmsdk/bg/module/network/NetworkManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/network/NetworkManager;->vT:Ltmsdk/bg/module/network/g;

    invoke-virtual {v0, p1}, Ltmsdk/bg/module/network/g;->clearTrafficInfo([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public findMonitor(Ljava/lang/String;)Ltmsdk/bg/module/network/INetworkMonitor;
    .locals 1
    .parameter "name"

    .prologue
    .line 267
    invoke-static {}, Ltmsdk/bg/module/network/NetworkManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Ltmsdk/bg/module/network/NetworkManager;->vU:Ltmsdk/bg/module/network/h;

    if-nez v0, :cond_0

    .line 269
    new-instance v0, Ltmsdk/bg/module/network/h;

    invoke-direct {v0}, Ltmsdk/bg/module/network/h;-><init>()V

    iput-object v0, p0, Ltmsdk/bg/module/network/NetworkManager;->vU:Ltmsdk/bg/module/network/h;

    .line 270
    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/network/NetworkManager;->vU:Ltmsdk/bg/module/network/h;

    .line 272
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Ltmsdk/bg/module/network/NetworkManager;->vT:Ltmsdk/bg/module/network/g;

    invoke-virtual {v0, p1}, Ltmsdk/bg/module/network/g;->findMonitor(Ljava/lang/String;)Ltmsdk/bg/module/network/INetworkMonitor;

    move-result-object v0

    goto :goto_0
.end method

.method public getInterval()J
    .locals 2

    .prologue
    .line 68
    invoke-static {}, Ltmsdk/bg/module/network/NetworkManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const-wide/16 v0, -0x1

    .line 72
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/network/NetworkManager;->vT:Ltmsdk/bg/module/network/g;

    invoke-virtual {v0}, Ltmsdk/bg/module/network/g;->getInterval()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getIntervalType()I
    .locals 1

    .prologue
    .line 206
    invoke-static {}, Ltmsdk/bg/module/network/NetworkManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    const/4 v0, -0x1

    .line 210
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/network/NetworkManager;->vT:Ltmsdk/bg/module/network/g;

    invoke-virtual {v0}, Ltmsdk/bg/module/network/g;->getIntervalType()I

    move-result v0

    goto :goto_0
.end method

.method public getMobileRxBytes(Ljava/lang/String;)J
    .locals 2
    .parameter "pkg"

    .prologue
    .line 139
    invoke-static {}, Ltmsdk/bg/module/network/NetworkManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    const-wide/16 v0, 0x0

    .line 141
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/network/NetworkManager;->vT:Ltmsdk/bg/module/network/g;

    invoke-virtual {v0, p1}, Ltmsdk/bg/module/network/g;->getMobileRxBytes(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getMobileTxBytes(Ljava/lang/String;)J
    .locals 2
    .parameter "pkg"

    .prologue
    .line 149
    invoke-static {}, Ltmsdk/bg/module/network/NetworkManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const-wide/16 v0, 0x0

    .line 151
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/network/NetworkManager;->vT:Ltmsdk/bg/module/network/g;

    invoke-virtual {v0, p1}, Ltmsdk/bg/module/network/g;->getMobileTxBytes(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getSelfMobileDownloadBytes()J
    .locals 2

    .prologue
    .line 290
    invoke-static {}, Ltmsdk/bg/module/network/NetworkManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    const-wide/16 v0, 0x0

    .line 292
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/network/NetworkManager;->vT:Ltmsdk/bg/module/network/g;

    invoke-virtual {v0}, Ltmsdk/bg/module/network/g;->getSelfMobileDownloadBytes()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getSelfMobileUploadBytes()J
    .locals 2

    .prologue
    .line 310
    invoke-static {}, Ltmsdk/bg/module/network/NetworkManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    const-wide/16 v0, 0x0

    .line 312
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/network/NetworkManager;->vT:Ltmsdk/bg/module/network/g;

    invoke-virtual {v0}, Ltmsdk/bg/module/network/g;->getSelfMobileUploadBytes()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getTrafficEntity(Ljava/lang/String;)Ltmsdk/common/module/network/TrafficEntity;
    .locals 1
    .parameter "pkg"

    .prologue
    .line 129
    invoke-static {}, Ltmsdk/bg/module/network/NetworkManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Ltmsdk/common/module/network/TrafficEntity;

    invoke-direct {v0}, Ltmsdk/common/module/network/TrafficEntity;-><init>()V

    .line 131
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/network/NetworkManager;->vT:Ltmsdk/bg/module/network/g;

    invoke-virtual {v0, p1}, Ltmsdk/bg/module/network/g;->getTrafficEntity(Ljava/lang/String;)Ltmsdk/common/module/network/TrafficEntity;

    move-result-object v0

    goto :goto_0
.end method

.method public getWIFIRxBytes(Ljava/lang/String;)J
    .locals 2
    .parameter "pkg"

    .prologue
    .line 159
    invoke-static {}, Ltmsdk/bg/module/network/NetworkManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const-wide/16 v0, 0x0

    .line 161
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/network/NetworkManager;->vT:Ltmsdk/bg/module/network/g;

    invoke-virtual {v0, p1}, Ltmsdk/bg/module/network/g;->getWIFIRxBytes(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getWIFITxBytes(Ljava/lang/String;)J
    .locals 2
    .parameter "pkg"

    .prologue
    .line 169
    invoke-static {}, Ltmsdk/bg/module/network/NetworkManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    const-wide/16 v0, 0x0

    .line 171
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/network/NetworkManager;->vT:Ltmsdk/bg/module/network/g;

    invoke-virtual {v0, p1}, Ltmsdk/bg/module/network/g;->getWIFITxBytes(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 99
    invoke-static {}, Ltmsdk/bg/module/network/NetworkManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const/4 v0, 0x0

    .line 101
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/network/NetworkManager;->vT:Ltmsdk/bg/module/network/g;

    invoke-virtual {v0}, Ltmsdk/bg/module/network/g;->isEnable()Z

    move-result v0

    goto :goto_0
.end method

.method public isSupportTrafficState()Z
    .locals 1

    .prologue
    .line 117
    invoke-static {}, Ltmsdk/bg/module/network/NetworkManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const/4 v0, 0x0

    .line 119
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/network/NetworkManager;->vT:Ltmsdk/bg/module/network/g;

    invoke-virtual {v0}, Ltmsdk/bg/module/network/g;->isSupportTrafficState()Z

    move-result v0

    goto :goto_0
.end method

.method public notifyConfigChange()V
    .locals 1

    .prologue
    .line 108
    invoke-static {}, Ltmsdk/bg/module/network/NetworkManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/network/NetworkManager;->vT:Ltmsdk/bg/module/network/g;

    invoke-virtual {v0}, Ltmsdk/bg/module/network/g;->notifyConfigChange()V

    goto :goto_0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 45
    new-instance v0, Ltmsdk/bg/module/network/g;

    invoke-direct {v0}, Ltmsdk/bg/module/network/g;-><init>()V

    iput-object v0, p0, Ltmsdk/bg/module/network/NetworkManager;->vT:Ltmsdk/bg/module/network/g;

    .line 46
    iget-object v0, p0, Ltmsdk/bg/module/network/NetworkManager;->vT:Ltmsdk/bg/module/network/g;

    invoke-virtual {v0, p1}, Ltmsdk/bg/module/network/g;->onCreate(Landroid/content/Context;)V

    .line 47
    iget-object v0, p0, Ltmsdk/bg/module/network/NetworkManager;->vT:Ltmsdk/bg/module/network/g;

    invoke-virtual {p0, v0}, Ltmsdk/bg/module/network/NetworkManager;->a(Ltmsdk/common/BaseManager;)V

    .line 50
    const v0, 0x1d4cc

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ltmsdkobf/im;->a(II)V

    .line 51
    return-void
.end method

.method public refreshTrafficInfo([Ljava/lang/String;Z)V
    .locals 1
    .parameter "pkgs"
    .parameter "foreced"

    .prologue
    .line 195
    invoke-static {}, Ltmsdk/bg/module/network/NetworkManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/network/NetworkManager;->vT:Ltmsdk/bg/module/network/g;

    invoke-virtual {v0, p1, p2}, Ltmsdk/bg/module/network/g;->refreshTrafficInfo([Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public removeMonitor(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 256
    invoke-static {}, Ltmsdk/bg/module/network/NetworkManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    const/4 v0, 0x0

    .line 258
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/network/NetworkManager;->vT:Ltmsdk/bg/module/network/g;

    invoke-virtual {v0, p1}, Ltmsdk/bg/module/network/g;->removeMonitor(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setEnable(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 88
    invoke-static {}, Ltmsdk/bg/module/network/NetworkManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/network/NetworkManager;->vT:Ltmsdk/bg/module/network/g;

    invoke-virtual {v0, p1}, Ltmsdk/bg/module/network/g;->setEnable(Z)V

    goto :goto_0
.end method

.method public setInterval(J)V
    .locals 3
    .parameter "interval"

    .prologue
    .line 59
    invoke-static {}, Ltmsdk/bg/module/network/NetworkManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/network/NetworkManager;->vT:Ltmsdk/bg/module/network/g;

    long-to-int v1, p1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ltmsdk/bg/module/network/g;->setInterval(J)V

    goto :goto_0
.end method

.method public setIntervalType(I)V
    .locals 1
    .parameter "interval_type"

    .prologue
    .line 76
    invoke-static {}, Ltmsdk/bg/module/network/NetworkManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/network/NetworkManager;->vT:Ltmsdk/bg/module/network/g;

    invoke-virtual {v0, p1}, Ltmsdk/bg/module/network/g;->setIntervalType(I)V

    goto :goto_0
.end method

.method public updateSelfMobileDownloadBytes(J)V
    .locals 1
    .parameter "totalDownloadBytes"

    .prologue
    .line 280
    invoke-static {}, Ltmsdk/bg/module/network/NetworkManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    :goto_0
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/network/NetworkManager;->vT:Ltmsdk/bg/module/network/g;

    invoke-virtual {v0, p1, p2}, Ltmsdk/bg/module/network/g;->updateSelfMobileDownloadBytes(J)V

    goto :goto_0
.end method

.method public updateSelfMobileUploadBytes(J)V
    .locals 1
    .parameter "totalUploadBytes"

    .prologue
    .line 300
    invoke-static {}, Ltmsdk/bg/module/network/NetworkManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    :goto_0
    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/network/NetworkManager;->vT:Ltmsdk/bg/module/network/g;

    invoke-virtual {v0, p1, p2}, Ltmsdk/bg/module/network/g;->updateSelfMobileUploadBytes(J)V

    goto :goto_0
.end method
