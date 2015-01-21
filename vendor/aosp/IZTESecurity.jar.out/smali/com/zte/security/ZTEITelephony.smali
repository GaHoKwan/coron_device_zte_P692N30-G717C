.class public Lcom/zte/security/ZTEITelephony;
.super Lcom/android/internal/telephony/ITelephony$Stub;
.source "ZTEITelephony.java"


# instance fields
.field private mITelephony:Lcom/android/internal/telephony/ITelephony;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .parameter "ib"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephony$Stub;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    .line 24
    invoke-static {p1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    .line 25
    return-void
.end method


# virtual methods
.method public adjustModemRadioPower(II)Z
    .locals 2
    .parameter "level_2G"
    .parameter "level_3G"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2098
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->adjustModemRadioPower(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2100
    :catch_0
    move-exception v0

    .line 2102
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public adjustModemRadioPowerByBand(III)Z
    .locals 2
    .parameter "rat"
    .parameter "band"
    .parameter "level"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2111
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->adjustModemRadioPowerByBand(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2113
    :catch_0
    move-exception v0

    .line 2115
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public answerRingingCall()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 100
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public answerRingingCallGemini(I)V
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 954
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->answerRingingCallGemini(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 960
    return-void

    .line 956
    :catch_0
    move-exception v0

    .line 958
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public aquire3GSwitchLock()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1851
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->aquire3GSwitchLock()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1853
    :catch_0
    move-exception v0

    .line 1855
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public btSimapApduRequest(ILjava/lang/String;Landroid/telephony/BtSimapOperResponse;)I
    .locals 2
    .parameter "type"
    .parameter "cmdAPDU"
    .parameter "btRsp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1656
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->btSimapApduRequest(ILjava/lang/String;Landroid/telephony/BtSimapOperResponse;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1658
    :catch_0
    move-exception v0

    .line 1660
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public btSimapConnectSIM(ILandroid/telephony/BtSimapOperResponse;)I
    .locals 2
    .parameter "simId"
    .parameter "btRsp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1630
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->btSimapConnectSIM(ILandroid/telephony/BtSimapOperResponse;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1632
    :catch_0
    move-exception v0

    .line 1634
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public btSimapDisconnectSIM()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1643
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->btSimapDisconnectSIM()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1645
    :catch_0
    move-exception v0

    .line 1647
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public btSimapPowerOffSIM()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1695
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->btSimapPowerOffSIM()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1697
    :catch_0
    move-exception v0

    .line 1699
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public btSimapPowerOnSIM(ILandroid/telephony/BtSimapOperResponse;)I
    .locals 2
    .parameter "type"
    .parameter "btRsp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1682
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->btSimapPowerOnSIM(ILandroid/telephony/BtSimapOperResponse;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1684
    :catch_0
    move-exception v0

    .line 1686
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public btSimapResetSIM(ILandroid/telephony/BtSimapOperResponse;)I
    .locals 2
    .parameter "type"
    .parameter "btRsp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1669
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->btSimapResetSIM(ILandroid/telephony/BtSimapOperResponse;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1671
    :catch_0
    move-exception v0

    .line 1673
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public call(Ljava/lang/String;)V
    .locals 2
    .parameter "number"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->call(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 48
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public callGemini(Ljava/lang/String;I)V
    .locals 2
    .parameter "number"
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 902
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->callGemini(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 908
    return-void

    .line 904
    :catch_0
    move-exception v0

    .line 906
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public cancelMissedCallsNotification()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->cancelMissedCallsNotification()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 191
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public cancelMissedCallsNotificationGemini(I)V
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1032
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->cancelMissedCallsNotificationGemini(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1038
    return-void

    .line 1034
    :catch_0
    move-exception v0

    .line 1036
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public cleanupApnTypeGemini(Ljava/lang/String;I)I
    .locals 2
    .parameter "apnType"
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2020
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->cleanupApnTypeGemini(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2022
    :catch_0
    move-exception v0

    .line 2024
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public closeIccLogicalChannel(I)Z
    .locals 2
    .parameter "channel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 629
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->closeIccLogicalChannel(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 631
    :catch_0
    move-exception v0

    .line 633
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public closeIccLogicalChannelGemini(II)Z
    .locals 2
    .parameter "channel"
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 642
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->closeIccLogicalChannelGemini(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 644
    :catch_0
    move-exception v0

    .line 646
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public dial(Ljava/lang/String;)V
    .locals 2
    .parameter "number"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 31
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->dial(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 35
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public dialGemini(Ljava/lang/String;I)V
    .locals 2
    .parameter "number"
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 889
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->dialGemini(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 895
    return-void

    .line 891
    :catch_0
    move-exception v0

    .line 893
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public disableApnType(Ljava/lang/String;)I
    .locals 2
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 317
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->disableApnType(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 319
    :catch_0
    move-exception v0

    .line 321
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public disableApnTypeGemini(Ljava/lang/String;I)I
    .locals 2
    .parameter "type"
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1526
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->disableApnTypeGemini(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1528
    :catch_0
    move-exception v0

    .line 1530
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public disableDataConnectivity()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 343
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->disableDataConnectivity()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 345
    :catch_0
    move-exception v0

    .line 347
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public disableDataConnectivityGemini(I)I
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1539
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->disableDataConnectivityGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1541
    :catch_0
    move-exception v0

    .line 1543
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public disableLocationUpdates()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 291
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->disableLocationUpdates()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    return-void

    .line 293
    :catch_0
    move-exception v0

    .line 295
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public disableLocationUpdatesGemini(I)V
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1188
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->disableLocationUpdatesGemini(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1194
    return-void

    .line 1190
    :catch_0
    move-exception v0

    .line 1192
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public enableApnType(Ljava/lang/String;)I
    .locals 2
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 304
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->enableApnType(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 306
    :catch_0
    move-exception v0

    .line 308
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public enableApnTypeGemini(Ljava/lang/String;I)I
    .locals 2
    .parameter "type"
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1513
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->enableApnTypeGemini(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1515
    :catch_0
    move-exception v0

    .line 1517
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public enableDataConnectivity()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 330
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->enableDataConnectivity()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 332
    :catch_0
    move-exception v0

    .line 334
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public enableDataConnectivityGemini(I)I
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1500
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->enableDataConnectivityGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1502
    :catch_0
    move-exception v0

    .line 1504
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public enableLocationUpdates()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 278
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->enableLocationUpdates()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 282
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public enableLocationUpdatesGemini(I)V
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1175
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->enableLocationUpdatesGemini(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1181
    return-void

    .line 1177
    :catch_0
    move-exception v0

    .line 1179
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public endCall()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 85
    :catch_0
    move-exception v0

    .line 87
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public endCallGemini(I)Z
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 941
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->endCallGemini(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 943
    :catch_0
    move-exception v0

    .line 945
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public get3GCapabilitySIM()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1825
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->get3GCapabilitySIM()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1827
    :catch_0
    move-exception v0

    .line 1829
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public get3GSwitchAllowed3GSlots()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1916
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->get3GSwitchAllowed3GSlots()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1918
    :catch_0
    move-exception v0

    .line 1920
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getActivePhoneType()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 434
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 436
    :catch_0
    move-exception v0

    .line 438
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getActivePhoneTypeGemini(I)I
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1058
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneTypeGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1060
    :catch_0
    move-exception v0

    .line 1062
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getAdnStorageInfo(I)[I
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2007
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getAdnStorageInfo(I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2009
    :catch_0
    move-exception v0

    .line 2011
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 772
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getAllCellInfo()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 774
    :catch_0
    move-exception v0

    .line 776
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getCallState()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 395
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getCallState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 397
    :catch_0
    move-exception v0

    .line 399
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getCallStateGemini(I)I
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1045
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getCallStateGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1047
    :catch_0
    move-exception v0

    .line 1049
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getCdmaEriIconIndex()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 447
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconIndex()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 449
    :catch_0
    move-exception v0

    .line 451
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getCdmaEriIconMode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 460
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 462
    :catch_0
    move-exception v0

    .line 464
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 473
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriText()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 475
    :catch_0
    move-exception v0

    .line 477
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getCellLocation()Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 369
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getCellLocation()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 371
    :catch_0
    move-exception v0

    .line 373
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getCellLocationGemini(I)Landroid/os/Bundle;
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1201
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getCellLocationGemini(I)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1203
    :catch_0
    move-exception v0

    .line 1205
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getDataActivity()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 408
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getDataActivity()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 410
    :catch_0
    move-exception v0

    .line 412
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getDataActivityGemini(I)I
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1578
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getDataActivityGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1580
    :catch_0
    move-exception v0

    .line 1582
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getDataState()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 421
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getDataState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 423
    :catch_0
    move-exception v0

    .line 425
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getDataStateGemini(I)I
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1565
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getDataStateGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1567
    :catch_0
    move-exception v0

    .line 1569
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getGateway(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "apnType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1955
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getGateway(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1957
    :catch_0
    move-exception v0

    .line 1959
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getGatewayGemini(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "apnType"
    .parameter "slot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1994
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getGatewayGemini(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1996
    :catch_0
    move-exception v0

    .line 1998
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getIccATR()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 720
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getIccATR()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 722
    :catch_0
    move-exception v0

    .line 724
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getIccATRGemini(I)Ljava/lang/String;
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 733
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getIccATRGemini(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 735
    :catch_0
    move-exception v0

    .line 737
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getIccCardType()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 798
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getIccCardType()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 800
    :catch_0
    move-exception v0

    .line 802
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getIccCardTypeGemini(I)Ljava/lang/String;
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1123
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getIccCardTypeGemini(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1125
    :catch_0
    move-exception v0

    .line 1127
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getInterfaceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "apnType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1929
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getInterfaceName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1931
    :catch_0
    move-exception v0

    .line 1933
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getInterfaceNameGemini(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "apnType"
    .parameter "slot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1968
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getInterfaceNameGemini(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1970
    :catch_0
    move-exception v0

    .line 1972
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getIpAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "apnType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1942
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getIpAddress(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1944
    :catch_0
    move-exception v0

    .line 1946
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getIpAddressGemini(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "apnType"
    .parameter "slot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1981
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getIpAddressGemini(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1983
    :catch_0
    move-exception v0

    .line 1985
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getLastError()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 655
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getLastError()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 657
    :catch_0
    move-exception v0

    .line 659
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getLastErrorGemini(I)I
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 668
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getLastErrorGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 670
    :catch_0
    move-exception v0

    .line 672
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getLine1AlphaTag(I)Ljava/lang/String;
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1448
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getLine1AlphaTag(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1450
    :catch_0
    move-exception v0

    .line 1452
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getLine1Number(I)Ljava/lang/String;
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1435
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getLine1Number(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1437
    :catch_0
    move-exception v0

    .line 1439
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getLteOnCdmaMode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 538
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getLteOnCdmaMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 540
    :catch_0
    move-exception v0

    .line 542
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getMissedCallCount()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2085
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getMissedCallCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2087
    :catch_0
    move-exception v0

    .line 2089
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getMobileRevisionAndIMEI(ILandroid/os/Message;)V
    .locals 2
    .parameter "type"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1279
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getMobileRevisionAndIMEI(ILandroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1285
    return-void

    .line 1281
    :catch_0
    move-exception v0

    .line 1283
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getNeighboringCellInfo()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 382
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getNeighboringCellInfo()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 384
    :catch_0
    move-exception v0

    .line 386
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getNeighboringCellInfoGemini(I)Ljava/util/List;
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1214
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getNeighboringCellInfoGemini(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1216
    :catch_0
    move-exception v0

    .line 1218
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getNetworkCountryIsoGemini(I)Ljava/lang/String;
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2267
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getNetworkCountryIsoGemini(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2269
    :catch_0
    move-exception v0

    .line 2271
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getNetworkOperatorGemini(I)Ljava/lang/String;
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2241
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getNetworkOperatorGemini(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2243
    :catch_0
    move-exception v0

    .line 2245
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getNetworkOperatorNameGemini(I)Ljava/lang/String;
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2228
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getNetworkOperatorNameGemini(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2230
    :catch_0
    move-exception v0

    .line 2232
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getNetworkType()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 512
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getNetworkType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 514
    :catch_0
    move-exception v0

    .line 516
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getNetworkTypeGemini(I)I
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1318
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getNetworkTypeGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1320
    :catch_0
    move-exception v0

    .line 1322
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getPendingMmiCodesGemini(I)I
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1019
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getPendingMmiCodesGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1021
    :catch_0
    move-exception v0

    .line 1023
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getPreciseCallState()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 850
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getPreciseCallState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 852
    :catch_0
    move-exception v0

    .line 854
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getSN()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1292
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getSN()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1294
    :catch_0
    move-exception v0

    .line 1296
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getScAddressGemini(I)Ljava/lang/String;
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1786
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getScAddressGemini(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1788
    :catch_0
    move-exception v0

    .line 1790
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getServiceState()Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1734
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getServiceState()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1736
    :catch_0
    move-exception v0

    .line 1738
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getServiceStateGemini(I)Landroid/os/Bundle;
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1747
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getServiceStateGemini(I)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1749
    :catch_0
    move-exception v0

    .line 1751
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getSimCountryIso(I)Ljava/lang/String;
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1383
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getSimCountryIso(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1385
    :catch_0
    move-exception v0

    .line 1387
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getSimIndicatorState()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1708
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getSimIndicatorState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1710
    :catch_0
    move-exception v0

    .line 1712
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getSimIndicatorStateGemini(I)I
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1721
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getSimIndicatorStateGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1723
    :catch_0
    move-exception v0

    .line 1725
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1357
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getSimOperator(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1359
    :catch_0
    move-exception v0

    .line 1361
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getSimOperatorName(I)Ljava/lang/String;
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1370
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getSimOperatorName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1372
    :catch_0
    move-exception v0

    .line 1374
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1409
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getSimSerialNumber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1411
    :catch_0
    move-exception v0

    .line 1413
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getSimState(I)I
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1344
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getSimState(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1346
    :catch_0
    move-exception v0

    .line 1348
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getSmsDefaultSim()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1812
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getSmsDefaultSim()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1814
    :catch_0
    move-exception v0

    .line 1816
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getSpNameInEfSpn()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2124
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getSpNameInEfSpn()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2126
    :catch_0
    move-exception v0

    .line 2128
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getSpNameInEfSpnGemini(I)Ljava/lang/String;
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2137
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getSpNameInEfSpnGemini(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2139
    :catch_0
    move-exception v0

    .line 2141
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1422
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getSubscriberId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1424
    :catch_0
    move-exception v0

    .line 1426
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1396
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1398
    :catch_0
    move-exception v0

    .line 1400
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getVoiceMailAlphaTag(I)Ljava/lang/String;
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1474
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getVoiceMailAlphaTag(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1476
    :catch_0
    move-exception v0

    .line 1478
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getVoiceMailNumber(I)Ljava/lang/String;
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1461
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getVoiceMailNumber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1463
    :catch_0
    move-exception v0

    .line 1465
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getVoiceMessageCount()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 499
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getVoiceMessageCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 501
    :catch_0
    move-exception v0

    .line 503
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public getVoiceMessageCountGemini(I)I
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1591
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getVoiceMessageCountGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1593
    :catch_0
    move-exception v0

    .line 1595
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 2
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 226
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->handlePinMmi(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 228
    :catch_0
    move-exception v0

    .line 230
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public handlePinMmiGemini(Ljava/lang/String;I)Z
    .locals 2
    .parameter "dialString"
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1110
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->handlePinMmiGemini(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1112
    :catch_0
    move-exception v0

    .line 1114
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public hasIccCard()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 525
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->hasIccCard()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 527
    :catch_0
    move-exception v0

    .line 529
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public hasIccCardGemini(I)Z
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1331
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->hasIccCardGemini(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1333
    :catch_0
    move-exception v0

    .line 1335
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public is3GSwitchLocked()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1877
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->is3GSwitchLocked()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1879
    :catch_0
    move-exception v0

    .line 1881
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public is3GSwitchManualChange3GAllowed()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1903
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->is3GSwitchManualChange3GAllowed()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1905
    :catch_0
    move-exception v0

    .line 1907
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public is3GSwitchManualEnabled()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1890
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->is3GSwitchManualEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1892
    :catch_0
    move-exception v0

    .line 1894
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public isDataConnectivityPossible()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 356
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isDataConnectivityPossible()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 358
    :catch_0
    move-exception v0

    .line 360
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public isDataConnectivityPossibleGemini(I)Z
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1552
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->isDataConnectivityPossibleGemini(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1554
    :catch_0
    move-exception v0

    .line 1556
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public isFDNEnabled()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 876
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isFDNEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 878
    :catch_0
    move-exception v0

    .line 880
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public isFDNEnabledGemini(I)Z
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1604
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->isFDNEnabledGemini(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1606
    :catch_0
    move-exception v0

    .line 1608
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public isIccCardProviderAsMvno()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2202
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isIccCardProviderAsMvno()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2204
    :catch_0
    move-exception v0

    .line 2206
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public isIccCardProviderAsMvnoGemini(I)Z
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2215
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->isIccCardProviderAsMvnoGemini(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2217
    :catch_0
    move-exception v0

    .line 2219
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public isIdle()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 150
    :catch_0
    move-exception v0

    .line 152
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public isIdleGemini(I)Z
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1006
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->isIdleGemini(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1008
    :catch_0
    move-exception v0

    .line 1010
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public isNetworkRoamingGemini(I)Z
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2254
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->isNetworkRoamingGemini(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2256
    :catch_0
    move-exception v0

    .line 2258
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public isOffhook()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 124
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public isOffhookGemini(I)Z
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 980
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->isOffhookGemini(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 982
    :catch_0
    move-exception v0

    .line 984
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public isOperatorMvnoForEfPnn()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2176
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOperatorMvnoForEfPnn()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2178
    :catch_0
    move-exception v0

    .line 2180
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public isOperatorMvnoForEfPnnGemini(I)Ljava/lang/String;
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2189
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->isOperatorMvnoForEfPnnGemini(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2191
    :catch_0
    move-exception v0

    .line 2193
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public isOperatorMvnoForImsi()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2150
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOperatorMvnoForImsi()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2152
    :catch_0
    move-exception v0

    .line 2154
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public isOperatorMvnoForImsiGemini(I)Ljava/lang/String;
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2163
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->isOperatorMvnoForImsiGemini(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2165
    :catch_0
    move-exception v0

    .line 2167
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public isPhbReady()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1760
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isPhbReady()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1762
    :catch_0
    move-exception v0

    .line 1764
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public isPhbReadyGemini(I)Z
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1773
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->isPhbReadyGemini(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1775
    :catch_0
    move-exception v0

    .line 1777
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public isRadioOn()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 163
    :catch_0
    move-exception v0

    .line 165
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public isRadioOnGemini(I)Z
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1071
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->isRadioOnGemini(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1073
    :catch_0
    move-exception v0

    .line 1075
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public isRinging()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 137
    :catch_0
    move-exception v0

    .line 139
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public isRingingGemini(I)Z
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 993
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->isRingingGemini(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 995
    :catch_0
    move-exception v0

    .line 997
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public isSimInsert(I)Z
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1227
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1229
    :catch_0
    move-exception v0

    .line 1231
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public isSimPinEnabled()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isSimPinEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 176
    :catch_0
    move-exception v0

    .line 178
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public isTestIccCard()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 863
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isTestIccCard()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 865
    :catch_0
    move-exception v0

    .line 867
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public isTestIccCardGemini(I)Z
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1487
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->isTestIccCardGemini(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1489
    :catch_0
    move-exception v0

    .line 1491
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public isVTIdle()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1617
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isVTIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1619
    :catch_0
    move-exception v0

    .line 1621
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public isVoiceIdle()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 785
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isVoiceIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 787
    :catch_0
    move-exception v0

    .line 789
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 486
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->needsOtaServiceProvisioning()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 488
    :catch_0
    move-exception v0

    .line 490
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public openIccLogicalChannel(Ljava/lang/String;)I
    .locals 2
    .parameter "AID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 603
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->openIccLogicalChannel(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 605
    :catch_0
    move-exception v0

    .line 607
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public openIccLogicalChannelGemini(Ljava/lang/String;I)I
    .locals 2
    .parameter "AID"
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 616
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->openIccLogicalChannelGemini(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 618
    :catch_0
    move-exception v0

    .line 620
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public openIccLogicalChannelWithSw(Ljava/lang/String;)[B
    .locals 2
    .parameter "AID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 746
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->openIccLogicalChannelWithSw(Ljava/lang/String;)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 748
    :catch_0
    move-exception v0

    .line 750
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public openIccLogicalChannelWithSwGemini(Ljava/lang/String;I)[B
    .locals 2
    .parameter "AID"
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 759
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->openIccLogicalChannelWithSwGemini(Ljava/lang/String;I)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 761
    :catch_0
    move-exception v0

    .line 763
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public registerForSimModeChange(Landroid/os/IBinder;I)V
    .locals 2
    .parameter "binder"
    .parameter "what"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2033
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->registerForSimModeChange(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2039
    return-void

    .line 2035
    :catch_0
    move-exception v0

    .line 2037
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public release3GSwitchLock(I)Z
    .locals 2
    .parameter "lockId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1864
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->release3GSwitchLock(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1866
    :catch_0
    move-exception v0

    .line 1868
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public set3GCapabilitySIM(I)Z
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1838
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->set3GCapabilitySIM(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1840
    :catch_0
    move-exception v0

    .line 1842
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public setDataRoamingEnabledGemini(ZI)V
    .locals 2
    .parameter "enable"
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2059
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setDataRoamingEnabledGemini(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2065
    return-void

    .line 2061
    :catch_0
    move-exception v0

    .line 2063
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public setDefaultPhone(I)V
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1305
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setDefaultPhone(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1311
    return-void

    .line 1307
    :catch_0
    move-exception v0

    .line 1309
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public setGprsConnType(II)V
    .locals 2
    .parameter "type"
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1240
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setGprsConnType(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1246
    return-void

    .line 1242
    :catch_0
    move-exception v0

    .line 1244
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public setGprsTransferType(I)V
    .locals 2
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1253
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setGprsTransferType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1259
    return-void

    .line 1255
    :catch_0
    move-exception v0

    .line 1257
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public setGprsTransferTypeGemini(II)V
    .locals 2
    .parameter "type"
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1266
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setGprsTransferTypeGemini(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1272
    return-void

    .line 1268
    :catch_0
    move-exception v0

    .line 1270
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public setRadio(Z)Z
    .locals 2
    .parameter "turnOn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 252
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 254
    :catch_0
    move-exception v0

    .line 256
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public setRadioOff()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 837
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->setRadioOff()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 839
    :catch_0
    move-exception v0

    .line 841
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public setRoamingIndicatorNeddedProperty(ZZ)V
    .locals 2
    .parameter "property1"
    .parameter "property2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2072
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setRoamingIndicatorNeddedProperty(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2078
    return-void

    .line 2074
    :catch_0
    move-exception v0

    .line 2076
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public setScAddressGemini(Ljava/lang/String;I)V
    .locals 2
    .parameter "scAddr"
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1799
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setScAddressGemini(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1805
    return-void

    .line 1801
    :catch_0
    move-exception v0

    .line 1803
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public showCallScreen()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 59
    :catch_0
    move-exception v0

    .line 61
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public showCallScreenGemini(I)Z
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 915
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->showCallScreenGemini(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 917
    :catch_0
    move-exception v0

    .line 919
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public showCallScreenWithDialpad(Z)Z
    .locals 2
    .parameter "showDialpad"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->showCallScreenWithDialpad(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 72
    :catch_0
    move-exception v0

    .line 74
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public showCallScreenWithDialpadGemini(ZI)Z
    .locals 2
    .parameter "showDialpad"
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 928
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->showCallScreenWithDialpadGemini(ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 930
    :catch_0
    move-exception v0

    .line 932
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public silenceRinger()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 113
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public silenceRingerGemini(I)V
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 967
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->silenceRingerGemini(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 973
    return-void

    .line 969
    :catch_0
    move-exception v0

    .line 971
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public simAuth(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "strRand"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 811
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->simAuth(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 813
    :catch_0
    move-exception v0

    .line 815
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public simAuthGemini(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "strRand"
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1136
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->simAuthGemini(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1138
    :catch_0
    move-exception v0

    .line 1140
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public supplyPin(Ljava/lang/String;)Z
    .locals 2
    .parameter "pin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->supplyPin(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 202
    :catch_0
    move-exception v0

    .line 204
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public supplyPinGemini(Ljava/lang/String;I)Z
    .locals 2
    .parameter "pin"
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1084
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPinGemini(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1086
    :catch_0
    move-exception v0

    .line 1088
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "puk"
    .parameter "pin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 213
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 215
    :catch_0
    move-exception v0

    .line 217
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public supplyPukGemini(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2
    .parameter "puk"
    .parameter "pin"
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1097
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->supplyPukGemini(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1099
    :catch_0
    move-exception v0

    .line 1101
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public toggleRadioOnOff()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 239
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->toggleRadioOnOff()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 243
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public transmitIccBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "cla"
    .parameter "command"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 577
    :try_start_0
    iget-object v0, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ITelephony;->transmitIccBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 579
    :catch_0
    move-exception v7

    .line 581
    .local v7, e:Landroid/os/RemoteException;
    throw v7
.end method

.method public transmitIccBasicChannelGemini(IIIIILjava/lang/String;I)Ljava/lang/String;
    .locals 9
    .parameter "cla"
    .parameter "command"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 590
    :try_start_0
    iget-object v0, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ITelephony;->transmitIccBasicChannelGemini(IIIIILjava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 592
    :catch_0
    move-exception v8

    .line 594
    .local v8, e:Landroid/os/RemoteException;
    throw v8
.end method

.method public transmitIccLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "cla"
    .parameter "command"
    .parameter "channel"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 551
    :try_start_0
    iget-object v0, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ITelephony;->transmitIccLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 553
    :catch_0
    move-exception v8

    .line 555
    .local v8, e:Landroid/os/RemoteException;
    throw v8
.end method

.method public transmitIccLogicalChannelGemini(IIIIIILjava/lang/String;I)Ljava/lang/String;
    .locals 10
    .parameter "cla"
    .parameter "command"
    .parameter "channel"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 564
    :try_start_0
    iget-object v0, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/ITelephony;->transmitIccLogicalChannelGemini(IIIIIILjava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 566
    :catch_0
    move-exception v9

    .line 568
    .local v9, e:Landroid/os/RemoteException;
    throw v9
.end method

.method public transmitIccSimIO(IIIIILjava/lang/String;)[B
    .locals 8
    .parameter "fileID"
    .parameter "command"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 681
    :try_start_0
    iget-object v0, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ITelephony;->transmitIccSimIO(IIIIILjava/lang/String;)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 683
    :catch_0
    move-exception v7

    .line 685
    .local v7, e:Landroid/os/RemoteException;
    throw v7
.end method

.method public transmitIccSimIOExGemini(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)[B
    .locals 11
    .parameter "fileID"
    .parameter "command"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "filePath"
    .parameter "data"
    .parameter "pin2"
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 707
    :try_start_0
    iget-object v0, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/ITelephony;->transmitIccSimIOExGemini(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 709
    :catch_0
    move-exception v10

    .line 711
    .local v10, e:Landroid/os/RemoteException;
    throw v10
.end method

.method public transmitIccSimIOGemini(IIIIILjava/lang/String;I)[B
    .locals 9
    .parameter "fileID"
    .parameter "command"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "filePath"
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 694
    :try_start_0
    iget-object v0, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ITelephony;->transmitIccSimIOGemini(IIIIILjava/lang/String;I)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 696
    :catch_0
    move-exception v8

    .line 698
    .local v8, e:Landroid/os/RemoteException;
    throw v8
.end method

.method public uSimAuth(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "strRand"
    .parameter "strAutn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 824
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->uSimAuth(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 826
    :catch_0
    move-exception v0

    .line 828
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public uSimAuthGemini(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "strRand"
    .parameter "strAutn"
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1149
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->uSimAuthGemini(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1151
    :catch_0
    move-exception v0

    .line 1153
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public unregisterForSimModeChange(Landroid/os/IBinder;)V
    .locals 2
    .parameter "binder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2046
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->unregisterForSimModeChange(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2052
    return-void

    .line 2048
    :catch_0
    move-exception v0

    .line 2050
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public updateServiceLocation()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 265
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->updateServiceLocation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    return-void

    .line 267
    :catch_0
    move-exception v0

    .line 269
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method

.method public updateServiceLocationGemini(I)V
    .locals 2
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1162
    :try_start_0
    iget-object v1, p0, Lcom/zte/security/ZTEITelephony;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->updateServiceLocationGemini(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1168
    return-void

    .line 1164
    :catch_0
    move-exception v0

    .line 1166
    .local v0, e:Landroid/os/RemoteException;
    throw v0
.end method
