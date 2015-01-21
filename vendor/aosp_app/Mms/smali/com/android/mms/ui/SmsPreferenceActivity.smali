.class public Lcom/android/mms/ui/SmsPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "SmsPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SmsPreferenceActivity$NegativeButtonListener;,
        Lcom/android/mms/ui/SmsPreferenceActivity$PositiveButtonListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEVICE_TYPE:Ljava/lang/String; = "pref_key_device_type"

.field private static final LOCATION_PHONE:Ljava/lang/String; = "Phone"

.field private static final LOCATION_SIM:Ljava/lang/String; = "Sim"

.field private static final MAX_EDITABLE_LENGTH:I = 0x14

.field private static final MENU_RESTORE_DEFAULTS:I = 0x1

.field private static final MMS_PREFERENCE:Ljava/lang/String; = "com.android.mms_preferences"

.field public static final SDCARD_DIR_PATH:Ljava/lang/String; = "//sdcard//message//"

.field public static final SETTING_INPUT_MODE:Ljava/lang/String; = "Automatic"

.field public static final SETTING_SAVE_LOCATION:Ljava/lang/String; = "Phone"

.field public static final SETTING_SAVE_LOCATION_TABLET:Ljava/lang/String; = "Device"

.field public static final SMS_DELIVERY_REPORT_MODE:Ljava/lang/String; = "pref_key_sms_delivery_reports"

.field public static final SMS_FORWARD_WITH_SENDER:Ljava/lang/String; = "pref_key_forward_with_sender"

.field public static final SMS_INPUT_MODE:Ljava/lang/String; = "pref_key_sms_input_mode"

.field public static final SMS_MANAGE_SIM_MESSAGES:Ljava/lang/String; = "pref_key_manage_sim_messages"

.field public static final SMS_QUICK_TEXT_EDITOR:Ljava/lang/String; = "pref_key_quick_text_editor"

.field public static final SMS_SAVE_LOCATION:Ljava/lang/String; = "pref_key_sms_save_location"

.field public static final SMS_SERVICE_CENTER:Ljava/lang/String; = "pref_key_sms_service_center"

.field public static final SMS_SETTINGS:Ljava/lang/String; = "pref_key_sms_settings"

.field public static final SMS_VALIDITY_PERIOD:Ljava/lang/String; = "pref_key_sms_validity_period"

.field private static final TAG:Ljava/lang/String; = "SmsPreferenceActivity"


# instance fields
.field private mCurrentSimCount:I

.field private mListSimInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;",
            ">;"
        }
    .end annotation
.end field

.field private mManageSimPref:Landroid/preference/Preference;

.field private mManageSimPrefMultiSim:Landroid/preference/Preference;

.field private mMmsFailedNotifyPlugin:Lcom/mediatek/mms/ext/IMmsFailedNotify;

.field private mNumberText:Landroid/widget/EditText;

.field private mNumberTextDialog:Landroid/app/AlertDialog;

.field private mSimReceiver:Landroid/content/BroadcastReceiver;

.field private mSmsDeliveryReport:Landroid/preference/CheckBoxPreference;

.field private mSmsDeliveryReportMultiSim:Landroid/preference/Preference;

.field private mSmsForwardWithSender:Landroid/preference/CheckBoxPreference;

.field private mSmsInputMode:Landroid/preference/ListPreference;

.field private mSmsLocation:Landroid/preference/ListPreference;

.field private mSmsQuickTextEditorPref:Landroid/preference/Preference;

.field private mSmsSaveLoactionMultiSim:Landroid/preference/Preference;

.field private mSmsServiceCenterPref:Landroid/preference/Preference;

.field private mSmsServiceCenterPrefMultiSim:Landroid/preference/Preference;

.field private mSmsValidityPeriodPref:Landroid/preference/Preference;

.field private mSmsValidityPeriodPrefMultiSim:Landroid/preference/Preference;

.field private mStringReplacementPlugin:Lcom/mediatek/mms/ext/IStringReplacement;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 146
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mCurrentSimCount:I

    .line 780
    new-instance v0, Lcom/android/mms/ui/SmsPreferenceActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SmsPreferenceActivity$2;-><init>(Lcom/android/mms/ui/SmsPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSimReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SmsPreferenceActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mNumberText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SmsPreferenceActivity;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SmsPreferenceActivity;->isValidAddr(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SmsPreferenceActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mListSimInfo:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SmsPreferenceActivity;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsLocation:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/SmsPreferenceActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mNumberTextDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/SmsPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/mms/ui/SmsPreferenceActivity;->setMessagePreferences()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/ui/SmsPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/mms/ui/SmsPreferenceActivity;->setListPrefSummary()V

    return-void
.end method

.method private addSmsInputModePreference()V
    .locals 2

    .prologue
    .line 365
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsEncodingTypeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 366
    const-string v1, "pref_key_sms_input_mode"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsInputMode:Landroid/preference/ListPreference;

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    const-string v1, "pref_key_sms_settings"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 369
    .local v0, smsCategory:Landroid/preference/PreferenceCategory;
    const-string v1, "pref_key_sms_input_mode"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsInputMode:Landroid/preference/ListPreference;

    .line 370
    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsInputMode:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 371
    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsInputMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private changeSingleCardKeyToSimRelated()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 378
    invoke-static {p0}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mListSimInfo:Ljava/util/List;

    .line 379
    const/4 v2, 0x0

    .line 380
    .local v2, singleCardInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    iget-object v7, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mListSimInfo:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_0

    .line 381
    iget-object v7, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mListSimInfo:Ljava/util/List;

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #singleCardInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    check-cast v2, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    .line 383
    .restart local v2       #singleCardInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    :cond_0
    if-nez v2, :cond_2

    .line 427
    :cond_1
    :goto_0
    return-void

    .line 386
    :cond_2
    iget-object v7, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mListSimInfo:Ljava/util/List;

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v7}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 387
    .local v1, simId:Ljava/lang/Long;
    const-string v7, "SmsPreferenceActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "changeSingleCardKeyToSimRelated Got simId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string v7, "pref_key_sms_delivery_reports"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsDeliveryReport:Landroid/preference/CheckBoxPreference;

    .line 390
    const-string v7, "pref_key_sms_service_center"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsServiceCenterPref:Landroid/preference/Preference;

    .line 392
    const-string v7, "pref_key_sms_validity_period"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsValidityPeriodPref:Landroid/preference/Preference;

    .line 394
    const-string v7, "pref_key_manage_sim_messages"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    .line 397
    iget-object v7, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mStringReplacementPlugin:Lcom/mediatek/mms/ext/IStringReplacement;

    const/4 v8, 0x3

    invoke-interface {v7, v8}, Lcom/mediatek/mms/ext/IStringReplacement;->getCTStrings(I)Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, ctString:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mStringReplacementPlugin:Lcom/mediatek/mms/ext/IStringReplacement;

    invoke-interface {v7}, Lcom/mediatek/mms/ext/IStringReplacement;->isEnableStringReplacement()Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v0, :cond_3

    .line 399
    iget-object v7, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 400
    iget-object v7, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    iget-object v8, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mStringReplacementPlugin:Lcom/mediatek/mms/ext/IStringReplacement;

    const/4 v9, 0x4

    invoke-interface {v8, v9}, Lcom/mediatek/mms/ext/IStringReplacement;->getCTStrings(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 405
    :cond_3
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mManageSimPrefMultiSim:Landroid/preference/Preference;

    .line 406
    const-string v7, "pref_key_sms_settings"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 407
    .local v4, smsCategory:Landroid/preference/PreferenceCategory;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsMultiSaveLocationEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 408
    iget-object v7, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mListSimInfo:Ljava/util/List;

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v7}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v3

    .line 409
    .local v3, slotid:I
    const-string v7, "pref_key_sms_save_location"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsLocation:Landroid/preference/ListPreference;

    .line 410
    iget-object v7, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsLocation:Landroid/preference/ListPreference;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v9, v3

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "pref_key_sms_save_location"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 411
    const-string v7, "com.android.mms_preferences"

    invoke-virtual {p0, v7, v12}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 412
    .local v6, spr:Landroid/content/SharedPreferences;
    iget-object v7, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsLocation:Landroid/preference/ListPreference;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v9, v3

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "pref_key_sms_save_location"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Phone"

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 415
    .end local v3           #slotid:I
    .end local v6           #spr:Landroid/content/SharedPreferences;
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSIMSmsAtSettingEnabled()Z

    move-result v7

    if-nez v7, :cond_5

    .line 416
    iget-object v7, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    if-eqz v7, :cond_5

    .line 417
    iget-object v7, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 421
    :cond_5
    iget-object v7, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsDeliveryReport:Landroid/preference/CheckBoxPreference;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "pref_key_sms_delivery_reports"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 423
    const-string v7, "com.android.mms_preferences"

    invoke-virtual {p0, v7, v12}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 424
    .local v5, sp:Landroid/content/SharedPreferences;
    iget-object v7, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsDeliveryReport:Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_1

    .line 425
    iget-object v7, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsDeliveryReport:Landroid/preference/CheckBoxPreference;

    iget-object v8, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsDeliveryReport:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_0
.end method

.method private isValidAddr(Ljava/lang/String;)Z
    .locals 8
    .parameter "address"

    .prologue
    const/16 v7, 0x39

    const/16 v6, 0x30

    .line 628
    const/4 v2, 0x1

    .line 629
    .local v2, ret:Z
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v2

    .line 647
    .end local v2           #ret:Z
    .local v3, ret:I
    :goto_0
    return v3

    .line 632
    .end local v3           #ret:I
    .restart local v2       #ret:Z
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_4

    .line 633
    const/4 v1, 0x1

    .local v1, i:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, count:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 634
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-le v4, v7, :cond_3

    .line 635
    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_2
    move v3, v2

    .line 647
    .restart local v3       #ret:I
    goto :goto_0

    .line 633
    .end local v3           #ret:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 640
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_4
    const/4 v1, 0x0

    .restart local v1       #i:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .restart local v0       #count:I
    :goto_3
    if-ge v1, v0, :cond_2

    .line 641
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_5

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-le v4, v7, :cond_6

    .line 642
    :cond_5
    const/4 v2, 0x0

    .line 643
    goto :goto_2

    .line 640
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method private restoreDefaultPreferences()V
    .locals 8

    .prologue
    .line 691
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 694
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {p0}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mListSimInfo:Ljava/util/List;

    .line 695
    iget-object v5, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mListSimInfo:Ljava/util/List;

    if-eqz v5, :cond_3

    .line 696
    iget-object v5, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mListSimInfo:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 697
    .local v2, simCount:I
    if-lez v2, :cond_3

    .line 698
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 699
    iget-object v5, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mListSimInfo:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v5}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 700
    .local v3, simId:Ljava/lang/Long;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "pref_key_sms_delivery_reports"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 701
    iget-object v5, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mListSimInfo:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v5}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v4

    .line 702
    .local v4, slotid:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsMultiSaveLocationEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 704
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f08

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 705
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "pref_key_sms_save_location"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Phone"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 712
    :cond_0
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsValidityPeriodEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 713
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "pref_key_sms_validity_period"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 698
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 708
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "pref_key_sms_save_location"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Device"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 729
    .end local v1           #i:I
    .end local v2           #simCount:I
    .end local v3           #simId:Ljava/lang/Long;
    .end local v4           #slotid:I
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsEncodingTypeEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 730
    const-string v5, "pref_key_sms_input_mode"

    const-string v6, "Automatic"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 732
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getForwardWithSenderEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 733
    const-string v5, "pref_key_forward_with_sender"

    const/4 v6, 0x1

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 735
    :cond_5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 736
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 737
    invoke-direct {p0}, Lcom/android/mms/ui/SmsPreferenceActivity;->setMessagePreferences()V

    .line 738
    invoke-direct {p0}, Lcom/android/mms/ui/SmsPreferenceActivity;->setListPrefSummary()V

    .line 739
    return-void
.end method

.method private setListPrefSummary()V
    .locals 9

    .prologue
    const/high16 v8, 0x7f08

    .line 182
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 184
    .local v4, sp:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 185
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 186
    const-string v5, "pref_key_device_type"

    const-string v6, "Phone"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 190
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 193
    const/4 v1, 0x0

    .line 194
    .local v1, saveLocation:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsMultiSaveLocationEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 196
    invoke-static {p0}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v2

    .line 197
    .local v2, simCount:I
    const/4 v3, 0x0

    .line 198
    .local v3, slotId:I
    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    .line 199
    invoke-static {p0}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v5}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v3

    .line 200
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v6, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "pref_key_sms_save_location"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Phone"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    .end local v2           #simCount:I
    .end local v3           #slotId:I
    :cond_0
    if-nez v1, :cond_1

    .line 209
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 210
    const-string v5, "pref_key_sms_save_location"

    const-string v6, "Phone"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 215
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 216
    iget-object v5, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsLocation:Landroid/preference/ListPreference;

    const v6, 0x7f06000c

    const v7, 0x7f06000d

    invoke-static {p0, v1, v6, v7}, Lcom/android/mms/ui/MessageUtils;->getVisualTextName(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 224
    :goto_2
    return-void

    .line 188
    .end local v1           #saveLocation:Ljava/lang/String;
    :cond_2
    const-string v5, "pref_key_device_type"

    const-string v6, "Device"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 212
    .restart local v1       #saveLocation:Ljava/lang/String;
    :cond_3
    const-string v5, "pref_key_sms_save_location"

    const-string v6, "Device"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 220
    :cond_4
    iget-object v5, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsLocation:Landroid/preference/ListPreference;

    const v6, 0x7f06000e

    const v7, 0x7f06000f

    invoke-static {p0, v1, v6, v7}, Lcom/android/mms/ui/MessageUtils;->getVisualTextName(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private setMessagePreferences()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 244
    invoke-static {p0}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v4

    iput v4, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mCurrentSimCount:I

    .line 246
    const-string v4, "SmsPreferenceActivity"

    const-string v5, "MTK_GEMINI_SUPPORT is true"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v4, "SmsPreferenceActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCurrentSimCount is :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mCurrentSimCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget v4, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mCurrentSimCount:I

    if-gt v4, v8, :cond_6

    .line 249
    const v4, 0x7f050010

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 256
    :goto_0
    const-string v4, "pref_key_quick_text_editor"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsQuickTextEditorPref:Landroid/preference/Preference;

    .line 257
    const-string v4, "pref_key_sms_save_location"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsLocation:Landroid/preference/ListPreference;

    .line 258
    iget-object v4, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsLocation:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 259
    const-string v4, "pref_key_sms_settings"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 263
    .local v2, smsCategory:Landroid/preference/PreferenceCategory;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsValidityPeriodEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 264
    const-string v4, "pref_key_sms_validity_period"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsValidityPeriodPref:Landroid/preference/Preference;

    .line 265
    iget-object v4, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsValidityPeriodPref:Landroid/preference/Preference;

    if-eqz v4, :cond_0

    .line 266
    iget-object v4, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsValidityPeriodPref:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 270
    :cond_0
    iget v4, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mCurrentSimCount:I

    if-nez v4, :cond_2

    .line 274
    const-string v4, "pref_key_manage_sim_messages"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    .line 275
    iget-object v4, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 276
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSIMSmsAtSettingEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 277
    iget-object v4, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 280
    :cond_1
    const-string v4, "pref_key_sms_service_center"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsServiceCenterPref:Landroid/preference/Preference;

    .line 281
    iget-object v4, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsServiceCenterPref:Landroid/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 282
    const-string v4, "pref_key_sms_delivery_reports"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsDeliveryReport:Landroid/preference/CheckBoxPreference;

    .line 283
    iget-object v4, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsDeliveryReport:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 285
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsValidityPeriodEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 286
    const-string v4, "pref_key_sms_validity_period"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsValidityPeriodPref:Landroid/preference/Preference;

    .line 287
    iget-object v4, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsValidityPeriodPref:Landroid/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 317
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/SmsPreferenceActivity;->addSmsInputModePreference()V

    .line 320
    const-string v4, "SmsPreferenceActivity"

    const-string v5, "MTK_GEMINI_SUPPORT is true"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget v4, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mCurrentSimCount:I

    if-ne v4, v8, :cond_7

    .line 322
    const-string v4, "SmsPreferenceActivity"

    const-string v5, "single sim"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-direct {p0}, Lcom/android/mms/ui/SmsPreferenceActivity;->changeSingleCardKeyToSimRelated()V

    .line 326
    iget-object v4, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mStringReplacementPlugin:Lcom/mediatek/mms/ext/IStringReplacement;

    invoke-interface {v4}, Lcom/mediatek/mms/ext/IStringReplacement;->getSaveLocationString()[Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, location:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mListSimInfo:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v4}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v1

    .line 328
    .local v1, slotId:I
    iget-object v4, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mStringReplacementPlugin:Lcom/mediatek/mms/ext/IStringReplacement;

    invoke-interface {v4}, Lcom/mediatek/mms/ext/IStringReplacement;->isEnableStringReplacement()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isUSimType(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 330
    iget-object v4, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsLocation:Landroid/preference/ListPreference;

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 337
    .end local v0           #location:[Ljava/lang/String;
    .end local v1           #slotId:I
    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getForwardWithSenderEnabled()Z

    move-result v4

    if-nez v4, :cond_8

    .line 338
    const-string v4, "pref_key_forward_with_sender"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsForwardWithSender:Landroid/preference/CheckBoxPreference;

    .line 339
    iget-object v4, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsForwardWithSender:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 351
    :cond_4
    :goto_2
    iget v4, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mCurrentSimCount:I

    if-nez v4, :cond_5

    .line 352
    iget-object v4, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsLocation:Landroid/preference/ListPreference;

    const-string v5, "pref_key_sms_save_location"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f08

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_a

    .line 355
    iget-object v4, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsLocation:Landroid/preference/ListPreference;

    const-string v5, "Phone"

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 359
    :goto_3
    iget-object v4, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsLocation:Landroid/preference/ListPreference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 361
    :cond_5
    return-void

    .line 251
    .end local v2           #smsCategory:Landroid/preference/PreferenceCategory;
    :cond_6
    const v4, 0x7f05000f

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 333
    .restart local v2       #smsCategory:Landroid/preference/PreferenceCategory;
    :cond_7
    iget v4, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mCurrentSimCount:I

    if-le v4, v8, :cond_3

    .line 334
    invoke-direct {p0}, Lcom/android/mms/ui/SmsPreferenceActivity;->setMultiCardPreference()V

    goto :goto_1

    .line 341
    :cond_8
    const-string v4, "pref_key_forward_with_sender"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsForwardWithSender:Landroid/preference/CheckBoxPreference;

    .line 342
    const-string v4, "com.android.mms_preferences"

    invoke-virtual {p0, v4, v8}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 343
    .local v3, sp:Landroid/content/SharedPreferences;
    iget-object v4, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsForwardWithSender:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_9

    .line 344
    iget-object v4, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsForwardWithSender:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsForwardWithSender:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 347
    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsDirMode()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    if-eqz v4, :cond_4

    .line 348
    const-string v4, "pref_key_sms_settings"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 357
    .end local v3           #sp:Landroid/content/SharedPreferences;
    :cond_a
    iget-object v4, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsLocation:Landroid/preference/ListPreference;

    const-string v5, "Device"

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private setMultiCardPreference()V
    .locals 7

    .prologue
    const v6, 0x7f0b0008

    .line 430
    const-string v3, "pref_key_sms_delivery_reports"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsDeliveryReportMultiSim:Landroid/preference/Preference;

    .line 431
    const-string v3, "pref_key_sms_service_center"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsServiceCenterPrefMultiSim:Landroid/preference/Preference;

    .line 432
    const-string v3, "pref_key_sms_validity_period"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsValidityPeriodPrefMultiSim:Landroid/preference/Preference;

    .line 433
    const-string v3, "pref_key_manage_sim_messages"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mManageSimPrefMultiSim:Landroid/preference/Preference;

    .line 436
    iget-object v3, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mStringReplacementPlugin:Lcom/mediatek/mms/ext/IStringReplacement;

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Lcom/mediatek/mms/ext/IStringReplacement;->getCTStrings(I)Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, ctString:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mStringReplacementPlugin:Lcom/mediatek/mms/ext/IStringReplacement;

    invoke-interface {v3}, Lcom/mediatek/mms/ext/IStringReplacement;->isEnableStringReplacement()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 438
    iget-object v3, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mManageSimPrefMultiSim:Landroid/preference/Preference;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 439
    iget-object v3, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mManageSimPrefMultiSim:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mStringReplacementPlugin:Lcom/mediatek/mms/ext/IStringReplacement;

    const/4 v5, 0x4

    invoke-interface {v4, v5}, Lcom/mediatek/mms/ext/IStringReplacement;->getCTStrings(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 444
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    .line 445
    const-string v3, "pref_key_sms_settings"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 446
    .local v2, smsCategory:Landroid/preference/PreferenceCategory;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsMultiSaveLocationEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 447
    iget-object v3, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsLocation:Landroid/preference/ListPreference;

    if-eqz v3, :cond_1

    .line 448
    iget-object v3, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsLocation:Landroid/preference/ListPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 449
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 450
    .local v1, saveLocationMultiSim:Landroid/preference/Preference;
    const-string v3, "pref_key_sms_save_location"

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 451
    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 452
    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 453
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 454
    const-string v3, "pref_key_sms_save_location"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsSaveLoactionMultiSim:Landroid/preference/Preference;

    .line 458
    .end local v1           #saveLocationMultiSim:Landroid/preference/Preference;
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSIMSmsAtSettingEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 459
    iget-object v3, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mManageSimPrefMultiSim:Landroid/preference/Preference;

    if-eqz v3, :cond_2

    .line 460
    iget-object v3, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mManageSimPrefMultiSim:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 463
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsDeliveryReportMultiSim:Landroid/preference/Preference;

    const-string v4, "pref_key_sms_delivery_reports"

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 465
    return-void
.end method

.method private showToast(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 768
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 769
    .local v0, t:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 770
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 774
    const-string v0, "SmsPreferenceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged: newConfig = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 776
    new-instance v0, Lcom/mediatek/encapsulation/android/widget/EncapsulatedListView;

    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/encapsulation/android/widget/EncapsulatedListView;-><init>(Landroid/widget/ListView;)V

    invoke-virtual {v0}, Lcom/mediatek/encapsulation/android/widget/EncapsulatedListView;->clearScrapViewsIfNeeded()V

    .line 777
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 228
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 229
    const-string v1, "SmsPreferenceActivity"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const/16 v1, 0xf

    invoke-static {v1}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IStringReplacement;

    iput-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mStringReplacementPlugin:Lcom/mediatek/mms/ext/IStringReplacement;

    .line 234
    const/16 v1, 0xb

    invoke-static {v1}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IMmsFailedNotify;

    iput-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mMmsFailedNotifyPlugin:Lcom/mediatek/mms/ext/IMmsFailedNotify;

    .line 237
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 238
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 239
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 240
    invoke-direct {p0}, Lcom/android/mms/ui/SmsPreferenceActivity;->setMessagePreferences()V

    .line 241
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 468
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 469
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 470
    const v0, 0x7f0b029c

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 471
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 476
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 488
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 480
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 483
    :sswitch_1
    invoke-direct {p0}, Lcom/android/mms/ui/SmsPreferenceActivity;->restoreDefaultPreferences()V

    goto :goto_0

    .line 476
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 157
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 158
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v7, 0x1

    .line 743
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 744
    .local v0, key:Ljava/lang/String;
    const/4 v2, 0x0

    .line 745
    .local v2, slotId:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsMultiSaveLocationEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 746
    invoke-static {p0}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v1

    .line 747
    .local v1, simCount:I
    if-ne v1, v7, :cond_0

    .line 748
    invoke-static {p0}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v4}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v2

    .end local v1           #simCount:I
    :cond_0
    move-object v3, p2

    .line 751
    check-cast v3, Ljava/lang/String;

    .line 752
    .local v3, stored:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v5, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "pref_key_sms_save_location"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "pref_key_sms_save_location"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mCurrentSimCount:I

    if-le v4, v7, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsMultiSaveLocationEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 754
    :cond_1
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f08

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 755
    iget-object v4, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsLocation:Landroid/preference/ListPreference;

    const v5, 0x7f06000c

    const v6, 0x7f06000d

    invoke-static {p0, v3, v5, v6}, Lcom/android/mms/ui/MessageUtils;->getVisualTextName(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 764
    :cond_2
    :goto_0
    return v7

    .line 759
    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsLocation:Landroid/preference/ListPreference;

    const v5, 0x7f06000e

    const v6, 0x7f06000f

    invoke-static {p0, v3, v5, v6}, Lcom/android/mms/ui/MessageUtils;->getVisualTextName(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 24
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SmsPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 495
    invoke-static/range {p0 .. p0}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/SmsPreferenceActivity;->mListSimInfo:Ljava/util/List;

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SmsPreferenceActivity;->mListSimInfo:Ljava/util/List;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v13

    .line 497
    .local v13, slotId:I
    const-string v19, "SmsPreferenceActivity"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "slotId is : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v13, v0, :cond_0

    .line 499
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 500
    .local v12, it:Landroid/content/Intent;
    const-class v19, Lcom/android/mms/ui/ManageSimMessages;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 501
    const-string v19, "SlotId"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 502
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 623
    .end local v12           #it:Landroid/content/Intent;
    .end local v13           #slotId:I
    :cond_0
    :goto_0
    invoke-super/range {p0 .. p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v19

    :goto_1
    return v19

    .line 507
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsQuickTextEditorPref:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 508
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 509
    .local v11, intent:Landroid/content/Intent;
    const-class v19, Lcom/android/mms/ui/SmsTemplateEditActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 510
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 511
    .end local v11           #intent:Landroid/content/Intent;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsDeliveryReportMultiSim:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 512
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 513
    .restart local v12       #it:Landroid/content/Intent;
    const-class v19, Lcom/android/mms/ui/MultiSimPreferenceActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 514
    const-string v19, "preference"

    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    const-string v19, "preferenceTitleId"

    const v20, 0x7f0b02aa

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 516
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 517
    .end local v12           #it:Landroid/content/Intent;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsDeliveryReport:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportCTFeature()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 519
    invoke-static/range {p0 .. p0}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/SmsPreferenceActivity;->mListSimInfo:Ljava/util/List;

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SmsPreferenceActivity;->mListSimInfo:Ljava/util/List;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v10

    .line 521
    .local v10, id:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsDeliveryReport:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v19

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/android/mms/MmsConfig;->isAllowDRWhenRoaming(Landroid/content/Context;I)Z

    move-result v19

    if-nez v19, :cond_0

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsDeliveryReport:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SmsPreferenceActivity;->mMmsFailedNotifyPlugin:Lcom/mediatek/mms/ext/IMmsFailedNotify;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SmsPreferenceActivity;->mMmsFailedNotifyPlugin:Lcom/mediatek/mms/ext/IMmsFailedNotify;

    move-object/from16 v19, v0

    const/16 v20, 0x6

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Lcom/mediatek/mms/ext/IMmsFailedNotify;->popupToast(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 527
    .end local v10           #id:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsServiceCenterPref:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 528
    invoke-static/range {p0 .. p0}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/SmsPreferenceActivity;->mListSimInfo:Ljava/util/List;

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SmsPreferenceActivity;->mListSimInfo:Ljava/util/List;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SmsPreferenceActivity;->mListSimInfo:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 530
    const-string v19, "SmsPreferenceActivity"

    const-string v20, "there is no sim card"

    invoke-static/range {v19 .. v20}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const/16 v19, 0x1

    goto/16 :goto_1

    .line 533
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SmsPreferenceActivity;->mListSimInfo:Ljava/util/List;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v10

    .line 534
    .restart local v10       #id:I
    invoke-static {v10}, Lcom/android/mms/ui/MessageUtils;->isUSimType(I)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 535
    const v19, 0x7f0b0106

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/mms/ui/SmsPreferenceActivity;->showToast(I)V

    goto/16 :goto_0

    .line 537
    :cond_6
    invoke-static {v10}, Lcom/mediatek/encapsulation/android/telephony/gemini/EncapsulatedGeminiSmsManager;->isSmsReady(I)Z

    move-result v19

    if-nez v19, :cond_7

    .line 538
    const v19, 0x7f0b01f5

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/mms/ui/SmsPreferenceActivity;->showToast(I)V

    .line 539
    const/16 v19, 0x1

    goto/16 :goto_1

    .line 541
    :cond_7
    new-instance v6, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 542
    .local v6, dialog:Landroid/app/AlertDialog$Builder;
    new-instance v19, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/SmsPreferenceActivity;->mNumberText:Landroid/widget/EditText;

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SmsPreferenceActivity;->mNumberText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const v20, 0x7f0b0268

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setHint(I)V

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SmsPreferenceActivity;->mNumberText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->computeScroll()V

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SmsPreferenceActivity;->mNumberText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Landroid/text/InputFilter$LengthFilter;

    const/16 v23, 0x14

    invoke-direct/range {v22 .. v23}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v22, v20, v21

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SmsPreferenceActivity;->mNumberText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setInputType(I)V

    .line 547
    invoke-static {}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->getInstance()Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;

    move-result-object v14

    .line 551
    .local v14, teleService:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SmsPreferenceActivity;->mListSimInfo:Ljava/util/List;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v13

    .line 552
    .restart local v13       #slotId:I
    invoke-virtual {v14, v13}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->getScAddressGemini(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 560
    .end local v13           #slotId:I
    .local v8, gotScNumber:Ljava/lang/String;
    :goto_2
    const-string v19, "SmsPreferenceActivity"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "gotScNumber is: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SmsPreferenceActivity;->mNumberText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 562
    const v19, 0x7f02009f

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    const v20, 0x7f0b000a

    invoke-virtual/range {v19 .. v20}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SmsPreferenceActivity;->mNumberText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    const v20, 0x7f0b0006

    new-instance v21, Lcom/android/mms/ui/SmsPreferenceActivity$PositiveButtonListener;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/SmsPreferenceActivity$PositiveButtonListener;-><init>(Lcom/android/mms/ui/SmsPreferenceActivity;Lcom/android/mms/ui/SmsPreferenceActivity$1;)V

    invoke-virtual/range {v19 .. v21}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    const v20, 0x7f0b0007

    new-instance v21, Lcom/android/mms/ui/SmsPreferenceActivity$NegativeButtonListener;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/SmsPreferenceActivity$NegativeButtonListener;-><init>(Lcom/android/mms/ui/SmsPreferenceActivity;Lcom/android/mms/ui/SmsPreferenceActivity$1;)V

    invoke-virtual/range {v19 .. v21}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/SmsPreferenceActivity;->mNumberTextDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 556
    .end local v8           #gotScNumber:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 557
    .local v7, e:Landroid/os/RemoteException;
    const/4 v8, 0x0

    .line 558
    .restart local v8       #gotScNumber:Ljava/lang/String;
    const-string v19, "Mms/Txn"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "getScAddressGemini is failed.\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 567
    .end local v6           #dialog:Landroid/app/AlertDialog$Builder;
    .end local v7           #e:Landroid/os/RemoteException;
    .end local v8           #gotScNumber:Ljava/lang/String;
    .end local v10           #id:I
    .end local v14           #teleService:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsValidityPeriodPref:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SmsPreferenceActivity;->mListSimInfo:Ljava/util/List;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v13

    .line 570
    .restart local v13       #slotId:I
    const/16 v19, 0x6

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v18, v0

    fill-array-data v18, :array_0

    .line 576
    .local v18, validityPeroids:[I
    const/16 v19, 0x6

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    const/16 v19, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0b000c

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    aput-object v20, v16, v19

    const/16 v19, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0b000d

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    aput-object v20, v16, v19

    const/16 v19, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0b000e

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    aput-object v20, v16, v19

    const/16 v19, 0x3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0b000f

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    aput-object v20, v16, v19

    const/16 v19, 0x4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0b0010

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    aput-object v20, v16, v19

    const/16 v19, 0x5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0b0011

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    aput-object v20, v16, v19

    .line 583
    .local v16, validityItems:[Ljava/lang/CharSequence;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v0, v13

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "pref_key_sms_validity_period"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 584
    .local v17, validityKey:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    const/16 v20, -0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 586
    .local v15, vailidity:I
    const/4 v5, 0x0

    .line 587
    .local v5, currentPosition:I
    const-string v19, "SmsPreferenceActivity"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "validity found the res = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const/4 v9, 0x0

    .local v9, i:I
    :goto_3
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v9, v0, :cond_a

    .line 589
    aget v19, v18, v9

    move/from16 v0, v19

    if-ne v15, v0, :cond_9

    .line 590
    const-string v19, "SmsPreferenceActivity"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "validity found the position = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    move v5, v9

    .line 588
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 594
    :cond_a
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 595
    .local v4, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0b000b

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 596
    new-instance v19, Lcom/android/mms/ui/SmsPreferenceActivity$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/ui/SmsPreferenceActivity$1;-><init>(Lcom/android/mms/ui/SmsPreferenceActivity;Ljava/lang/String;[I)V

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 605
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 607
    .end local v4           #builder:Landroid/app/AlertDialog$Builder;
    .end local v5           #currentPosition:I
    .end local v9           #i:I
    .end local v13           #slotId:I
    .end local v15           #vailidity:I
    .end local v16           #validityItems:[Ljava/lang/CharSequence;
    .end local v17           #validityKey:Ljava/lang/String;
    .end local v18           #validityPeroids:[I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsServiceCenterPrefMultiSim:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsValidityPeriodPrefMultiSim:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SmsPreferenceActivity;->mManageSimPrefMultiSim:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsSaveLoactionMultiSim:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/SmsPreferenceActivity;->mCurrentSimCount:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_0

    .line 609
    :cond_c
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 610
    .restart local v12       #it:Landroid/content/Intent;
    const-class v19, Lcom/android/mms/ui/SelectCardPreferenceActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 611
    const-string v19, "preference"

    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsServiceCenterPrefMultiSim:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_e

    .line 613
    const-string v19, "preferenceTitleId"

    const v20, 0x7f0b000a

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 621
    :cond_d
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 614
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsValidityPeriodPrefMultiSim:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_f

    .line 615
    const-string v19, "preferenceTitleId"

    const v20, 0x7f0b000b

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_4

    .line 616
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SmsPreferenceActivity;->mManageSimPrefMultiSim:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_10

    .line 617
    const-string v19, "preferenceTitleId"

    const v20, 0x7f0b02a7

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_4

    .line 618
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsSaveLoactionMultiSim:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_d

    .line 619
    const-string v19, "preferenceTitleId"

    const v20, 0x7f0b0008

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_4

    .line 570
    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xbt 0x0t 0x0t 0x0t
        0x47t 0x0t 0x0t 0x0t
        0x8ft 0x0t 0x0t 0x0t
        0xa7t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 162
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 163
    invoke-direct {p0}, Lcom/android/mms/ui/SmsPreferenceActivity;->setListPrefSummary()V

    .line 164
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 168
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 169
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 170
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 171
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 175
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 176
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSimReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 179
    :cond_0
    return-void
.end method
