.class public Lcom/mediatek/settings/plugin/SlotSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SlotSettingsFragment.java"


# static fields
.field private static final ALL_RADIO_OFF:I = 0x0

.field private static final ALL_RADIO_ON:I = 0x3

.field private static final DLG_NETWORK_AUTO_SELECT:I = 0x1

.field private static final EVENT_AUTO_SELECT_DONE:I = 0x2

.field private static final EVENT_DUAL_SIM_MODE_CHANGED_COMPLETE:I = 0x1

.field private static final GSM_AUTO_NETWORK_SELECTION:Ljava/lang/String; = "gsm_auto_network_selection"

.field private static final INTENT_ACTION_START_SWITCH_PHONE:Ljava/lang/String; = "com.mediatek.intent.action.START_RADIO_TECHNOLOGY"

.field private static final KEY_CURRENT_NETWORK_INFO:Ljava/lang/String; = "current_network_info"

.field private static final KEY_MANUAL_NETWORK_CDMA_SELECTION:Ljava/lang/String; = "manual_network_selection"

.field private static final KEY_MANUAL_NETWORK_GSM_SELECTION:Ljava/lang/String; = "manual_network_selection_gsm"

.field private static final KEY_NOTES:Ljava/lang/String; = "notes"

.field private static final KEY_ROAMING_HOTLINE:Ljava/lang/String; = "roaming_hotline"

.field private static final KEY_SIM_RADIO_STATE:Ljava/lang/String; = "sim_radio_state"

.field private static final NATIVE_NUMERIC1:Ljava/lang/String; = "46003"

.field private static final NATIVE_NUMERIC2:Ljava/lang/String; = "45502"

.field public static final NUMERIC_CHINA_MACAO_TELE:Ljava/lang/String; = "45502"

.field public static final NUMERIC_CHINA_TELE:Ljava/lang/String; = "46003"

.field public static final NUMERIC_NO_NETWORK:Ljava/lang/String; = "00000"

.field public static final NUMERIC_UNKNOWN:Ljava/lang/String; = "-1"

.field private static final PREFERENCES_NAME:Ljava/lang/String; = "SlotSettingsFragment"

.field private static final SIM_SLOT_1_RADIO_ON:I = 0x1

.field private static final SIM_SLOT_2_RADIO_ON:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SlotSettingsFragment"


# instance fields
.field private mCardType:I

.field private mConnService:Landroid/net/ConnectivityManager;

.field private mDialog:Landroid/app/Dialog;

.field private mEnableSimRadioPref:Landroid/preference/CheckBoxPreference;

.field private mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

.field private mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsForeground:Z

.field private mIsSIMRadioSwitching:Z

.field private mIsSim1Inserted:Z

.field private mIsSim2Inserted:Z

.field private mManualNetworkGsmPref:Landroid/preference/CheckBoxPreference;

.field private mManualNetworkPref:Landroid/preference/Preference;

.field private mNetworkInfoPref:Landroid/preference/Preference;

.field private mNotesPref:Landroid/preference/Preference;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRoamingHotlinePref:Landroid/preference/Preference;

.field private mSiminfo:Landroid/provider/Telephony$SIMInfo;

.field private mSwitchRadioStateMsg:Landroid/os/Messenger;

.field private mTargetSlot:I

.field private mTelephony:Lcom/android/internal/telephony/ITelephony;

.field private mTelephonyEx:Lcom/mediatek/common/telephony/ITelephonyEx;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTotalSimNumer:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 140
    iput v0, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mTargetSlot:I

    .line 161
    iput-boolean v0, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mIsSIMRadioSwitching:Z

    .line 167
    new-instance v0, Lcom/mediatek/settings/plugin/SlotSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/plugin/SlotSettingsFragment$1;-><init>(Lcom/mediatek/settings/plugin/SlotSettingsFragment;)V

    iput-object v0, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mHandler:Landroid/os/Handler;

    .line 204
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mSwitchRadioStateMsg:Landroid/os/Messenger;

    .line 206
    new-instance v0, Lcom/mediatek/settings/plugin/SlotSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/plugin/SlotSettingsFragment$2;-><init>(Lcom/mediatek/settings/plugin/SlotSettingsFragment;)V

    iput-object v0, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/plugin/SlotSettingsFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mIsSIMRadioSwitching:Z

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/settings/plugin/SlotSettingsFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mIsSIMRadioSwitching:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/settings/plugin/SlotSettingsFragment;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/settings/plugin/SlotSettingsFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mIsForeground:Z

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/settings/plugin/SlotSettingsFragment;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->displayNetworkSelectionFailed(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/settings/plugin/SlotSettingsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->displayNetworkSelectionSucceeded()V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/settings/plugin/SlotSettingsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->updateScreen()V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/settings/plugin/SlotSettingsFragment;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mNetworkInfoPref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/settings/plugin/SlotSettingsFragment;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mManualNetworkPref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/settings/plugin/SlotSettingsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->updateSimInsertedState()V

    return-void
.end method

.method private displayNetworkSelectionFailed(Ljava/lang/Throwable;)V
    .locals 3
    .parameter "ex"

    .prologue
    .line 646
    const/4 v0, 0x0

    .line 647
    .local v0, status:Ljava/lang/String;
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .end local p1
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->ILLEGAL_SIM_OR_ME:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v2, :cond_0

    .line 649
    const v1, 0x7f09003a

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/settings/plugin/OP09SettingsMiscExtImp;->replaceSimBySlotInner(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 653
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 654
    return-void

    .line 651
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private displayNetworkSelectionSucceeded()V
    .locals 3

    .prologue
    .line 657
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09003c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 658
    .local v0, status:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 659
    return-void
.end method

.method public static externalSlotInRoamingService()Z
    .locals 4

    .prologue
    .line 636
    const-string v1, "gsm.operator.numeric"

    const-string v2, "-1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 637
    .local v0, currentNetworkNumeric:Ljava/lang/String;
    const-string v1, "SlotSettingsFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "externalSlotInHomeService numeric is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const-string v1, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "46003"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "45502"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "00000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getRadioState()Z
    .locals 5

    .prologue
    .line 553
    const-string v2, "SlotSettingsFragment"

    const-string v3, "getRadioState()"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v2, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-nez v2, :cond_0

    .line 555
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    .line 558
    :cond_0
    const/4 v1, 0x1

    .line 560
    .local v1, isRadioStateOn:Z
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v2, :cond_1

    .line 561
    iget-object v2, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    iget v3, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mTargetSlot:I

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->isRadioOnGemini(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 566
    :cond_1
    :goto_0
    const-string v2, "SlotSettingsFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRadioStateOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    return v1

    .line 563
    :catch_0
    move-exception v0

    .line 564
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "SlotSettingsFragment"

    const-string v3, "exception happend unable to get Itelephony state"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initPreferenceState()V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mEnableSimRadioPref:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->getRadioState()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 357
    return-void
.end method

.method public static isGsmAutoNetowrkSelection(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 662
    const-string v1, "SlotSettingsFragment"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 663
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v1, "gsm_auto_network_selection"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private selectNetworkAutomatic()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 407
    const-string v1, "SlotSettingsFragment"

    const-string v2, "select network automatically..."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->setGsmAutoNetowrkSelection(Landroid/content/Context;Z)V

    .line 409
    iget-boolean v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mIsForeground:Z

    if-eqz v1, :cond_0

    .line 410
    invoke-direct {p0, v3}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->showDialog(I)V

    .line 412
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 417
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v2, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mTargetSlot:I

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setNetworkSelectionModeAutomaticGemini(Landroid/os/Message;I)V

    .line 420
    return-void
.end method

.method public static setGsmAutoNetowrkSelection(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "autoSelect"

    .prologue
    .line 667
    const-string v1, "SlotSettingsFragment"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 669
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "gsm_auto_network_selection"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 670
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 671
    return-void
.end method

.method private showDialog(I)V
    .locals 4
    .parameter "dialogId"

    .prologue
    .line 534
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 535
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 550
    :goto_0
    return-void

    .line 537
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 538
    iget-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 540
    :cond_0
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mDialog:Landroid/app/Dialog;

    .line 541
    iget-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mDialog:Landroid/app/Dialog;

    check-cast v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 542
    iget-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mDialog:Landroid/app/Dialog;

    check-cast v1, Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 543
    iget-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mDialog:Landroid/app/Dialog;

    check-cast v1, Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 544
    iget-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 535
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private showProgressDialg(I)V
    .locals 3
    .parameter "msgId"

    .prologue
    .line 525
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 526
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {p0, p1}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 527
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 528
    iput-object v0, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mDialog:Landroid/app/Dialog;

    .line 529
    iget-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mDialog:Landroid/app/Dialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 530
    iget-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 531
    return-void
.end method

.method private switchSimRadioState(IZ)V
    .locals 9
    .parameter "slot"
    .parameter "isChecked"

    .prologue
    const/4 v8, 0x1

    .line 423
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dual_sim_mode_setting"

    const/4 v7, -0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 426
    .local v0, dualSimMode:I
    const-string v5, "SlotSettingsFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The current dual sim mode is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const/4 v1, 0x0

    .line 428
    .local v1, dualState:I
    const/4 v3, 0x0

    .line 429
    .local v3, isRadioOn:Z
    packed-switch v0, :pswitch_data_0

    .line 506
    const-string v5, "SlotSettingsFragment"

    const-string v6, "Error not correct values"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :goto_0
    return-void

    .line 431
    :pswitch_0
    if-nez p1, :cond_2

    .line 432
    const/4 v1, 0x1

    .line 436
    :cond_0
    :goto_1
    const-string v5, "SlotSettingsFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Turning on only sim "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const/4 v3, 0x1

    .line 509
    :cond_1
    :goto_2
    const/4 v4, 0x0

    .line 510
    .local v4, msgId:I
    if-eqz v3, :cond_c

    .line 511
    const v4, 0x7f090030

    .line 515
    :goto_3
    invoke-direct {p0, v4}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->showProgressDialg(I)V

    .line 516
    const-string v5, "SlotSettingsFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dualState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isRadioOn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dual_sim_mode_setting"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 519
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.DUAL_SIM_MODE"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 520
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "mode"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 521
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 433
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #msgId:I
    :cond_2
    if-ne p1, v8, :cond_0

    .line 434
    const/4 v1, 0x2

    goto :goto_1

    .line 440
    :pswitch_1
    if-nez p1, :cond_4

    .line 441
    if-eqz p2, :cond_3

    .line 442
    const-string v5, "SlotSettingsFragment"

    const-string v6, "try to turn on slot 1 again since it is already on"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    move v1, v0

    .line 445
    const/4 v3, 0x1

    .line 450
    :goto_4
    const-string v5, "SlotSettingsFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Turning off sim "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and all sim radio is off"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 447
    :cond_3
    const/4 v1, 0x0

    .line 448
    const/4 v3, 0x0

    goto :goto_4

    .line 452
    :cond_4
    if-ne p1, v8, :cond_1

    .line 453
    iget-boolean v5, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mIsSim1Inserted:Z

    if-eqz v5, :cond_5

    .line 454
    const/4 v1, 0x3

    .line 455
    const-string v5, "SlotSettingsFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sim 0 was radio on and now turning on sim "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :goto_5
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 458
    :cond_5
    const/4 v1, 0x2

    .line 459
    const-string v5, "SlotSettingsFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Turning on only sim "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 465
    :pswitch_2
    if-ne p1, v8, :cond_7

    .line 466
    if-eqz p2, :cond_6

    .line 467
    const-string v5, "SlotSettingsFragment"

    const-string v6, "try to turn on slot 2 again since it is already on"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    move v1, v0

    .line 470
    const/4 v3, 0x1

    .line 475
    :goto_6
    const-string v5, "SlotSettingsFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Turning off sim "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and all sim radio is off"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 472
    :cond_6
    const/4 v1, 0x0

    .line 473
    const/4 v3, 0x0

    goto :goto_6

    .line 477
    :cond_7
    if-nez p1, :cond_1

    .line 478
    iget-boolean v5, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mIsSim2Inserted:Z

    if-eqz v5, :cond_8

    .line 479
    const/4 v1, 0x3

    .line 480
    const-string v5, "SlotSettingsFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sim 1 was radio on and now turning on sim "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :goto_7
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 483
    :cond_8
    const/4 v1, 0x1

    .line 484
    const-string v5, "SlotSettingsFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Turning on only sim "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 490
    :pswitch_3
    if-nez p2, :cond_b

    .line 491
    if-nez p1, :cond_a

    .line 492
    const/4 v1, 0x2

    .line 497
    :cond_9
    :goto_8
    const-string v5, "SlotSettingsFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Turning off only sim "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 494
    :cond_a
    if-ne p1, v8, :cond_9

    .line 495
    const/4 v1, 0x1

    goto :goto_8

    .line 500
    :cond_b
    move v1, v0

    .line 501
    const/4 v3, 0x1

    .line 502
    const-string v5, "SlotSettingsFragment"

    const-string v6, "try to turn on but actually they are all on"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 513
    .restart local v4       #msgId:I
    :cond_c
    const v4, 0x7f090031

    goto/16 :goto_3

    .line 429
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private targetSlotRadioOn()Z
    .locals 5

    .prologue
    .line 571
    const/4 v1, 0x0

    .line 573
    .local v1, isRadioOn:Z
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v2, :cond_0

    .line 574
    iget-object v2, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    iget v3, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mTargetSlot:I

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->isRadioOnGemini(I)Z

    move-result v1

    .line 575
    const-string v2, "SlotSettingsFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mTargetSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is in radion state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move v2, v1

    .line 581
    :goto_0
    return v2

    .line 577
    :catch_0
    move-exception v0

    .line 578
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "SlotSettingsFragment"

    const-string v3, "mTelephony exception"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateScreen()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 585
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_3

    move v0, v2

    .line 588
    .local v0, isAirplaneOn:Z
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->targetSlotRadioOn()Z

    move-result v1

    .line 589
    .local v1, targetSlotRadioOn:Z
    const-string v4, "SlotSettingsFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateScreen: isAirplaneOn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mTargetSlot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mTargetSlot:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mIsSim1Inserted = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mIsSim1Inserted:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mIsSim2Inserted = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mIsSim2Inserted:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", targetSlotRadioOn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    if-nez v0, :cond_4

    move v4, v2

    :goto_1
    invoke-virtual {v5, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 594
    if-nez v0, :cond_10

    .line 595
    iget v4, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mTargetSlot:I

    if-nez v4, :cond_9

    .line 596
    iget-object v4, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mEnableSimRadioPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v5, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mIsSim1Inserted:Z

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 597
    iget-object v5, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mEnableSimRadioPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v4, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mIsSim1Inserted:Z

    if-eqz v4, :cond_5

    if-eqz v1, :cond_5

    move v4, v2

    :goto_2
    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 598
    iget-object v5, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mNetworkInfoPref:Landroid/preference/Preference;

    iget-boolean v4, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mIsSim1Inserted:Z

    if-eqz v4, :cond_6

    if-eqz v1, :cond_6

    move v4, v2

    :goto_3
    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 599
    iget-object v5, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mRoamingHotlinePref:Landroid/preference/Preference;

    iget-boolean v4, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mIsSim1Inserted:Z

    if-eqz v4, :cond_7

    if-eqz v1, :cond_7

    move v4, v2

    :goto_4
    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 600
    iget-object v5, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mNotesPref:Landroid/preference/Preference;

    iget-boolean v4, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mIsSim1Inserted:Z

    if-eqz v4, :cond_8

    if-eqz v1, :cond_8

    move v4, v2

    :goto_5
    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 607
    :cond_0
    :goto_6
    if-eqz v1, :cond_d

    .line 609
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "manual_network_selection"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 610
    iget-object v4, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mManualNetworkPref:Landroid/preference/Preference;

    invoke-static {}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->externalSlotInRoamingService()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 613
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "manual_network_selection_gsm"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 614
    iget-object v4, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mManualNetworkGsmPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v5, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mIsSim2Inserted:Z

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 615
    iget-object v4, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mManualNetworkGsmPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->isGsmAutoNetowrkSelection(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_c

    :goto_7
    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 633
    :cond_2
    :goto_8
    return-void

    .end local v0           #isAirplaneOn:Z
    .end local v1           #targetSlotRadioOn:Z
    :cond_3
    move v0, v3

    .line 585
    goto/16 :goto_0

    .restart local v0       #isAirplaneOn:Z
    .restart local v1       #targetSlotRadioOn:Z
    :cond_4
    move v4, v3

    .line 592
    goto :goto_1

    :cond_5
    move v4, v3

    .line 597
    goto :goto_2

    :cond_6
    move v4, v3

    .line 598
    goto :goto_3

    :cond_7
    move v4, v3

    .line 599
    goto :goto_4

    :cond_8
    move v4, v3

    .line 600
    goto :goto_5

    .line 601
    :cond_9
    iget v4, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mTargetSlot:I

    if-ne v4, v2, :cond_0

    .line 602
    iget-object v4, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mEnableSimRadioPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v5, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mIsSim2Inserted:Z

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 603
    iget-object v5, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mEnableSimRadioPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v4, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mIsSim2Inserted:Z

    if-eqz v4, :cond_a

    if-eqz v1, :cond_a

    move v4, v2

    :goto_9
    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 604
    iget-object v5, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mNetworkInfoPref:Landroid/preference/Preference;

    iget-boolean v4, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mIsSim2Inserted:Z

    if-eqz v4, :cond_b

    if-eqz v1, :cond_b

    move v4, v2

    :goto_a
    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_6

    :cond_a
    move v4, v3

    .line 603
    goto :goto_9

    :cond_b
    move v4, v3

    .line 604
    goto :goto_a

    :cond_c
    move v2, v3

    .line 615
    goto :goto_7

    .line 618
    :cond_d
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "manual_network_selection"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 619
    iget-object v4, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mManualNetworkPref:Landroid/preference/Preference;

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 621
    :cond_e
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "manual_network_selection_gsm"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 622
    iget-object v4, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mManualNetworkGsmPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 623
    iget-object v4, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mManualNetworkGsmPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->isGsmAutoNetowrkSelection(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_f

    :goto_b
    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_8

    :cond_f
    move v2, v3

    goto :goto_b

    .line 627
    :cond_10
    iget-object v4, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mEnableSimRadioPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 628
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "manual_network_selection_gsm"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 629
    iget-object v4, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mManualNetworkGsmPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 630
    iget-object v4, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mManualNetworkGsmPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->isGsmAutoNetowrkSelection(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_11

    :goto_c
    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_8

    :cond_11
    move v2, v3

    goto :goto_c
.end method

.method private updateSimInsertedState()V
    .locals 4

    .prologue
    .line 299
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mIsSim1Inserted:Z

    .line 301
    iget-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mIsSim2Inserted:Z

    .line 302
    iget-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    iget-object v2, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mSwitchRadioStateMsg:Landroid/os/Messenger;

    invoke-virtual {v2}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->registerForSimModeChange(Landroid/os/IBinder;I)V

    .line 304
    const-string v1, "SlotSettingsFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSimInsertedState mIsSim1Inserted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mIsSim1Inserted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIsSim2Inserted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mIsSim2Inserted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SlotSettingsFragment"

    const-string v2, "mTelephony exception"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 241
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 242
    const-string v1, "SlotSettingsFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate + mTargetSlot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mTargetSlot:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mTargetSlot:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mTargetSlot:I

    if-eq v1, v4, :cond_0

    .line 245
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Require sim slot is either slot1 or slo2"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 249
    :cond_0
    const v1, 0x7f04000f

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->addPreferencesFromResource(I)V

    .line 250
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMCount(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mTotalSimNumer:I

    .line 251
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 253
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    .line 255
    const-string v1, "phoneEx"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mTelephonyEx:Lcom/mediatek/common/telephony/ITelephonyEx;

    .line 258
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 263
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mTelephonyEx:Lcom/mediatek/common/telephony/ITelephonyEx;

    if-eqz v1, :cond_1

    .line 264
    iget-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mTelephonyEx:Lcom/mediatek/common/telephony/ITelephonyEx;

    iget v2, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mTargetSlot:I

    invoke-interface {v1, v2}, Lcom/mediatek/common/telephony/ITelephonyEx;->getInternationalCardType(I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mCardType:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mConnService:Landroid/net/ConnectivityManager;

    .line 271
    const-string v1, "sim_radio_state"

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mEnableSimRadioPref:Landroid/preference/CheckBoxPreference;

    .line 272
    const-string v1, "current_network_info"

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mNetworkInfoPref:Landroid/preference/Preference;

    .line 273
    const-string v1, "manual_network_selection"

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mManualNetworkPref:Landroid/preference/Preference;

    .line 274
    const-string v1, "manual_network_selection_gsm"

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mManualNetworkGsmPref:Landroid/preference/CheckBoxPreference;

    .line 275
    const-string v1, "roaming_hotline"

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mRoamingHotlinePref:Landroid/preference/Preference;

    .line 276
    const-string v1, "notes"

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mNotesPref:Landroid/preference/Preference;

    .line 278
    iget v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mTargetSlot:I

    if-ne v1, v4, :cond_3

    .line 279
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mRoamingHotlinePref:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 280
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mNotesPref:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 281
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mManualNetworkPref:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 285
    :cond_2
    :goto_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mIntentFilter:Landroid/content/IntentFilter;

    .line 286
    iget-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 287
    iget-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.START_RADIO_TECHNOLOGY"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 288
    iget-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 289
    iget-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    iget-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_SIM_DETECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    iget-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 294
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->updateSimInsertedState()V

    .line 295
    return-void

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "SlotSettingsFragment"

    const-string v2, "onCreate error to getInternationalCardType "

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 282
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_3
    iget v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mTargetSlot:I

    if-nez v1, :cond_2

    .line 283
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mManualNetworkGsmPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 339
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 340
    const-string v1, "SlotSettingsFragment"

    const-string v2, "onDestroy"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 342
    iget-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 343
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mDialog:Landroid/app/Dialog;

    .line 345
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 347
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_1

    .line 348
    iget-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    iget-object v2, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mSwitchRadioStateMsg:Landroid/os/Messenger;

    invoke-virtual {v2}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->unregisterForSimModeChange(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :cond_1
    :goto_0
    return-void

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SlotSettingsFragment"

    const-string v2, "mTelephony exception"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 331
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 332
    const-string v0, "SlotSettingsFragment"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mIsForeground:Z

    .line 334
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 335
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 362
    iget-object v4, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mEnableSimRadioPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_3

    .line 363
    iget-boolean v4, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mIsSIMRadioSwitching:Z

    if-nez v4, :cond_1

    .line 364
    iput-boolean v2, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mIsSIMRadioSwitching:Z

    .line 365
    iget v2, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mTargetSlot:I

    iget-object v3, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mEnableSimRadioPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->switchSimRadioState(IZ)V

    .line 403
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    .line 368
    :cond_1
    const-string v4, "SlotSettingsFragment"

    const-string v5, "Click too fast it is switching and set the switch to previous state"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v4, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mEnableSimRadioPref:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mEnableSimRadioPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_2

    :goto_1
    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    .line 371
    :cond_3
    iget-object v4, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mRoamingHotlinePref:Landroid/preference/Preference;

    if-ne p2, v4, :cond_7

    .line 372
    const-string v4, "SlotSettingsFragment"

    const-string v5, "start FreeService"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/mediatek/settings/plugin/FreeService;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 374
    .local v0, intent:Landroid/content/Intent;
    iget-boolean v4, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mIsSim1Inserted:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mIsSim2Inserted:Z

    if-eqz v4, :cond_4

    .line 375
    const-string v2, "SIM_INFO"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 383
    :goto_2
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 376
    :cond_4
    iget-boolean v4, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mIsSim1Inserted:Z

    if-eqz v4, :cond_5

    .line 377
    const-string v3, "SIM_INFO"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 378
    :cond_5
    iget-boolean v2, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mIsSim2Inserted:Z

    if-eqz v2, :cond_6

    .line 379
    const-string v2, "SIM_INFO"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 381
    :cond_6
    const-string v2, "SIM_INFO"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 384
    .end local v0           #intent:Landroid/content/Intent;
    :cond_7
    iget-object v2, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mNetworkInfoPref:Landroid/preference/Preference;

    if-ne p2, v2, :cond_8

    .line 385
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 386
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "simId"

    iget v3, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mTargetSlot:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 387
    const-string v2, "com.mediatek.op09.plugin"

    const-string v3, "com.mediatek.settings.plugin.CurrentNetworkInfoStatus"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    invoke-virtual {p0, v0}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 390
    .end local v0           #intent:Landroid/content/Intent;
    :cond_8
    iget-object v2, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mManualNetworkPref:Landroid/preference/Preference;

    if-ne p2, v2, :cond_9

    .line 391
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.mediatek.OP09.MANUAL_NETWORK_SELECTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 392
    .local v1, manualNetworkSettingIntent:Landroid/content/Intent;
    const-string v2, "simId"

    iget v3, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mTargetSlot:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 393
    invoke-virtual {p0, v1}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 394
    .end local v1           #manualNetworkSettingIntent:Landroid/content/Intent;
    :cond_9
    iget-object v2, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mManualNetworkGsmPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_0

    .line 395
    iget-object v2, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mManualNetworkGsmPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 396
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.mediatek.OP09.MANUAL_NETWORK_SELECTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 397
    .restart local v1       #manualNetworkSettingIntent:Landroid/content/Intent;
    const-string v2, "simId"

    iget v3, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mTargetSlot:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 398
    invoke-virtual {p0, v1}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 400
    .end local v1           #manualNetworkSettingIntent:Landroid/content/Intent;
    :cond_a
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->selectNetworkAutomatic()V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 315
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 317
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mIsForeground:Z

    .line 318
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->updateSimInsertedState()V

    .line 319
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mTargetSlot:I

    invoke-static {v0, v1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mSiminfo:Landroid/provider/Telephony$SIMInfo;

    .line 320
    const-string v0, "SlotSettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume: mTargetSlot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mTargetSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSiminfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mSiminfo:Landroid/provider/Telephony$SIMInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->updateScreen()V

    .line 323
    iget-object v0, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mSiminfo:Landroid/provider/Telephony$SIMInfo;

    if-eqz v0, :cond_0

    .line 324
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->initPreferenceState()V

    .line 326
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 327
    return-void
.end method

.method public setSlotId(I)V
    .locals 0
    .parameter "slot"

    .prologue
    .line 236
    iput p1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mTargetSlot:I

    .line 237
    return-void
.end method
