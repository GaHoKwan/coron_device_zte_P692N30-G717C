.class public final Ltmsdk/bg/module/network/Proguard;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callAllMethods()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 8
    const-class v2, Ltmsdk/bg/module/network/NetworkManager;

    invoke-static {v2}, Ltmsdk/bg/creator/ManagerCreatorB;->getManager(Ljava/lang/Class;)Ltmsdk/bg/creator/BaseManagerB;

    move-result-object v0

    check-cast v0, Ltmsdk/bg/module/network/NetworkManager;

    .line 9
    .local v0, manager:Ltmsdk/bg/module/network/NetworkManager;
    invoke-virtual {v0, v3, v3}, Ltmsdk/bg/module/network/NetworkManager;->addDefaultMobileMonitor(Ljava/lang/String;Ltmsdk/bg/module/network/INetworkInfoDao;)Z

    .line 10
    invoke-virtual {v0, v3, v3}, Ltmsdk/bg/module/network/NetworkManager;->addDefaultWifiMonitor(Ljava/lang/String;Ltmsdk/bg/module/network/INetworkInfoDao;)Z

    .line 11
    invoke-virtual {v0, v3}, Ltmsdk/bg/module/network/NetworkManager;->removeMonitor(Ljava/lang/String;)Z

    .line 12
    invoke-virtual {v0, v3, v3, v3}, Ltmsdk/bg/module/network/NetworkManager;->addMonitor(Ljava/lang/String;Ltmsdk/bg/module/network/NetDataEntityFactory;Ltmsdk/bg/module/network/INetworkInfoDao;)Z

    .line 13
    invoke-virtual {v0, v3}, Ltmsdk/bg/module/network/NetworkManager;->clearTrafficInfo([Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, v3}, Ltmsdk/bg/module/network/NetworkManager;->findMonitor(Ljava/lang/String;)Ltmsdk/bg/module/network/INetworkMonitor;

    .line 15
    invoke-virtual {v0}, Ltmsdk/bg/module/network/NetworkManager;->getInterval()J

    .line 16
    invoke-virtual {v0}, Ltmsdk/bg/module/network/NetworkManager;->getIntervalType()I

    .line 17
    invoke-virtual {v0, v3}, Ltmsdk/bg/module/network/NetworkManager;->getMobileRxBytes(Ljava/lang/String;)J

    .line 18
    invoke-virtual {v0, v3}, Ltmsdk/bg/module/network/NetworkManager;->getMobileTxBytes(Ljava/lang/String;)J

    .line 19
    invoke-virtual {v0, v3}, Ltmsdk/bg/module/network/NetworkManager;->getTrafficEntity(Ljava/lang/String;)Ltmsdk/common/module/network/TrafficEntity;

    .line 20
    invoke-virtual {v0, v3}, Ltmsdk/bg/module/network/NetworkManager;->getWIFIRxBytes(Ljava/lang/String;)J

    .line 21
    invoke-virtual {v0, v3}, Ltmsdk/bg/module/network/NetworkManager;->getWIFITxBytes(Ljava/lang/String;)J

    .line 22
    invoke-virtual {v0}, Ltmsdk/bg/module/network/NetworkManager;->isEnable()Z

    .line 23
    invoke-virtual {v0}, Ltmsdk/bg/module/network/NetworkManager;->isSupportTrafficState()Z

    .line 24
    invoke-virtual {v0}, Ltmsdk/bg/module/network/NetworkManager;->notifyConfigChange()V

    .line 25
    invoke-virtual {v0, v3, v6}, Ltmsdk/bg/module/network/NetworkManager;->refreshTrafficInfo([Ljava/lang/String;Z)V

    .line 26
    invoke-virtual {v0, v6}, Ltmsdk/bg/module/network/NetworkManager;->setEnable(Z)V

    .line 27
    invoke-virtual {v0, v4, v5}, Ltmsdk/bg/module/network/NetworkManager;->setInterval(J)V

    .line 28
    invoke-virtual {v0, v4, v5}, Ltmsdk/bg/module/network/NetworkManager;->updateSelfMobileDownloadBytes(J)V

    .line 29
    invoke-virtual {v0}, Ltmsdk/bg/module/network/NetworkManager;->getSelfMobileDownloadBytes()J

    .line 30
    invoke-virtual {v0, v4, v5}, Ltmsdk/bg/module/network/NetworkManager;->updateSelfMobileUploadBytes(J)V

    .line 31
    invoke-virtual {v0}, Ltmsdk/bg/module/network/NetworkManager;->getSelfMobileUploadBytes()J

    .line 33
    const-class v2, Ltmsdk/bg/module/network/TrafficCorrectionManager;

    invoke-static {v2}, Ltmsdk/bg/creator/ManagerCreatorB;->getManager(Ljava/lang/Class;)Ltmsdk/bg/creator/BaseManagerB;

    move-result-object v1

    check-cast v1, Ltmsdk/bg/module/network/TrafficCorrectionManager;

    .line 34
    .local v1, mgr:Ltmsdk/bg/module/network/TrafficCorrectionManager;
    invoke-virtual {v1, v3}, Ltmsdk/bg/module/network/TrafficCorrectionManager;->startCorrection(Ljava/util/ArrayList;)I

    .line 35
    invoke-virtual {v1, v3, v3, v3}, Ltmsdk/bg/module/network/TrafficCorrectionManager;->getCorrectionResult(Ltmsdk/bg/module/network/TrafficCorrectionResult;Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method
