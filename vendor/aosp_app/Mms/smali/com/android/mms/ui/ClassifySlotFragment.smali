.class public Lcom/android/mms/ui/ClassifySlotFragment;
.super Landroid/preference/PreferenceFragment;
.source "ClassifySlotFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ClassifySlotFragment$1;,
        Lcom/android/mms/ui/ClassifySlotFragment$NegativeButtonListener;,
        Lcom/android/mms/ui/ClassifySlotFragment$PositiveButtonListener;
    }
.end annotation


# static fields
.field public static final AUTO_RETRIEVAL:Ljava/lang/String; = "pref_key_mms_auto_retrieval"

.field public static final CELL_BROADCAST:Ljava/lang/String; = "pref_key_cell_broadcast"

.field private static final DEVICE_TYPE:Ljava/lang/String; = "pref_key_device_type"

.field private static final LOCATION_PHONE:Ljava/lang/String; = "Phone"

.field private static final LOCATION_SIM:Ljava/lang/String; = "Sim"

.field private static final MAX_EDITABLE_LENGTH:I = 0x14

.field public static final MMS_DELIVERY_REPORT_MODE:Ljava/lang/String; = "pref_key_mms_delivery_reports"

.field private static final MMS_PREFERENCE:Ljava/lang/String; = "com.android.mms_preferences"

.field public static final MMS_SETTINGS:Ljava/lang/String; = "pref_key_mms_settings"

.field public static final READ_REPORT_AUTO_REPLY:Ljava/lang/String; = "pref_key_mms_auto_reply_read_reports"

.field public static final READ_REPORT_MODE:Ljava/lang/String; = "pref_key_mms_read_reports"

.field public static final RETRIEVAL_DURING_ROAMING:Ljava/lang/String; = "pref_key_mms_retrieval_during_roaming"

.field public static final SETTING_SAVE_LOCATION:Ljava/lang/String; = "Phone"

.field public static final SETTING_SAVE_LOCATION_TABLET:Ljava/lang/String; = "Device"

.field private static final SLOT_ID:Ljava/lang/String; = "slotId"

.field public static final SMS_DELIVERY_REPORT_MODE:Ljava/lang/String; = "pref_key_sms_delivery_reports"

.field public static final SMS_MANAGE_SIM_MESSAGES:Ljava/lang/String; = "pref_key_manage_sim_messages"

.field public static final SMS_SAVE_LOCATION:Ljava/lang/String; = "pref_key_sms_save_location"

.field public static final SMS_SERVICE_CENTER:Ljava/lang/String; = "pref_key_sms_service_center"

.field public static final SMS_SETTINGS:Ljava/lang/String; = "pref_key_sms_settings"

.field private static final TAG:Ljava/lang/String; = "ClassifySlotFragment"


# instance fields
.field public SUB_TITLE_NAME:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mCBsettingPref:Landroid/preference/Preference;

.field private mManageSimPref:Landroid/preference/Preference;

.field private mMmsAutoReplyReadReport:Landroid/preference/CheckBoxPreference;

.field private mMmsAutoRetrieval:Landroid/preference/CheckBoxPreference;

.field private mMmsDeliveryReport:Landroid/preference/CheckBoxPreference;

.field private mMmsFailedNotifyPlugin:Lcom/mediatek/mms/ext/IMmsFailedNotify;

.field private mMmsReadReport:Landroid/preference/CheckBoxPreference;

.field private mMmsRetrievalDuringRoaming:Landroid/preference/CheckBoxPreference;

.field private mNumberText:Landroid/widget/EditText;

.field private mNumberTextDialog:Landroid/app/AlertDialog;

.field private mSlotId:I

.field private mSmsDeliveryReport:Landroid/preference/CheckBoxPreference;

.field private mSmsLocation:Landroid/preference/ListPreference;

.field private mSmsServiceCenterPref:Landroid/preference/Preference;

.field private mStringReplacementPlugin:Lcom/mediatek/mms/ext/IStringReplacement;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mSlotId:I

    .line 170
    const-string v0, "sub_title_name"

    iput-object v0, p0, Lcom/android/mms/ui/ClassifySlotFragment;->SUB_TITLE_NAME:Ljava/lang/String;

    .line 435
    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ClassifySlotFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mNumberText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ClassifySlotFragment;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ClassifySlotFragment;->isValidAddr(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ClassifySlotFragment;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ClassifySlotFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mSlotId:I

    return v0
.end method

.method private changeSingleCardKeyToSimRelated()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 283
    iget-object v4, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mActivity:Landroid/app/Activity;

    iget v5, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mSlotId:I

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    move-result-object v2

    .line 284
    .local v2, simInfoManager:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    invoke-virtual {v2}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 285
    .local v1, simId:Ljava/lang/Long;
    const-string v4, "ClassifySlotFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changeSingleCardKeyToSimRelated Got simId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v4, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mActivity:Landroid/app/Activity;

    const-string v5, "com.android.mms_preferences"

    invoke-virtual {v4, v5, v9}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 289
    .local v3, spr:Landroid/content/SharedPreferences;
    iget-object v4, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mSmsLocation:Landroid/preference/ListPreference;

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsMultiSaveLocationEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 290
    iget-object v4, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mSmsLocation:Landroid/preference/ListPreference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mSlotId:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

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

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 291
    iget-object v4, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mSmsLocation:Landroid/preference/ListPreference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mSlotId:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

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

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 293
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mSmsDeliveryReport:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_1

    .line 294
    iget-object v4, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mSmsDeliveryReport:Landroid/preference/CheckBoxPreference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

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

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 295
    iget-object v4, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mSmsDeliveryReport:Landroid/preference/CheckBoxPreference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

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

    invoke-interface {v3, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 298
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mMmsDeliveryReport:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_2

    .line 299
    iget-object v4, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mMmsDeliveryReport:Landroid/preference/CheckBoxPreference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "pref_key_mms_delivery_reports"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 300
    iget-object v4, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mMmsDeliveryReport:Landroid/preference/CheckBoxPreference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "pref_key_mms_delivery_reports"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 303
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mMmsReadReport:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_3

    .line 304
    iget-object v4, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mMmsReadReport:Landroid/preference/CheckBoxPreference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "pref_key_mms_read_reports"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 305
    iget-object v4, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mMmsReadReport:Landroid/preference/CheckBoxPreference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "pref_key_mms_read_reports"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 307
    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mMmsAutoReplyReadReport:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_4

    .line 308
    iget-object v4, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mMmsAutoReplyReadReport:Landroid/preference/CheckBoxPreference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "pref_key_mms_auto_reply_read_reports"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 309
    iget-object v4, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mMmsAutoReplyReadReport:Landroid/preference/CheckBoxPreference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "pref_key_mms_auto_reply_read_reports"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 312
    :cond_4
    iget-object v4, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mMmsAutoRetrieval:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_5

    .line 313
    iget-object v4, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mMmsAutoRetrieval:Landroid/preference/CheckBoxPreference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "pref_key_mms_auto_retrieval"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 314
    iget-object v4, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mMmsAutoRetrieval:Landroid/preference/CheckBoxPreference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "pref_key_mms_auto_retrieval"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 316
    :cond_5
    iget-object v4, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mMmsRetrievalDuringRoaming:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_6

    .line 317
    iget-object v4, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mMmsRetrievalDuringRoaming:Landroid/preference/CheckBoxPreference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "pref_key_mms_auto_retrieval"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 318
    iget-object v4, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mMmsRetrievalDuringRoaming:Landroid/preference/CheckBoxPreference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "pref_key_mms_retrieval_during_roaming"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 319
    iget-object v4, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mMmsRetrievalDuringRoaming:Landroid/preference/CheckBoxPreference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "pref_key_mms_retrieval_during_roaming"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 323
    :cond_6
    iget-object v4, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mStringReplacementPlugin:Lcom/mediatek/mms/ext/IStringReplacement;

    const/4 v5, 0x3

    invoke-interface {v4, v5}, Lcom/mediatek/mms/ext/IStringReplacement;->getCTStrings(I)Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, ctString:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mStringReplacementPlugin:Lcom/mediatek/mms/ext/IStringReplacement;

    invoke-interface {v4}, Lcom/mediatek/mms/ext/IStringReplacement;->isEnableStringReplacement()Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v0, :cond_7

    iget v4, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mSlotId:I

    if-nez v4, :cond_7

    .line 325
    iget-object v4, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mManageSimPref:Landroid/preference/Preference;

    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v4, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mManageSimPref:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mStringReplacementPlugin:Lcom/mediatek/mms/ext/IStringReplacement;

    const/4 v6, 0x4

    invoke-interface {v5, v6}, Lcom/mediatek/mms/ext/IStringReplacement;->getCTStrings(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 330
    :cond_7
    return-void
.end method

.method private getVisualTextName(ILandroid/content/Context;Ljava/lang/String;II)Ljava/lang/CharSequence;
    .locals 6
    .parameter "slotId"
    .parameter "context"
    .parameter "enumName"
    .parameter "choiceNameResId"
    .parameter "choiceValueResId"

    .prologue
    .line 468
    const/4 v3, 0x0

    .line 469
    .local v3, visualNames:[Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mStringReplacementPlugin:Lcom/mediatek/mms/ext/IStringReplacement;

    invoke-interface {v4}, Lcom/mediatek/mms/ext/IStringReplacement;->isEnableStringReplacement()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 470
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isUSimType(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f06000c

    if-ne p4, v4, :cond_0

    .line 471
    iget-object v4, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mStringReplacementPlugin:Lcom/mediatek/mms/ext/IStringReplacement;

    invoke-interface {v4}, Lcom/mediatek/mms/ext/IStringReplacement;->getSaveLocationString()[Ljava/lang/String;

    move-result-object v2

    .line 472
    .local v2, location:[Ljava/lang/String;
    move-object v3, v2

    .line 479
    .end local v2           #location:[Ljava/lang/String;
    :goto_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 481
    .local v0, enumNames:[Ljava/lang/CharSequence;
    array-length v4, v3

    array-length v5, v0

    if-eq v4, v5, :cond_2

    .line 482
    const-string v4, ""

    .line 489
    :goto_1
    return-object v4

    .line 474
    .end local v0           #enumNames:[Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_0

    .line 477
    :cond_1
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_0

    .line 484
    .restart local v0       #enumNames:[Ljava/lang/CharSequence;
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    array-length v4, v0

    if-ge v1, v4, :cond_4

    .line 485
    aget-object v4, v0, v1

    invoke-virtual {v4, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 486
    aget-object v4, v3, v1

    goto :goto_1

    .line 484
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 489
    :cond_4
    const-string v4, ""

    goto :goto_1
.end method

.method private isValidAddr(Ljava/lang/String;)Z
    .locals 8
    .parameter "address"

    .prologue
    const/16 v7, 0x39

    const/16 v6, 0x30

    .line 443
    const/4 v2, 0x1

    .line 444
    .local v2, ret:Z
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v2

    .line 462
    .end local v2           #ret:Z
    .local v3, ret:I
    :goto_0
    return v3

    .line 447
    .end local v3           #ret:I
    .restart local v2       #ret:Z
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_4

    .line 448
    const/4 v1, 0x1

    .local v1, i:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, count:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 449
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-le v4, v7, :cond_3

    .line 450
    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_2
    move v3, v2

    .line 462
    .restart local v3       #ret:I
    goto :goto_0

    .line 448
    .end local v3           #ret:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 455
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

    .line 456
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_5

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-le v4, v7, :cond_6

    .line 457
    :cond_5
    const/4 v2, 0x0

    .line 458
    goto :goto_2

    .line 455
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public static newInstance(I)Lcom/android/mms/ui/ClassifySlotFragment;
    .locals 3
    .parameter "slotId"

    .prologue
    .line 240
    new-instance v1, Lcom/android/mms/ui/ClassifySlotFragment;

    invoke-direct {v1}, Lcom/android/mms/ui/ClassifySlotFragment;-><init>()V

    .line 241
    .local v1, cf:Lcom/android/mms/ui/ClassifySlotFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 242
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "slotId"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 243
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 244
    return-object v1
.end method

.method private setListPrefSummary()V
    .locals 9

    .prologue
    const/high16 v2, 0x7f08

    .line 514
    iget-object v0, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 516
    .local v7, sp:Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 517
    .local v6, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 518
    const-string v0, "pref_key_device_type"

    const-string v1, "Phone"

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 522
    :goto_0
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 524
    const/4 v3, 0x0

    .line 525
    .local v3, saveLocation:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsMultiSaveLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pref_key_sms_save_location"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Phone"

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 532
    :cond_0
    if-nez v3, :cond_1

    .line 534
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 535
    const-string v0, "pref_key_sms_save_location"

    const-string v1, "Phone"

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 540
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 541
    iget-object v8, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mSmsLocation:Landroid/preference/ListPreference;

    iget v1, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mSlotId:I

    iget-object v2, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mActivity:Landroid/app/Activity;

    const v4, 0x7f06000c

    const v5, 0x7f06000d

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ClassifySlotFragment;->getVisualTextName(ILandroid/content/Context;Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 547
    :goto_2
    return-void

    .line 520
    .end local v3           #saveLocation:Ljava/lang/String;
    :cond_2
    const-string v0, "pref_key_device_type"

    const-string v1, "Device"

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 537
    .restart local v3       #saveLocation:Ljava/lang/String;
    :cond_3
    const-string v0, "pref_key_sms_save_location"

    const-string v1, "Device"

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 544
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mSmsLocation:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f06000e

    const v4, 0x7f06000f

    invoke-static {v1, v3, v2, v4}, Lcom/android/mms/ui/MessageUtils;->getVisualTextName(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private setMessagePreferences()V
    .locals 3

    .prologue
    .line 249
    const v1, 0x7f050001

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 250
    const-string v1, "pref_key_sms_save_location"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mSmsLocation:Landroid/preference/ListPreference;

    .line 251
    const-string v1, "pref_key_sms_service_center"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mSmsServiceCenterPref:Landroid/preference/Preference;

    .line 252
    iget-object v1, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mSmsLocation:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 253
    const-string v1, "pref_key_sms_delivery_reports"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mSmsDeliveryReport:Landroid/preference/CheckBoxPreference;

    .line 254
    const-string v1, "pref_key_manage_sim_messages"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mManageSimPref:Landroid/preference/Preference;

    .line 256
    const-string v1, "pref_key_mms_delivery_reports"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mMmsDeliveryReport:Landroid/preference/CheckBoxPreference;

    .line 257
    const-string v1, "pref_key_mms_read_reports"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mMmsReadReport:Landroid/preference/CheckBoxPreference;

    .line 258
    const-string v1, "pref_key_mms_auto_reply_read_reports"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mMmsAutoReplyReadReport:Landroid/preference/CheckBoxPreference;

    .line 259
    const-string v1, "pref_key_mms_auto_retrieval"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mMmsAutoRetrieval:Landroid/preference/CheckBoxPreference;

    .line 260
    const-string v1, "pref_key_mms_retrieval_during_roaming"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mMmsRetrievalDuringRoaming:Landroid/preference/CheckBoxPreference;

    .line 262
    const-string v1, "pref_key_cell_broadcast"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mCBsettingPref:Landroid/preference/Preference;

    .line 263
    iget v1, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mSlotId:I

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isUSimType(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    :cond_0
    const-string v1, "ClassifySlotFragment"

    const-string v2, "MTK_GEMINI_SUPPORT is true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-direct {p0}, Lcom/android/mms/ui/ClassifySlotFragment;->changeSingleCardKeyToSimRelated()V

    .line 273
    iget-object v1, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mStringReplacementPlugin:Lcom/mediatek/mms/ext/IStringReplacement;

    invoke-interface {v1}, Lcom/mediatek/mms/ext/IStringReplacement;->getSaveLocationString()[Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, location:[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mStringReplacementPlugin:Lcom/mediatek/mms/ext/IStringReplacement;

    invoke-interface {v1}, Lcom/mediatek/mms/ext/IStringReplacement;->isEnableStringReplacement()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mSlotId:I

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isUSimType(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 276
    iget-object v1, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mSmsLocation:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 280
    :cond_1
    return-void
.end method

.method private showToast(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 405
    iget-object v1, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 406
    .local v0, t:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 407
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 227
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 228
    iput-object p1, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mActivity:Landroid/app/Activity;

    .line 229
    const-string v0, "ClassifySlotFragment"

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 194
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 195
    const-string v0, "ClassifySlotFragment"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 197
    if-eqz p1, :cond_0

    .line 198
    const-string v0, "slotId"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mSlotId:I

    .line 200
    :cond_0
    const/16 v0, 0xf

    invoke-static {v0}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mms/ext/IStringReplacement;

    iput-object v0, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mStringReplacementPlugin:Lcom/mediatek/mms/ext/IStringReplacement;

    .line 202
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mms/ext/IMmsFailedNotify;

    iput-object v0, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mMmsFailedNotifyPlugin:Lcom/mediatek/mms/ext/IMmsFailedNotify;

    .line 204
    invoke-direct {p0}, Lcom/android/mms/ui/ClassifySlotFragment;->setMessagePreferences()V

    .line 205
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 234
    const-string v0, "ClassifySlotFragment"

    const-string v1, "onDetach"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mActivity:Landroid/app/Activity;

    .line 236
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 237
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 494
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 495
    .local v6, key:Ljava/lang/String;
    const-string v0, "ClassifySlotFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, p2

    .line 496
    check-cast v3, Ljava/lang/String;

    .line 497
    .local v3, stored:Ljava/lang/String;
    const-string v0, "ClassifySlotFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const-string v0, "ClassifySlotFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mSlotId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pref_key_sms_save_location"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mSlotId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pref_key_sms_save_location"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_key_sms_save_location"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsMultiSaveLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 502
    const-string v0, "ClassifySlotFragment"

    const-string v1, "enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v7, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mSmsLocation:Landroid/preference/ListPreference;

    iget v1, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mSlotId:I

    iget-object v2, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mActivity:Landroid/app/Activity;

    const v4, 0x7f06000c

    const v5, 0x7f06000d

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ClassifySlotFragment;->getVisualTextName(ILandroid/content/Context;Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 510
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 506
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mSmsLocation:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f06000e

    const v4, 0x7f06000f

    invoke-static {v1, v3, v2, v4}, Lcom/android/mms/ui/MessageUtils;->getVisualTextName(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 11
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const v8, 0x7f0b0106

    const/4 v5, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 334
    iget-object v6, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mManageSimPref:Landroid/preference/Preference;

    if-ne p2, v6, :cond_1

    .line 336
    const-string v5, "ClassifySlotFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "slotId is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mSlotId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget v5, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mSlotId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 338
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 339
    .local v3, it:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mActivity:Landroid/app/Activity;

    const-class v6, Lcom/android/mms/ui/ManageSimMessages;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 340
    const-string v5, "SlotId"

    iget v6, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mSlotId:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 341
    invoke-virtual {p0, v3}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 401
    .end local v3           #it:Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v5

    :goto_1
    return v5

    .line 346
    :cond_1
    iget-object v6, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mSmsDeliveryReport:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportCTFeature()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 348
    iget-object v5, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mSmsDeliveryReport:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mActivity:Landroid/app/Activity;

    iget v6, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mSlotId:I

    invoke-static {v5, v6}, Lcom/android/mms/MmsConfig;->isAllowDRWhenRoaming(Landroid/content/Context;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 349
    iget-object v5, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mSmsDeliveryReport:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v10}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 350
    iget-object v5, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mMmsFailedNotifyPlugin:Lcom/mediatek/mms/ext/IMmsFailedNotify;

    if-eqz v5, :cond_0

    .line 351
    iget-object v5, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mMmsFailedNotifyPlugin:Lcom/mediatek/mms/ext/IMmsFailedNotify;

    const/4 v6, 0x6

    invoke-interface {v5, v6, v9}, Lcom/mediatek/mms/ext/IMmsFailedNotify;->popupToast(ILjava/lang/String;)V

    goto :goto_0

    .line 354
    :cond_2
    iget-object v6, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mSmsServiceCenterPref:Landroid/preference/Preference;

    if-ne p2, v6, :cond_5

    .line 355
    iget v6, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mSlotId:I

    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->isUSimType(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 356
    invoke-direct {p0, v8}, Lcom/android/mms/ui/ClassifySlotFragment;->showToast(I)V

    goto :goto_0

    .line 358
    :cond_3
    iget v6, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mSlotId:I

    invoke-static {v6}, Lcom/mediatek/encapsulation/android/telephony/gemini/EncapsulatedGeminiSmsManager;->isSmsReady(I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 359
    const v6, 0x7f0b01f5

    invoke-direct {p0, v6}, Lcom/android/mms/ui/ClassifySlotFragment;->showToast(I)V

    goto :goto_1

    .line 362
    :cond_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 363
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    new-instance v6, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mNumberText:Landroid/widget/EditText;

    .line 364
    iget-object v6, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mNumberText:Landroid/widget/EditText;

    const v7, 0x7f0b0268

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setHint(I)V

    .line 365
    iget-object v6, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mNumberText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/TextView;->computeScroll()V

    .line 366
    iget-object v6, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mNumberText:Landroid/widget/EditText;

    new-array v5, v5, [Landroid/text/InputFilter;

    new-instance v7, Landroid/text/InputFilter$LengthFilter;

    const/16 v8, 0x14

    invoke-direct {v7, v8}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v7, v5, v10

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 367
    iget-object v5, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mNumberText:Landroid/widget/EditText;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setInputType(I)V

    .line 368
    invoke-static {}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->getInstance()Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;

    move-result-object v4

    .line 372
    .local v4, teleService:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    :try_start_0
    iget v5, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mSlotId:I

    invoke-virtual {v4, v5}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->getScAddressGemini(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 380
    .local v2, gotScNumber:Ljava/lang/String;
    :goto_2
    const-string v5, "ClassifySlotFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gotScNumber is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v5, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mNumberText:Landroid/widget/EditText;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    const v5, 0x7f02009f

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0b000a

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mNumberText:Landroid/widget/EditText;

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0b0006

    new-instance v7, Lcom/android/mms/ui/ClassifySlotFragment$PositiveButtonListener;

    invoke-direct {v7, p0, v9}, Lcom/android/mms/ui/ClassifySlotFragment$PositiveButtonListener;-><init>(Lcom/android/mms/ui/ClassifySlotFragment;Lcom/android/mms/ui/ClassifySlotFragment$1;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0b0007

    new-instance v7, Lcom/android/mms/ui/ClassifySlotFragment$NegativeButtonListener;

    invoke-direct {v7, p0, v9}, Lcom/android/mms/ui/ClassifySlotFragment$NegativeButtonListener;-><init>(Lcom/android/mms/ui/ClassifySlotFragment;Lcom/android/mms/ui/ClassifySlotFragment$1;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mNumberTextDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 376
    .end local v2           #gotScNumber:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 377
    .local v1, e:Landroid/os/RemoteException;
    const/4 v2, 0x0

    .line 378
    .restart local v2       #gotScNumber:Ljava/lang/String;
    const-string v5, "Mms/Txn"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getScAddressGemini is failed.\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 387
    .end local v0           #dialog:Landroid/app/AlertDialog$Builder;
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #gotScNumber:Ljava/lang/String;
    .end local v4           #teleService:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    :cond_5
    iget-object v5, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mCBsettingPref:Landroid/preference/Preference;

    if-ne p2, v5, :cond_0

    .line 388
    const-string v5, "ClassifySlotFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCBsettingPref slotId is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mSlotId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget v5, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mSlotId:I

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isUSimType(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 390
    invoke-direct {p0, v8}, Lcom/android/mms/ui/ClassifySlotFragment;->showToast(I)V

    goto/16 :goto_0

    .line 392
    :cond_6
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 393
    .restart local v3       #it:Landroid/content/Intent;
    const-string v5, "com.android.phone"

    const-string v6, "com.mediatek.settings.CellBroadcastActivity"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    const-string v5, "simId"

    iget v6, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mSlotId:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 396
    iget-object v5, p0, Lcom/android/mms/ui/ClassifySlotFragment;->SUB_TITLE_NAME:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mActivity:Landroid/app/Activity;

    iget v7, p0, Lcom/android/mms/ui/ClassifySlotFragment;->mSlotId:I

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    invoke-virtual {p0, v3}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 214
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 215
    const-string v0, "ClassifySlotFragment"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-direct {p0}, Lcom/android/mms/ui/ClassifySlotFragment;->setListPrefSummary()V

    .line 217
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 209
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 210
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 221
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 222
    const-string v0, "ClassifySlotFragment"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-void
.end method
