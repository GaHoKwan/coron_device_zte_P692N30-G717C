.class public Lcom/mediatek/settings/deviceinfo/SimStatusGemini;
.super Landroid/preference/PreferenceActivity;
.source "SimStatusGemini.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/deviceinfo/SimStatusGemini$AirplaneModeBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x12c

.field private static final EVENT_SIGNAL_STRENGTH_CHANGED:I = 0xc8

.field private static final KEY_DATA_STATE:Ljava/lang/String; = "data_state"

.field private static final KEY_NETWORK_TYPE:Ljava/lang/String; = "network_type"

.field private static final KEY_NUMBER:Ljava/lang/String; = "number"

.field private static final KEY_OPERATOR_NAME:Ljava/lang/String; = "operator_name"

.field private static final KEY_ROAMING_STATE:Ljava/lang/String; = "roaming_state"

.field private static final KEY_SERVICE_STATE:Ljava/lang/String; = "service_state"

.field private static final KEY_SIGNAL_STRENGTH:Ljava/lang/String; = "signal_strength"

.field private static final SLOT_ALL:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Gemini_SimStatus"

.field private static sRes:Landroid/content/res/Resources;

.field private static sUnknown:Ljava/lang/String;


# instance fields
.field private mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

.field private mExt:Lcom/mediatek/settings/ext/IStatusGeminiExt;

.field private mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

.field private mHandler:Landroid/os/Handler;

.field private mHasSlotId:Z

.field private mIsShouldBeFinished:Z

.field private mIsUnlockFollow:Z

.field private mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceComplete:Ljava/lang/Runnable;

.field private mServiceState:I

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field private mSignalStrengthPreference:Landroid/preference/Preference;

.field private mSimCount:I

.field private mSlotId:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 84
    iput-object v2, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 95
    iput v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    .line 96
    iput-boolean v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mIsUnlockFollow:Z

    .line 97
    iput-boolean v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mIsShouldBeFinished:Z

    .line 102
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mHandler:Landroid/os/Handler;

    .line 110
    iput-boolean v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mHasSlotId:Z

    .line 112
    new-instance v0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$AirplaneModeBroadcastReceiver;

    invoke-direct {v0, p0, v2}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$AirplaneModeBroadcastReceiver;-><init>(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;Lcom/mediatek/settings/deviceinfo/SimStatusGemini$1;)V

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 114
    new-instance v0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$1;-><init>(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)V

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mServiceComplete:Ljava/lang/Runnable;

    .line 134
    new-instance v0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$2;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$2;-><init>(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)V

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 442
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)Lcom/mediatek/CellConnService/CellConnMgr;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;Landroid/telephony/ServiceState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$202(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mIsShouldBeFinished:Z

    return p1
.end method

.method static synthetic access$300(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mHasSlotId:Z

    return v0
.end method

.method static synthetic access$402(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mIsUnlockFollow:Z

    return p1
.end method

.method static synthetic access$500(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->updateDataState()V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    return v0
.end method

.method static synthetic access$800(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)Landroid/telephony/SignalStrength;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object v0
.end method

.method static synthetic access$802(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object p1
.end method

.method static synthetic access$900(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mServiceState:I

    return v0
.end method

.method static synthetic access$902(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput p1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mServiceState:I

    return p1
.end method

.method private setSummary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "preference"
    .parameter "property"
    .parameter "alt"

    .prologue
    .line 307
    :try_start_0
    invoke-static {p2, p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, strSummary:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 311
    .local v1, p:Landroid/preference/Preference;
    if-eqz v1, :cond_1

    .line 312
    const-string v3, "unknown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v2, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sUnknown:Ljava/lang/String;

    .end local v2           #strSummary:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    .end local v1           #p:Landroid/preference/Preference;
    :cond_1
    :goto_0
    return-void

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v3, "Gemini_SimStatus"

    const-string v4, "fail to get system property"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "preference"
    .parameter "text"

    .prologue
    .line 322
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    invoke-virtual {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0902c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 326
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 327
    .local v0, p:Landroid/preference/Preference;
    if-eqz v0, :cond_1

    .line 328
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 330
    :cond_1
    return-void
.end method

.method private updateDataState()V
    .locals 4

    .prologue
    .line 346
    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget v3, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    invoke-virtual {v2, v3}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDataState(I)I

    move-result v1

    .line 347
    .local v1, state:I
    sget-object v2, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f0902e4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, display:Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 366
    :goto_0
    const-string v2, "data_state"

    invoke-direct {p0, v2, v0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    return-void

    .line 351
    :pswitch_0
    sget-object v2, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f0902e2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 352
    goto :goto_0

    .line 354
    :pswitch_1
    sget-object v2, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f0902e3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 355
    goto :goto_0

    .line 357
    :pswitch_2
    sget-object v2, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f0902e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 358
    goto :goto_0

    .line 360
    :pswitch_3
    sget-object v2, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f0902e0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 361
    goto :goto_0

    .line 349
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateNetworkType()V
    .locals 5

    .prologue
    .line 334
    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v3, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getNetworkTypeNameGemini(I)Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, netWorkTypeName:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mExt:Lcom/mediatek/settings/ext/IStatusGeminiExt;

    invoke-interface {v2, v0}, Lcom/mediatek/settings/ext/IStatusGeminiExt;->customizeNetworkTypeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 337
    const-string v2, "Gemini_SimStatus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNetworkTypeName, mSlotId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const-string v2, "network_type"

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 339
    .local v1, p:Landroid/preference/Preference;
    if-eqz v1, :cond_1

    .line 340
    const-string v2, "UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sUnknown:Ljava/lang/String;

    .end local v0           #netWorkTypeName:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 343
    :cond_1
    return-void
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 5
    .parameter "serviceState"

    .prologue
    .line 371
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 372
    .local v1, state:I
    sget-object v2, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f0902e4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, display:Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 391
    :goto_0
    const-string v2, "service_state"

    invoke-direct {p0, v2, v0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 394
    const-string v2, "roaming_state"

    sget-object v3, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v4, 0x7f0902db

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :goto_1
    const-string v2, "operator_name"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    return-void

    .line 376
    :pswitch_0
    sget-object v2, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f0902d7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 377
    goto :goto_0

    .line 379
    :pswitch_1
    sget-object v2, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f0902d8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 380
    goto :goto_0

    .line 382
    :pswitch_2
    sget-object v2, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f0902d9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 383
    goto :goto_0

    .line 385
    :pswitch_3
    sget-object v2, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f0902da

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 386
    goto :goto_0

    .line 397
    :cond_0
    const-string v2, "roaming_state"

    sget-object v3, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v4, 0x7f0902dc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 374
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateTitle()V
    .locals 5

    .prologue
    .line 202
    iget v2, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    invoke-static {p0, v2}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v1

    .line 203
    .local v1, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSimCount:I

    .line 204
    const/4 v0, 0x0

    .line 205
    .local v0, simDisplayName:Ljava/lang/String;
    iget v2, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSimCount:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    if-eqz v1, :cond_0

    .line 206
    iget-object v0, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    .line 207
    const-string v2, "Gemini_SimStatus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "simDisplayName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 210
    invoke-virtual {p0, v0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->setTitle(Ljava/lang/CharSequence;)V

    .line 212
    :cond_1
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, -0x1

    .line 469
    const-string v0, "Gemini_SimStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult() requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const/16 v0, 0x64

    if-ne v0, p1, :cond_1

    .line 472
    if-ne v3, p2, :cond_0

    .line 473
    const-string v0, "slotid"

    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    .line 474
    const-string v0, "Gemini_SimStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSlotId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->updateTitle()V

    .line 482
    :goto_0
    return-void

    .line 477
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->finish()V

    goto :goto_0

    .line 480
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->finish()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 486
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/mediatek/gemini/GeminiUtils;->goBackSimSelection(Landroid/app/Activity;Z)V

    .line 487
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, -0x2

    .line 167
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 168
    new-instance v1, Lcom/mediatek/CellConnService/CellConnMgr;

    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mServiceComplete:Ljava/lang/Runnable;

    invoke-direct {v1, v2}, Lcom/mediatek/CellConnService/CellConnMgr;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    .line 169
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v1, p0}, Lcom/mediatek/CellConnService/CellConnMgr;->register(Landroid/content/Context;)V

    .line 170
    const v1, 0x7f060013

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->addPreferencesFromResource(I)V

    .line 172
    invoke-static {p0}, Lcom/android/settings/Utils;->getStatusGeminiExtPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IStatusGeminiExt;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mExt:Lcom/mediatek/settings/ext/IStatusGeminiExt;

    .line 173
    invoke-static {p0}, Lcom/android/settings/Utils;->getMiscPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISettingsMiscExt;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    .line 175
    invoke-virtual {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 176
    .local v0, it:Landroid/content/Intent;
    const-string v1, "slotid"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    .line 177
    const-string v1, "Gemini_SimStatus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "slotid is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    if-ne v1, v4, :cond_0

    .line 181
    invoke-static {p0}, Lcom/mediatek/gemini/GeminiUtils;->getTargetSlotId(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    .line 183
    :cond_0
    iget v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 184
    const v1, 0x7f09009f

    invoke-static {p0, v1}, Lcom/mediatek/gemini/GeminiUtils;->startSelectSimActivity(Landroid/app/Activity;I)V

    .line 191
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sput-object v1, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    .line 192
    sget-object v1, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v2, 0x7f0902c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sUnknown:Ljava/lang/String;

    .line 193
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 194
    new-instance v1, Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-direct {v1, p0}, Lcom/mediatek/telephony/TelephonyManagerEx;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    .line 195
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 198
    const-string v1, "signal_strength"

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrengthPreference:Landroid/preference/Preference;

    .line 199
    return-void

    .line 186
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mHasSlotId:Z

    .line 187
    const-string v1, "Gemini_SimStatus"

    const-string v2, "no need to sim selection"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->updateTitle()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v0}, Lcom/mediatek/CellConnService/CellConnMgr;->unregister()V

    .line 217
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 218
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 283
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 284
    iget-boolean v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mIsShouldBeFinished:Z

    if-eqz v0, :cond_1

    .line 286
    invoke-virtual {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->finish()V

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    iget v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 290
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 291
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    iget v3, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/telephony/TelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 222
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 223
    iget-boolean v4, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mIsShouldBeFinished:Z

    if-eqz v4, :cond_1

    .line 224
    invoke-virtual {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->finish()V

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    iget v4, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 228
    iget-boolean v4, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mIsUnlockFollow:Z

    if-nez v4, :cond_2

    .line 229
    iput-boolean v8, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mIsUnlockFollow:Z

    .line 230
    iget-object v4, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$3;

    invoke-direct {v5, p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$3;-><init>(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 239
    :cond_2
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 241
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    iget-object v4, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 245
    iget-object v4, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v5, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getLine1NumberGemini(I)Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, rawNumber:Ljava/lang/String;
    const/4 v0, 0x0

    .line 248
    .local v0, formattedNumber:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 249
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    :cond_3
    const-string v4, "number"

    invoke-direct {p0, v4, v0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->updateDataState()V

    .line 257
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->updateNetworkType()V

    .line 259
    iget-object v4, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v5, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getServiceStateGemini(I)Landroid/telephony/ServiceState;

    move-result-object v3

    .line 261
    .local v3, serviceState:Landroid/telephony/ServiceState;
    invoke-direct {p0, v3}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->updateServiceState(Landroid/telephony/ServiceState;)V

    .line 262
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    iput v4, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mServiceState:I

    .line 263
    iget-object v4, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v5, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getSignalStrengthGemini(I)Landroid/telephony/SignalStrength;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 264
    invoke-virtual {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->updateSignalStrength()V

    .line 265
    iget-object v4, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget-object v5, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v6, 0x141

    iget v7, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/mediatek/telephony/TelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    .line 271
    iget v4, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSimCount:I

    if-gt v4, v8, :cond_0

    .line 276
    const v4, 0x7f09009f

    invoke-virtual {p0, v4}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method updateSignalStrength()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v9, -0x1

    .line 404
    const-string v5, "Gemini_SimStatus"

    const-string v6, "updateSignalStrength()"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v5, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrengthPreference:Landroid/preference/Preference;

    if-eqz v5, :cond_4

    .line 410
    const-string v5, "Gemini_SimStatus"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ServiceState : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mServiceState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const/4 v5, 0x1

    iget v6, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mServiceState:I

    if-eq v5, v6, :cond_0

    const/4 v5, 0x3

    iget v6, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mServiceState:I

    if-ne v5, v6, :cond_1

    .line 413
    :cond_0
    const-string v5, "Gemini_SimStatus"

    const-string v6, "ServiceState is Not ready, set signalStrength 0"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v5, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrengthPreference:Landroid/preference/Preference;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 417
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 418
    .local v1, r:Landroid/content/res/Resources;
    const/4 v0, 0x1

    .line 419
    .local v0, isGsmSignal:Z
    const/4 v3, 0x0

    .line 420
    .local v3, signalDbm:I
    const/4 v2, 0x0

    .line 421
    .local v2, signalAsu:I
    iget-object v5, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v5, :cond_3

    .line 422
    iget-object v5, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    .line 423
    if-eqz v0, :cond_5

    .line 424
    iget-object v5, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getGsmSignalStrengthDbm()I

    move-result v3

    .line 425
    iget-object v5, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    .line 430
    :goto_0
    const-string v5, "Gemini_SimStatus"

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

    .line 431
    if-ne v9, v3, :cond_2

    move v3, v4

    .line 432
    :cond_2
    if-ne v9, v2, :cond_3

    move v2, v4

    .line 435
    :cond_3
    const-string v4, "Gemini_SimStatus"

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

    .line 436
    iget-object v4, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrengthPreference:Landroid/preference/Preference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0902e7

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

    const v6, 0x7f0902e8

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 440
    .end local v0           #isGsmSignal:Z
    .end local v1           #r:Landroid/content/res/Resources;
    .end local v2           #signalAsu:I
    .end local v3           #signalDbm:I
    :cond_4
    return-void

    .line 427
    .restart local v0       #isGsmSignal:Z
    .restart local v1       #r:Landroid/content/res/Resources;
    .restart local v2       #signalAsu:I
    .restart local v3       #signalDbm:I
    :cond_5
    iget-object v5, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v3

    .line 428
    add-int/lit8 v5, v3, 0x71

    int-to-double v5, v5

    const-wide/high16 v7, 0x3fe0

    mul-double/2addr v5, v7

    double-to-int v2, v5

    goto/16 :goto_0
.end method
