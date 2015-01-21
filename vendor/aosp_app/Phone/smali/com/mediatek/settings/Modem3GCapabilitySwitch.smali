.class public Lcom/mediatek/settings/Modem3GCapabilitySwitch;
.super Landroid/preference/PreferenceActivity;
.source "Modem3GCapabilitySwitch.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DIALOG_3G_CAPABILITY_SWITCH:I = 0x1f4

.field public static final NETWORK_MODE_KEY:Ljava/lang/String; = "preferred_network_mode_key"

.field private static final PROGRESS_DIALOG_3G:I = 0x12c

.field public static final SERVICE_LIST_KEY:Ljava/lang/String; = "preferred_3g_service_key"

.field private static final SIMID_3G_SERVICE_NOT_SET:I = -0x2

.field private static final SIMID_3G_SERVICE_OFF:J = -0x1L

.field private static final SWITCH_3G_TIME_OUT_MSG:I = 0x3e8

.field private static final SWITCH_3G_TIME_OUT_VALUE:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "Settings/Modem3GCapabilitySwitch"

.field private static sInstanceFlag:I


# instance fields
.field private mCurrent3GSim:J

.field private mExtension:Lcom/mediatek/phone/ext/SettingsExtension;

.field private mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

.field private mITelephony:Lcom/android/internal/telephony/ITelephony;

.field private mInstanceIndex:I

.field private mIs3GSwitchManualChangeAllowed:Z

.field private mIsAirplaneModeOn:Z

.field private mManualAllowedSlot:I

.field private mNetworkHandler:Lcom/mediatek/settings/NetWorkHandler;

.field private mNetworkMode:Landroid/preference/ListPreference;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mPhoneMgr:Lcom/android/phone/PhoneInterfaceManager;

.field private mSelected3GSim:J

.field private mServiceList:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

.field private mSimInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mSwitchReceiver:Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;

.field private mTimerHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->sInstanceFlag:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mServiceList:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    .line 57
    iput-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    .line 61
    iput-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    .line 65
    iput-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 79
    iput v1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mInstanceIndex:I

    .line 83
    iput-boolean v1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mIs3GSwitchManualChangeAllowed:Z

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mManualAllowedSlot:I

    .line 91
    new-instance v0, Lcom/mediatek/settings/Modem3GCapabilitySwitch$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch$1;-><init>(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)V

    iput-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mTimerHandler:Landroid/os/Handler;

    .line 103
    sget v0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->sInstanceFlag:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->sInstanceFlag:I

    iput v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mInstanceIndex:I

    .line 104
    const-string v0, "Settings/Modem3GCapabilitySwitch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Modem3GCapabilitySwitch(), instanceIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mInstanceIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/Modem3GCapabilitySwitch;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->setStatusBarEnableStatus(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mCurrent3GSim:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mIsAirplaneModeOn:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/mediatek/settings/Modem3GCapabilitySwitch;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mIsAirplaneModeOn:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->init3GSwitchPref()V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/settings/Modem3GCapabilitySwitch;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->updateSummarys(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)Lcom/mediatek/gemini/simui/SimSelectDialogPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mServiceList:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mSelected3GSim:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/mediatek/settings/Modem3GCapabilitySwitch;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->handleServiceSwitch(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->updateNetworkAnd3GServiceStatus()V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/settings/Modem3GCapabilitySwitch;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->showInstanceIndex(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mTimerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/settings/Modem3GCapabilitySwitch;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->clearAfterSwitch(Landroid/content/Intent;)V

    return-void
.end method

.method private clearAfterSwitch(Landroid/content/Intent;)V
    .locals 8
    .parameter "it"

    .prologue
    .line 359
    const-wide/16 v1, -0x2

    .line 360
    .local v1, simId3G:J
    const-string v4, "Settings/Modem3GCapabilitySwitch"

    const-string v5, "clearAfterSwitch(), remove switching dialog"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const/16 v4, 0x12c

    invoke-virtual {p0, v4}, Landroid/app/Activity;->removeDialog(I)V

    .line 362
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->setStatusBarEnableStatus(Z)V

    .line 365
    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiPhone;->EXTRA_3G_SIM:Ljava/lang/String;

    const/4 v5, -0x2

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 366
    .local v3, slot3G:I
    int-to-long v4, v3

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 367
    const-wide/16 v1, -0x1

    .line 374
    :cond_0
    :goto_0
    invoke-direct {p0, v1, v2}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->updateSummarys(J)V

    .line 375
    invoke-direct {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->updateNetworkAnd3GServiceStatus()V

    .line 376
    return-void

    .line 369
    :cond_1
    invoke-static {p0, v3}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 370
    .local v0, info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v0, :cond_0

    .line 371
    iget-wide v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    goto :goto_0
.end method

.method private handleServiceSwitch(J)V
    .locals 6
    .parameter "simId"

    .prologue
    const/16 v5, 0x12c

    .line 379
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v2}, Lcom/android/phone/PhoneInterfaceManager;->is3GSwitchLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 380
    const-string v2, "Settings/Modem3GCapabilitySwitch"

    const-string v3, "Switch has been locked, return"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mServiceList:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    iget-wide v3, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mCurrent3GSim:J

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setValue(J)V

    .line 400
    :goto_0
    return-void

    .line 384
    :cond_0
    const-string v2, "Settings/Modem3GCapabilitySwitch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleServiceSwitch("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), show switching dialog first"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-virtual {p0, v5}, Landroid/app/Activity;->showDialog(I)V

    .line 386
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->setStatusBarEnableStatus(Z)V

    .line 387
    const/4 v1, -0x1

    .line 388
    .local v1, slotId:I
    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-eqz v2, :cond_1

    .line 389
    invoke-static {p0, p1, p2}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoById(Landroid/content/Context;J)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 390
    .local v0, info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-nez v0, :cond_2

    const/4 v1, -0x1

    .line 392
    .end local v0           #info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v2, v1}, Lcom/android/phone/PhoneInterfaceManager;->set3GCapabilitySIM(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 393
    const-string v2, "Settings/Modem3GCapabilitySwitch"

    const-string v3, "Receive ok for the switch, and starting the waiting..."

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 390
    .restart local v0       #info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_2
    iget v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    goto :goto_1

    .line 395
    .end local v0           #info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_3
    const-string v2, "Settings/Modem3GCapabilitySwitch"

    const-string v3, "Receive error for the switch & Dismiss switching didalog"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-virtual {p0, v5}, Landroid/app/Activity;->removeDialog(I)V

    .line 397
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->setStatusBarEnableStatus(Z)V

    .line 398
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mServiceList:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    iget-wide v3, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mCurrent3GSim:J

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setValue(J)V

    goto :goto_0
.end method

.method private init3GSwitchPref()V
    .locals 9

    .prologue
    .line 504
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mSimInfoList:Ljava/util/List;

    .line 505
    iget-object v6, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mSimInfoList:Ljava/util/List;

    new-instance v7, Lcom/mediatek/gemini/simui/CommonUtils$SIMInfoComparable;

    invoke-direct {v7}, Lcom/mediatek/gemini/simui/CommonUtils$SIMInfoComparable;-><init>()V

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 506
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 507
    .local v4, simIndicatorList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 508
    .local v0, entryValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 509
    .local v2, itemStatus:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    iget-object v6, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mSimInfoList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 510
    .local v5, siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget v6, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-static {p0, v6}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSimIndicator(Landroid/content/Context;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    iget-wide v6, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    iget v6, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    iget-boolean v7, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mIs3GSwitchManualChangeAllowed:Z

    iget v8, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mManualAllowedSlot:I

    invoke-static {v6, v7, v8}, Lcom/mediatek/phone/gemini/GeminiUtils;->is3GSwitchManualEnableSlot(IZI)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 516
    .end local v5           #siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 518
    .local v3, normalList3gSwitch:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mSimInfoList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    iget-object v6, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mExtension:Lcom/mediatek/phone/ext/SettingsExtension;

    invoke-virtual {v6}, Lcom/mediatek/phone/ext/SettingsExtension;->isRemoveRadioOffFor3GSwitchFlag()Z

    move-result v6

    if-nez v6, :cond_1

    .line 519
    const v6, 0x7f0800a1

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    const-wide/16 v6, -0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    :cond_1
    iget-object v6, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mServiceList:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    iget-object v7, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mSimInfoList:Ljava/util/List;

    invoke-virtual {v6, v7, v4, v3, v2}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEntriesData(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 523
    iget-object v6, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mServiceList:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v6, v0}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEntryValues(Ljava/util/List;)V

    .line 524
    return-void
.end method

.method private initIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 211
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_3G_SWITCH_LOCK_CHANGED:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 212
    .local v0, intentFilter:Landroid/content/IntentFilter;
    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_PRE_3G_SWITCH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_3G_SWITCH_DONE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 214
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    const-string v1, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    return-object v0
.end method

.method private initPhoneAnd3GSwitch()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 186
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 187
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 191
    :cond_0
    :try_start_0
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    .line 192
    iget-object v1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->is3GSwitchManualChange3GAllowed()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mIs3GSwitchManualChangeAllowed:Z

    .line 193
    const-string v1, "Settings/Modem3GCapabilitySwitch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIs3GSwitchManualChangeAllowed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mIs3GSwitchManualChangeAllowed:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-boolean v1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mIs3GSwitchManualChangeAllowed:Z

    if-nez v1, :cond_1

    .line 195
    iget-object v1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->get3GSwitchAllowed3GSlots()I

    move-result v1

    iput v1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mManualAllowedSlot:I

    .line 196
    const-string v1, "Settings/Modem3GCapabilitySwitch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mManualAllowedSlot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mManualAllowedSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :cond_1
    :goto_0
    new-instance v1, Lcom/mediatek/settings/NetWorkHandler;

    iget-object v3, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-direct {v1, p0, v3}, Lcom/mediatek/settings/NetWorkHandler;-><init>(Landroid/app/Activity;Landroid/preference/ListPreference;)V

    iput-object v1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkHandler:Lcom/mediatek/settings/NetWorkHandler;

    .line 202
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    iput-object v1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    .line 204
    new-instance v1, Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;

    invoke-direct {v1, p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;-><init>(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)V

    iput-object v1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mSwitchReceiver:Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;

    .line 205
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "airplane_mode_on"

    const/4 v4, -0x1

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mIsAirplaneModeOn:Z

    .line 207
    invoke-direct {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->init3GSwitchPref()V

    .line 208
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Settings/Modem3GCapabilitySwitch"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 205
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private initPreference()V
    .locals 3

    .prologue
    .line 221
    const-string v0, "preferred_3g_service_key"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    iput-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mServiceList:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    .line 222
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mServiceList:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 223
    const-string v0, "preferred_network_mode_key"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    .line 224
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 225
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mExtension:Lcom/mediatek/phone/ext/SettingsExtension;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/phone/ext/SettingsExtension;->removeNMOpFor3GSwitch(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V

    .line 226
    return-void
.end method

.method private setStatusBarEnableStatus(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 419
    const-string v0, "Settings/Modem3GCapabilitySwitch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStatusBarEnableStatus("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v0, :cond_0

    .line 421
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_2

    .line 424
    if-eqz p1, :cond_1

    .line 425
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 434
    :goto_0
    return-void

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v1, 0x121

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0

    .line 432
    :cond_2
    const-string v0, "Settings/Modem3GCapabilitySwitch"

    const-string v1, "Fail to get status bar instance"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showInstanceIndex(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 499
    const-string v0, "Settings/Modem3GCapabilitySwitch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instance["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mInstanceIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    return-void
.end method

.method private updateNetworkAnd3GServiceStatus()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 156
    iget-object v6, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v6}, Lcom/android/phone/PhoneInterfaceManager;->get3GCapabilitySIM()I

    move-result v2

    .line 157
    .local v2, slot:I
    const-string v6, "Settings/Modem3GCapabilitySwitch"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateNetworkMode(), 3G capability slot="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v6, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v6}, Lcom/android/phone/PhoneInterfaceManager;->is3GSwitchLocked()Z

    move-result v0

    .line 159
    .local v0, locked:Z
    iget-object v6, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    if-eqz v6, :cond_0

    .line 160
    if-nez v0, :cond_3

    const/4 v6, -0x1

    if-eq v2, v6, :cond_3

    invoke-static {v2, p0}, Lcom/mediatek/phone/gemini/GeminiUtils;->isRadioOffBySlot(ILandroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 161
    iget-object v6, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v6, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 162
    const-string v6, "Settings/Modem3GCapabilitySwitch"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Try to get preferred network mode for slot "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v6, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v7, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkHandler:Lcom/mediatek/settings/NetWorkHandler;

    invoke-virtual {v7, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPreferredNetworkTypeGemini(Landroid/os/Message;I)V

    .line 171
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mServiceList:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    iget-boolean v7, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mIsAirplaneModeOn:Z

    if-nez v7, :cond_4

    if-nez v0, :cond_4

    :goto_1
    invoke-virtual {v6, v4}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEnabled(Z)V

    .line 173
    iget-boolean v4, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mIsAirplaneModeOn:Z

    if-eqz v4, :cond_2

    .line 174
    iget-object v4, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mServiceList:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v4}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    .line 175
    .local v3, switchDialog:Landroid/app/Dialog;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 176
    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 178
    :cond_1
    iget-object v4, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 179
    .local v1, netWorkDialog:Landroid/app/Dialog;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 180
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 183
    .end local v1           #netWorkDialog:Landroid/app/Dialog;
    .end local v3           #switchDialog:Landroid/app/Dialog;
    :cond_2
    return-void

    .line 166
    :cond_3
    iget-object v6, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v6, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 167
    iget-object v6, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    move v4, v5

    .line 171
    goto :goto_1
.end method

.method private updateSummarys(J)V
    .locals 5
    .parameter "simId"

    .prologue
    .line 229
    const-string v2, "Settings/Modem3GCapabilitySwitch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSummarys(), simId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iput-wide p1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mCurrent3GSim:J

    .line 232
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mServiceList:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v2, p1, p2}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setValue(J)V

    .line 233
    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    .line 234
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    if-eqz v2, :cond_0

    .line 235
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    const-wide/16 v2, -0x2

    cmp-long v2, p1, v2

    if-nez v2, :cond_2

    .line 239
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mServiceList:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 242
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoById(Landroid/content/Context;J)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 243
    .local v0, info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v0, :cond_0

    .line 245
    iget v2, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-static {v2, p0}, Lcom/mediatek/phone/gemini/GeminiUtils;->isRadioOffBySlot(ILandroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v1, 0x1

    .line 246
    .local v1, isPowerOn:Z
    :goto_1
    const-string v2, "Settings/Modem3GCapabilitySwitch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSummarys(), SIM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " power status is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    if-nez v1, :cond_0

    .line 248
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 245
    .end local v1           #isPowerOn:Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public changeForNetworkMode(Ljava/lang/Object;)V
    .locals 7
    .parameter "objValue"

    .prologue
    const/4 v6, 0x1

    .line 255
    iget-object v4, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 256
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 257
    .local v0, buttonNetworkMode:I
    iget-object v3, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 260
    .local v1, settingsNetworkMode:I
    if-eq v0, v1, :cond_0

    .line 261
    const/16 v3, 0x190

    invoke-virtual {p0, v3}, Landroid/app/Activity;->showDialog(I)V

    .line 262
    iget-object v3, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v3, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 268
    iget-object v3, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v3}, Lcom/android/phone/PhoneInterfaceManager;->get3GCapabilitySIM()I

    move-result v2

    .line 269
    .local v2, slot:I
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 270
    iget-object v3, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkHandler:Lcom/mediatek/settings/NetWorkHandler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v0, v4, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setPreferredNetworkTypeGemini(ILandroid/os/Message;I)V

    .line 277
    .end local v2           #slot:I
    :cond_0
    :goto_0
    return-void

    .line 273
    .restart local v2       #slot:I
    :cond_1
    iget-object v3, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkHandler:Lcom/mediatek/settings/NetWorkHandler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    const-string v2, "Settings/Modem3GCapabilitySwitch"

    const-string v3, "onCreate()"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const v2, 0x7f060018

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 111
    invoke-static {}, Lcom/mediatek/phone/ext/ExtensionManager;->getInstance()Lcom/mediatek/phone/ext/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/phone/ext/ExtensionManager;->getSettingsExtension()Lcom/mediatek/phone/ext/SettingsExtension;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mExtension:Lcom/mediatek/phone/ext/SettingsExtension;

    .line 113
    invoke-direct {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->initPreference()V

    .line 115
    invoke-direct {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->initPhoneAnd3GSwitch()V

    .line 117
    invoke-direct {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->initIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    .line 118
    .local v1, intentFilter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mSwitchReceiver:Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;

    invoke-virtual {p0, v2, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 120
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 121
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 123
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 125
    :cond_0
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 12
    .parameter "id"

    .prologue
    const/4 v11, 0x0

    .line 296
    const-string v7, "Settings/Modem3GCapabilitySwitch"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Create and show the dialog[id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const/4 v1, 0x0

    .line 298
    .local v1, dialog:Landroid/app/Dialog;
    sparse-switch p1, :sswitch_data_0

    .line 341
    :goto_0
    return-object v1

    .line 300
    :sswitch_0
    new-instance v4, Landroid/app/ProgressDialog;

    invoke-direct {v4, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 301
    .local v4, progress:Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0801ba

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 302
    invoke-virtual {v4, v11}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 303
    move-object v1, v4

    .line 304
    goto :goto_0

    .line 306
    .end local v4           #progress:Landroid/app/ProgressDialog;
    :sswitch_1
    new-instance v5, Landroid/app/ProgressDialog;

    invoke-direct {v5, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 307
    .local v5, progress3g:Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f08009f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 308
    invoke-virtual {v5, v11}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 309
    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 310
    .local v6, win:Landroid/view/Window;
    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 311
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v8, -0x8000

    or-int/2addr v7, v8

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 312
    invoke-virtual {v6, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 313
    move-object v1, v5

    .line 314
    goto :goto_0

    .line 316
    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v5           #progress3g:Landroid/app/ProgressDialog;
    .end local v6           #win:Landroid/view/Window;
    :sswitch_2
    iget-wide v7, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mSelected3GSim:J

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    const v3, 0x7f0800a0

    .line 318
    .local v3, msgId:I
    :goto_1
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x1040014

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f080183

    new-instance v9, Lcom/mediatek/settings/Modem3GCapabilitySwitch$3;

    invoke-direct {v9, p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch$3;-><init>(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f080174

    new-instance v9, Lcom/mediatek/settings/Modem3GCapabilitySwitch$2;

    invoke-direct {v9, p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch$2;-><init>(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 335
    .local v0, alert:Landroid/app/AlertDialog;
    move-object v1, v0

    .line 336
    goto :goto_0

    .line 316
    .end local v0           #alert:Landroid/app/AlertDialog;
    .end local v3           #msgId:I
    :cond_0
    const v3, 0x7f08009e

    goto :goto_1

    .line 298
    nop

    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_1
        0x190 -> :sswitch_0
        0x1f4 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 403
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 404
    const-string v0, "Settings/Modem3GCapabilitySwitch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instance["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mInstanceIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mSwitchReceiver:Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mSwitchReceiver:Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 410
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->setStatusBarEnableStatus(Z)V

    .line 411
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mTimerHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 412
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 144
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 145
    .local v0, itemId:I
    packed-switch v0, :pswitch_data_0

    .line 152
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 147
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 148
    const/4 v1, 0x1

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mServiceList:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    if-ne p1, v0, :cond_1

    .line 281
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mSelected3GSim:J

    .line 282
    iget-wide v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mSelected3GSim:J

    iget-wide v2, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mCurrent3GSim:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 286
    iget-wide v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mSelected3GSim:J

    invoke-direct {p0, v0, v1}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->handleServiceSwitch(J)V

    .line 292
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 290
    invoke-virtual {p0, p2}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->changeForNetworkMode(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 5
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 346
    packed-switch p1, :pswitch_data_0

    .line 355
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 356
    return-void

    .line 348
    :pswitch_0
    iget-wide v1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mSelected3GSim:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const v0, 0x7f0800a0

    .local v0, msgId:I
    :goto_1
    move-object v1, p2

    .line 350
    check-cast v1, Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 348
    .end local v0           #msgId:I
    :cond_0
    const v0, 0x7f08009e

    goto :goto_1

    .line 346
    nop

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 8

    .prologue
    .line 128
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 129
    const-wide/16 v1, -0x2

    .line 130
    .local v1, simId:J
    iget-object v4, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v4}, Lcom/android/phone/PhoneInterfaceManager;->get3GCapabilitySIM()I

    move-result v3

    .line 131
    .local v3, slot:I
    int-to-long v4, v3

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 132
    int-to-long v1, v3

    .line 137
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->init3GSwitchPref()V

    .line 138
    invoke-direct {p0, v1, v2}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->updateSummarys(J)V

    .line 139
    invoke-direct {p0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->updateNetworkAnd3GServiceStatus()V

    .line 140
    return-void

    .line 134
    :cond_0
    invoke-static {p0, v3}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 135
    .local v0, info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v0, :cond_1

    iget-wide v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    :goto_1
    goto :goto_0

    :cond_1
    const-wide/16 v1, -0x2

    goto :goto_1
.end method
