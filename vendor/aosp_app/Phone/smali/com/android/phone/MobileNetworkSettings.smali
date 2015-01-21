.class public Lcom/android/phone/MobileNetworkSettings;
.super Landroid/preference/PreferenceActivity;
.source "MobileNetworkSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MobileNetworkSettings$MyHandler;
    }
.end annotation


# static fields
.field private static final ACTION_DATA_USAGE_DISABLED_DIALOG_OK:Ljava/lang/String; = "com.mediatek.systemui.net.action.ACTION_DATA_USAGE_DISABLED_DIALOG_OK"

.field private static final BUTTON_3G_SERVICE:Ljava/lang/String; = "button_3g_service_key"

.field private static final BUTTON_ACTIVATE_DEVICE:Ljava/lang/String; = "cdma_activate_device_key"

.field private static final BUTTON_APN:Ljava/lang/String; = "button_apn_key"

.field private static final BUTTON_CARRIER_SEL:Ljava/lang/String; = "button_carrier_sel_key"

.field private static final BUTTON_CDMA_LTE_DATA_SERVICE_KEY:Ljava/lang/String; = "cdma_lte_data_service_key"

.field private static final BUTTON_CDMA_OPTIONS:Ljava/lang/String; = "cdma_options_key"

.field private static final BUTTON_DATA_ENABLED_KEY:Ljava/lang/String; = "button_data_enabled_key"

.field private static final BUTTON_DATA_USAGE_KEY:Ljava/lang/String; = "button_data_usage_key"

.field private static final BUTTON_GSM_UMTS_OPTIONS:Ljava/lang/String; = "gsm_umts_options_key"

.field private static final BUTTON_NETWORK_MODE_EX_KEY:Ljava/lang/String; = "button_network_mode_ex_key"

.field private static final BUTTON_NETWORK_MODE_KEY:Ljava/lang/String; = "gsm_umts_preferred_network_mode_key"

.field private static final BUTTON_PLMN_LIST:Ljava/lang/String; = "button_plmn_key"

.field private static final BUTTON_PREFERED_NETWORK_MODE:Ljava/lang/String; = "preferred_network_mode_key"

.field private static final BUTTON_ROAMING_KEY:Ljava/lang/String; = "button_roaming_key"

.field private static final DATA_DISABLE_ALERT_DIALOG:I = 0xc8

.field private static final DATA_ENABLE_ALERT_DIALOG:I = 0x64

.field public static final DATA_STATE_CHANGE_TIMEOUT:I = 0x7d1

.field private static final DBG:Z = true

.field private static final DIALOG_GPRS_SWITCH_CONFIRM:I = 0x1

.field private static final IFACE:Ljava/lang/String; = "rmnet0"

.field private static final KEY_DATA_CONN:Ljava/lang/String; = "data_connection_setting"

.field private static final LOG_TAG:Ljava/lang/String; = "NetworkSettings"

.field private static final PREFERRED_NETWORK_MODE:I = 0x0

.field public static final REQUEST_CODE_EXIT_ECM:I = 0x11

.field public static final RESET_DATA_CONNECTION:I = 0x7d2

.field private static final ROAMING_DIALOG:I = 0x12c

.field private static final UP_ACTIVITY_CLASS:Ljava/lang/String; = "com.android.settings.Settings$WirelessSettingsActivity"

.field private static final UP_ACTIVITY_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static final VIDEO_CALL_OFF:I = -0x1


# instance fields
.field private mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

.field private mButtonDataRoam:Landroid/preference/CheckBoxPreference;

.field private mButtonDataUsage:Landroid/preference/Preference;

.field private mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

.field private mButtonPreferredNetworkModeEx:Landroid/preference/Preference;

.field private mCarrierSelPref:Landroid/preference/PreferenceScreen;

.field mCdmaOptions:Lcom/android/phone/CdmaOptions;

.field private mClickedPreference:Landroid/preference/Preference;

.field private mConnService:Landroid/net/ConnectivityManager;

.field private mDataConnPref:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

.field private mDataConnectionExt:Lcom/mediatek/phone/ext/IDataConnection;

.field private mDataSwitchMsgIndex:I

.field private mDataUsageListener:Lcom/android/phone/DataUsageListener;

.field private mExtension:Lcom/mediatek/phone/ext/SettingsExtension;

.field private mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

.field private mGprsDefaultSIMObserver:Landroid/database/ContentObserver;

.field mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

.field private mITelephony:Lcom/android/internal/telephony/ITelephony;

.field private mIndicatorSlotId:I

.field private mIndicatorState:I

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIs3GSwitchManualEnabled:Z

.field private mIsChangeData:Z

.field private mLteDataServicePref:Landroid/preference/Preference;

.field private mManualAllowedSlot:Z

.field private mNetworkHandler:Lcom/mediatek/settings/NetWorkHandler;

.field private mOkClicked:Z

.field private mPLMNPreference:Landroid/preference/Preference;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreCheckForRunning:Lcom/mediatek/settings/PreCheckForRunning;

.field private mPreference3GSwitch:Landroid/preference/Preference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSelectedGprsSimId:J

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

.field private mSlotId:I

.field private mTargetPreference:Landroid/preference/Preference;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field mTimeoutHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 125
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mDataConnPref:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    .line 210
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/MobileNetworkSettings;->mDataSwitchMsgIndex:I

    .line 211
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/phone/MobileNetworkSettings;->mSelectedGprsSimId:J

    .line 217
    iput-boolean v2, p0, Lcom/android/phone/MobileNetworkSettings;->mIs3GSwitchManualEnabled:Z

    .line 221
    new-instance v0, Lcom/android/phone/MobileNetworkSettings$1;

    invoke-direct {v0, p0}, Lcom/android/phone/MobileNetworkSettings$1;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 236
    new-instance v0, Lcom/android/phone/MobileNetworkSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/MobileNetworkSettings$2;-><init>(Lcom/android/phone/MobileNetworkSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGprsDefaultSIMObserver:Landroid/database/ContentObserver;

    .line 246
    new-instance v0, Lcom/android/phone/MobileNetworkSettings$3;

    invoke-direct {v0, p0}, Lcom/android/phone/MobileNetworkSettings$3;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 307
    iput-boolean v2, p0, Lcom/android/phone/MobileNetworkSettings;->mIsChangeData:Z

    .line 308
    new-instance v0, Lcom/android/phone/MobileNetworkSettings$4;

    invoke-direct {v0, p0}, Lcom/android/phone/MobileNetworkSettings$4;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mTimeoutHandler:Landroid/os/Handler;

    .line 720
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 125
    invoke-static {p0}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/MobileNetworkSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->updateScreenStatus()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/MobileNetworkSettings;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/phone/MobileNetworkSettings;)Lcom/mediatek/gemini/simui/SimSelectDialogPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mDataConnPref:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/MobileNetworkSettings;Landroid/preference/Preference;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lcom/android/phone/MobileNetworkSettings;->updatePreference(Landroid/preference/Preference;Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/MobileNetworkSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget v0, p0, Lcom/android/phone/MobileNetworkSettings;->mSlotId:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/phone/MobileNetworkSettings;)Lcom/android/internal/telephony/gemini/GeminiPhone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/phone/MobileNetworkSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget v0, p0, Lcom/android/phone/MobileNetworkSettings;->mDataSwitchMsgIndex:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/phone/MobileNetworkSettings;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/android/phone/MobileNetworkSettings;->mSelectedGprsSimId:J

    return-wide v0
.end method

.method static synthetic access$1800(Lcom/android/phone/MobileNetworkSettings;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lcom/android/phone/MobileNetworkSettings;->enableDataRoaming(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/phone/MobileNetworkSettings;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lcom/android/phone/MobileNetworkSettings;->switchGprsDefaultSIM(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/MobileNetworkSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/phone/MobileNetworkSettings;->updateDataConnPref(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/MobileNetworkSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/phone/MobileNetworkSettings;->mIsChangeData:Z

    return v0
.end method

.method static synthetic access$400(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    invoke-static {p0}, Lcom/android/phone/MobileNetworkSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/MobileNetworkSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->setNetworkOperator()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/MobileNetworkSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget v0, p0, Lcom/android/phone/MobileNetworkSettings;->mIndicatorState:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/phone/MobileNetworkSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput p1, p0, Lcom/android/phone/MobileNetworkSettings;->mIndicatorState:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/phone/MobileNetworkSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget v0, p0, Lcom/android/phone/MobileNetworkSettings;->mIndicatorSlotId:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/phone/MobileNetworkSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput p1, p0, Lcom/android/phone/MobileNetworkSettings;->mIndicatorSlotId:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/phone/MobileNetworkSettings;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mSimInfoList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/phone/MobileNetworkSettings;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/phone/MobileNetworkSettings;->mSimInfoList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/phone/MobileNetworkSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->initDataConnPref()V

    return-void
.end method

.method private dataSwitchConfirmDlgMsg(J)I
    .locals 11
    .parameter "simid"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1068
    const/4 v5, 0x0

    .line 1069
    .local v5, siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mSimInfoList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 1070
    .local v4, simInfoRecord:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget-wide v9, v4, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    cmp-long v9, p1, v9

    if-nez v9, :cond_0

    .line 1071
    move-object v5, v4

    goto :goto_0

    .line 1077
    .end local v4           #simInfoRecord:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_1
    iget-boolean v9, p0, Lcom/android/phone/MobileNetworkSettings;->mIs3GSwitchManualEnabled:Z

    if-eqz v9, :cond_2

    iget-boolean v9, p0, Lcom/android/phone/MobileNetworkSettings;->mManualAllowedSlot:Z

    if-eqz v9, :cond_2

    move v2, v7

    .line 1080
    .local v2, isManualAndSlodEnabled:Z
    :goto_1
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v6

    .line 1081
    .local v6, telephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    iget v9, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {v6, v9}, Lcom/mediatek/telephony/TelephonyManagerEx;->isNetworkRoaming(I)Z

    move-result v1

    .line 1082
    .local v1, isInRoaming:Z
    iget v9, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDataRoaming:I

    if-ne v9, v7, :cond_3

    move v3, v7

    .line 1083
    .local v3, isRoamingDataAllowed:Z
    :goto_2
    const-string v7, "NetworkSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isInRoaming="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isRoamingDataAllowed="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    if-eqz v1, :cond_4

    .line 1087
    if-nez v3, :cond_4

    .line 1103
    const v7, 0x7f080126

    .line 1123
    :goto_3
    return v7

    .end local v1           #isInRoaming:Z
    .end local v2           #isManualAndSlodEnabled:Z
    .end local v3           #isRoamingDataAllowed:Z
    .end local v6           #telephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    :cond_2
    move v2, v8

    .line 1077
    goto :goto_1

    .restart local v1       #isInRoaming:Z
    .restart local v2       #isManualAndSlodEnabled:Z
    .restart local v6       #telephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    :cond_3
    move v3, v8

    .line 1082
    goto :goto_2

    .line 1123
    .restart local v3       #isRoamingDataAllowed:Z
    :cond_4
    const/4 v7, -0x1

    goto :goto_3
.end method

.method private enableDataRoaming(J)Z
    .locals 6
    .parameter "simId"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1132
    invoke-static {p0, p1, p2}, Lcom/mediatek/telephony/SimInfoManager;->getSlotById(Landroid/content/Context;J)I

    move-result v1

    .line 1133
    .local v1, slotId:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableDataRoaming with SimId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", slotId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 1134
    invoke-static {v1}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1136
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    const/4 v5, 0x1

    invoke-interface {v4, v5, v1}, Lcom/android/internal/telephony/ITelephony;->setDataRoamingEnabledGemini(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1141
    invoke-static {p0, v2, p1, p2}, Lcom/mediatek/telephony/SimInfoManager;->setDataRoaming(Landroid/content/Context;IJ)I

    .line 1144
    :goto_0
    return v2

    .line 1137
    :catch_0
    move-exception v0

    .line 1138
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "iTelephony exception"

    invoke-static {v2}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    move v2, v3

    .line 1139
    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    move v2, v3

    .line 1144
    goto :goto_0
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 2
    .parameter "intent"

    .prologue
    .line 1010
    const-string v1, "state"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1011
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1012
    const-class v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 1014
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0
.end method

.method private initCommonUI()V
    .locals 10

    .prologue
    const v9, 0x7f08010d

    .line 1246
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 1247
    .local v6, root:Landroid/preference/PreferenceScreen;
    const-string v7, "button_data_enabled_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    .line 1248
    const-string v7, "button_data_usage_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataUsage:Landroid/preference/Preference;

    .line 1251
    new-instance v7, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-direct {v7, p0}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mDataConnPref:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    .line 1252
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mDataConnPref:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    const-string v8, "data_connection_setting"

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1253
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mDataConnPref:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setTitle(I)V

    .line 1254
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mDataConnPref:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v7, v9}, Landroid/preference/DialogPreference;->setDialogTitle(I)V

    .line 1255
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mDataConnPref:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v7, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1256
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->initDataConnPref()V

    .line 1257
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/Preference;->getOrder()I

    move-result v0

    .line 1258
    .local v0, dataEnabledOrder:I
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mDataConnPref:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setOrder(I)V

    .line 1259
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mDataConnPref:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1262
    new-instance v5, Landroid/preference/Preference;

    invoke-direct {v5, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 1263
    .local v5, networkModeExPref:Landroid/preference/Preference;
    const-string v7, "button_network_mode_ex_key"

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1264
    const v7, 0x7f0801da

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setTitle(I)V

    .line 1265
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataUsage:Landroid/preference/Preference;

    invoke-virtual {v7}, Landroid/preference/Preference;->getOrder()I

    move-result v1

    .line 1266
    .local v1, dataUsageOrder:I
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setOrder(I)V

    .line 1267
    invoke-virtual {v6, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1270
    new-instance v4, Landroid/preference/Preference;

    invoke-direct {v4, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 1271
    .local v4, modemSwitchPref:Landroid/preference/Preference;
    const-string v7, "button_3g_service_key"

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1272
    const v7, 0x7f0800a3

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setTitle(I)V

    .line 1273
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1274
    .local v2, intent3GSwitch:Landroid/content/Intent;
    const-string v7, "com.android.phone"

    const-string v8, "com.mediatek.settings.Modem3GCapabilitySwitch"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1275
    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 1276
    invoke-virtual {v6, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1279
    new-instance v7, Landroid/preference/Preference;

    invoke-direct {v7, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mPLMNPreference:Landroid/preference/Preference;

    .line 1280
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mPLMNPreference:Landroid/preference/Preference;

    const-string v8, "button_plmn_key"

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1281
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mPLMNPreference:Landroid/preference/Preference;

    const v8, 0x7f08010e

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setTitle(I)V

    .line 1282
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1283
    .local v3, intentPlmn:Landroid/content/Intent;
    const-string v7, "com.android.phone"

    const-string v8, "com.mediatek.settings.PLMNListPreference"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1284
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mPLMNPreference:Landroid/preference/Preference;

    invoke-virtual {v7, v3}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 1285
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mPLMNPreference:Landroid/preference/Preference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1288
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1289
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataUsage:Landroid/preference/Preference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1290
    return-void
.end method

.method private initDataConnPref()V
    .locals 8

    .prologue
    .line 1298
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mSimInfoList:Ljava/util/List;

    .line 1299
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mSimInfoList:Ljava/util/List;

    new-instance v7, Lcom/mediatek/gemini/simui/CommonUtils$SIMInfoComparable;

    invoke-direct {v7}, Lcom/mediatek/gemini/simui/CommonUtils$SIMInfoComparable;-><init>()V

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1300
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1301
    .local v4, simIndicatorList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1302
    .local v0, entryValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1303
    .local v2, itemStatus:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mSimInfoList:Ljava/util/List;

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

    .line 1304
    .local v5, siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget v6, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-static {p0, v6}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSimIndicator(Landroid/content/Context;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1305
    iget-wide v6, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1306
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1308
    .end local v5           #siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1309
    .local v3, normalListGprs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mSimInfoList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 1310
    const v6, 0x7f0800a1

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1311
    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1313
    :cond_1
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mDataConnPref:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mSimInfoList:Ljava/util/List;

    invoke-virtual {v6, v7, v4, v3, v2}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEntriesData(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 1314
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mDataConnPref:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v6, v0}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEntryValues(Ljava/util/List;)V

    .line 1315
    return-void
.end method

.method private initIntentFilter()V
    .locals 2

    .prologue
    .line 1149
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 1150
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1151
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_EF_CSP_CONTENT_NOTIFY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1153
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1157
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1158
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.phone.NETWORK_MODE_CHANGE_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1159
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1160
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.mms.transaction.START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1161
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.mms.transaction.STOP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1162
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.mediatek.systemui.net.action.ACTION_DATA_USAGE_DISABLED_DIALOG_OK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1164
    return-void
.end method

.method private initPhoneAndTelephony()V
    .locals 4

    .prologue
    .line 1167
    invoke-static {}, Lcom/mediatek/phone/ext/ExtensionManager;->getInstance()Lcom/mediatek/phone/ext/ExtensionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/phone/ext/ExtensionManager;->getSettingsExtension()Lcom/mediatek/phone/ext/SettingsExtension;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mExtension:Lcom/mediatek/phone/ext/SettingsExtension;

    .line 1169
    invoke-static {p0}, Lcom/mediatek/phone/ext/ExtensionManager;->getDataConnectionPlugin(Landroid/content/Context;)Lcom/mediatek/phone/ext/IDataConnection;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mDataConnectionExt:Lcom/mediatek/phone/ext/IDataConnection;

    .line 1170
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1173
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1174
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 1177
    :cond_0
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    .line 1178
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    if-nez v1, :cond_1

    .line 1179
    const-string v1, "NetworkSettings"

    const-string v2, "ITelephony initilize failed!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->is3GSwitchManualEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/MobileNetworkSettings;->mIs3GSwitchManualEnabled:Z

    .line 1185
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->is3GSwitchManualChange3GAllowed()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/MobileNetworkSettings;->mManualAllowedSlot:Z

    .line 1186
    const-string v1, "NetworkSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIs3GSwitchManualEnabled, mManualAllowedSlot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/MobileNetworkSettings;->mIs3GSwitchManualEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/MobileNetworkSettings;->mManualAllowedSlot:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1192
    :goto_0
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1193
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1194
    return-void

    .line 1188
    :catch_0
    move-exception v0

    .line 1189
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "NetworkSettings"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initPreferenceForMobileNetwork(Landroid/preference/PreferenceScreen;)V
    .locals 4
    .parameter "root"

    .prologue
    const/4 v3, 0x0

    .line 1198
    const-string v1, "gsm_umts_preferred_network_mode_key"

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    .line 1199
    const-string v1, "button_carrier_sel_key"

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mCarrierSelPref:Landroid/preference/PreferenceScreen;

    .line 1202
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1205
    .local v0, settingsNetworkMode:I
    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 1206
    const/4 v0, 0x0

    .line 1207
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1211
    :cond_0
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1212
    const-string v1, "3G_SWITCH"

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isSupportFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1213
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mPreference3GSwitch:Landroid/preference/Preference;

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1216
    invoke-static {v3}, Lcom/mediatek/phone/gemini/GeminiUtils;->getBaseband(I)I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_4

    .line 1217
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1218
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1238
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-eqz v1, :cond_2

    .line 1239
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1241
    :cond_2
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mExtension:Lcom/mediatek/phone/ext/SettingsExtension;

    invoke-virtual {v1, p1}, Lcom/mediatek/phone/ext/SettingsExtension;->customizeFeatureForOperator(Landroid/preference/PreferenceScreen;)V

    .line 1243
    return-void

    .line 1220
    :cond_3
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkModeEx:Landroid/preference/Preference;

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 1225
    :cond_4
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkModeEx:Landroid/preference/Preference;

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1226
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 1230
    :cond_5
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkModeEx:Landroid/preference/Preference;

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1231
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1233
    iget-boolean v1, p0, Lcom/android/phone/MobileNetworkSettings;->mIs3GSwitchManualEnabled:Z

    if-nez v1, :cond_1

    .line 1234
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mPreference3GSwitch:Landroid/preference/Preference;

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 869
    const-string v0, "NetworkSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    return-void
.end method

.method private setNetworkOperator()V
    .locals 6

    .prologue
    .line 996
    const/4 v1, 0x0

    .line 997
    .local v1, isShowPlmn:Z
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 998
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 999
    .local v3, sims:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 1000
    .local v2, sim:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v5, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isCspPlmnEnabled(I)Z

    move-result v4

    or-int/2addr v1, v4

    goto :goto_0

    .line 1003
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #sim:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .end local v3           #sims:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    :cond_0
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->isCspPlmnEnabled()Z

    move-result v1

    .line 1005
    :cond_1
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mExtension:Lcom/mediatek/phone/ext/SettingsExtension;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/mediatek/phone/ext/SettingsExtension;->removeNMOp(Landroid/preference/PreferenceScreen;Z)V

    .line 1006
    return-void
.end method

.method private switchGprsDefaultSIM(J)V
    .locals 11
    .parameter "simid"

    .prologue
    const/4 v3, 0x0

    const-wide/16 v9, 0x0

    const/4 v5, 0x1

    .line 913
    const-string v6, "NetworkSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "switchGprsDefaultSIM() with simid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    const/4 v6, -0x1

    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mSimInfoList:Ljava/util/List;

    invoke-static {p1, p2, v7}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSimSlotIdBySimInfoId(JLjava/util/List;)I

    move-result v7

    if-eq v6, v7, :cond_2

    move v4, v5

    .line 915
    .local v4, isSimInsertedIn:Z
    :goto_0
    cmp-long v6, p1, v9

    if-ltz v6, :cond_0

    cmp-long v6, p1, v9

    if-lez v6, :cond_3

    if-nez v4, :cond_3

    .line 916
    :cond_0
    const-string v5, "NetworkSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "simid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not available anymore"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    :cond_1
    :goto_1
    return-void

    .end local v4           #isSimInsertedIn:Z
    :cond_2
    move v4, v3

    .line 914
    goto :goto_0

    .line 919
    .restart local v4       #isSimInsertedIn:Z
    :cond_3
    cmp-long v6, p1, v9

    if-lez v6, :cond_4

    move v3, v5

    .line 921
    .local v3, isConnect:Z
    :cond_4
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "gprs_connection_sim_setting"

    const-wide/16 v8, -0x5

    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 924
    .local v0, curConSimId:J
    const-string v6, "NetworkSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "curConSimId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    cmp-long v6, p1, v0

    if-eqz v6, :cond_1

    .line 928
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.DATA_DEFAULT_SIM"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 929
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "simid"

    invoke-virtual {v2, v6, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 932
    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 933
    const/16 v6, 0x190

    invoke-virtual {p0, v6}, Landroid/app/Activity;->showDialog(I)V

    .line 934
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mTimeoutHandler:Landroid/os/Handler;

    const/16 v8, 0x7d1

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0x7530

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 935
    iput-boolean v5, p0, Lcom/android/phone/MobileNetworkSettings;->mIsChangeData:Z

    goto :goto_1
.end method

.method private updateDataConnPref(Z)V
    .locals 6
    .parameter "isRemoveDialog"

    .prologue
    .line 1322
    if-eqz p1, :cond_0

    .line 1323
    const/16 v2, 0x190

    invoke-virtual {p0, v2}, Landroid/app/Activity;->removeDialog(I)V

    .line 1324
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/phone/MobileNetworkSettings;->mIsChangeData:Z

    .line 1328
    :cond_0
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mSimInfoList:Ljava/util/List;

    .line 1329
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mSimInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 1330
    const-string v2, "NetworkSettings"

    const-string v3, "updateDataConnPref, the siminfolist size is empty"

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    :goto_0
    return-void

    .line 1334
    :cond_1
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mDataConnPref:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    iget v3, p0, Lcom/android/phone/MobileNetworkSettings;->mIndicatorSlotId:I

    iget v4, p0, Lcom/android/phone/MobileNetworkSettings;->mIndicatorState:I

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->updateSimIndicator(II)V

    .line 1335
    const-wide/16 v0, 0x0

    .line 1337
    .local v0, simid:J
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gprs_connection_sim_setting"

    const-wide/16 v4, -0x5

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 1345
    const-string v2, "NetworkSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Gprs connection SIM changed with simid is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mDataConnPref:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v2, v0, v1}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setValue(J)V

    goto :goto_0
.end method

.method private updatePreference(Landroid/preference/Preference;Z)V
    .locals 4
    .parameter "preference"
    .parameter "isEnable"

    .prologue
    .line 1053
    if-eqz p1, :cond_0

    .line 1054
    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1056
    :cond_0
    instance-of v1, p1, Landroid/preference/DialogPreference;

    if-eqz v1, :cond_1

    .line 1057
    check-cast p1, Landroid/preference/DialogPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 1058
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1059
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1063
    .end local v0           #dialog:Landroid/app/Dialog;
    :cond_1
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mExtension:Lcom/mediatek/phone/ext/SettingsExtension;

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {p0}, Lcom/mediatek/phone/gemini/GeminiUtils;->isAllRadioOff(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v1, p0, v2, v3}, Lcom/mediatek/phone/ext/SettingsExtension;->disableNetworkSelectionPrefs(Landroid/preference/PreferenceActivity;Lcom/android/internal/telephony/Phone;Z)V

    .line 1065
    return-void
.end method

.method private updateScreenStatus()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1020
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v7

    if-nez v7, :cond_1

    move v1, v5

    .line 1021
    .local v1, isIdle:Z
    :goto_0
    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/mediatek/phone/gemini/GeminiUtils;->isAllRadioOff(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_2

    move v2, v5

    .line 1023
    .local v2, isShouldEnabled:Z
    :goto_1
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 1025
    if-nez v2, :cond_3

    .line 1026
    invoke-virtual {p0, v5}, Landroid/app/Activity;->removeDialog(I)V

    .line 1028
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mDataConnPref:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v5}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1029
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mDataConnPref:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v5}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 1049
    :cond_0
    :goto_2
    return-void

    .end local v1           #isIdle:Z
    .end local v2           #isShouldEnabled:Z
    :cond_1
    move v1, v6

    .line 1020
    goto :goto_0

    .restart local v1       #isIdle:Z
    :cond_2
    move v2, v6

    .line 1021
    goto :goto_1

    .line 1035
    .restart local v2       #isShouldEnabled:Z
    :cond_3
    const/4 v0, 0x1

    .line 1036
    .local v0, isConnEnable:Z
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mConnService:Landroid/net/ConnectivityManager;

    if-eqz v7, :cond_4

    .line 1037
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mConnService:Landroid/net/ConnectivityManager;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1038
    .local v3, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_4

    .line 1039
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    .line 1040
    .local v4, state:Landroid/net/NetworkInfo$State;
    if-eqz v2, :cond_5

    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v4, v7, :cond_5

    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v4, v7, :cond_5

    move v0, v5

    .line 1043
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mms state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 1046
    .end local v3           #networkInfo:Landroid/net/NetworkInfo;
    .end local v4           #state:Landroid/net/NetworkInfo$State;
    :cond_4
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mDataConnPref:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-direct {p0, v5, v0}, Lcom/android/phone/MobileNetworkSettings;->updatePreference(Landroid/preference/Preference;Z)V

    .line 1048
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->updateNetworkModePreference()V

    goto :goto_2

    .restart local v3       #networkInfo:Landroid/net/NetworkInfo;
    .restart local v4       #state:Landroid/net/NetworkInfo$State;
    :cond_5
    move v0, v6

    .line 1040
    goto :goto_3
.end method


# virtual methods
.method public isHas3GCapabilitySimCard()Z
    .locals 5

    .prologue
    .line 1380
    const/4 v2, 0x0

    .line 1381
    .local v2, result:Z
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v1, v4, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    .line 1383
    .local v1, iTelephony:Lcom/android/internal/telephony/ITelephony;
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->get3GCapabilitySIM()I

    move-result v3

    .line 1384
    .local v3, slot:I
    invoke-interface {v1, v3}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3, p0}, Lcom/mediatek/phone/gemini/GeminiUtils;->isRadioOffBySlot(ILandroid/content/Context;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    const/4 v2, 0x1

    .line 1388
    .end local v3           #slot:I
    :goto_0
    return v2

    .line 1384
    .restart local v3       #slot:I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1385
    .end local v3           #slot:I
    :catch_0
    move-exception v0

    .line 1386
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "RemoteException happens)"

    invoke-static {v4}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, -0x1

    .line 845
    sparse-switch p1, :sswitch_data_0

    .line 866
    :cond_0
    :goto_0
    return-void

    .line 847
    :sswitch_0
    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 849
    .local v0, isChoiceYes:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 851
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mClickedPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Lcom/android/phone/CdmaOptions;->showDialog(Landroid/preference/Preference;)V

    goto :goto_0

    .line 855
    .end local v0           #isChoiceYes:Ljava/lang/Boolean;
    :sswitch_1
    if-ne v2, p2, :cond_1

    .line 856
    const-string v1, "simId"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/MobileNetworkSettings;->mSlotId:I

    .line 858
    :cond_1
    const-string v1, "NetworkSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSlotId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/MobileNetworkSettings;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    iget v1, p0, Lcom/android/phone/MobileNetworkSettings;->mSlotId:I

    invoke-static {v1}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 860
    iget v1, p0, Lcom/android/phone/MobileNetworkSettings;->mSlotId:I

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mTargetPreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mPreCheckForRunning:Lcom/mediatek/settings/PreCheckForRunning;

    invoke-static {v1, v2, v3}, Lcom/mediatek/phone/gemini/GeminiUtils;->startActivity(ILandroid/preference/Preference;Lcom/mediatek/settings/PreCheckForRunning;)V

    goto :goto_0

    .line 845
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    .line 319
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 321
    iput-boolean v1, p0, Lcom/android/phone/MobileNetworkSettings;->mOkClicked:Z

    .line 326
    :goto_0
    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    .line 450
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 452
    const v0, 0x7f060013

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 455
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->initCommonUI()V

    .line 457
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->initPhoneAndTelephony()V

    .line 458
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->initIntentFilter()V

    .line 459
    new-instance v0, Lcom/mediatek/settings/PreCheckForRunning;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/PreCheckForRunning;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPreCheckForRunning:Lcom/mediatek/settings/PreCheckForRunning;

    .line 460
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v8

    .line 463
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 465
    .local v2, prefSet:Landroid/preference/PreferenceScreen;
    const-string v0, "button_data_enabled_key"

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    .line 466
    const-string v0, "button_roaming_key"

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    .line 467
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mExtension:Lcom/mediatek/phone/ext/SettingsExtension;

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f0801ea

    const v4, 0x7f0801eb

    invoke-virtual {v0, v1, v3, v4}, Lcom/mediatek/phone/ext/SettingsExtension;->setRoamingSummary(Landroid/preference/CheckBoxPreference;II)V

    .line 468
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 471
    :cond_0
    const-string v0, "preferred_network_mode_key"

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    .line 473
    new-instance v0, Lcom/mediatek/settings/NetWorkHandler;

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/settings/NetWorkHandler;-><init>(Landroid/app/Activity;Landroid/preference/ListPreference;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkHandler:Lcom/mediatek/settings/NetWorkHandler;

    .line 474
    const-string v0, "button_data_usage_key"

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataUsage:Landroid/preference/Preference;

    .line 476
    const-string v0, "button_3g_service_key"

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPreference3GSwitch:Landroid/preference/Preference;

    .line 478
    const-string v0, "cdma_lte_data_service_key"

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mLteDataServicePref:Landroid/preference/Preference;

    .line 479
    const-string v0, "button_network_mode_ex_key"

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkModeEx:Landroid/preference/Preference;

    .line 480
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    const/4 v7, 0x1

    .line 481
    .local v7, isLteOnCdma:Z
    :goto_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 484
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 487
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode"

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 490
    .local v11, settingsNetworkMode:I
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 491
    new-instance v0, Lcom/android/phone/CdmaOptions;

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, p0, v2, v1}, Lcom/android/phone/CdmaOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    .line 492
    new-instance v0, Lcom/android/phone/GsmUmtsOptions;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/GsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    .line 546
    .end local v11           #settingsNetworkMode:I
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "setup_prepaid_data_service_url"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    .line 549
    .local v9, missingDataServiceUrl:Z
    if-eqz v7, :cond_2

    if-eqz v9, :cond_b

    .line 550
    :cond_2
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mLteDataServicePref:Landroid/preference/Preference;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 555
    :goto_2
    const-string v0, "throttle"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/ThrottleManager;

    .line 556
    .local v12, tm:Landroid/net/ThrottleManager;
    new-instance v0, Lcom/android/phone/DataUsageListener;

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataUsage:Landroid/preference/Preference;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/phone/DataUsageListener;-><init>(Landroid/content/Context;Landroid/preference/Preference;Landroid/preference/PreferenceScreen;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    .line 558
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 560
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    .line 561
    .local v6, actionBar:Landroid/app/ActionBar;
    if-eqz v6, :cond_3

    .line 563
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 565
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->setNetworkOperator()V

    .line 566
    return-void

    .line 480
    .end local v6           #actionBar:Landroid/app/ActionBar;
    .end local v7           #isLteOnCdma:Z
    .end local v9           #missingDataServiceUrl:Z
    .end local v12           #tm:Landroid/net/ThrottleManager;
    :cond_4
    const/4 v7, 0x0

    goto :goto_0

    .line 494
    .restart local v7       #isLteOnCdma:Z
    :cond_5
    if-nez v7, :cond_6

    .line 495
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 497
    :cond_6
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    .line 499
    .local v10, phoneType:I
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mExtension:Lcom/mediatek/phone/ext/SettingsExtension;

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkModeEx:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mPreference3GSwitch:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mPLMNPreference:Landroid/preference/Preference;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/phone/ext/SettingsExtension;->reloadPreference(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/Preference;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 500
    const/4 v0, 0x2

    if-ne v10, v0, :cond_9

    .line 501
    new-instance v0, Lcom/android/phone/CdmaOptions;

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, p0, v2, v1}, Lcom/android/phone/CdmaOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    .line 502
    if-eqz v7, :cond_7

    .line 503
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 504
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f090028

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 506
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f090029

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 508
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode"

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 512
    .restart local v11       #settingsNetworkMode:I
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 516
    .end local v11           #settingsNetworkMode:I
    :cond_7
    const-string v0, "3G_SWITCH"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSupportFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 517
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPreference3GSwitch:Landroid/preference/Preference;

    if-eqz v0, :cond_8

    .line 518
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPreference3GSwitch:Landroid/preference/Preference;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 519
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPreference3GSwitch:Landroid/preference/Preference;

    .line 522
    :cond_8
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkModeEx:Landroid/preference/Preference;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 523
    const-string v0, "button_carrier_sel_key"

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mCarrierSelPref:Landroid/preference/PreferenceScreen;

    goto/16 :goto_1

    .line 532
    :cond_9
    const/4 v0, 0x1

    if-ne v10, v0, :cond_a

    .line 533
    new-instance v0, Lcom/android/phone/GsmUmtsOptions;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/GsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    .line 534
    invoke-direct {p0, v2}, Lcom/android/phone/MobileNetworkSettings;->initPreferenceForMobileNetwork(Landroid/preference/PreferenceScreen;)V

    goto/16 :goto_1

    .line 536
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 552
    .end local v10           #phoneType:I
    .restart local v9       #missingDataServiceUrl:Z
    :cond_b
    const-string v0, "NetworkSettings"

    const-string v1, "keep ltePref"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter "id"

    .prologue
    const v6, 0x1040014

    const v5, 0x1040013

    const v4, 0x1040009

    const/4 v3, 0x1

    .line 950
    const/4 v0, 0x0

    .line 951
    .local v0, dialog:Landroid/app/Dialog;
    const/16 v1, 0x190

    if-ne p1, v1, :cond_1

    .line 952
    new-instance v0, Landroid/app/ProgressDialog;

    .end local v0           #dialog:Landroid/app/Dialog;
    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .restart local v0       #dialog:Landroid/app/Dialog;
    move-object v1, v0

    .line 953
    check-cast v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801ba

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 954
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 992
    :cond_0
    :goto_0
    return-object v0

    .line 955
    :cond_1
    const/16 v1, 0x64

    if-eq p1, v1, :cond_2

    const/16 v1, 0xc8

    if-ne p1, v1, :cond_3

    .line 957
    :cond_2
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mExtension:Lcom/mediatek/phone/ext/SettingsExtension;

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p0, v2}, Lcom/mediatek/phone/ext/SettingsExtension;->onCreateAlertDialog(ILandroid/app/Activity;Landroid/os/Handler;)Landroid/app/Dialog;

    move-result-object v0

    .line 958
    iput-boolean v3, p0, Lcom/android/phone/MobileNetworkSettings;->mIsChangeData:Z

    goto :goto_0

    .line 959
    :cond_3
    const/16 v1, 0x12c

    if-ne p1, v1, :cond_4

    .line 960
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mExtension:Lcom/mediatek/phone/ext/SettingsExtension;

    const v3, 0x7f0801ed

    invoke-virtual {v2, p0, v3}, Lcom/mediatek/phone/ext/SettingsExtension;->getRoamingMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 966
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 967
    :cond_4
    if-ne p1, v3, :cond_0

    .line 968
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/MobileNetworkSettings;->mDataSwitchMsgIndex:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/MobileNetworkSettings$7;

    invoke-direct {v2, p0}, Lcom/android/phone/MobileNetworkSettings$7;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/MobileNetworkSettings$6;

    invoke-direct {v2, p0}, Lcom/android/phone/MobileNetworkSettings$6;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/MobileNetworkSettings$5;

    invoke-direct {v2, p0}, Lcom/android/phone/MobileNetworkSettings$5;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 896
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 897
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 898
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPreCheckForRunning:Lcom/mediatek/settings/PreCheckForRunning;

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPreCheckForRunning:Lcom/mediatek/settings/PreCheckForRunning;

    invoke-virtual {v0}, Lcom/mediatek/settings/PreCheckForRunning;->deRegister()V

    .line 901
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 902
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 905
    :cond_1
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/android/phone/MobileNetworkSettings;->mOkClicked:Z

    if-nez v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 333
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 874
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 875
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 887
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 888
    const/4 v1, 0x1

    .line 890
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 608
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 609
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    invoke-virtual {v0}, Lcom/android/phone/DataUsageListener;->pause()V

    .line 611
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mGprsDefaultSIMObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 612
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 12
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v8, 0x0

    const/4 v11, -0x1

    const/4 v7, 0x1

    .line 623
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_3

    .line 626
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    move-object v6, p2

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v9, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 628
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 629
    .local v0, buttonNetworkMode:I
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "preferred_network_mode"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 632
    .local v2, settingsNetworkMode:I
    if-eq v0, v2, :cond_1

    .line 634
    const/16 v6, 0x190

    invoke-virtual {p0, v6}, Landroid/app/Activity;->showDialog(I)V

    .line 636
    packed-switch v0, :pswitch_data_0

    .line 662
    const/4 v1, 0x0

    .line 668
    .local v1, modemNetworkMode:I
    :goto_0
    if-nez v1, :cond_0

    const/16 v6, 0xb

    if-ne v2, v6, :cond_0

    move v6, v7

    .line 716
    .end local v0           #buttonNetworkMode:I
    .end local v1           #modemNetworkMode:I
    .end local v2           #settingsNetworkMode:I
    :goto_1
    return v6

    .line 638
    .restart local v0       #buttonNetworkMode:I
    .restart local v2       #settingsNetworkMode:I
    :pswitch_0
    const/4 v1, 0x7

    .line 639
    .restart local v1       #modemNetworkMode:I
    goto :goto_0

    .line 641
    .end local v1           #modemNetworkMode:I
    :pswitch_1
    const/4 v1, 0x6

    .line 642
    .restart local v1       #modemNetworkMode:I
    goto :goto_0

    .line 644
    .end local v1           #modemNetworkMode:I
    :pswitch_2
    const/4 v1, 0x5

    .line 645
    .restart local v1       #modemNetworkMode:I
    goto :goto_0

    .line 647
    .end local v1           #modemNetworkMode:I
    :pswitch_3
    const/4 v1, 0x4

    .line 648
    .restart local v1       #modemNetworkMode:I
    goto :goto_0

    .line 650
    .end local v1           #modemNetworkMode:I
    :pswitch_4
    const/4 v1, 0x3

    .line 651
    .restart local v1       #modemNetworkMode:I
    goto :goto_0

    .line 653
    .end local v1           #modemNetworkMode:I
    :pswitch_5
    const/4 v1, 0x2

    .line 654
    .restart local v1       #modemNetworkMode:I
    goto :goto_0

    .line 656
    .end local v1           #modemNetworkMode:I
    :pswitch_6
    const/4 v1, 0x1

    .line 657
    .restart local v1       #modemNetworkMode:I
    goto :goto_0

    .line 659
    .end local v1           #modemNetworkMode:I
    :pswitch_7
    const/4 v1, 0x0

    .line 660
    .restart local v1       #modemNetworkMode:I
    goto :goto_0

    .line 673
    :cond_0
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 675
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "preferred_network_mode"

    invoke-static {v6, v8, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 679
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 680
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkHandler:Lcom/mediatek/settings/NetWorkHandler;

    invoke-virtual {v8, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    iget v9, p0, Lcom/android/phone/MobileNetworkSettings;->mSlotId:I

    invoke-virtual {v6, v1, v8, v9}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setPreferredNetworkTypeGemini(ILandroid/os/Message;I)V

    .end local v0           #buttonNetworkMode:I
    .end local v1           #modemNetworkMode:I
    .end local v2           #settingsNetworkMode:I
    :cond_1
    :goto_2
    move v6, v7

    .line 716
    goto :goto_1

    .line 683
    .restart local v0       #buttonNetworkMode:I
    .restart local v1       #modemNetworkMode:I
    .restart local v2       #settingsNetworkMode:I
    :cond_2
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkHandler:Lcom/mediatek/settings/NetWorkHandler;

    invoke-virtual {v8, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v6, v1, v8}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_2

    .line 687
    .end local v0           #buttonNetworkMode:I
    .end local v1           #modemNetworkMode:I
    .end local v2           #settingsNetworkMode:I
    .restart local p2
    :cond_3
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mDataConnPref:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    if-ne p1, v6, :cond_1

    .line 689
    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 690
    .local v3, simid:J
    const-string v6, "NetworkSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "value="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mSimInfoList:Ljava/util/List;

    invoke-static {v3, v4, v6}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSimSlotIdBySimInfoId(JLjava/util/List;)I

    move-result v5

    .line 692
    .local v5, slotId:I
    if-eq v5, v11, :cond_4

    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mPreCheckForRunning:Lcom/mediatek/settings/PreCheckForRunning;

    invoke-virtual {v6, v5}, Lcom/mediatek/settings/PreCheckForRunning;->isSimLocked(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 693
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mPreCheckForRunning:Lcom/mediatek/settings/PreCheckForRunning;

    const/4 v7, 0x0

    const/16 v9, 0x12e

    invoke-virtual {v6, v7, v5, v9}, Lcom/mediatek/settings/PreCheckForRunning;->unLock(Landroid/content/Intent;II)V

    .line 694
    const-string v6, "NetworkSettings"

    const-string v7, "need unlock before switch data connection"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 696
    goto/16 :goto_1

    .line 700
    :cond_4
    const-wide/16 v8, 0x0

    cmp-long v6, v3, v8

    if-nez v6, :cond_5

    .line 702
    iput v11, p0, Lcom/android/phone/MobileNetworkSettings;->mDataSwitchMsgIndex:I

    .line 708
    :goto_3
    iget v6, p0, Lcom/android/phone/MobileNetworkSettings;->mDataSwitchMsgIndex:I

    if-eq v6, v11, :cond_6

    .line 711
    iput-wide v3, p0, Lcom/android/phone/MobileNetworkSettings;->mSelectedGprsSimId:J

    .line 712
    invoke-virtual {p0, v7}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_2

    .line 704
    :cond_5
    invoke-direct {p0, v3, v4}, Lcom/android/phone/MobileNetworkSettings;->dataSwitchConfirmDlgMsg(J)I

    move-result v6

    iput v6, p0, Lcom/android/phone/MobileNetworkSettings;->mDataSwitchMsgIndex:I

    goto :goto_3

    .line 709
    :cond_6
    invoke-direct {p0, v3, v4}, Lcom/android/phone/MobileNetworkSettings;->switchGprsDefaultSIM(J)V

    goto :goto_2

    .line 636
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 11
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 344
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mExtension:Lcom/mediatek/phone/ext/SettingsExtension;

    invoke-virtual {v9, p1, p2}, Lcom/mediatek/phone/ext/SettingsExtension;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 444
    :cond_0
    :goto_0
    return v7

    .line 347
    :cond_1
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v9, p2}, Lcom/android/phone/GsmUmtsOptions;->preferenceTreeClick(Landroid/preference/Preference;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 350
    :cond_2
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    invoke-virtual {v9, p2}, Lcom/android/phone/CdmaOptions;->preferenceTreeClick(Landroid/preference/Preference;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 352
    const-string v8, "ril.cdma.inecmmode"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 355
    iput-object p2, p0, Lcom/android/phone/MobileNetworkSettings;->mClickedPreference:Landroid/preference/Preference;

    .line 358
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    invoke-direct {v8, v9, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v9, 0x11

    invoke-virtual {p0, v8, v9}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 363
    :cond_3
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-ne p2, v9, :cond_4

    .line 365
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "preferred_network_mode"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 368
    .local v3, settingsNetworkMode:I
    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 370
    .end local v3           #settingsNetworkMode:I
    :cond_4
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    if-ne p2, v9, :cond_6

    .line 372
    const-string v9, "onPreferenceTreeClick: preference == mButtonDataRoam."

    invoke-static {v9}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 376
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 378
    iput-boolean v8, p0, Lcom/android/phone/MobileNetworkSettings;->mOkClicked:Z

    .line 379
    const/16 v8, 0x12c

    invoke-virtual {p0, v8}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 381
    :cond_5
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9, v8}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_0

    .line 384
    :cond_6
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v9, :cond_7

    .line 386
    const-string v8, "onPreferenceTreeClick: preference == mButtonDataEnabled."

    invoke-static {v8}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 388
    const-string v8, "connectivity"

    invoke-virtual {p0, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 391
    .local v0, cm:Landroid/net/ConnectivityManager;
    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v8

    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto/16 :goto_0

    .line 393
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :cond_7
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mLteDataServicePref:Landroid/preference/Preference;

    if-ne p2, v9, :cond_b

    .line 394
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "setup_prepaid_data_service_url"

    invoke-static {v9, v10}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 396
    .local v5, tmpl:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 397
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 398
    .local v1, imsi:Ljava/lang/String;
    if-nez v1, :cond_8

    .line 399
    const-string v1, ""

    .line 401
    :cond_8
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 403
    .local v6, url:Ljava/lang/String;
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v2, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 404
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 401
    .end local v2           #intent:Landroid/content/Intent;
    .end local v6           #url:Ljava/lang/String;
    :cond_9
    new-array v9, v7, [Ljava/lang/CharSequence;

    aput-object v1, v9, v8

    invoke-static {v5, v9}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 406
    .end local v1           #imsi:Ljava/lang/String;
    :cond_a
    const-string v8, "NetworkSettings"

    const-string v9, "Missing SETUP_PREPAID_DATA_SERVICE_URL"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 409
    .end local v5           #tmpl:Ljava/lang/String;
    :cond_b
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkModeEx:Landroid/preference/Preference;

    if-ne p2, v9, :cond_c

    .line 410
    new-instance v2, Landroid/content/Intent;

    const-class v8, Lcom/mediatek/settings/MultipleSimActivity;

    invoke-direct {v2, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 411
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v8, "ITEM_TYPE"

    const-string v9, "ListPreference"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    const-string v8, "INIT_ARRAY"

    const v9, 0x7f09001d

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 413
    const-string v8, "INIT_ARRAY_VALUE"

    const v9, 0x7f09001e

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 414
    const-string v8, "EXTRA_TITME_NAME"

    const v9, 0x7f0801da

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 415
    const-string v8, "LIST_TITLE_NAME"

    const v9, 0x7f0800d4

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 416
    const-string v8, "INIT_FEATURE_NAME"

    const-string v9, "NETWORK_MODE"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    const-string v8, "EXTRA_3G_CARD_ONLY"

    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 419
    const-string v8, "INIT_BASE_KEY"

    const-string v9, "preferred_network_mode_key@"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v8}, Lcom/android/phone/PhoneInterfaceManager;->get3GCapabilitySIM()I

    move-result v4

    .line 422
    .local v4, slot3G:I
    invoke-static {v4}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 423
    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mPreCheckForRunning:Lcom/mediatek/settings/PreCheckForRunning;

    const/16 v9, 0x12e

    invoke-virtual {v8, v2, v4, v9}, Lcom/mediatek/settings/PreCheckForRunning;->checkToRun(Landroid/content/Intent;II)V

    goto/16 :goto_0

    .line 426
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #slot3G:I
    :cond_c
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mCarrierSelPref:Landroid/preference/PreferenceScreen;

    if-eq p2, v9, :cond_d

    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mPLMNPreference:Landroid/preference/Preference;

    if-ne p2, v9, :cond_e

    .line 427
    :cond_d
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlotId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/phone/MobileNetworkSettings;->mSlotId:I

    .line 428
    iput-object p2, p0, Lcom/android/phone/MobileNetworkSettings;->mTargetPreference:Landroid/preference/Preference;

    .line 429
    iget v8, p0, Lcom/android/phone/MobileNetworkSettings;->mSlotId:I

    invoke-static {v8}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 430
    iget v8, p0, Lcom/android/phone/MobileNetworkSettings;->mSlotId:I

    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mPreCheckForRunning:Lcom/mediatek/settings/PreCheckForRunning;

    invoke-static {v8, p2, v9}, Lcom/mediatek/phone/gemini/GeminiUtils;->startActivity(ILandroid/preference/Preference;Lcom/mediatek/settings/PreCheckForRunning;)V

    goto/16 :goto_0

    .line 433
    :cond_e
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mDataConnPref:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    if-ne p2, v9, :cond_f

    .line 436
    const-string v8, "NetworkSettings"

    const-string v9, "mDataConnPref is clicked"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 442
    :cond_f
    invoke-virtual {p1, v8}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    move v7, v8

    .line 444
    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 570
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 575
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 576
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mConnService:Landroid/net/ConnectivityManager;

    .line 577
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "preferred_network_mode_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkHandler:Lcom/mediatek/settings/NetWorkHandler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    invoke-virtual {v0}, Lcom/android/phone/DataUsageListener;->resume()V

    .line 584
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-eqz v0, :cond_1

    .line 585
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 589
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->initDataConnPref()V

    .line 590
    invoke-direct {p0, v3}, Lcom/android/phone/MobileNetworkSettings;->updateDataConnPref(Z)V

    .line 592
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->updateScreenStatus()V

    .line 595
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gprs_connection_sim_setting"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mGprsDefaultSIMObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 604
    return-void
.end method

.method public updateNetworkModePreference()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1355
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-nez v4, :cond_2

    move v1, v2

    .line 1356
    .local v1, isIdle:Z
    :goto_0
    if-eqz v1, :cond_3

    invoke-static {p0}, Lcom/mediatek/phone/gemini/GeminiUtils;->isAllRadioOff(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->isHas3GCapabilitySimCard()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1358
    .local v2, isNWModeEnabled:Z
    :goto_1
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-eqz v3, :cond_0

    .line 1359
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1360
    if-nez v2, :cond_0

    .line 1361
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 1362
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1363
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1368
    .end local v0           #dialog:Landroid/app/Dialog;
    :cond_0
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkModeEx:Landroid/preference/Preference;

    if-eqz v3, :cond_1

    .line 1369
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkModeEx:Landroid/preference/Preference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1371
    :cond_1
    return-void

    .end local v1           #isIdle:Z
    .end local v2           #isNWModeEnabled:Z
    :cond_2
    move v1, v3

    .line 1355
    goto :goto_0

    .restart local v1       #isIdle:Z
    :cond_3
    move v2, v3

    .line 1356
    goto :goto_1
.end method
