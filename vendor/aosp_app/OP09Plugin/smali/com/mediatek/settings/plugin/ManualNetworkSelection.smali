.class public Lcom/mediatek/settings/plugin/ManualNetworkSelection;
.super Landroid/preference/PreferenceActivity;
.source "ManualNetworkSelection.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference$OnSwitchNetworkListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/plugin/ManualNetworkSelection$AvoidSysHandler;
    }
.end annotation


# static fields
.field private static final ACTION_PS_DETACH_DONE:Ljava/lang/String; = "com.mediatek.action.PS_DETACH_DONE"

.field private static final CDMA_MANUAL_SWITCH_PROCESS_BEGIN:I = 0xc8

.field private static final CDMA_MANUAL_SWITCH_PROCESS_DONE:I = 0xca

.field private static final CDMA_MANUAL_SWITCH_PROCESS_SEARCHING:I = 0xc9

.field private static final CDMA_SELECTION_MODE:I = 0x0

.field private static final DATA_DETACHED_DELAY:I = 0xfa0

.field private static final DATA_DETACH_TIME_OUT_DELAY:I = 0x2710

.field private static final DBG:Z = true

.field private static final DIALOG_NETWORK_LIST_LOAD:I = 0x3ec

.field private static final DIALOG_NETWORK_SELECTION:I = 0x3eb

.field private static final DIALOG_PHONE_SWITCHING:I = 0x3ed

.field private static final DIALOG_SWITCH_CDMA_NETWORK_FAILED_DATA_CONNECT:I = 0x3ee

.field private static final DIALOG_SWITCH_NETWORK_FAILED:I = 0x3ea

.field private static final DIALOG_SWITCH_NETWORK_REGISTERED:I = 0x3e9

.field private static final EVENT_NETWORK_SCAN_COMPLETED:I = 0x66

.field private static final EVENT_NETWORK_SCAN_COMPLETED_2:I = 0x67

.field private static final EVENT_NETWORK_SELECTION_DONE:I = 0x65

.field private static final EXTRA_SIM_ID:Ljava/lang/String; = "com.mediatek.intent.extra.SIM_ID"

.field private static final EXTRA_VALUE_REMOVE_SIM:Ljava/lang/String; = "REMOVE"

.field private static final GSM_SELECTION_MODE:I = 0x1

.field private static final INTENT_KEY_DETECT_STATUS:Ljava/lang/String; = "simDetectStatus"

.field private static final INTENT_KEY_NEW_SIM_STATUS:Ljava/lang/String; = "newSIMStatus"

.field private static final KEY_CDMA_NETWORK_SELECTION:Ljava/lang/String; = "cdma_network_selection"

.field private static final KEY_CDMA_NETWORK_SELECTION_DETAIL:Ljava/lang/String; = "cdma_network_selectioin_detail"

.field private static final KEY_GSM1_NETWORK_SELECTION:Ljava/lang/String; = "gsm_sim1_network_selection"

.field private static final KEY_GSM2_NETWORK_SELECTION:Ljava/lang/String; = "gsm_sim2_network_selection"

.field private static final KEY_MANUAL_NOTES:Ljava/lang/String; = "key_notes"

.field private static final MSG_DATA_DETACHED:I = 0x7d2

.field private static final MSG_DATA_DETACH_TIME_OUT:I = 0x7d1

.field private static final MSG_SWITCH_NETWORK:I = 0xc9

.field private static final NETWORK_RAT_2G:I = 0x0

.field private static final NETWORK_RAT_3G:I = 0x1

.field private static final PROP_INTERNATIONAL_CARD_TYPE:Ljava/lang/String; = "gsm.internationalcard.type"

.field private static final QUERY_OK:I = 0x0

.field private static final RIL_RADIO_TECHNOLOGY_UMTS:I = 0x3

.field private static final SWITCH_PROCESS_BEGIN:I = 0x1

.field private static final SWITCH_PROCESS_DONE:I = 0x0

.field private static final SWITCH_PROCESS_SEARCHING_NETWORK:I = 0x3

.field private static final SWITCH_PROCESS_SWITCH_PHONE_DONE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ManualNetworkSelection"


# instance fields
.field private final mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

.field private final mCdmaAvoidListHandler:Landroid/os/Handler;

.field private mCdmaManuallyNetworkSelectState:I

.field private mCdmaNetworkSelectionDetailPref:Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;

.field private mCdmaNetworkSelectionPref:Landroid/preference/Preference;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mCurrentSelectionMode:I

.field private mDataDetachHandler:Landroid/os/Handler;

.field private mDelayRegAlertAfterGsmListLoaded:Z

.field private mExModemSlot:I

.field private mForceDisableData:Z

.field private mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

.field private mGsm1NetworkSelectionPref:Landroid/preference/PreferenceGroup;

.field private mGsm2NetworkSelectionPref:Landroid/preference/PreferenceGroup;

.field private mIsDualModeCard:Z

.field private mIsExternalSlot:Z

.field private mIsForeground:Z

.field private mNetworkMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/preference/Preference;",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

.field private final mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

.field private final mNetworkSelectionHandler:Landroid/os/Handler;

.field private mNotesPref:Landroid/preference/Preference;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneSwitchingMode:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSelectedNetwork:Ljava/lang/String;

.field private mSelectedNetworkText:Ljava/lang/String;

.field private mTargetSlot:I

.field private mTelephony:Lcom/android/internal/telephony/ITelephony;

.field private mTelephonyEx:Lcom/mediatek/common/telephony/ITelephonyEx;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

.field private mWaitDataDisconnected:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mNetworkMap:Ljava/util/HashMap;

    .line 130
    iput v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mCurrentSelectionMode:I

    .line 137
    iput v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mPhoneSwitchingMode:I

    .line 143
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mSelectedNetwork:Ljava/lang/String;

    .line 152
    new-instance v0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$AvoidSysHandler;

    invoke-direct {v0, p0, v2}, Lcom/mediatek/settings/plugin/ManualNetworkSelection$AvoidSysHandler;-><init>(Lcom/mediatek/settings/plugin/ManualNetworkSelection;Lcom/mediatek/settings/plugin/ManualNetworkSelection$1;)V

    iput-object v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mCdmaAvoidListHandler:Landroid/os/Handler;

    .line 159
    iput-object v2, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    .line 178
    new-instance v0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection$1;-><init>(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)V

    iput-object v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 231
    new-instance v0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$2;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection$2;-><init>(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)V

    iput-object v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 752
    new-instance v0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$6;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection$6;-><init>(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)V

    iput-object v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    .line 777
    new-instance v0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$7;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection$7;-><init>(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)V

    iput-object v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    .line 796
    new-instance v0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$8;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection$8;-><init>(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)V

    iput-object v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mNetworkSelectionHandler:Landroid/os/Handler;

    .line 1223
    new-instance v0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$10;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection$10;-><init>(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)V

    iput-object v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mDataDetachHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mPhoneSwitchingMode:I

    return v0
.end method

.method static synthetic access$1000(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mWaitDataDisconnected:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/mediatek/settings/plugin/ManualNetworkSelection;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mWaitDataDisconnected:Z

    return p1
.end method

.method static synthetic access$102(Lcom/mediatek/settings/plugin/ManualNetworkSelection;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mPhoneSwitchingMode:I

    return p1
.end method

.method static synthetic access$1100(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mDataDetachHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mediatek/settings/plugin/ManualNetworkSelection;Landroid/telephony/ServiceState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->processCdmaSelectNextNetworkManually(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mCdmaNetworkSelectionDetailPref:Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/mediatek/settings/plugin/ManualNetworkSelection;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mDelayRegAlertAfterGsmListLoaded:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)Lcom/android/phone/INetworkQueryService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/mediatek/settings/plugin/ManualNetworkSelection;Lcom/android/phone/INetworkQueryService;)Lcom/android/phone/INetworkQueryService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->startAndBindNetworkQueryService()V

    return-void
.end method

.method static synthetic access$1800(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->loadGsmNetworksList()V

    return-void
.end method

.method static synthetic access$1900(Lcom/mediatek/settings/plugin/ManualNetworkSelection;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->displayEmptyNetworkList(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I

    return v0
.end method

.method static synthetic access$2000(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)Lcom/android/internal/telephony/gemini/GeminiPhone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->updateCarrierPreferenceCheckedState()V

    return-void
.end method

.method static synthetic access$2200(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mIsDualModeCard:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mNetworkSelectionHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/mediatek/settings/plugin/ManualNetworkSelection;Ljava/util/List;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->gsmNetworksListLoaded(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/mediatek/settings/plugin/ManualNetworkSelection;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->displayNetworkSelectionFailed(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->displayNetworkSelectionSucceeded()V

    return-void
.end method

.method static synthetic access$2700(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mCdmaManuallyNetworkSelectState:I

    return v0
.end method

.method static synthetic access$2702(Lcom/mediatek/settings/plugin/ManualNetworkSelection;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mCdmaManuallyNetworkSelectState:I

    return p1
.end method

.method static synthetic access$2800(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->networkQuery()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/settings/plugin/ManualNetworkSelection;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->updateScreen()V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mIsExternalSlot:Z

    return v0
.end method

.method static synthetic access$600(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->isExternalSlotInCdmaMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$702(Lcom/mediatek/settings/plugin/ManualNetworkSelection;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mCurrentSelectionMode:I

    return p1
.end method

.method static synthetic access$800(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mExModemSlot:I

    return v0
.end method

.method static synthetic access$900(Lcom/mediatek/settings/plugin/ManualNetworkSelection;Lcom/android/internal/telephony/ITelephony;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->isSimInserted(Lcom/android/internal/telephony/ITelephony;I)Z

    move-result v0

    return v0
.end method

.method private clearGsmNetworkList()V
    .locals 3

    .prologue
    .line 961
    iget-object v2, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 962
    .local v1, p:Landroid/preference/Preference;
    iget v2, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I

    invoke-direct {p0, v2}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->getGsmNetworkPref(I)Landroid/preference/PreferenceGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 964
    .end local v1           #p:Landroid/preference/Preference;
    :cond_0
    iget-object v2, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 965
    return-void
.end method

.method private displayEmptyNetworkList(Z)V
    .locals 2
    .parameter "isEmpty"

    .prologue
    .line 968
    iget v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I

    if-nez v0, :cond_1

    .line 969
    if-eqz p1, :cond_0

    .line 970
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->clearGsmNetworkList()V

    .line 981
    :cond_0
    :goto_0
    return-void

    .line 972
    :cond_1
    iget v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 973
    if-eqz p1, :cond_2

    .line 974
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mGsm2NetworkSelectionPref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 976
    :cond_2
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "gsm_sim2_network_selection"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 977
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mGsm2NetworkSelectionPref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private displayNetworkQueryFailed(I)V
    .locals 3
    .parameter "error"

    .prologue
    .line 1078
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->updateCarrierPreferenceCheckedState()V

    .line 1079
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090062

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1080
    .local v0, status:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->showToastAlert(Ljava/lang/String;)V

    .line 1081
    return-void
.end method

.method private displayNetworkSelectionFailed(Ljava/lang/Throwable;)V
    .locals 5
    .parameter "ex"

    .prologue
    .line 1091
    const v1, 0x7f09005c

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mSelectedNetwork:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1092
    .local v0, status:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->showDialogAlert(Ljava/lang/String;)V

    .line 1093
    return-void
.end method

.method private displayNetworkSelectionSucceeded()V
    .locals 5

    .prologue
    .line 1084
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->updateCarrierPreferenceCheckedState()V

    .line 1085
    const v1, 0x7f09005a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mSelectedNetwork:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1086
    .local v0, status:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayNetworkSelectionSucceeded mTargetSlot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V

    .line 1087
    invoke-direct {p0, v0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->showDialogAlert(Ljava/lang/String;)V

    .line 1088
    return-void
.end method

.method private displayNetworkSeletionInProgress(Ljava/lang/String;)V
    .locals 4
    .parameter "networkStr"

    .prologue
    .line 1071
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090063

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mSelectedNetworkText:Ljava/lang/String;

    .line 1072
    iget-boolean v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mIsForeground:Z

    if-eqz v0, :cond_0

    .line 1073
    const/16 v0, 0x3eb

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 1075
    :cond_0
    return-void
.end method

.method private enterCdmaNetworkMode()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 646
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->forceSwitchPhone()I

    move-result v0

    .line 647
    .local v0, result:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enterCdmaNetworkMode, mPhoneSwitchingMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mPhoneSwitchingMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTargetSlot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V

    .line 649
    if-nez v0, :cond_0

    .line 650
    iput v3, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mPhoneSwitchingMode:I

    .line 651
    const-string v1, "Switch phone begin, update network searching state to true."

    invoke-direct {p0, v1}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V

    .line 652
    iget-object v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mCdmaNetworkSelectionDetailPref:Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;

    invoke-virtual {v1, v3}, Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;->updateNetworkSearchingState(Z)V

    .line 653
    const/16 v1, 0x3ed

    invoke-virtual {p0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 657
    :goto_0
    return-void

    .line 655
    :cond_0
    invoke-direct {p0, v0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->handleSwitchPhoneError(I)V

    goto :goto_0
.end method

.method private enterGsmNetworkMode()V
    .locals 3

    .prologue
    .line 663
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->forceSwitchPhone()I

    move-result v0

    .line 664
    .local v0, result:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enterGsmNetworkMode, mPhoneSwitchingMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mPhoneSwitchingMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTargetSlot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V

    .line 666
    if-nez v0, :cond_0

    .line 667
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mPhoneSwitchingMode:I

    .line 668
    const/16 v1, 0x3ed

    invoke-virtual {p0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 672
    :goto_0
    return-void

    .line 670
    :cond_0
    invoke-direct {p0, v0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->handleSwitchPhoneError(I)V

    goto :goto_0
.end method

.method private forceQuitGSMNetworkQuery()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1181
    const-string v1, "forceQuitGSMNetworkQuery"

    invoke-direct {p0, v1}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V

    .line 1184
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    if-eqz v1, :cond_0

    .line 1185
    iget-object v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v2, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v1, v2}, Lcom/android/phone/INetworkQueryService;->stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1191
    :cond_0
    const/16 v1, 0x3ec

    invoke-virtual {p0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 1194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceQuitGSMNetworkQuery, mForceDisableData ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mForceDisableData:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V

    .line 1195
    iget-boolean v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mForceDisableData:Z

    if-eqz v1, :cond_1

    .line 1196
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->setMobileDataEnabled(Z)V

    .line 1197
    iput-boolean v3, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mForceDisableData:Z

    .line 1198
    iput-boolean v3, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mWaitDataDisconnected:Z

    .line 1199
    iget-object v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mDataDetachHandler:Landroid/os/Handler;

    const/16 v2, 0x7d1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1200
    iget-object v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mDataDetachHandler:Landroid/os/Handler;

    const/16 v2, 0x7d2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1202
    :cond_1
    return-void

    .line 1187
    :catch_0
    move-exception v0

    .line 1188
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private forceSwitchPhone()I
    .locals 2

    .prologue
    .line 744
    iget-object v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->internationalModeForceSimSwitch(I)I

    move-result v0

    return v0
.end method

.method private getCDMAPhone()Lcom/android/internal/telephony/Phone;
    .locals 3

    .prologue
    .line 681
    iget-object v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    .line 683
    .local v0, externalPhone:Lcom/android/internal/telephony/PhoneProxy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 685
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 689
    :goto_0
    return-object v1

    .line 688
    :cond_0
    const-string v1, "getCDMAPhone return null."

    invoke-direct {p0, v1}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V

    .line 689
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getGsmNetworkPref(I)Landroid/preference/PreferenceGroup;
    .locals 3
    .parameter "slotId"

    .prologue
    .line 693
    iget v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I

    if-nez v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mGsm1NetworkSelectionPref:Landroid/preference/PreferenceGroup;

    .line 701
    :goto_0
    return-object v0

    .line 695
    :cond_0
    iget v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 696
    iget-object v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mGsm2NetworkSelectionPref:Landroid/preference/PreferenceGroup;

    goto :goto_0

    .line 700
    :cond_1
    const-string v0, "ManualNetworkSelection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Should never run into this case: mTargetSlot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNetworkRate(Lcom/android/internal/telephony/OperatorInfo;)I
    .locals 4
    .parameter "ni"

    .prologue
    .line 1008
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    .line 1009
    .local v0, operatorLong:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkType: ni = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",operatorLong = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V

    .line 1010
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 1011
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1012
    .local v1, ratStr:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkType: ratStr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V

    .line 1013
    const-string v2, "3G"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1014
    const/4 v2, 0x1

    .line 1017
    .end local v1           #ratStr:Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getNetworkTitle(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;
    .locals 2
    .parameter "ni"

    .prologue
    .line 991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNetworkTitle: ni = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V

    .line 992
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 993
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 997
    :goto_0
    return-object v0

    .line 994
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 997
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getRateForNetworkType(I)I
    .locals 1
    .parameter "networkType"

    .prologue
    .line 1028
    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    .line 1029
    const/4 v0, 0x1

    .line 1031
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSwitchNetworkFailErrorMessage()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 1205
    const/4 v1, 0x0

    .line 1206
    .local v1, networkString:Ljava/lang/String;
    iget v2, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I

    if-nez v2, :cond_1

    .line 1207
    const-string v2, "gsm.operator.alpha"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1214
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 1215
    const v2, 0x7f09005c

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1220
    .local v0, errorMessage:Ljava/lang/String;
    :goto_1
    return-object v0

    .line 1209
    .end local v0           #errorMessage:Ljava/lang/String;
    :cond_1
    iget v2, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I

    if-ne v2, v3, :cond_0

    .line 1210
    const-string v2, "gsm.operator.alpha.2"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1218
    :cond_2
    const v2, 0x7f09005b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #errorMessage:Ljava/lang/String;
    goto :goto_1
.end method

.method private gsmNetworksListLoaded(Ljava/util/List;I)V
    .locals 8
    .parameter
    .parameter "status"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/OperatorInfo;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 904
    const-string v4, "gsmNetworksListLoaded networks list loaded."

    invoke-direct {p0, v4}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V

    .line 908
    const/16 v4, 0x3ec

    invoke-virtual {p0, v4}, Landroid/app/Activity;->removeDialog(I)V

    .line 909
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->clearGsmNetworkList()V

    .line 911
    if-eqz p2, :cond_1

    .line 912
    const-string v4, "Error happend while querying available networks."

    invoke-direct {p0, v4}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V

    .line 913
    invoke-direct {p0, p2}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->displayNetworkQueryFailed(I)V

    .line 914
    invoke-direct {p0, v5}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->displayEmptyNetworkList(Z)V

    .line 957
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->forceQuitGSMNetworkQuery()V

    .line 958
    return-void

    .line 916
    :cond_1
    if-eqz p1, :cond_6

    .line 917
    iget-boolean v4, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mDelayRegAlertAfterGsmListLoaded:Z

    if-eqz v4, :cond_2

    .line 918
    iput-boolean v6, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mDelayRegAlertAfterGsmListLoaded:Z

    .line 919
    const/16 v4, 0x3e9

    invoke-virtual {p0, v4}, Landroid/app/Activity;->showDialog(I)V

    .line 922
    :cond_2
    invoke-direct {p0, v6}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->displayEmptyNetworkList(Z)V

    .line 924
    const-string v1, ""

    .line 925
    .local v1, currentNumeric:Ljava/lang/String;
    iget v4, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I

    if-nez v4, :cond_4

    .line 926
    const-string v4, "gsm.operator.numeric"

    const-string v7, ""

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 936
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/OperatorInfo;

    .line 937
    .local v3, ni:Lcom/android/internal/telephony/OperatorInfo;
    new-instance v0, Lcom/mediatek/settings/plugin/CarrierRadioPreference;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/mediatek/settings/plugin/CarrierRadioPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 938
    .local v0, carrier:Lcom/mediatek/settings/plugin/CarrierRadioPreference;
    invoke-direct {p0, v3}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->getNetworkTitle(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 939
    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 940
    invoke-virtual {v3}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mediatek/settings/plugin/CarrierRadioPreference;->setCarrierNumeric(Ljava/lang/String;)V

    .line 941
    invoke-direct {p0, v3}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->getNetworkRate(Lcom/android/internal/telephony/OperatorInfo;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/mediatek/settings/plugin/CarrierRadioPreference;->setCarrierRate(I)V

    .line 942
    iget v4, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I

    invoke-direct {p0, v4}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->getGsmNetworkPref(I)Landroid/preference/PreferenceGroup;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 944
    iget-object v4, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    invoke-virtual {v3}, Lcom/android/internal/telephony/OperatorInfo;->getState()Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v4

    sget-object v7, Lcom/android/internal/telephony/OperatorInfo$State;->CURRENT:Lcom/android/internal/telephony/OperatorInfo$State;

    if-ne v4, v7, :cond_5

    move v4, v5

    :goto_3
    invoke-virtual {v0, v4}, Lcom/mediatek/settings/plugin/RadioPreference;->setChecked(Z)V

    .line 950
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 928
    .end local v0           #carrier:Lcom/mediatek/settings/plugin/CarrierRadioPreference;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #ni:Lcom/android/internal/telephony/OperatorInfo;
    :cond_4
    iget v4, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I

    if-ne v4, v5, :cond_3

    .line 929
    const-string v4, "gsm.operator.numeric.2"

    const-string v7, ""

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .restart local v0       #carrier:Lcom/mediatek/settings/plugin/CarrierRadioPreference;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #ni:Lcom/android/internal/telephony/OperatorInfo;
    :cond_5
    move v4, v6

    .line 947
    goto :goto_3

    .line 954
    .end local v0           #carrier:Lcom/mediatek/settings/plugin/CarrierRadioPreference;
    .end local v1           #currentNumeric:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #ni:Lcom/android/internal/telephony/OperatorInfo;
    :cond_6
    invoke-direct {p0, v5}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->displayEmptyNetworkList(Z)V

    goto/16 :goto_0
.end method

.method private handleSwitchPhoneError(I)V
    .locals 2
    .parameter "result"

    .prologue
    .line 748
    const v0, 0x7f09005e

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 749
    return-void
.end method

.method private isDualModeCard()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 705
    const/4 v0, 0x0

    .line 707
    .local v0, cardType:I
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTelephonyEx:Lcom/mediatek/common/telephony/ITelephonyEx;

    if-eqz v4, :cond_0

    .line 708
    iget-object v4, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTelephonyEx:Lcom/mediatek/common/telephony/ITelephonyEx;

    iget v5, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I

    invoke-interface {v4, v5}, Lcom/mediatek/common/telephony/ITelephonyEx;->getInternationalCardType(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 714
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDualModeCard 1 cardtype="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V

    .line 719
    if-nez v0, :cond_1

    .line 721
    :try_start_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "gsm.internationalcard.type"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 726
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDualModeCard 2 cardtype="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V

    .line 728
    :cond_1
    if-ne v0, v2, :cond_2

    :goto_1
    return v2

    .line 710
    :catch_0
    move-exception v1

    .line 711
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "ManualNetworkSelection"

    const-string v4, "Error to getInternationalCardType."

    invoke-static {v2, v4, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v3

    .line 712
    goto :goto_1

    .line 723
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 724
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "isDualModeCard error happened while query Setting system"

    invoke-direct {p0, v4}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V

    goto :goto_0

    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_2
    move v2, v3

    .line 728
    goto :goto_1
.end method

.method private isExternalSlotInCdmaMode()Z
    .locals 3

    .prologue
    .line 675
    iget-object v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v2, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mExModemSlot:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 676
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSimInserted(Lcom/android/internal/telephony/ITelephony;I)Z
    .locals 3
    .parameter "telephony"
    .parameter "slotId"

    .prologue
    .line 733
    if-eqz p1, :cond_0

    .line 734
    :try_start_0
    invoke-interface {p1, p2}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 740
    :goto_0
    return v1

    .line 736
    :catch_0
    move-exception v0

    .line 737
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ManualNetworkSelection"

    const-string v2, "isSimInserted exception"

    invoke-static {v1, v2, v0}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 740
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadGsmNetworListImpl()V
    .locals 4

    .prologue
    .line 873
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadGsmNetworListImpl, mWaitDataDisconnected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mWaitDataDisconnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mTargetSlot = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V

    .line 875
    iget-boolean v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mIsForeground:Z

    if-eqz v0, :cond_0

    .line 876
    const/16 v0, 0x3ec

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 878
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mWaitDataDisconnected:Z

    if-nez v0, :cond_1

    .line 879
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->networkQuery()V

    .line 883
    :goto_0
    return-void

    .line 881
    :cond_1
    iget-object v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mDataDetachHandler:Landroid/os/Handler;

    const/16 v1, 0x7d1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private loadGsmNetworksList()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 851
    const-string v1, "loadGsmNetworksList..."

    invoke-direct {p0, v1}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V

    .line 854
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 855
    iget-object v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 856
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gprs_connection_setting"

    const-wide/16 v3, -0x4

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    long-to-int v1, v1

    add-int/lit8 v0, v1, -0x1

    .line 858
    .local v0, dataConnectionId:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadGsmNetworksList, dataConnectionId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mTargetSlot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V

    .line 859
    iget v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I

    if-eq v0, v1, :cond_0

    .line 860
    iput-boolean v5, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mForceDisableData:Z

    .line 861
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadGsmNetworksList, mForceDisableData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mForceDisableData:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V

    .line 862
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->setMobileDataEnabled(Z)V

    .line 863
    iput-boolean v5, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mWaitDataDisconnected:Z

    .line 868
    .end local v0           #dataConnectionId:I
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->loadGsmNetworListImpl()V

    .line 869
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1157
    const-string v0, "ManualNetworkSelection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MNWS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    return-void
.end method

.method private networkQuery()V
    .locals 3

    .prologue
    .line 886
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "networkQuery, mWaitDataDisconnected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mWaitDataDisconnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mTargetSlot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V

    .line 889
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v2, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v1, v2}, Lcom/android/phone/INetworkQueryService;->startNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 893
    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->displayEmptyNetworkList(Z)V

    .line 894
    return-void

    .line 890
    :catch_0
    move-exception v0

    .line 891
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ManualNetworkSelection"

    const-string v2, "RemoteException when startNetworkQuery."

    invoke-static {v1, v2, v0}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private processCdmaSelectNextNetworkManually(Landroid/telephony/ServiceState;)V
    .locals 6
    .parameter "serviceState"

    .prologue
    const/16 v5, 0xc9

    const/4 v4, 0x1

    .line 1241
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRegState()I

    move-result v1

    .line 1242
    .local v1, regState:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processCdmaSelectNextNetworkManually, mCdmaManuallyNetworkSelectState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mCdmaManuallyNetworkSelectState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mTargetSlot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " regState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V

    .line 1244
    iget v2, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mCdmaManuallyNetworkSelectState:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_2

    .line 1245
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1246
    iput v5, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mCdmaManuallyNetworkSelectState:I

    .line 1248
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processCdmaSelectNextNetworkManually, mCdmaManuallyNetworkSelectState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mCdmaManuallyNetworkSelectState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mTargetSlot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " regState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V

    .line 1260
    :cond_1
    :goto_0
    return-void

    .line 1250
    :cond_2
    iget v2, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mCdmaManuallyNetworkSelectState:I

    if-ne v2, v5, :cond_1

    if-eq v1, v4, :cond_3

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 1252
    :cond_3
    const/16 v2, 0xca

    iput v2, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mCdmaManuallyNetworkSelectState:I

    .line 1253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processCdmaSelectNextNetworkManually, mCdmaManuallyNetworkSelectState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mCdmaManuallyNetworkSelectState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mTargetSlot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " regState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " showDialog(DIALOG_SWITCH_NETWORK_REGISTERED)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V

    .line 1256
    const v2, 0x7f09005a

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "gsm.operator.alpha"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1258
    .local v0, message:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->showDialogAlert(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setMobileDataEnabled(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 1166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMobileDataEnabled, enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V

    .line 1167
    iget-object v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 1168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMobileDataEnabled, cm.setMobileDataEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V

    .line 1169
    iget-object v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 1171
    :cond_0
    return-void
.end method

.method private setTitleAndInitPreferences()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 397
    iget v2, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I

    if-nez v2, :cond_1

    const v1, 0x7f090129

    .line 399
    .local v1, slotResId:I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, simSlot:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090035

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 403
    const v2, 0x7f040004

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 405
    const-string v2, "cdma_network_selection"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mCdmaNetworkSelectionPref:Landroid/preference/Preference;

    .line 406
    const-string v2, "cdma_network_selectioin_detail"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;

    iput-object v2, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mCdmaNetworkSelectionDetailPref:Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;

    .line 407
    const-string v2, "gsm_sim1_network_selection"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    iput-object v2, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mGsm1NetworkSelectionPref:Landroid/preference/PreferenceGroup;

    .line 408
    const-string v2, "gsm_sim2_network_selection"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    iput-object v2, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mGsm2NetworkSelectionPref:Landroid/preference/PreferenceGroup;

    .line 409
    const-string v2, "key_notes"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mNotesPref:Landroid/preference/Preference;

    .line 411
    iget v2, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I

    if-nez v2, :cond_2

    .line 412
    iget-object v2, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mCdmaNetworkSelectionDetailPref:Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;

    invoke-virtual {v2, p0}, Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;->setOnPerformSwitchNetowrkListener(Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference$OnSwitchNetworkListener;)V

    .line 413
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mCdmaNetworkSelectionDetailPref:Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 414
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mGsm2NetworkSelectionPref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 421
    :cond_0
    :goto_1
    return-void

    .line 397
    .end local v0           #simSlot:Ljava/lang/String;
    .end local v1           #slotResId:I
    :cond_1
    const v1, 0x7f09012a

    goto :goto_0

    .line 415
    .restart local v0       #simSlot:Ljava/lang/String;
    .restart local v1       #slotResId:I
    :cond_2
    iget v2, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I

    if-ne v2, v6, :cond_0

    .line 416
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mCdmaNetworkSelectionPref:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 417
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mCdmaNetworkSelectionDetailPref:Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 418
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mGsm1NetworkSelectionPref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 419
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mNotesPref:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private showDialogAlert(Ljava/lang/String;)V
    .locals 5
    .parameter "message"

    .prologue
    .line 1096
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1097
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x2050130

    new-instance v4, Lcom/mediatek/settings/plugin/ManualNetworkSelection$9;

    invoke-direct {v4, p0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection$9;-><init>(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1104
    .local v1, dialog:Landroid/app/Dialog;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 1105
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1106
    return-void
.end method

.method private showToastAlert(Ljava/lang/String;)V
    .locals 1
    .parameter "status"

    .prologue
    .line 1109
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1110
    return-void
.end method

.method private startAndBindNetworkQueryService()V
    .locals 3

    .prologue
    .line 843
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/INetworkQueryService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 844
    .local v0, i:Landroid/content/Intent;
    const-string v1, "simId"

    iget v2, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 845
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 846
    iget-object v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 847
    return-void
.end method

.method private updateCarrierPreferenceCheckedState()V
    .locals 10

    .prologue
    .line 1040
    const-string v3, ""

    .line 1041
    .local v3, currentNumeric:Ljava/lang/String;
    const-string v2, ""

    .line 1042
    .local v2, currentNetworkType:Ljava/lang/String;
    iget v8, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I

    if-nez v8, :cond_1

    .line 1043
    const-string v8, "gsm.operator.numeric"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1045
    const-string v8, "gsm.cs.network.type"

    const-string v9, "-1"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1054
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->getRateForNetworkType(I)I

    move-result v1

    .line 1055
    .local v1, currentNetworkRate:I
    iget v8, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I

    invoke-direct {p0, v8}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->getGsmNetworkPref(I)Landroid/preference/PreferenceGroup;

    move-result-object v4

    .line 1056
    .local v4, gsmNetworkPref:Landroid/preference/PreferenceGroup;
    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v7

    .line 1057
    .local v7, preferenceCount:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateCarrierPreferenceCheckedState: currentNumeric = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",currentNetworkType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",currentNetworkRate = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", preferenceCount = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V

    .line 1060
    const/4 v5, 0x0

    .local v5, index:I
    :goto_1
    if-ge v5, v7, :cond_3

    .line 1061
    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v6

    .line 1062
    .local v6, pref:Landroid/preference/Preference;
    instance-of v8, v6, Lcom/mediatek/settings/plugin/CarrierRadioPreference;

    if-eqz v8, :cond_0

    move-object v0, v6

    .line 1063
    check-cast v0, Lcom/mediatek/settings/plugin/CarrierRadioPreference;

    .line 1064
    .local v0, carrierPref:Lcom/mediatek/settings/plugin/CarrierRadioPreference;
    invoke-virtual {v0}, Lcom/mediatek/settings/plugin/CarrierRadioPreference;->getCarrierNumeric()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v0}, Lcom/mediatek/settings/plugin/CarrierRadioPreference;->getCarrierRate()I

    move-result v8

    if-ne v1, v8, :cond_2

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {v0, v8}, Lcom/mediatek/settings/plugin/RadioPreference;->setChecked(Z)V

    .line 1060
    .end local v0           #carrierPref:Lcom/mediatek/settings/plugin/CarrierRadioPreference;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1048
    .end local v1           #currentNetworkRate:I
    .end local v4           #gsmNetworkPref:Landroid/preference/PreferenceGroup;
    .end local v5           #index:I
    .end local v6           #pref:Landroid/preference/Preference;
    .end local v7           #preferenceCount:I
    :cond_1
    const-string v8, "gsm.operator.numeric.2"

    const-string v9, "-1"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1050
    const-string v8, "gsm.cs.network.type.2"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1064
    .restart local v0       #carrierPref:Lcom/mediatek/settings/plugin/CarrierRadioPreference;
    .restart local v1       #currentNetworkRate:I
    .restart local v4       #gsmNetworkPref:Landroid/preference/PreferenceGroup;
    .restart local v5       #index:I
    .restart local v6       #pref:Landroid/preference/Preference;
    .restart local v7       #preferenceCount:I
    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    .line 1068
    .end local v0           #carrierPref:Lcom/mediatek/settings/plugin/CarrierRadioPreference;
    .end local v6           #pref:Landroid/preference/Preference;
    :cond_3
    return-void
.end method

.method private updateNetworkSelectionMode(I)V
    .locals 3
    .parameter "newMode"

    .prologue
    const/4 v2, 0x1

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateNetworkSelectionMode: mCurrentSelectionMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mCurrentSelectionMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",newMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTargetSlot = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V

    .line 616
    iget-boolean v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mIsExternalSlot:Z

    if-eqz v0, :cond_4

    .line 617
    if-nez p1, :cond_1

    .line 618
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mCurrentSelectionMode:I

    .line 619
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->clearGsmNetworkList()V

    .line 620
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->isExternalSlotInCdmaMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 621
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->enterCdmaNetworkMode()V

    .line 636
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->updateScreen()V

    .line 640
    :goto_1
    return-void

    .line 623
    :cond_1
    if-ne p1, v2, :cond_0

    .line 624
    iput v2, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mCurrentSelectionMode:I

    .line 625
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mCdmaNetworkSelectionDetailPref:Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 626
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->isExternalSlotInCdmaMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 627
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->enterGsmNetworkMode()V

    goto :goto_0

    .line 629
    :cond_2
    iget-object v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    if-nez v0, :cond_3

    .line 630
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->startAndBindNetworkQueryService()V

    goto :goto_0

    .line 632
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->loadGsmNetworksList()V

    goto :goto_0

    .line 638
    :cond_4
    const-string v0, "ManualNetworkSelection"

    const-string v1, "updateNetworkSelectionMode should not come here"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateScreen()V
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 424
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "airplane_mode_on"

    const/4 v10, -0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-lez v8, :cond_2

    move v2, v6

    .line 426
    .local v2, isAirplanMode:Z
    :goto_0
    const/4 v3, 0x0

    .line 428
    .local v3, isRadioOn:Z
    :try_start_0
    iget-object v8, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    iget v9, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I

    invoke-interface {v8, v9}, Lcom/android/internal/telephony/ITelephony;->isRadioOnGemini(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 435
    :goto_1
    if-eqz v3, :cond_8

    if-nez v2, :cond_8

    .line 436
    iget v8, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I

    if-nez v8, :cond_7

    .line 437
    invoke-static {}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->externalSlotInRoamingService()Z

    move-result v1

    .line 439
    .local v1, externalSlotInRoaming:Z
    iget-object v8, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mCdmaNetworkSelectionPref:Landroid/preference/Preference;

    invoke-virtual {v8, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 440
    iget-object v9, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mGsm1NetworkSelectionPref:Landroid/preference/PreferenceGroup;

    iget-boolean v8, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mIsDualModeCard:Z

    if-eqz v8, :cond_3

    if-eqz v1, :cond_3

    move v8, v6

    :goto_2
    invoke-virtual {v9, v8}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 441
    iget-object v8, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v9, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 442
    .local v5, phone:Lcom/android/internal/telephony/Phone;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateScreen: externalSlotInRoaming = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", phone = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V

    .line 444
    if-eqz v5, :cond_0

    .line 445
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    .line 446
    iget-object v6, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mCdmaNetworkSelectionDetailPref:Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;

    invoke-virtual {v6, v1}, Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;->updateSwitcherState(Z)V

    .line 460
    .end local v1           #externalSlotInRoaming:Z
    .end local v5           #phone:Lcom/android/internal/telephony/Phone;
    :cond_0
    :goto_3
    iget-object v6, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v6

    if-eqz v6, :cond_1

    .line 461
    iget-object v6, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mCdmaNetworkSelectionPref:Landroid/preference/Preference;

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 462
    iget-object v6, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mGsm1NetworkSelectionPref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 472
    :cond_1
    :goto_4
    return-void

    .end local v2           #isAirplanMode:Z
    .end local v3           #isRadioOn:Z
    :cond_2
    move v2, v7

    .line 424
    goto :goto_0

    .line 429
    .restart local v2       #isAirplanMode:Z
    .restart local v3       #isRadioOn:Z
    :catch_0
    move-exception v0

    .line 430
    .local v0, e:Landroid/os/RemoteException;
    const-string v8, "ManualNetworkSelection"

    const-string v9, "Telephony exception when querying radio state."

    invoke-static {v8, v9, v0}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #externalSlotInRoaming:Z
    :cond_3
    move v8, v7

    .line 440
    goto :goto_2

    .line 447
    .restart local v5       #phone:Lcom/android/internal/telephony/Phone;
    :cond_4
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    if-ne v8, v6, :cond_0

    .line 448
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getRegState()I

    move-result v8

    if-eq v8, v6, :cond_5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getRegState()I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_6

    :cond_5
    move v4, v6

    .line 450
    .local v4, isRegistered:Z
    :goto_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateScreen: GSM phone registered state = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V

    .line 453
    iget-object v6, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mCdmaNetworkSelectionDetailPref:Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;

    invoke-virtual {v6, v7}, Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;->updateSwitcherState(Z)V

    goto :goto_3

    .end local v4           #isRegistered:Z
    :cond_6
    move v4, v7

    .line 448
    goto :goto_5

    .line 456
    .end local v1           #externalSlotInRoaming:Z
    .end local v5           #phone:Lcom/android/internal/telephony/Phone;
    :cond_7
    iget v8, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I

    if-ne v8, v6, :cond_0

    .line 457
    iget-object v8, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mGsm2NetworkSelectionPref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8, v6}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    goto :goto_3

    .line 465
    :cond_8
    iget v8, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I

    if-nez v8, :cond_9

    .line 466
    iget-object v6, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mCdmaNetworkSelectionPref:Landroid/preference/Preference;

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 467
    iget-object v6, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mGsm1NetworkSelectionPref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    goto :goto_4

    .line 468
    :cond_9
    iget v8, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I

    if-ne v8, v6, :cond_1

    .line 469
    iget-object v6, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mGsm2NetworkSelectionPref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    goto :goto_4
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCancel, force quit gsm network network query. dialog = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V

    .line 606
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->forceQuitGSMNetworkQuery()V

    .line 607
    iget v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I

    iget v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mExModemSlot:I

    if-eq v0, v1, :cond_0

    .line 608
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 610
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 319
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 321
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "simId"

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I

    .line 322
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v1

    iput v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mExModemSlot:I

    .line 323
    iget v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I

    iget v4, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mExModemSlot:I

    if-ne v1, v4, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mIsExternalSlot:Z

    .line 325
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 327
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->setTitleAndInitPreferences()V

    .line 330
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 335
    iget-boolean v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mIsExternalSlot:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->isExternalSlotInCdmaMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 336
    iput v3, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mCurrentSelectionMode:I

    .line 341
    :goto_1
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    .line 342
    const-string v1, "phoneEx"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTelephonyEx:Lcom/mediatek/common/telephony/ITelephonyEx;

    .line 343
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 344
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    .line 345
    iget-object v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget-object v3, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x21

    iget v5, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I

    invoke-virtual {v1, v3, v4, v5}, Lcom/mediatek/telephony/TelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    .line 348
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 349
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 350
    const-string v1, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    const-string v1, "android.intent.action.ACTION_SIM_DETECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 352
    const-string v1, "com.mediatek.action.PS_DETACH_DONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    iget-object v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 358
    iget v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I

    iget v3, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mExModemSlot:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I

    if-ne v1, v2, :cond_0

    .line 359
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->startAndBindNetworkQueryService()V

    .line 362
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate: mTargetSlot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mExModemSlot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mExModemSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCurrentSelectionMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mCurrentSelectionMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V

    .line 364
    return-void

    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :cond_1
    move v1, v3

    .line 323
    goto/16 :goto_0

    .line 338
    :cond_2
    iput v2, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mCurrentSelectionMode:I

    goto/16 :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .parameter "id"

    .prologue
    const v8, 0x104000a

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 513
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 514
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x0

    .line 515
    .local v1, dialog:Landroid/app/Dialog;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateDialog: id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V

    .line 516
    packed-switch p1, :pswitch_data_0

    .line 579
    :goto_0
    return-object v1

    .line 518
    :pswitch_0
    const v3, 0x7f09005a

    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, "gsm.operator.alpha"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 520
    .local v2, message:Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/mediatek/settings/plugin/ManualNetworkSelection$3;

    invoke-direct {v4, p0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection$3;-><init>(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)V

    invoke-virtual {v3, v8, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 527
    invoke-virtual {v1, v6}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    goto :goto_0

    .line 531
    .end local v2           #message:Ljava/lang/String;
    :pswitch_1
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->getSwitchNetworkFailErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/mediatek/settings/plugin/ManualNetworkSelection$4;

    invoke-direct {v4, p0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection$4;-><init>(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)V

    invoke-virtual {v3, v8, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 538
    invoke-virtual {v1, v6}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    goto :goto_0

    .line 542
    :pswitch_2
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090060

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/mediatek/settings/plugin/ManualNetworkSelection$5;

    invoke-direct {v4, p0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection$5;-><init>(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)V

    invoke-virtual {v3, v8, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 549
    invoke-virtual {v1, v6}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    goto :goto_0

    .line 554
    :pswitch_3
    new-instance v1, Landroid/app/ProgressDialog;

    .end local v1           #dialog:Landroid/app/Dialog;
    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .restart local v1       #dialog:Landroid/app/Dialog;
    move-object v3, v1

    .line 555
    check-cast v3, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090065

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    move-object v3, v1

    .line 557
    check-cast v3, Landroid/app/ProgressDialog;

    invoke-virtual {v3, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    move-object v3, v1

    .line 558
    check-cast v3, Landroid/app/ProgressDialog;

    invoke-virtual {v3, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_0

    .line 562
    :pswitch_4
    new-instance v1, Landroid/app/ProgressDialog;

    .end local v1           #dialog:Landroid/app/Dialog;
    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .restart local v1       #dialog:Landroid/app/Dialog;
    move-object v3, v1

    .line 563
    check-cast v3, Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mSelectedNetworkText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    move-object v3, v1

    .line 564
    check-cast v3, Landroid/app/ProgressDialog;

    invoke-virtual {v3, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    move-object v3, v1

    .line 565
    check-cast v3, Landroid/app/ProgressDialog;

    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto/16 :goto_0

    .line 569
    :pswitch_5
    new-instance v1, Landroid/app/ProgressDialog;

    .end local v1           #dialog:Landroid/app/Dialog;
    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .restart local v1       #dialog:Landroid/app/Dialog;
    move-object v3, v1

    .line 570
    check-cast v3, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09005d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    move-object v3, v1

    .line 572
    check-cast v3, Landroid/app/ProgressDialog;

    invoke-virtual {v3, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    move-object v3, v1

    .line 573
    check-cast v3, Landroid/app/ProgressDialog;

    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto/16 :goto_0

    .line 516
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 384
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 386
    iget-object v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 387
    iget-object v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mCdmaNetworkSelectionDetailPref:Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;->setOnPerformSwitchNetowrkListener(Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference$OnSwitchNetworkListener;)V

    .line 388
    iget-object v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget-object v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    iget v3, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/telephony/TelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    .line 390
    iget-object v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 393
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 377
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 379
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mIsForeground:Z

    .line 380
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 476
    iget-object v4, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mCdmaNetworkSelectionPref:Landroid/preference/Preference;

    if-ne p2, v4, :cond_2

    .line 477
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceTreeClick cdma network selection, mTargetSlot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V

    .line 478
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "cdma_network_selectioin_detail"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-nez v4, :cond_0

    .line 479
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mCdmaNetworkSelectionDetailPref:Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 481
    :cond_0
    invoke-direct {p0, v6}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->updateNetworkSelectionMode(I)V

    .line 508
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    return v4

    .line 482
    :cond_2
    iget-object v4, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mGsm1NetworkSelectionPref:Landroid/preference/PreferenceGroup;

    if-ne p2, v4, :cond_3

    .line 483
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreferenceTreeClick gsm network selection, mTargetSlot = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V

    .line 484
    invoke-direct {p0, v5}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->updateNetworkSelectionMode(I)V

    goto :goto_0

    .line 485
    :cond_3
    instance-of v4, p2, Lcom/mediatek/settings/plugin/CarrierRadioPreference;

    if-eqz v4, :cond_1

    .line 486
    move-object v3, p2

    .line 487
    .local v3, selectedCarrier:Landroid/preference/Preference;
    invoke-virtual {v3}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 488
    .local v1, networkStr:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPreferenceTreeClick: selected network = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V

    .line 489
    iget-object v4, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mNetworkSelectionHandler:Landroid/os/Handler;

    const/16 v7, 0x65

    invoke-virtual {v4, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 491
    .local v0, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/OperatorInfo;

    .line 492
    .local v2, ni:Lcom/android/internal/telephony/OperatorInfo;
    iget-object v4, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v7, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I

    invoke-virtual {v4, v2, v0, v7}, Lcom/android/internal/telephony/gemini/GeminiPhone;->selectNetworkManuallyGemini(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;I)V

    .line 493
    invoke-virtual {v2}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mSelectedNetwork:Ljava/lang/String;

    .line 497
    iget v4, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I

    if-nez v4, :cond_4

    .line 498
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[IRC] onPreferenceTreeClick blockSwitchPhone for network selecton ni.state="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/internal/telephony/OperatorInfo;->getState()Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", flag="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/internal/telephony/OperatorInfo;->getState()Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v4

    sget-object v8, Lcom/android/internal/telephony/OperatorInfo$State;->FORBIDDEN:Lcom/android/internal/telephony/OperatorInfo$State;

    if-ne v4, v8, :cond_5

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V

    .line 500
    iget-object v4, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->blockSwitchPhoneDuringManualSelection(Z)V

    .line 505
    :cond_4
    invoke-static {p0, v6}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->setGsmAutoNetowrkSelection(Landroid/content/Context;Z)V

    .line 506
    invoke-direct {p0, v1}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->displayNetworkSeletionInProgress(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    move v4, v6

    .line 498
    goto :goto_1
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 6
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 584
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 585
    const/4 v0, 0x0

    .line 586
    .local v0, alertDialog:Landroid/app/AlertDialog;
    packed-switch p1, :pswitch_data_0

    .line 601
    :goto_0
    return-void

    .line 588
    :pswitch_0
    const v2, 0x7f09005a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "gsm.operator.alpha"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, message:Ljava/lang/String;
    move-object v0, p2

    .line 590
    check-cast v0, Landroid/app/AlertDialog;

    .line 591
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .end local v1           #message:Ljava/lang/String;
    :pswitch_1
    move-object v0, p2

    .line 595
    check-cast v0, Landroid/app/AlertDialog;

    .line 596
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->getSwitchNetworkFailErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 586
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 368
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 370
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mIsForeground:Z

    .line 371
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->isDualModeCard()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mIsDualModeCard:Z

    .line 372
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->updateScreen()V

    .line 373
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 1175
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 1176
    const-string v0, "onStop, force quit gsm network network query."

    invoke-direct {p0, v0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V

    .line 1177
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->forceQuitGSMNetworkQuery()V

    .line 1178
    return-void
.end method

.method public onSwitchNetwork()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1114
    iget-object v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabledGemini(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1116
    const-string v1, "onSwitchNetwork: because the CDMA data connected, will not switch the network. show dialog DIALOG_SWITCH_CDMA_NETWORK_FAILED_DATA_CONNECT."

    invoke-direct {p0, v1}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V

    .line 1117
    const/16 v1, 0x3ee

    invoke-virtual {p0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 1130
    :goto_0
    return-void

    .line 1121
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->getCDMAPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 1122
    .local v0, cdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;
    if-eqz v0, :cond_1

    .line 1123
    iget-object v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mCdmaAvoidListHandler:Landroid/os/Handler;

    const/16 v2, 0xc9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setAvoidSYS(ZLandroid/os/Message;)V

    .line 1124
    const-string v1, "onSwitchNetwork: update network searching state to true."

    invoke-direct {p0, v1}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V

    .line 1125
    iget-object v1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mCdmaNetworkSelectionDetailPref:Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;

    invoke-virtual {v1, v3}, Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;->updateNetworkSearchingState(Z)V

    goto :goto_0

    .line 1127
    :cond_1
    const-string v1, "onSwitchNetwork can\'t get cdma phone, error is happened"

    invoke-direct {p0, v1}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V

    .line 1128
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->showToastAlert(Ljava/lang/String;)V

    goto :goto_0
.end method
