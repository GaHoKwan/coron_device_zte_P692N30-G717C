.class public Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;
.super Landroid/preference/PreferenceActivity;
.source "CurrentNetworkInfoStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$ScAsyncTask;
    }
.end annotation


# static fields
.field private static final EVENT_GET_OPLMN_VERSION:I = 0x190

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x12c

.field private static final EVENT_SIGNAL_STRENGTH_CHANGED:I = 0xc8

.field private static final KEY_CT_PRL_VERSION:Ljava/lang/String; = "ct_prl_version"

.field private static final KEY_CT_SLOT1_CDMA_PNL_VERSION:Ljava/lang/String; = "ct_slot1_cdma_pnl_version"

.field private static final KEY_CT_SLOT1_GSM_PNL_VERSION:Ljava/lang/String; = "ct_slot1_gsm_pnl_version"

.field private static final KEY_CURRENT_CELLID:Ljava/lang/String; = "current_cellid"

.field private static final KEY_CURRENT_OPERATORS_MCCMNC:Ljava/lang/String; = "current_operators_mccmnc"

.field private static final KEY_CURRENT_SIDNID:Ljava/lang/String; = "current_sidnid"

.field private static final KEY_NETWORK_TYPE:Ljava/lang/String; = "network_type"

.field private static final KEY_OPERATOR_NAME:Ljava/lang/String; = "operator_name"

.field private static final KEY_SIGNAL_STRENGTH:Ljava/lang/String; = "signal_strength"

.field private static final KEY_SMS_CENTER:Ljava/lang/String; = "sms_center"

.field private static final MCC_LEN:I = 0x3

.field private static final MNC_MAX_LEN:I = 0x3

.field private static final PLMN_NORMAL_LEN:I = 0x5

.field private static final PLMN_SPECIAL_LEN:I = 0x6

.field private static final PRL_VERSION_KEY_NAME:Ljava/lang/String; = "cdma.prl.version"

.field private static final RESUME_HANDLE_CELLCONN_DELAY_TIME:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "CurrentNetworkInfoStatus"


# instance fields
.field private mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field private mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

.field private mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

.field private mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field private mHandler:Landroid/os/Handler;

.field private mIsShouldBeFinished:Z

.field private mIsUnlockFollow:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScAyncTask:Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$ScAsyncTask;

.field private mServiceComplete:Ljava/lang/Runnable;

.field private mServiceState:I

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field private mSignalStrengthPreference:Landroid/preference/Preference;

.field private mSimId:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

.field private mUnknown:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 130
    iput v0, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mSimId:I

    .line 131
    iput-boolean v0, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mIsUnlockFollow:Z

    .line 132
    iput-boolean v0, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mIsShouldBeFinished:Z

    .line 142
    new-instance v0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$1;-><init>(Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;)V

    iput-object v0, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mHandler:Landroid/os/Handler;

    .line 167
    new-instance v0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$2;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$2;-><init>(Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;)V

    iput-object v0, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 187
    new-instance v0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$3;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$3;-><init>(Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;)V

    iput-object v0, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mServiceComplete:Ljava/lang/Runnable;

    .line 202
    new-instance v0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$4;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$4;-><init>(Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;)V

    iput-object v0, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 542
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;)Lcom/android/internal/telephony/cdma/CDMAPhone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->setMccMnc()V

    return-void
.end method

.method static synthetic access$1100(Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;)Lcom/mediatek/telephony/TelephonyManagerEx;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mSimId:I

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;)Lcom/mediatek/CellConnService/CellConnMgr;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mIsShouldBeFinished:Z

    return p1
.end method

.method static synthetic access$502(Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mIsUnlockFollow:Z

    return p1
.end method

.method static synthetic access$600(Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;)Landroid/telephony/SignalStrength;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object v0
.end method

.method static synthetic access$702(Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object p1
.end method

.method static synthetic access$800(Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mServiceState:I

    return v0
.end method

.method static synthetic access$802(Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput p1, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mServiceState:I

    return p1
.end method

.method static synthetic access$900(Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;Landroid/telephony/ServiceState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method private dealWith3AppLaunch()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 524
    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 526
    .local v1, simList:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 527
    const/4 v2, -0x1

    .line 538
    .local v2, slotID:I
    :cond_0
    :goto_0
    const-string v4, "CurrentNetworkInfoStatus"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dealWith3AppLaunch() slotID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    return v2

    .line 528
    .end local v2           #slotID:I
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 529
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/provider/Telephony$SIMInfo;

    iget v2, v4, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    .restart local v2       #slotID:I
    goto :goto_0

    .line 531
    .end local v2           #slotID:I
    :cond_2
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/provider/Telephony$SIMInfo;

    iget v2, v4, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    .line 532
    .restart local v2       #slotID:I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/Telephony$SIMInfo;

    .line 533
    .local v3, temp:Landroid/provider/Telephony$SIMInfo;
    iget v4, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-le v2, v4, :cond_3

    .line 534
    iget v2, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    goto :goto_1
.end method

.method private getCellIdValue()V
    .locals 3

    .prologue
    .line 334
    iget v1, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mSimId:I

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 335
    iget-object v1, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v1, :cond_1

    .line 336
    iget-object v1, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    .line 337
    .local v0, cellLocation:Landroid/telephony/cdma/CdmaCellLocation;
    const-string v1, "current_cellid"

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    .end local v0           #cellLocation:Landroid/telephony/cdma/CdmaCellLocation;
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    iget-object v1, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v1, :cond_0

    .line 339
    iget-object v1, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 340
    .local v0, cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    const-string v1, "current_cellid"

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getOplmnVersion()V
    .locals 5

    .prologue
    .line 355
    const-string v2, "CurrentNetworkInfoStatus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOplmnVersion: mSimId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mSimId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " PhoneFactory.getExternalModemSlot() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget v2, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mSimId:I

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 357
    iget-object v2, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    .line 358
    .local v1, phoneProxy:Lcom/android/internal/telephony/PhoneProxy;
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 359
    .local v0, gsmPhone2:Lcom/android/internal/telephony/gsm/GSMPhone;
    const-string v2, "CurrentNetworkInfoStatus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOplmnVersion: mSimId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mSimId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " gsmPhone2 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    if-eqz v0, :cond_0

    .line 361
    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x190

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getOplmnVersion(Landroid/os/Message;)V

    .line 364
    .end local v0           #gsmPhone2:Lcom/android/internal/telephony/gsm/GSMPhone;
    .end local v1           #phoneProxy:Lcom/android/internal/telephony/PhoneProxy;
    :cond_0
    return-void
.end method

.method private getSidNidPrlValue()V
    .locals 5

    .prologue
    .line 322
    iget-object v2, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v2, :cond_0

    .line 323
    const-string v2, "current_sidnid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getNid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :cond_0
    iget-object v2, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 327
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "cdma.prl.version"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, prlVersion:Ljava/lang/String;
    const-string v2, "ct_prl_version"

    invoke-direct {p0, v2, v1}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v2, "CurrentNetworkInfoStatus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSidNidPrlValue: key = cdma.prl.version, prlVersion = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return-void
.end method

.method private getSmsServiceCenter()V
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v0, :cond_0

    .line 348
    new-instance v0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$ScAsyncTask;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$ScAsyncTask;-><init>(Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;)V

    iput-object v0, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mScAyncTask:Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$ScAsyncTask;

    .line 349
    iget-object v0, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mScAyncTask:Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$ScAsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$ScAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 351
    :cond_0
    return-void
.end method

.method private initPreferences()V
    .locals 5

    .prologue
    .line 261
    iget-object v2, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v3, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mSimId:I

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getPhoneTypeGemini(I)I

    move-result v1

    .line 262
    .local v1, phoneType:I
    const-string v2, "CurrentNetworkInfoStatus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initPreferences, slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mSimId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " phoneType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v2, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v3, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mSimId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 265
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 266
    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    .end local v0           #phone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    check-cast v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    iput-object v2, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 267
    const-string v2, "ct_slot1_gsm_pnl_version"

    invoke-direct {p0, v2}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->removePreference(Ljava/lang/String;)V

    .line 268
    const-string v2, "sms_center"

    invoke-direct {p0, v2}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->removePreference(Ljava/lang/String;)V

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 269
    .restart local v0       #phone:Lcom/android/internal/telephony/Phone;
    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 270
    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    .end local v0           #phone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    iput-object v2, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 271
    iget v2, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mSimId:I

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 272
    const-string v2, "current_sidnid"

    invoke-direct {p0, v2}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->removePreference(Ljava/lang/String;)V

    .line 273
    const-string v2, "ct_slot1_cdma_pnl_version"

    invoke-direct {p0, v2}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->removePreference(Ljava/lang/String;)V

    goto :goto_0

    .line 275
    :cond_2
    const-string v2, "current_sidnid"

    invoke-direct {p0, v2}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->removePreference(Ljava/lang/String;)V

    .line 276
    const-string v2, "current_cellid"

    invoke-direct {p0, v2}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->removePreference(Ljava/lang/String;)V

    .line 277
    const-string v2, "ct_prl_version"

    invoke-direct {p0, v2}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->removePreference(Ljava/lang/String;)V

    .line 278
    const-string v2, "ct_slot1_cdma_pnl_version"

    invoke-direct {p0, v2}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->removePreference(Ljava/lang/String;)V

    .line 279
    const-string v2, "ct_slot1_gsm_pnl_version"

    invoke-direct {p0, v2}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->removePreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removePreference(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 285
    invoke-virtual {p0, p1}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 286
    .local v0, preference:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 289
    :cond_0
    return-void
.end method

.method static renameNetworkTypeNameForCTSpec(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "netWorkTypeName"

    .prologue
    .line 460
    const-string v0, "CurrentNetworkInfoStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "renameNetworkTypeNameForCTSpec, netWorkTypeName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const-string v0, "CDMA - EvDo rev. 0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CDMA - EvDo rev. A"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CDMA - EvDo rev. B"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 464
    :cond_0
    const-string p0, "CDMA EVDO"

    .line 477
    .end local p0
    :cond_1
    :goto_0
    return-object p0

    .line 465
    .restart local p0
    :cond_2
    const-string v0, "CDMA - 1xRTT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 466
    const-string p0, "CDMA 1x"

    goto :goto_0

    .line 467
    :cond_3
    const-string v0, "GPRS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "EDGE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 469
    :cond_4
    const-string p0, "GSM"

    goto :goto_0

    .line 470
    :cond_5
    const-string v0, "HSDPA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "HSUPA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "HSPA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "HSPA+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "UMTS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 475
    :cond_6
    const-string p0, "WCDMA"

    goto :goto_0
.end method

.method private setMccMnc()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 301
    iget v3, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mSimId:I

    packed-switch v3, :pswitch_data_0

    .line 309
    const-string v3, "gsm.operator.numeric"

    const-string v4, "-1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 313
    .local v2, numeric:Ljava/lang/String;
    :goto_0
    const-string v3, "CurrentNetworkInfoStatus"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMccMnc, numeric="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    .line 315
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, mcc:Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, mnc:Ljava/lang/String;
    const-string v3, "current_operators_mccmnc"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    .end local v0           #mcc:Ljava/lang/String;
    .end local v1           #mnc:Ljava/lang/String;
    :cond_1
    return-void

    .line 303
    .end local v2           #numeric:Ljava/lang/String;
    :pswitch_0
    const-string v3, "gsm.operator.numeric"

    const-string v4, "-1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 304
    .restart local v2       #numeric:Ljava/lang/String;
    goto :goto_0

    .line 306
    .end local v2           #numeric:Ljava/lang/String;
    :pswitch_1
    const-string v3, "gsm.operator.numeric.2"

    const-string v4, "-1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 307
    .restart local v2       #numeric:Ljava/lang/String;
    goto :goto_0

    .line 301
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "preference"
    .parameter "text"

    .prologue
    .line 426
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 430
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 431
    .local v0, p:Landroid/preference/Preference;
    if-eqz v0, :cond_1

    .line 432
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 434
    :cond_1
    return-void
.end method

.method private updateNetworkType()V
    .locals 4

    .prologue
    .line 438
    iget-object v2, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v3, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mSimId:I

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getNetworkTypeNameGemini(I)Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, netWorkTypeName:Ljava/lang/String;
    invoke-static {v0}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->renameNetworkTypeNameForCTSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 440
    const-string v2, "network_type"

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 441
    .local v1, p:Landroid/preference/Preference;
    if-eqz v1, :cond_1

    .line 442
    const-string v2, "UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mUnknown:Ljava/lang/String;

    .end local v0           #netWorkTypeName:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 444
    :cond_1
    return-void
.end method

.method private updatePreferences()V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->setMccMnc()V

    .line 293
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->getSidNidPrlValue()V

    .line 294
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->getCellIdValue()V

    .line 295
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->getSmsServiceCenter()V

    .line 296
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->getOplmnVersion()V

    .line 297
    return-void
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 2
    .parameter "serviceState"

    .prologue
    .line 482
    const-string v0, "operator_name"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, -0x1

    .line 232
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 234
    new-instance v1, Lcom/mediatek/CellConnService/CellConnMgr;

    iget-object v2, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mServiceComplete:Ljava/lang/Runnable;

    invoke-direct {v1, v2}, Lcom/mediatek/CellConnService/CellConnMgr;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    .line 235
    iget-object v1, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v1, p0}, Lcom/mediatek/CellConnService/CellConnMgr;->register(Landroid/content/Context;)V

    .line 236
    const v1, 0x7f040005

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->addPreferencesFromResource(I)V

    .line 239
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 240
    .local v0, it:Landroid/content/Intent;
    const-string v1, "simId"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mSimId:I

    .line 241
    const-string v1, "CurrentNetworkInfoStatus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate, mSimId is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mSimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget v1, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mSimId:I

    if-ne v1, v4, :cond_0

    .line 246
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->dealWith3AppLaunch()I

    move-result v1

    iput v1, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mSimId:I

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mUnknown:Ljava/lang/String;

    .line 250
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 251
    new-instance v1, Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-direct {v1, p0}, Lcom/mediatek/telephony/TelephonyManagerEx;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    .line 252
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v1, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 255
    const-string v1, "signal_strength"

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mSignalStrengthPreference:Landroid/preference/Preference;

    .line 257
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->initPreferences()V

    .line 258
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v0}, Lcom/mediatek/CellConnService/CellConnMgr;->unregister()V

    .line 369
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 370
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 413
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 414
    iget-object v0, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mScAyncTask:Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$ScAsyncTask;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mScAyncTask:Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$ScAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$ScAsyncTask;->cancel(Z)Z

    .line 417
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mIsShouldBeFinished:Z

    if-eqz v0, :cond_1

    .line 418
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->finish()V

    .line 423
    :goto_0
    return-void

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 422
    iget-object v0, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 8

    .prologue
    .line 374
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 375
    iget-boolean v4, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mIsShouldBeFinished:Z

    if-eqz v4, :cond_0

    .line 376
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->finish()V

    .line 409
    :goto_0
    return-void

    .line 379
    :cond_0
    iget-boolean v4, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mIsUnlockFollow:Z

    if-nez v4, :cond_1

    .line 380
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mIsUnlockFollow:Z

    .line 381
    iget-object v4, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$5;

    invoke-direct {v5, p0}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus$5;-><init>(Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 388
    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 389
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 390
    iget-object v4, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 392
    iget-object v4, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v5, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mSimId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getLine1NumberGemini(I)Ljava/lang/String;

    move-result-object v2

    .line 394
    .local v2, rawNumber:Ljava/lang/String;
    const/4 v0, 0x0

    .line 395
    .local v0, formattedNumber:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 396
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 400
    :cond_2
    iget-object v4, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v5, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mSimId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getServiceStateGemini(I)Landroid/telephony/ServiceState;

    move-result-object v3

    .line 401
    .local v3, serviceState:Landroid/telephony/ServiceState;
    invoke-direct {p0, v3}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->updateServiceState(Landroid/telephony/ServiceState;)V

    .line 402
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    iput v4, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mServiceState:I

    .line 403
    iget-object v4, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v5, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mSimId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getSignalStrengthGemini(I)Landroid/telephony/SignalStrength;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 404
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->updateSignalStrength()V

    .line 405
    iget-object v4, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget-object v5, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v6, 0x141

    iget v7, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mSimId:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/mediatek/telephony/TelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    .line 408
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->updatePreferences()V

    goto :goto_0
.end method

.method updateSignalStrength()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v9, -0x1

    .line 486
    const-string v5, "CurrentNetworkInfoStatus"

    const-string v6, "updateSignalStrength()"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v5, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mSignalStrengthPreference:Landroid/preference/Preference;

    if-eqz v5, :cond_4

    .line 492
    const-string v5, "CurrentNetworkInfoStatus"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateSignalStrength, ServiceState : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mServiceState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const/4 v5, 0x1

    iget v6, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mServiceState:I

    if-eq v5, v6, :cond_0

    const/4 v5, 0x3

    iget v6, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mServiceState:I

    if-ne v5, v6, :cond_1

    .line 494
    :cond_0
    const-string v5, "CurrentNetworkInfoStatus"

    const-string v6, "updateSignalStrength, ServiceState is Not ready, set signalStrength 0"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v5, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mSignalStrengthPreference:Landroid/preference/Preference;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 498
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 499
    .local v1, r:Landroid/content/res/Resources;
    const/4 v0, 0x1

    .line 500
    .local v0, isGsmSignal:Z
    const/4 v3, 0x0

    .line 501
    .local v3, signalDbm:I
    const/4 v2, 0x0

    .line 502
    .local v2, signalAsu:I
    iget-object v5, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v5, :cond_3

    .line 503
    iget-object v5, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    .line 504
    if-eqz v0, :cond_5

    .line 505
    iget-object v5, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getGsmSignalStrengthDbm()I

    move-result v3

    .line 506
    iget-object v5, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    .line 511
    :goto_0
    const-string v5, "CurrentNetworkInfoStatus"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateSignalStrength, SignalStrength is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dbm , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " asu"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    if-ne v9, v3, :cond_2

    move v3, v4

    .line 513
    :cond_2
    if-ne v9, v2, :cond_3

    move v2, v4

    .line 516
    :cond_3
    const-string v4, "CurrentNetworkInfoStatus"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSignalStrength, SignalStrength is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dbm , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " asu"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object v4, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mSignalStrengthPreference:Landroid/preference/Preference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f09004f

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f090050

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 521
    .end local v0           #isGsmSignal:Z
    .end local v1           #r:Landroid/content/res/Resources;
    .end local v2           #signalAsu:I
    .end local v3           #signalDbm:I
    :cond_4
    return-void

    .line 508
    .restart local v0       #isGsmSignal:Z
    .restart local v1       #r:Landroid/content/res/Resources;
    .restart local v2       #signalAsu:I
    .restart local v3       #signalDbm:I
    :cond_5
    iget-object v5, p0, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v3

    .line 509
    add-int/lit8 v5, v3, 0x71

    int-to-double v5, v5

    const-wide/high16 v7, 0x3fe0

    mul-double/2addr v5, v7

    double-to-int v2, v5

    goto/16 :goto_0
.end method
