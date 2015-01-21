.class public Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
.super Ljava/lang/Object;
.source "EncapsulatedTelephonyService.java"


# static fields
.field private static sTelephony:Lcom/android/internal/telephony/ITelephony;

.field private static sTelephonyService:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;

    invoke-direct {v0}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;-><init>()V

    sput-object v0, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->sTelephonyService:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    .locals 2

    .prologue
    .line 26
    const-class v1, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->sTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->sTelephonyService:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :goto_0
    monitor-exit v1

    return-object v0

    .line 29
    :cond_0
    :try_start_1
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    sput-object v0, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->sTelephony:Lcom/android/internal/telephony/ITelephony;

    .line 30
    sget-object v0, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->sTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v0, :cond_1

    .line 31
    sget-object v0, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->sTelephonyService:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 33
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public call(Ljava/lang/String;)V
    .locals 1
    .parameter "number"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 258
    sget-object v0, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->sTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->call(Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method public get3GCapabilitySIM()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 246
    sget-object v0, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->sTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->get3GCapabilitySIM()I

    move-result v0

    return v0
.end method

.method public getCallState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 262
    sget-object v0, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->sTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->getCallState()I

    move-result v0

    return v0
.end method

.method public getCallStateGemini(I)I
    .locals 1
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 67
    sget-object v0, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->sTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->getCallStateGemini(I)I

    move-result v0

    return v0
.end method

.method public getCellLocationGemini(I)Landroid/os/Bundle;
    .locals 1
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 106
    sget-object v0, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->sTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->getCellLocationGemini(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getDataActivityGemini(I)I
    .locals 1
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 182
    sget-object v0, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->sTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->getDataActivityGemini(I)I

    move-result v0

    return v0
.end method

.method public getDataState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 266
    sget-object v0, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->sTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->getDataState()I

    move-result v0

    return v0
.end method

.method public getDataStateGemini(I)I
    .locals 1
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 174
    sget-object v0, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->sTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->getDataStateGemini(I)I

    move-result v0

    return v0
.end method

.method public getIccCardType()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 43
    sget-object v0, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->sTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->getIccCardType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccCardTypeGemini(I)Ljava/lang/String;
    .locals 1
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 97
    sget-object v0, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->sTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->getIccCardTypeGemini(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNeighboringCellInfoGemini(I)Ljava/util/List;
    .locals 1
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
    .line 117
    sget-object v0, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->sTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->getNeighboringCellInfoGemini(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkTypeGemini(I)I
    .locals 1
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 150
    sget-object v0, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->sTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->getNetworkTypeGemini(I)I

    move-result v0

    return v0
.end method

.method public getSN()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 139
    sget-object v0, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->sTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->getSN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScAddressGemini(I)Ljava/lang/String;
    .locals 1
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 231
    sget-object v0, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->sTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->getScAddressGemini(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceState()Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 209
    sget-object v0, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->sTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->getServiceState()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getServiceStateGemini(I)Landroid/os/Bundle;
    .locals 1
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 223
    sget-object v0, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->sTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->getServiceStateGemini(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getSimIndicatorStateGemini(I)I
    .locals 1
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 196
    sget-object v0, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->sTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->getSimIndicatorStateGemini(I)I

    move-result v0

    return v0
.end method

.method public hasIccCard()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 274
    sget-object v0, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->sTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->hasIccCard()Z

    move-result v0

    return v0
.end method

.method public hasIccCardGemini(I)Z
    .locals 1
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 158
    sget-object v0, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->sTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->hasIccCardGemini(I)Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossibleGemini(I)Z
    .locals 1
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 166
    sget-object v0, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->sTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->isDataConnectivityPossibleGemini(I)Z

    move-result v0

    return v0
.end method

.method public isRadioOnGemini(I)Z
    .locals 1
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 81
    sget-object v0, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->sTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->isRadioOnGemini(I)Z

    move-result v0

    return v0
.end method

.method public isSimInsert(I)Z
    .locals 1
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 129
    sget-object v0, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->sTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z

    move-result v0

    return v0
.end method

.method public isTestIccCard()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 55
    sget-object v0, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->sTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->isTestIccCard()Z

    move-result v0

    return v0
.end method

.method public setScAddressGemini(Ljava/lang/String;I)V
    .locals 1
    .parameter "scAddr"
    .parameter "simId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 239
    sget-object v0, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->sTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setScAddressGemini(Ljava/lang/String;I)V

    .line 242
    return-void
.end method
