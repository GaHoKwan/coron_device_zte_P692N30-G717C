.class public Ltmsdk/common/module/netsetting/NetSettingManager;
.super Ltmsdk/common/creator/BaseManagerC;
.source "SourceFile"


# static fields
.field public static final APN_TYPE_NET:I = 0x0

.field public static final APN_TYPE_NULL:I = -0x1

.field public static final APN_TYPE_WAP:I = 0x1


# instance fields
.field private zz:Ltmsdkobf/hn;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ltmsdk/common/creator/BaseManagerC;-><init>()V

    return-void
.end method


# virtual methods
.method public disableBluetooth()Z
    .locals 1

    .prologue
    .line 115
    invoke-static {}, Ltmsdk/common/module/netsetting/NetSettingManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const/4 v0, 0x0

    .line 117
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ltmsdk/common/module/netsetting/NetSettingManager;->zz:Ltmsdkobf/hn;

    invoke-virtual {v0}, Ltmsdkobf/hn;->disableBluetooth()Z

    move-result v0

    goto :goto_0
.end method

.method public enableBluetooth()Z
    .locals 1

    .prologue
    .line 106
    invoke-static {}, Ltmsdk/common/module/netsetting/NetSettingManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const/4 v0, 0x0

    .line 108
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ltmsdk/common/module/netsetting/NetSettingManager;->zz:Ltmsdkobf/hn;

    invoke-virtual {v0}, Ltmsdkobf/hn;->enableBluetooth()Z

    move-result v0

    goto :goto_0
.end method

.method public getAPNType(Ljava/lang/String;)I
    .locals 1
    .parameter "apnname"

    .prologue
    .line 182
    iget-object v0, p0, Ltmsdk/common/module/netsetting/NetSettingManager;->zz:Ltmsdkobf/hn;

    invoke-virtual {v0, p1}, Ltmsdkobf/hn;->getAPNType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getApnState()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltmsdk/common/exception/OperationSecurityException;
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Ltmsdk/common/module/netsetting/NetSettingManager;->zz:Ltmsdkobf/hn;

    invoke-virtual {v0}, Ltmsdkobf/hn;->getApnState()Z

    move-result v0

    return v0
.end method

.method public getBluetoothState()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Ltmsdk/common/module/netsetting/NetSettingManager;->zz:Ltmsdkobf/hn;

    invoke-virtual {v0}, Ltmsdkobf/hn;->getBluetoothState()I

    move-result v0

    return v0
.end method

.method public getCurUsedApn()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltmsdk/common/exception/OperationSecurityException;
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Ltmsdk/common/module/netsetting/NetSettingManager;->zz:Ltmsdkobf/hn;

    invoke-virtual {v0}, Ltmsdkobf/hn;->getCurUsedApn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurUsedApnType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltmsdk/common/exception/OperationSecurityException;
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Ltmsdk/common/module/netsetting/NetSettingManager;->zz:Ltmsdkobf/hn;

    invoke-virtual {v0}, Ltmsdkobf/hn;->getCurUsedApnType()I

    move-result v0

    return v0
.end method

.method public getMobileDataConnectivity()Z
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Ltmsdk/common/module/netsetting/NetSettingManager;->zz:Ltmsdkobf/hn;

    invoke-virtual {v0}, Ltmsdkobf/hn;->getMobileDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public getWifiRssi()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Ltmsdk/common/module/netsetting/NetSettingManager;->zz:Ltmsdkobf/hn;

    invoke-virtual {v0}, Ltmsdkobf/hn;->getWifiRssi()I

    move-result v0

    return v0
.end method

.method public getWifiState()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Ltmsdk/common/module/netsetting/NetSettingManager;->zz:Ltmsdkobf/hn;

    invoke-virtual {v0}, Ltmsdkobf/hn;->getWifiState()I

    move-result v0

    return v0
.end method

.method public isBluetoothEnabled()Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Ltmsdk/common/module/netsetting/NetSettingManager;->zz:Ltmsdkobf/hn;

    invoke-virtual {v0}, Ltmsdkobf/hn;->isBluetoothEnabled()Z

    move-result v0

    return v0
.end method

.method public isMobileDataConnectivityActive()Z
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Ltmsdk/common/module/netsetting/NetSettingManager;->zz:Ltmsdkobf/hn;

    invoke-virtual {v0}, Ltmsdkobf/hn;->isMobileDataConnectivityActive()Z

    move-result v0

    return v0
.end method

.method public isWifiActive()Z
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Ltmsdk/common/module/netsetting/NetSettingManager;->zz:Ltmsdkobf/hn;

    invoke-virtual {v0}, Ltmsdkobf/hn;->isWifiActive()Z

    move-result v0

    return v0
.end method

.method public isWifiEnabled()Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Ltmsdk/common/module/netsetting/NetSettingManager;->zz:Ltmsdkobf/hn;

    invoke-virtual {v0}, Ltmsdkobf/hn;->isWifiEnabled()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    new-instance v0, Ltmsdkobf/hn;

    invoke-direct {v0}, Ltmsdkobf/hn;-><init>()V

    iput-object v0, p0, Ltmsdk/common/module/netsetting/NetSettingManager;->zz:Ltmsdkobf/hn;

    .line 36
    iget-object v0, p0, Ltmsdk/common/module/netsetting/NetSettingManager;->zz:Ltmsdkobf/hn;

    invoke-virtual {v0, p1}, Ltmsdkobf/hn;->onCreate(Landroid/content/Context;)V

    .line 37
    iget-object v0, p0, Ltmsdk/common/module/netsetting/NetSettingManager;->zz:Ltmsdkobf/hn;

    invoke-virtual {p0, v0}, Ltmsdk/common/module/netsetting/NetSettingManager;->a(Ltmsdk/common/BaseManager;)V

    .line 38
    return-void
.end method

.method public setMobileDataConnectivity(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 136
    invoke-static {}, Ltmsdk/common/module/netsetting/NetSettingManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const/4 v0, 0x0

    .line 144
    :goto_0
    return v0

    .line 140
    :cond_0
    if-eqz p1, :cond_1

    .line 141
    const v0, 0x1d4d0

    invoke-static {v0}, Ltmsdkobf/im;->aT(I)V

    .line 144
    :cond_1
    iget-object v0, p0, Ltmsdk/common/module/netsetting/NetSettingManager;->zz:Ltmsdkobf/hn;

    invoke-virtual {v0, p1}, Ltmsdkobf/hn;->setMobileDataConnectivity(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public setWifiEnabled(Z)Z
    .locals 1
    .parameter "enabled"

    .prologue
    .line 62
    invoke-static {}, Ltmsdk/common/module/netsetting/NetSettingManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x0

    .line 72
    :goto_0
    return v0

    .line 66
    :cond_0
    if-eqz p1, :cond_1

    .line 67
    const v0, 0x1d4ce

    invoke-static {v0}, Ltmsdkobf/im;->aT(I)V

    .line 72
    :goto_1
    iget-object v0, p0, Ltmsdk/common/module/netsetting/NetSettingManager;->zz:Ltmsdkobf/hn;

    invoke-virtual {v0, p1}, Ltmsdkobf/hn;->setWifiEnabled(Z)Z

    move-result v0

    goto :goto_0

    .line 69
    :cond_1
    const v0, 0x1d4cf

    invoke-static {v0}, Ltmsdkobf/im;->aT(I)V

    goto :goto_1
.end method

.method public switchTo(I)Z
    .locals 3
    .parameter "apntype"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltmsdk/common/exception/OperationSecurityException;
        }
    .end annotation

    .prologue
    const v2, 0x1d4d2

    const v1, 0x1d4d1

    .line 211
    invoke-static {}, Ltmsdk/common/module/netsetting/NetSettingManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    const/4 v0, 0x0

    .line 223
    :goto_0
    return v0

    .line 215
    :cond_0
    if-nez p1, :cond_2

    .line 216
    invoke-static {v2}, Ltmsdkobf/im;->aV(I)V

    .line 217
    invoke-static {v1}, Ltmsdkobf/im;->aU(I)V

    .line 223
    :cond_1
    :goto_1
    iget-object v0, p0, Ltmsdk/common/module/netsetting/NetSettingManager;->zz:Ltmsdkobf/hn;

    invoke-virtual {v0, p1}, Ltmsdkobf/hn;->switchTo(I)Z

    move-result v0

    goto :goto_0

    .line 218
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 219
    invoke-static {v1}, Ltmsdkobf/im;->aV(I)V

    .line 220
    invoke-static {v2}, Ltmsdkobf/im;->aU(I)V

    goto :goto_1
.end method
