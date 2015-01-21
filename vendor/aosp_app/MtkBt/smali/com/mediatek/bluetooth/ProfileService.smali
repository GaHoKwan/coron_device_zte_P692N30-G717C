.class public Lcom/mediatek/bluetooth/ProfileService;
.super Lcom/mediatek/bluetooth/psm/PsmService;
.source "ProfileService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/mediatek/bluetooth/psm/PsmService;-><init>()V

    return-void
.end method


# virtual methods
.method protected getProfileCount()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x2

    return v0
.end method

.method protected registerProfileServices()V
    .locals 2

    .prologue
    .line 66
    const-string v0, "profile_supported_prxm"

    invoke-static {v0}, Landroid/bluetooth/ConfigHelper;->checkSupportedProfiles(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const-string v0, "com.mediatek.bluetooth.service.IBluetoothPrxm"

    const-string v1, "com.mediatek.bluetooth.prx.monitor.PrxmPsm"

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetooth/psm/PsmService;->registerProfile(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_0
    const-string v0, "profile_supported_prxr"

    invoke-static {v0}, Landroid/bluetooth/ConfigHelper;->checkSupportedProfiles(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    const-string v0, "com.mediatek.bluetooth.service.IBluetoothPrxr"

    const-string v1, "com.mediatek.bluetooth.prx.reporter.PrxrPsm"

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetooth/psm/PsmService;->registerProfile(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_1
    const-string v0, "profile_supported_timec"

    invoke-static {v0}, Landroid/bluetooth/ConfigHelper;->checkSupportedProfiles(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    const-string v0, "com.mediatek.bluetooth.service.IBluetoothTimec"

    const-string v1, "com.mediatek.bluetooth.time.client.TimeClientPsm"

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetooth/psm/PsmService;->registerProfile(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_2
    const-string v0, "profile_supported_times"

    invoke-static {v0}, Landroid/bluetooth/ConfigHelper;->checkSupportedProfiles(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    const-string v0, "com.mediatek.bluetooth.service.IBluetoothTimes"

    const-string v1, "com.mediatek.bluetooth.time.server.TimeServerPsm"

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetooth/psm/PsmService;->registerProfile(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_3
    return-void
.end method
