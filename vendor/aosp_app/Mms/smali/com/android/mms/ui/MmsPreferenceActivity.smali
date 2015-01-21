.class public Lcom/android/mms/ui/MmsPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "MmsPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final AUTO_RETRIEVAL:Ljava/lang/String; = "pref_key_mms_auto_retrieval"

.field public static final CREATION_MODE:Ljava/lang/String; = "pref_key_mms_creation_mode"

.field private static final CREATION_MODE_FREE:Ljava/lang/String; = "FREE"

.field private static final CREATION_MODE_RESTRICTED:Ljava/lang/String; = "RESTRICTED"

.field private static final CREATION_MODE_WARNING:Ljava/lang/String; = "WARNING"

.field private static final DEBUG:Z = false

.field public static final EXPIRY_TIME:Ljava/lang/String; = "pref_key_mms_expiry"

.field public static final GROUP_MMS_MODE:Ljava/lang/String; = "pref_key_mms_group_mms"

.field private static final LOCATION_PHONE:Ljava/lang/String; = "Phone"

.field private static final LOCATION_SIM:Ljava/lang/String; = "Sim"

.field private static final MENU_RESTORE_DEFAULTS:I = 0x1

.field public static final MMS_DELIVERY_REPORT_MODE:Ljava/lang/String; = "pref_key_mms_delivery_reports"

.field public static final MMS_ENABLE_TO_SEND_DELIVERY_REPORT:Ljava/lang/String; = "pref_key_mms_enable_to_send_delivery_reports"

.field public static final MMS_SETTINGS:Ljava/lang/String; = "pref_key_mms_settings"

.field public static final MMS_SIZE_LIMIT:Ljava/lang/String; = "pref_key_mms_size_limit"

.field public static final PRIORITY:Ljava/lang/String; = "pref_key_mms_priority"

.field private static final PRIORITY_HIGH:Ljava/lang/String; = "High"

.field private static final PRIORITY_LOW:Ljava/lang/String; = "Low"

.field private static final PRIORITY_NORMAL:Ljava/lang/String; = "Normal"

.field public static final READ_REPORT_AUTO_REPLY:Ljava/lang/String; = "pref_key_mms_auto_reply_read_reports"

.field public static final READ_REPORT_MODE:Ljava/lang/String; = "pref_key_mms_read_reports"

.field public static final RETRIEVAL_DURING_ROAMING:Ljava/lang/String; = "pref_key_mms_retrieval_during_roaming"

.field private static final SIZE_LIMIT_100:Ljava/lang/String; = "100"

.field private static final SIZE_LIMIT_200:Ljava/lang/String; = "200"

.field private static final SIZE_LIMIT_300:Ljava/lang/String; = "300"

.field private static final TAG:Ljava/lang/String; = "MmsPreferenceActivity"


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

.field private mMMSHandler:Landroid/os/Handler;

.field private mMmsAutoReplyReadReport:Landroid/preference/CheckBoxPreference;

.field private mMmsAutoReplyReadReportMultiSim:Landroid/preference/Preference;

.field private mMmsAutoRetrieval:Landroid/preference/CheckBoxPreference;

.field private mMmsAutoRetrievalMultiSim:Landroid/preference/Preference;

.field private mMmsCreationMode:Landroid/preference/ListPreference;

.field private mMmsDeliveryReport:Landroid/preference/CheckBoxPreference;

.field private mMmsDeliveryReportMultiSim:Landroid/preference/Preference;

.field private mMmsEnableToSendDeliveryReport:Landroid/preference/CheckBoxPreference;

.field private mMmsEnableToSendDeliveryReportMultiSim:Landroid/preference/Preference;

.field private mMmsGroupMms:Landroid/preference/CheckBoxPreference;

.field private mMmsPriority:Landroid/preference/ListPreference;

.field private mMmsReadReport:Landroid/preference/CheckBoxPreference;

.field private mMmsReadReportMultiSim:Landroid/preference/Preference;

.field private mMmsRetrievalDuringRoaming:Landroid/preference/CheckBoxPreference;

.field private mMmsRetrievalDuringRoamingMultiSim:Landroid/preference/Preference;

.field private mMmsSizeLimit:Landroid/preference/ListPreference;

.field private mNumberText:Landroid/widget/EditText;

.field private mNumberTextDialog:Landroid/app/AlertDialog;

.field private mSMSHandler:Landroid/os/Handler;

.field private mSimReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 152
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mSMSHandler:Landroid/os/Handler;

    .line 154
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMMSHandler:Landroid/os/Handler;

    .line 162
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mCurrentSimCount:I

    .line 570
    new-instance v0, Lcom/android/mms/ui/MmsPreferenceActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsPreferenceActivity$1;-><init>(Lcom/android/mms/ui/MmsPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mSimReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MmsPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPreferenceActivity;->setMessagePreferences()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MmsPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPreferenceActivity;->setListPrefSummary()V

    return-void
.end method

.method private changeSingleCardKeyToSimRelated()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 299
    invoke-static {p0}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mListSimInfo:Ljava/util/List;

    .line 300
    const/4 v2, 0x0

    .line 301
    .local v2, singleCardInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    iget-object v4, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mListSimInfo:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 302
    iget-object v4, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mListSimInfo:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #singleCardInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    check-cast v2, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    .line 304
    .restart local v2       #singleCardInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    :cond_0
    if-nez v2, :cond_2

    .line 369
    :cond_1
    :goto_0
    return-void

    .line 307
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mListSimInfo:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v4}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 308
    .local v1, simId:Ljava/lang/Long;
    const-string v4, "MmsPreferenceActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changeSingleCardKeyToSimRelated Got simId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v4, "pref_key_mms_delivery_reports"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsDeliveryReport:Landroid/preference/CheckBoxPreference;

    .line 311
    const-string v4, "pref_key_mms_read_reports"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsReadReport:Landroid/preference/CheckBoxPreference;

    .line 313
    const-string v4, "pref_key_mms_auto_reply_read_reports"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsAutoReplyReadReport:Landroid/preference/CheckBoxPreference;

    .line 314
    iget-object v4, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mListSimInfo:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v4}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v4

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->isUSimType(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 315
    iget-object v4, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsAutoReplyReadReport:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 316
    iget-object v4, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsReadReport:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 318
    :cond_3
    const-string v4, "pref_key_mms_auto_retrieval"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsAutoRetrieval:Landroid/preference/CheckBoxPreference;

    .line 319
    const-string v4, "pref_key_mms_retrieval_during_roaming"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsRetrievalDuringRoaming:Landroid/preference/CheckBoxPreference;

    .line 320
    iget-object v4, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsDeliveryReport:Landroid/preference/CheckBoxPreference;

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

    .line 321
    iget-object v4, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsReadReport:Landroid/preference/CheckBoxPreference;

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

    .line 323
    iget-object v4, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsAutoReplyReadReport:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_4

    .line 324
    iget-object v4, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsAutoReplyReadReport:Landroid/preference/CheckBoxPreference;

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

    .line 327
    :cond_4
    const-string v4, "pref_key_mms_group_mms"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsGroupMms:Landroid/preference/CheckBoxPreference;

    .line 328
    iget-object v4, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsGroupMms:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_5

    .line 329
    iget-object v4, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsGroupMms:Landroid/preference/CheckBoxPreference;

    const-string v5, "pref_key_mms_group_mms"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 331
    :cond_5
    iget-object v4, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsAutoRetrieval:Landroid/preference/CheckBoxPreference;

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

    .line 332
    iget-object v4, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsRetrievalDuringRoaming:Landroid/preference/CheckBoxPreference;

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

    .line 333
    iget-object v4, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsRetrievalDuringRoaming:Landroid/preference/CheckBoxPreference;

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

    .line 334
    const-string v4, "pref_key_mms_enable_to_send_delivery_reports"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsEnableToSendDeliveryReport:Landroid/preference/CheckBoxPreference;

    .line 335
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDeliveryReportAllowed()Z

    move-result v4

    if-nez v4, :cond_d

    .line 336
    iget-object v4, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsEnableToSendDeliveryReport:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_6

    .line 337
    iget-object v4, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsEnableToSendDeliveryReport:Landroid/preference/CheckBoxPreference;

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

    const-string v6, "pref_key_mms_enable_to_send_delivery_reports"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 338
    const-string v4, "pref_key_mms_settings"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 339
    .local v0, mmsCategory:Landroid/preference/PreferenceCategory;
    iget-object v4, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsEnableToSendDeliveryReport:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 345
    .end local v0           #mmsCategory:Landroid/preference/PreferenceCategory;
    :cond_6
    :goto_1
    const-string v4, "com.android.mms_preferences"

    invoke-virtual {p0, v4, v9}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 346
    .local v3, sp:Landroid/content/SharedPreferences;
    iget-object v4, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsDeliveryReport:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_7

    .line 347
    iget-object v4, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsDeliveryReport:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsDeliveryReport:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 349
    :cond_7
    iget-object v4, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsEnableToSendDeliveryReport:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_8

    .line 350
    iget-object v4, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsEnableToSendDeliveryReport:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsEnableToSendDeliveryReport:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 352
    :cond_8
    iget-object v4, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsReadReport:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_9

    .line 353
    iget-object v4, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsReadReport:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsReadReport:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 356
    :cond_9
    iget-object v4, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsAutoReplyReadReport:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_a

    .line 357
    iget-object v4, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsAutoReplyReadReport:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsAutoReplyReadReport:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 359
    :cond_a
    iget-object v4, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsAutoRetrieval:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_b

    .line 360
    iget-object v4, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsAutoRetrieval:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsAutoRetrieval:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 362
    :cond_b
    iget-object v4, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsRetrievalDuringRoaming:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_c

    .line 363
    iget-object v4, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsRetrievalDuringRoaming:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsRetrievalDuringRoaming:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 366
    :cond_c
    iget-object v4, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsGroupMms:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_1

    .line 367
    iget-object v4, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsGroupMms:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsGroupMms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 342
    .end local v3           #sp:Landroid/content/SharedPreferences;
    :cond_d
    iget-object v4, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsEnableToSendDeliveryReport:Landroid/preference/CheckBoxPreference;

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

    const-string v6, "pref_key_mms_enable_to_send_delivery_reports"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public static getIsGroupMmsEnabled(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 541
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 542
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v3, "pref_key_mms_group_mms"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 551
    .local v0, groupMmsPrefOn:Z
    invoke-static {}, Lcom/android/mms/MmsConfig;->getGroupMmsEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private restoreDefaultPreferences()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 458
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 461
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {p0}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mListSimInfo:Ljava/util/List;

    .line 462
    iget-object v4, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mListSimInfo:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 463
    iget-object v4, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mListSimInfo:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 464
    .local v2, simCount:I
    if-lez v2, :cond_0

    .line 465
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 466
    iget-object v4, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mListSimInfo:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v4}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 467
    .local v3, simId:Ljava/lang/Long;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "pref_key_mms_delivery_reports"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 468
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "pref_key_mms_enable_to_send_delivery_reports"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 469
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "pref_key_mms_read_reports"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 470
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "pref_key_mms_auto_reply_read_reports"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 471
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "pref_key_mms_auto_retrieval"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 472
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "pref_key_mms_retrieval_during_roaming"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 465
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 485
    .end local v1           #i:I
    .end local v2           #simCount:I
    .end local v3           #simId:Ljava/lang/Long;
    :cond_0
    const-string v4, "pref_key_mms_creation_mode"

    const-string v5, "FREE"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 486
    const-string v4, "pref_key_mms_size_limit"

    const-string v5, "300"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 487
    const-string v4, "pref_key_mms_priority"

    const-string v5, "Normal"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 490
    const-string v4, "pref_key_mms_group_mms"

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 492
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 493
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 494
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPreferenceActivity;->setMessagePreferences()V

    .line 495
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPreferenceActivity;->setListPrefSummary()V

    .line 496
    return-void
.end method

.method private setListPrefSummary()V
    .locals 5

    .prologue
    .line 176
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 178
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_mms_priority"

    const v3, 0x7f0b02d0

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, stored:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsPriority:Landroid/preference/ListPreference;

    const v3, 0x7f060008

    const v4, 0x7f060009

    invoke-static {p0, v1, v3, v4}, Lcom/android/mms/ui/MessageUtils;->getVisualTextName(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 182
    const-string v2, "pref_key_mms_creation_mode"

    const-string v3, "FREE"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 183
    iget-object v2, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsCreationMode:Landroid/preference/ListPreference;

    const v3, 0x7f060004

    const v4, 0x7f060005

    invoke-static {p0, v1, v3, v4}, Lcom/android/mms/ui/MessageUtils;->getVisualTextName(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 186
    const-string v2, "pref_key_mms_size_limit"

    const-string v3, "300"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    iget-object v2, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSizeLimit:Landroid/preference/ListPreference;

    const v3, 0x7f060006

    const v4, 0x7f060007

    invoke-static {p0, v1, v3, v4}, Lcom/android/mms/ui/MessageUtils;->getVisualTextName(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 189
    return-void
.end method

.method private setMessagePreferences()V
    .locals 9

    .prologue
    const v8, 0x7f050008

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 203
    const-string v3, "MmsPreferenceActivity"

    const-string v4, "MTK_GEMINI_SUPPORT is true"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-static {p0}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mCurrentSimCount:I

    .line 205
    const-string v3, "MmsPreferenceActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentSimCount is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mCurrentSimCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget v3, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mCurrentSimCount:I

    if-nez v3, :cond_4

    .line 208
    invoke-virtual {p0, v8}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 209
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDeliveryReportAllowed()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 210
    const-string v3, "pref_key_mms_enable_to_send_delivery_reports"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsEnableToSendDeliveryReport:Landroid/preference/CheckBoxPreference;

    .line 211
    iget-object v3, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsEnableToSendDeliveryReport:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 217
    :goto_0
    const-string v3, "pref_key_mms_delivery_reports"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsDeliveryReport:Landroid/preference/CheckBoxPreference;

    .line 218
    iget-object v3, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsDeliveryReport:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 219
    const-string v3, "pref_key_mms_read_reports"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsReadReport:Landroid/preference/CheckBoxPreference;

    .line 220
    iget-object v3, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsReadReport:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 221
    const-string v3, "pref_key_mms_auto_reply_read_reports"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsAutoReplyReadReport:Landroid/preference/CheckBoxPreference;

    .line 222
    iget-object v3, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsAutoReplyReadReport:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 223
    const-string v3, "pref_key_mms_auto_retrieval"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsAutoRetrieval:Landroid/preference/CheckBoxPreference;

    .line 224
    iget-object v3, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsAutoRetrieval:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 225
    const-string v3, "pref_key_mms_retrieval_during_roaming"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsRetrievalDuringRoaming:Landroid/preference/CheckBoxPreference;

    .line 226
    iget-object v3, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsRetrievalDuringRoaming:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 258
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getGroupMmsEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 260
    const-string v3, "Mms/Txn"

    const-string v4, "remove the group mms entry, it should be hidden."

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v3, "pref_key_mms_settings"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 262
    .local v0, mmOptions:Landroid/preference/PreferenceCategory;
    const-string v3, "pref_key_mms_group_mms"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 264
    .end local v0           #mmOptions:Landroid/preference/PreferenceCategory;
    :cond_0
    const-string v3, "pref_key_mms_priority"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsPriority:Landroid/preference/ListPreference;

    .line 265
    iget-object v3, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsPriority:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 266
    const-string v3, "pref_key_mms_creation_mode"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsCreationMode:Landroid/preference/ListPreference;

    .line 267
    iget-object v3, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsCreationMode:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 268
    const-string v3, "pref_key_mms_size_limit"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSizeLimit:Landroid/preference/ListPreference;

    .line 269
    iget-object v3, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSizeLimit:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 280
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 282
    const-string v3, "pref_key_mms_settings"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 283
    .local v2, mmsOptions:Landroid/preference/PreferenceCategory;
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 287
    .end local v2           #mmsOptions:Landroid/preference/PreferenceCategory;
    :cond_1
    const-string v3, "MmsPreferenceActivity"

    const-string v4, "MTK_GEMINI_SUPPORT is true"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget v3, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mCurrentSimCount:I

    if-ne v3, v7, :cond_7

    .line 289
    const-string v3, "MmsPreferenceActivity"

    const-string v4, "single sim"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPreferenceActivity;->changeSingleCardKeyToSimRelated()V

    .line 295
    :cond_2
    :goto_2
    return-void

    .line 213
    :cond_3
    const-string v3, "pref_key_mms_enable_to_send_delivery_reports"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsEnableToSendDeliveryReport:Landroid/preference/CheckBoxPreference;

    .line 214
    const-string v3, "pref_key_mms_settings"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 215
    .local v1, mmsCategory:Landroid/preference/PreferenceCategory;
    iget-object v3, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsEnableToSendDeliveryReport:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 228
    .end local v1           #mmsCategory:Landroid/preference/PreferenceCategory;
    :cond_4
    iget v3, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mCurrentSimCount:I

    if-ne v3, v7, :cond_6

    .line 229
    invoke-virtual {p0, v8}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 230
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDeliveryReportAllowed()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 231
    const-string v3, "pref_key_mms_enable_to_send_delivery_reports"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsEnableToSendDeliveryReport:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_1

    .line 233
    :cond_5
    const-string v3, "pref_key_mms_enable_to_send_delivery_reports"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsEnableToSendDeliveryReport:Landroid/preference/CheckBoxPreference;

    .line 234
    const-string v3, "pref_key_mms_settings"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 235
    .restart local v1       #mmsCategory:Landroid/preference/PreferenceCategory;
    iget-object v3, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsEnableToSendDeliveryReport:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 238
    .end local v1           #mmsCategory:Landroid/preference/PreferenceCategory;
    :cond_6
    const v3, 0x7f050007

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    goto/16 :goto_1

    .line 291
    :cond_7
    iget v3, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mCurrentSimCount:I

    if-le v3, v7, :cond_2

    .line 292
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPreferenceActivity;->setMultiCardPreference()V

    goto :goto_2
.end method

.method private setMultiCardPreference()V
    .locals 5

    .prologue
    .line 372
    const-string v2, "pref_key_mms_delivery_reports"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsDeliveryReportMultiSim:Landroid/preference/Preference;

    .line 374
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDeliveryReportAllowed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 375
    const-string v2, "pref_key_mms_enable_to_send_delivery_reports"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsEnableToSendDeliveryReportMultiSim:Landroid/preference/Preference;

    .line 382
    :goto_0
    const-string v2, "pref_key_mms_read_reports"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsReadReportMultiSim:Landroid/preference/Preference;

    .line 384
    const-string v2, "pref_key_mms_auto_reply_read_reports"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsAutoReplyReadReportMultiSim:Landroid/preference/Preference;

    .line 385
    const-string v2, "pref_key_mms_auto_retrieval"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsAutoRetrievalMultiSim:Landroid/preference/Preference;

    .line 386
    const-string v2, "pref_key_mms_retrieval_during_roaming"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsRetrievalDuringRoamingMultiSim:Landroid/preference/Preference;

    .line 389
    const-string v2, "com.android.mms_preferences"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 390
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_mms_group_mms"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsGroupMms:Landroid/preference/CheckBoxPreference;

    .line 391
    iget-object v2, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsGroupMms:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 392
    iget-object v2, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsGroupMms:Landroid/preference/CheckBoxPreference;

    const-string v3, "pref_key_mms_group_mms"

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 394
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsGroupMms:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    .line 395
    iget-object v2, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsGroupMms:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsGroupMms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 397
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsDeliveryReportMultiSim:Landroid/preference/Preference;

    const-string v3, "pref_key_mms_delivery_reports"

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 398
    iget-object v2, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsEnableToSendDeliveryReportMultiSim:Landroid/preference/Preference;

    const-string v3, "pref_key_mms_enable_to_send_delivery_reports"

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 399
    iget-object v2, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsReadReportMultiSim:Landroid/preference/Preference;

    const-string v3, "pref_key_mms_read_reports"

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 400
    iget-object v2, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsAutoReplyReadReportMultiSim:Landroid/preference/Preference;

    const-string v3, "pref_key_mms_auto_reply_read_reports"

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 401
    iget-object v2, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsAutoRetrievalMultiSim:Landroid/preference/Preference;

    const-string v3, "pref_key_mms_auto_retrieval"

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 402
    iget-object v2, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsRetrievalDuringRoamingMultiSim:Landroid/preference/Preference;

    const-string v3, "pref_key_mms_retrieval_during_roaming"

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 403
    return-void

    .line 377
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :cond_2
    const-string v2, "pref_key_mms_enable_to_send_delivery_reports"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsEnableToSendDeliveryReportMultiSim:Landroid/preference/Preference;

    .line 378
    const-string v2, "pref_key_mms_settings"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 380
    .local v0, mmsCategory:Landroid/preference/PreferenceCategory;
    iget-object v2, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsEnableToSendDeliveryReportMultiSim:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0
.end method

.method private showToast(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 526
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 527
    .local v0, t:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 528
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 532
    const-string v0, "MmsPreferenceActivity"

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

    .line 533
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 534
    new-instance v0, Lcom/mediatek/encapsulation/android/widget/EncapsulatedListView;

    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/encapsulation/android/widget/EncapsulatedListView;-><init>(Landroid/widget/ListView;)V

    invoke-virtual {v0}, Lcom/mediatek/encapsulation/android/widget/EncapsulatedListView;->clearScrapViewsIfNeeded()V

    .line 535
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 193
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 194
    const-string v1, "MmsPreferenceActivity"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 196
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 197
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 198
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPreferenceActivity;->setMessagePreferences()V

    .line 199
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 406
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 407
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 408
    const v0, 0x7f0b029c

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 409
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 414
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 426
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 418
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 421
    :sswitch_1
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPreferenceActivity;->restoreDefaultPreferences()V

    goto :goto_0

    .line 414
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 166
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 167
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v7, 0x1

    .line 500
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, key:Ljava/lang/String;
    const/4 v2, 0x0

    .line 502
    .local v2, slotId:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsMultiSaveLocationEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 503
    invoke-static {p0}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v1

    .line 504
    .local v1, simCount:I
    if-ne v1, v7, :cond_0

    .line 505
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

    .line 508
    check-cast v3, Ljava/lang/String;

    .line 509
    .local v3, stored:Ljava/lang/String;
    const-string v4, "pref_key_mms_priority"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 510
    iget-object v4, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsPriority:Landroid/preference/ListPreference;

    const v5, 0x7f060008

    const v6, 0x7f060009

    invoke-static {p0, v3, v5, v6}, Lcom/android/mms/ui/MessageUtils;->getVisualTextName(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 522
    :cond_1
    :goto_0
    return v7

    .line 512
    :cond_2
    const-string v4, "pref_key_mms_size_limit"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 513
    iget-object v4, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsSizeLimit:Landroid/preference/ListPreference;

    const v5, 0x7f060006

    const v6, 0x7f060007

    invoke-static {p0, v3, v5, v6}, Lcom/android/mms/ui/MessageUtils;->getVisualTextName(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 515
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/android/mms/MmsConfig;->setUserSetMmsSizeLimit(I)V

    goto :goto_0

    .line 516
    :cond_3
    const-string v4, "pref_key_mms_creation_mode"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 517
    iget-object v4, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsCreationMode:Landroid/preference/ListPreference;

    const v5, 0x7f060004

    const v6, 0x7f060005

    invoke-static {p0, v3, v5, v6}, Lcom/android/mms/ui/MessageUtils;->getVisualTextName(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v4, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsCreationMode:Landroid/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 520
    invoke-static {p0}, Lcom/android/mms/data/WorkingMessage;->updateCreationMode(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 431
    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsDeliveryReportMultiSim:Landroid/preference/Preference;

    if-eq p2, v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsEnableToSendDeliveryReportMultiSim:Landroid/preference/Preference;

    if-eq p2, v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsReadReportMultiSim:Landroid/preference/Preference;

    if-eq p2, v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsAutoReplyReadReportMultiSim:Landroid/preference/Preference;

    if-eq p2, v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsAutoRetrievalMultiSim:Landroid/preference/Preference;

    if-eq p2, v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsRetrievalDuringRoamingMultiSim:Landroid/preference/Preference;

    if-ne p2, v1, :cond_2

    .line 436
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 437
    .local v0, it:Landroid/content/Intent;
    const-class v1, Lcom/android/mms/ui/MultiSimPreferenceActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 438
    const-string v1, "preference"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsDeliveryReportMultiSim:Landroid/preference/Preference;

    if-ne p2, v1, :cond_3

    .line 440
    const-string v1, "preferenceTitleId"

    const v2, 0x7f0b02a8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 452
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 454
    .end local v0           #it:Landroid/content/Intent;
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 441
    .restart local v0       #it:Landroid/content/Intent;
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsEnableToSendDeliveryReportMultiSim:Landroid/preference/Preference;

    if-ne p2, v1, :cond_4

    .line 442
    const-string v1, "preferenceTitleId"

    const v2, 0x7f0b0002

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 443
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsReadReportMultiSim:Landroid/preference/Preference;

    if-ne p2, v1, :cond_5

    .line 444
    const-string v1, "preferenceTitleId"

    const v2, 0x7f0b02a9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 445
    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsAutoReplyReadReportMultiSim:Landroid/preference/Preference;

    if-ne p2, v1, :cond_6

    .line 446
    const-string v1, "preferenceTitleId"

    const v2, 0x7f0b0096

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 447
    :cond_6
    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsAutoRetrievalMultiSim:Landroid/preference/Preference;

    if-ne p2, v1, :cond_7

    .line 448
    const-string v1, "preferenceTitleId"

    const v2, 0x7f0b02b2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 449
    :cond_7
    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mMmsRetrievalDuringRoamingMultiSim:Landroid/preference/Preference;

    if-ne p2, v1, :cond_1

    .line 450
    const-string v1, "preferenceTitleId"

    const v2, 0x7f0b02b4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 171
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 172
    invoke-direct {p0}, Lcom/android/mms/ui/MmsPreferenceActivity;->setListPrefSummary()V

    .line 173
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 557
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 558
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 559
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 560
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 564
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 565
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mSimReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 568
    :cond_0
    return-void
.end method
