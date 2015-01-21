.class public Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;
.super Ljava/lang/Object;
.source "EncapsulatedTelephonyManagerEx.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TelephonyManagerEx"

.field private static defaultSimId:I

.field private static sInstance:Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

.field private mRegistry2:Lcom/android/internal/telephony/ITelephonyRegistry;

.field private mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->defaultSimId:I

    .line 58
    new-instance v0, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;

    invoke-direct {v0}, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;-><init>()V

    sput-object v0, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->sInstance:Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->mContext:Landroid/content/Context;

    .line 37
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->mContext:Landroid/content/Context;

    .line 37
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    .line 44
    const-string v0, "TelephonyManagerEx"

    const-string v1, "getSubscriberInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iput-object p1, p0, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->mContext:Landroid/content/Context;

    .line 46
    const-string v0, "telephony.registry"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 50
    const-string v0, "telephony.registry2"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->mRegistry2:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 52
    return-void
.end method

.method public static getDefault()Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->sInstance:Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;

    return-object v0
.end method

.method private getITelephony()Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    .locals 1

    .prologue
    .line 617
    invoke-static {}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->getInstance()Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCallState(I)I
    .locals 1
    .parameter "simId"

    .prologue
    .line 498
    iget-object v0, p0, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getCallState(I)I

    move-result v0

    return v0
.end method

.method public getCellLocation(I)Landroid/telephony/CellLocation;
    .locals 1
    .parameter "simId"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getCellLocation(I)Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public getDataActivity(I)I
    .locals 1
    .parameter "simId"

    .prologue
    .line 520
    iget-object v0, p0, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDataActivity(I)I

    move-result v0

    return v0
.end method

.method public getDataState(I)I
    .locals 1
    .parameter "simId"

    .prologue
    .line 542
    iget-object v0, p0, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDataState(I)I

    move-result v0

    return v0
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 1
    .parameter "simId"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1Number(I)Ljava/lang/String;
    .locals 1
    .parameter "simId"

    .prologue
    .line 433
    iget-object v0, p0, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getLine1Number(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNeighboringCellInfo(I)Ljava/util/List;
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

    .prologue
    .line 142
    iget-object v0, p0, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getNeighboringCellInfo(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkCountryIso(I)Ljava/lang/String;
    .locals 1
    .parameter "simId"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 1
    .parameter "simId"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorName(I)Ljava/lang/String;
    .locals 1
    .parameter "simId"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkType(I)I
    .locals 1
    .parameter "simId"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getNetworkType(I)I

    move-result v0

    return v0
.end method

.method public getSN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScAddress(I)Ljava/lang/String;
    .locals 1
    .parameter "slotId"

    .prologue
    .line 627
    iget-object v0, p0, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getScAddress(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceState()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getServiceState()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getServiceState(I)Landroid/os/Bundle;
    .locals 1
    .parameter "simId"

    .prologue
    .line 722
    iget-object v0, p0, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getServiceState(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getSimCountryIso(I)Ljava/lang/String;
    .locals 1
    .parameter "simId"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimCountryIso(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimIndicatorStateGemini(I)I
    .locals 1
    .parameter "simId"

    .prologue
    .line 669
    iget-object v0, p0, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimIndicatorStateGemini(I)I

    move-result v0

    return v0
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 1
    .parameter "simId"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorName(I)Ljava/lang/String;
    .locals 1
    .parameter "simId"

    .prologue
    .line 348
    iget-object v0, p0, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "simId"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimState(I)I
    .locals 1
    .parameter "simId"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimState(I)I

    move-result v0

    return v0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 1
    .parameter "simId"

    .prologue
    .line 410
    iget-object v0, p0, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 2
    .parameter "simId"

    .prologue
    .line 72
    const-string v0, "TelephonyManagerEx"

    const-string v1, "getSubscriberInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    if-nez p1, :cond_0

    .line 75
    const-string v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "iphonesubinfo2"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getVoiceMailAlphaTag(I)Ljava/lang/String;
    .locals 1
    .parameter "simId"

    .prologue
    .line 478
    iget-object v0, p0, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getVoiceMailAlphaTag(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "simId"

    .prologue
    .line 455
    iget-object v0, p0, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasIccCard(I)Z
    .locals 1
    .parameter "simId"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method public isNetworkRoaming(I)Z
    .locals 1
    .parameter "simId"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->isNetworkRoaming(I)Z

    move-result v0

    return v0
.end method

.method public listen(Landroid/telephony/PhoneStateListener;II)V
    .locals 1
    .parameter "listener"
    .parameter "events"
    .parameter "simId"

    .prologue
    .line 589
    iget-object v0, p0, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/telephony/TelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    .line 593
    return-void
.end method

.method public setScAddress(Ljava/lang/String;I)Z
    .locals 1
    .parameter "address"
    .parameter "slotId"

    .prologue
    .line 648
    iget-object v0, p0, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/telephony/TelephonyManagerEx;->setScAddress(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
