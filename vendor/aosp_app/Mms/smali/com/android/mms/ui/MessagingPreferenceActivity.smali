.class public Lcom/android/mms/ui/MessagingPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "MessagingPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessagingPreferenceActivity$NegativeButtonListener;,
        Lcom/android/mms/ui/MessagingPreferenceActivity$PositiveButtonListener;
    }
.end annotation


# static fields
.field private static final ADDRESS_COLUMNS:[Ljava/lang/String; = null

.field public static final AUTO_DELETE:Ljava/lang/String; = "pref_key_auto_delete"

.field public static final AUTO_RETRIEVAL:Ljava/lang/String; = "pref_key_mms_auto_retrieval"

.field private static final CANADDRESS_URI:Landroid/net/Uri; = null

.field public static final CELL_BROADCAST:Ljava/lang/String; = "pref_key_cell_broadcast"

.field private static final CONFIRM_CLEAR_SEARCH_HISTORY_DIALOG:I = 0x3

.field public static final CREATION_MODE:Ljava/lang/String; = "pref_key_mms_creation_mode"

.field private static final CREATION_MODE_FREE:Ljava/lang/String; = "FREE"

.field private static final CREATION_MODE_RESTRICTED:Ljava/lang/String; = "RESTRICTED"

.field private static final CREATION_MODE_WARNING:Ljava/lang/String; = "WARNING"

.field private static final DEBUG:Z = false

.field private static final DISK_IO_FAILED:I = 0x8

.field public static final EXPIRY_TIME:Ljava/lang/String; = "pref_key_mms_expiry"

.field private static final EXPORT_EMPTY_SMS:I = 0x7

.field private static final EXPORT_FAILED:I = 0x4

.field private static final EXPORT_SMS:I = 0x2

.field private static final EXPORT_SUCCES:I = 0x3

.field private static final FONT_SIZE_DIALOG:I = 0xa

.field public static final FONT_SIZE_SETTING:Ljava/lang/String; = "pref_key_message_font_size"

.field public static final GROUP_MMS_MODE:Ljava/lang/String; = "pref_key_mms_group_mms"

.field private static final IMPORT_FAILED:I = 0x6

.field private static final IMPORT_SUCCES:I = 0x5

.field private static final LOCATION_PHONE:Ljava/lang/String; = "Phone"

.field private static final LOCATION_SIM:Ljava/lang/String; = "Sim"

.field private static final MAX_EDITABLE_LENGTH:I = 0x14

.field private static final MAX_FILE_NUMBER:I = 0x3e7

.field public static final MEM_DIR_PATH:Ljava/lang/String; = "//data//data//com.android.mms//message//sms001.db"

.field private static final MENU_RESTORE_DEFAULTS:I = 0x1

.field private static final MIN_FILE_NUMBER:I = 0x1

.field public static final MMS_DELIVERY_REPORT_MODE:Ljava/lang/String; = "pref_key_mms_delivery_reports"

.field public static final MMS_ENABLE_TO_SEND_DELIVERY_REPORT:Ljava/lang/String; = "pref_key_mms_enable_to_send_delivery_reports"

.field public static final MMS_SIZE_LIMIT:Ljava/lang/String; = "pref_key_mms_size_limit"

.field public static final MSG_EXPORT:Ljava/lang/String; = "pref_key_export_msg"

.field public static final MSG_IMPORT:Ljava/lang/String; = "pref_key_import_msg"

.field public static final NOTIFICATION_ENABLED:Ljava/lang/String; = "pref_key_enable_notifications"

.field public static final NOTIFICATION_RINGTONE:Ljava/lang/String; = "pref_key_ringtone"

.field public static final PRIORITY:Ljava/lang/String; = "pref_key_mms_priority"

.field private static final PRIORITY_HIGH:Ljava/lang/String; = "High"

.field private static final PRIORITY_LOW:Ljava/lang/String; = "Low"

.field private static final PRIORITY_NORMAL:Ljava/lang/String; = "Normal"

.field public static final READ_REPORT_AUTO_REPLY:Ljava/lang/String; = "pref_key_mms_auto_reply_read_reports"

.field public static final READ_REPORT_MODE:Ljava/lang/String; = "pref_key_mms_read_reports"

.field public static final RETRIEVAL_DURING_ROAMING:Ljava/lang/String; = "pref_key_mms_retrieval_during_roaming"

.field public static final SDCARD_MESSAGE_DIR_PATH:Ljava/lang/String; = "//message//"

.field private static final SIZE_LIMIT_100:Ljava/lang/String; = "100"

.field private static final SIZE_LIMIT_200:Ljava/lang/String; = "200"

.field private static final SIZE_LIMIT_300:Ljava/lang/String; = "300"

.field private static final SMS_COLUMNS:[Ljava/lang/String; = null

.field public static final SMS_DELIVERY_REPORT_MODE:Ljava/lang/String; = "pref_key_sms_delivery_reports"

.field public static final SMS_FORWARD_WITH_SENDER:Ljava/lang/String; = "pref_key_forward_with_sender"

.field public static final SMS_INPUT_MODE:Ljava/lang/String; = "pref_key_sms_input_mode"

.field public static final SMS_MANAGE_SIM_MESSAGES:Ljava/lang/String; = "pref_key_manage_sim_messages"

.field public static final SMS_QUICK_TEXT_EDITOR:Ljava/lang/String; = "pref_key_quick_text_editor"

.field public static final SMS_SAVE_LOCATION:Ljava/lang/String; = "pref_key_sms_save_location"

.field public static final SMS_SERVICE_CENTER:Ljava/lang/String; = "pref_key_sms_service_center"

.field private static final SMS_URI:Landroid/net/Uri; = null

.field public static final SMS_VALIDITY_PERIOD:Ljava/lang/String; = "pref_key_sms_validity_period"

.field private static final TABLE_SMS:Ljava/lang/String; = "sms"

.field private static final TAG:Ljava/lang/String; = "MessagingPreferenceActivity"

.field public static final TEXT_SIZE:Ljava/lang/String; = "message_font_size"


# instance fields
.field public SUB_TITLE_NAME:Ljava/lang/String;

.field private mCBsettingPref:Landroid/preference/Preference;

.field private mCellBroadcastMultiSim:Landroid/preference/Preference;

.field private mClearHistoryPref:Landroid/preference/Preference;

.field private mCurrentSimCount:I

.field private mEnableNotificationsPref:Landroid/preference/CheckBoxPreference;

.field private mExportMessages:Landroid/preference/Preference;

.field private mFileNameExtension:Ljava/lang/String;

.field private mFileNamePrefix:Ljava/lang/String;

.field private mFileNameSuffix:Ljava/lang/String;

.field private mFontSize:Landroid/preference/Preference;

.field private mFontSizeChoices:[Ljava/lang/String;

.field private mFontSizeDialog:Landroid/app/AlertDialog;

.field private mFontSizeValues:[Ljava/lang/String;

.field private mImportMessages:Landroid/preference/Preference;

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

.field public mMainHandler:Landroid/os/Handler;

.field private mManageSimPref:Landroid/preference/Preference;

.field private mManageSimPrefMultiSim:Landroid/preference/Preference;

.field private mMmsAutoReplyReadReport:Landroid/preference/CheckBoxPreference;

.field private mMmsAutoReplyReadReportMultiSim:Landroid/preference/Preference;

.field private mMmsAutoRetrieval:Landroid/preference/CheckBoxPreference;

.field private mMmsAutoRetrievalMultiSim:Landroid/preference/Preference;

.field private mMmsCreationMode:Landroid/preference/ListPreference;

.field private mMmsDeliveryReport:Landroid/preference/CheckBoxPreference;

.field private mMmsDeliveryReportMultiSim:Landroid/preference/Preference;

.field private mMmsDisplayLimitDialog:Lcom/android/mms/ui/NumberPickerDialog;

.field private mMmsEnableToSendDeliveryReport:Landroid/preference/CheckBoxPreference;

.field private mMmsEnableToSendDeliveryReportMultiSim:Landroid/preference/Preference;

.field private mMmsGroupMmsPref:Landroid/preference/Preference;

.field mMmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

.field private mMmsLimitPref:Landroid/preference/Preference;

.field private mMmsPriority:Landroid/preference/ListPreference;

.field private mMmsReadReport:Landroid/preference/CheckBoxPreference;

.field private mMmsReadReportMultiSim:Landroid/preference/Preference;

.field private mMmsRecycler:Lcom/android/mms/util/Recycler;

.field private mMmsRetrievalDuringRoaming:Landroid/preference/CheckBoxPreference;

.field private mMmsRetrievalDuringRoamingMultiSim:Landroid/preference/Preference;

.field private mMmsSizeLimit:Landroid/preference/ListPreference;

.field private mNumberText:Landroid/widget/EditText;

.field private mNumberTextDialog:Landroid/app/AlertDialog;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSMSHandler:Landroid/os/Handler;

.field mSlotId:I

.field private mSmsDeliveryReport:Landroid/preference/CheckBoxPreference;

.field private mSmsDeliveryReportMultiSim:Landroid/preference/Preference;

.field private mSmsDisplayLimitDialog:Lcom/android/mms/ui/NumberPickerDialog;

.field private mSmsForwardWithSender:Landroid/preference/CheckBoxPreference;

.field private mSmsInputMode:Landroid/preference/ListPreference;

.field mSmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

.field private mSmsLimitPref:Landroid/preference/Preference;

.field private mSmsLocation:Landroid/preference/ListPreference;

.field private mSmsQuickTextEditorPref:Landroid/preference/Preference;

.field private mSmsRecycler:Lcom/android/mms/util/Recycler;

.field private mSmsSaveLoactionMultiSim:Landroid/preference/Preference;

.field private mSmsServiceCenterPref:Landroid/preference/Preference;

.field private mSmsServiceCenterPrefMultiSim:Landroid/preference/Preference;

.field private mSmsValidityPeriodPref:Landroid/preference/Preference;

.field private mSmsValidityPeriodPrefMultiSim:Landroid/preference/Preference;

.field private mStorageStatusPref:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 226
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->SMS_URI:Landroid/net/Uri;

    .line 227
    const-string v0, "content://mms-sms/canonical-addresses"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->CANADDRESS_URI:Landroid/net/Uri;

    .line 230
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "address"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "m_size"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "person"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "protocol"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "reply_path_present"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "subject"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "body"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "service_center"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "sim_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "error_code"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "seen"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->SMS_COLUMNS:[Ljava/lang/String;

    .line 234
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "address"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->ADDRESS_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 210
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSMSHandler:Landroid/os/Handler;

    .line 211
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMMSHandler:Landroid/os/Handler;

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 223
    const-string v0, "sms"

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFileNamePrefix:Ljava/lang/String;

    .line 224
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFileNameSuffix:Ljava/lang/String;

    .line 225
    const-string v0, "db"

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFileNameExtension:Ljava/lang/String;

    .line 244
    const-string v0, "sub_title_name"

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->SUB_TITLE_NAME:Ljava/lang/String;

    .line 245
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCurrentSimCount:I

    .line 734
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$2;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    .line 770
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$3;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    .line 1526
    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/MessagingPreferenceActivity;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizeValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/MessagingPreferenceActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizeDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/MessagingPreferenceActivity;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizeChoices:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/MessagingPreferenceActivity;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSize:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/MessagingPreferenceActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getAppropriateFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->SMS_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1600()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->SMS_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/MessagingPreferenceActivity;Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->copyToPhoneMemory(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/MessagingPreferenceActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->copyToSDMemory(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/MessagingPreferenceActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->showToast(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MessagingPreferenceActivity;)Lcom/android/mms/util/Recycler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/MessagingPreferenceActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mListSimInfo:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/mms/ui/MessagingPreferenceActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNumberText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setSmsDisplayLimit()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MessagingPreferenceActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/mms/ui/MessagingPreferenceActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MessagingPreferenceActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSMSHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MessagingPreferenceActivity;)Lcom/android/mms/util/Recycler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMmsDisplayLimit()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/ui/MessagingPreferenceActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMMSHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/MessagingPreferenceActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->exportMessages()Z

    move-result v0

    return v0
.end method

.method private addBankupMessages()V
    .locals 1

    .prologue
    .line 1338
    const-string v0, "pref_key_import_msg"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mImportMessages:Landroid/preference/Preference;

    .line 1339
    const-string v0, "pref_key_export_msg"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mExportMessages:Landroid/preference/Preference;

    .line 1340
    return-void
.end method

.method private addSmsInputModePreference()V
    .locals 2

    .prologue
    .line 1344
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsEncodingTypeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1345
    const-string v1, "pref_key_sms_input_mode"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsInputMode:Landroid/preference/ListPreference;

    .line 1353
    :cond_0
    :goto_0
    return-void

    .line 1347
    :cond_1
    const-string v1, "pref_key_sms_settings"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 1348
    .local v0, smsCategory:Landroid/preference/PreferenceCategory;
    const-string v1, "pref_key_sms_input_mode"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsInputMode:Landroid/preference/ListPreference;

    .line 1349
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsInputMode:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 1350
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsInputMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private changeSingleCardKeyToSimRelated()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1357
    invoke-static {p0}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mListSimInfo:Ljava/util/List;

    .line 1358
    const/4 v2, 0x0

    .line 1359
    .local v2, singleCardInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mListSimInfo:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_0

    .line 1360
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mListSimInfo:Ljava/util/List;

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #singleCardInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    check-cast v2, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    .line 1362
    .restart local v2       #singleCardInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    :cond_0
    if-nez v2, :cond_2

    .line 1448
    :cond_1
    :goto_0
    return-void

    .line 1365
    :cond_2
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mListSimInfo:Ljava/util/List;

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v7}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1366
    .local v1, simId:Ljava/lang/Long;
    const-string v7, "MessagingPreferenceActivity"

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

    .line 1368
    const-string v7, "pref_key_sms_delivery_reports"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsDeliveryReport:Landroid/preference/CheckBoxPreference;

    .line 1369
    const-string v7, "pref_key_mms_delivery_reports"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsDeliveryReport:Landroid/preference/CheckBoxPreference;

    .line 1370
    const-string v7, "pref_key_mms_read_reports"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsReadReport:Landroid/preference/CheckBoxPreference;

    .line 1372
    const-string v7, "pref_key_mms_auto_reply_read_reports"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsAutoReplyReadReport:Landroid/preference/CheckBoxPreference;

    .line 1374
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mListSimInfo:Ljava/util/List;

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v7}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->isUSimType(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1375
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsAutoReplyReadReport:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1376
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsReadReport:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1379
    :cond_3
    const-string v7, "pref_key_mms_auto_retrieval"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsAutoRetrieval:Landroid/preference/CheckBoxPreference;

    .line 1380
    const-string v7, "pref_key_mms_retrieval_during_roaming"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRetrievalDuringRoaming:Landroid/preference/CheckBoxPreference;

    .line 1381
    const-string v7, "pref_key_sms_service_center"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsServiceCenterPref:Landroid/preference/Preference;

    .line 1382
    const-string v7, "pref_key_sms_validity_period"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsValidityPeriodPref:Landroid/preference/Preference;

    .line 1383
    const-string v7, "pref_key_manage_sim_messages"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    .line 1384
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSimPrefMultiSim:Landroid/preference/Preference;

    .line 1385
    const-string v7, "pref_key_sms_settings"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 1387
    .local v4, smsCategory:Landroid/preference/PreferenceCategory;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsMultiSaveLocationEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1388
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mListSimInfo:Ljava/util/List;

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v7}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v3

    .line 1389
    .local v3, slotid:I
    const-string v7, "pref_key_sms_save_location"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLocation:Landroid/preference/ListPreference;

    .line 1390
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLocation:Landroid/preference/ListPreference;

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

    .line 1391
    const-string v7, "com.android.mms_preferences"

    invoke-virtual {p0, v7, v12}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 1392
    .local v6, spr:Landroid/content/SharedPreferences;
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLocation:Landroid/preference/ListPreference;

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

    .line 1395
    .end local v3           #slotid:I
    .end local v6           #spr:Landroid/content/SharedPreferences;
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSIMSmsAtSettingEnabled()Z

    move-result v7

    if-nez v7, :cond_5

    .line 1396
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    if-eqz v7, :cond_5

    .line 1397
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1401
    :cond_5
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsDeliveryReport:Landroid/preference/CheckBoxPreference;

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

    .line 1402
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsDeliveryReport:Landroid/preference/CheckBoxPreference;

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

    const-string v9, "pref_key_mms_delivery_reports"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1403
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsReadReport:Landroid/preference/CheckBoxPreference;

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

    const-string v9, "pref_key_mms_read_reports"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1405
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsAutoReplyReadReport:Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_6

    .line 1406
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsAutoReplyReadReport:Landroid/preference/CheckBoxPreference;

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

    const-string v9, "pref_key_mms_auto_reply_read_reports"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1408
    :cond_6
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsAutoRetrieval:Landroid/preference/CheckBoxPreference;

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

    const-string v9, "pref_key_mms_auto_retrieval"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1409
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRetrievalDuringRoaming:Landroid/preference/CheckBoxPreference;

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

    const-string v9, "pref_key_mms_auto_retrieval"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 1410
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRetrievalDuringRoaming:Landroid/preference/CheckBoxPreference;

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

    const-string v9, "pref_key_mms_retrieval_during_roaming"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1412
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDeliveryReportAllowed()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1413
    const-string v7, "pref_key_mms_enable_to_send_delivery_reports"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsEnableToSendDeliveryReport:Landroid/preference/CheckBoxPreference;

    .line 1414
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsEnableToSendDeliveryReport:Landroid/preference/CheckBoxPreference;

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

    const-string v9, "pref_key_mms_enable_to_send_delivery_reports"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1425
    :cond_7
    :goto_1
    const-string v7, "com.android.mms_preferences"

    invoke-virtual {p0, v7, v12}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1426
    .local v5, sp:Landroid/content/SharedPreferences;
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsDeliveryReport:Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_8

    .line 1427
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsDeliveryReport:Landroid/preference/CheckBoxPreference;

    iget-object v8, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsDeliveryReport:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1429
    :cond_8
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsEnableToSendDeliveryReport:Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_9

    .line 1430
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsEnableToSendDeliveryReport:Landroid/preference/CheckBoxPreference;

    iget-object v8, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsEnableToSendDeliveryReport:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1432
    :cond_9
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsDeliveryReport:Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_a

    .line 1433
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsDeliveryReport:Landroid/preference/CheckBoxPreference;

    iget-object v8, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsDeliveryReport:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1435
    :cond_a
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsAutoRetrieval:Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_b

    .line 1436
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsAutoRetrieval:Landroid/preference/CheckBoxPreference;

    iget-object v8, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsAutoRetrieval:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1438
    :cond_b
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRetrievalDuringRoaming:Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_c

    .line 1439
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRetrievalDuringRoaming:Landroid/preference/CheckBoxPreference;

    iget-object v8, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRetrievalDuringRoaming:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1441
    :cond_c
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsReadReport:Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_d

    .line 1442
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsReadReport:Landroid/preference/CheckBoxPreference;

    iget-object v8, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsReadReport:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1445
    :cond_d
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsAutoReplyReadReport:Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_1

    .line 1446
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsAutoReplyReadReport:Landroid/preference/CheckBoxPreference;

    iget-object v8, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsAutoReplyReadReport:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 1416
    .end local v5           #sp:Landroid/content/SharedPreferences;
    :cond_e
    const-string v7, "pref_key_mms_enable_to_send_delivery_reports"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsEnableToSendDeliveryReport:Landroid/preference/CheckBoxPreference;

    .line 1417
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsEnableToSendDeliveryReport:Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_7

    .line 1418
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsEnableToSendDeliveryReport:Landroid/preference/CheckBoxPreference;

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

    const-string v9, "pref_key_mms_enable_to_send_delivery_reports"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1419
    const-string v7, "pref_key_mms_settings"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 1420
    .local v0, mmsCategory:Landroid/preference/PreferenceCategory;
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsEnableToSendDeliveryReport:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1
.end method

.method private copyToPhoneMemory(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 17
    .parameter "cursor"
    .parameter "dest"

    .prologue
    .line 1084
    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v14, v15}, Landroid/content/ContextWrapper;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 1085
    .local v6, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v14, "CREATE TABLE sms (_id INTEGER PRIMARY KEY,thread_id INTEGER,address TEXT,m_size INTEGER,person INTEGER,date INTEGER,date_sent INTEGER DEFAULT 0,protocol INTEGER,read INTEGER DEFAULT 0,status INTEGER DEFAULT -1,type INTEGER,reply_path_present INTEGER,subject TEXT,body TEXT,service_center TEXT,locked INTEGER DEFAULT 0,sim_id INTEGER DEFAULT -1,error_code INTEGER DEFAULT 0,seen INTEGER DEFAULT 0);"

    invoke-virtual {v6, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1101
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1102
    const-string v14, "MessagingPreferenceActivity"

    const-string v15, "export mem begin"

    invoke-static {v14, v15}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    const/4 v4, 0x0

    .line 1104
    .local v4, count:I
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1105
    const-string v14, "type"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1106
    .local v7, messageType:I
    const/4 v14, 0x3

    if-eq v7, v14, :cond_0

    .line 1109
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1110
    .local v12, smsValue:Landroid/content/ContentValues;
    const-string v14, "thread_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1111
    .local v13, threadId:I
    const-string v14, "address"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1112
    .local v2, address:Ljava/lang/String;
    const-string v14, "body"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1113
    .local v3, body:Ljava/lang/String;
    const-string v14, "date"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 1114
    .local v5, date:Ljava/lang/Long;
    const-string v14, "sim_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1115
    .local v11, simId:I
    const-string v14, "read"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1116
    .local v8, read:I
    const-string v14, "seen"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1117
    .local v9, seen:I
    const-string v14, "service_center"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1118
    .local v10, serviceCenter:Ljava/lang/String;
    const-string v14, "read"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1119
    const-string v14, "seen"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1120
    const-string v14, "body"

    invoke-virtual {v12, v14, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    const-string v14, "date"

    invoke-virtual {v12, v14, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1122
    const-string v14, "sim_id"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1123
    const-string v14, "service_center"

    invoke-virtual {v12, v14, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    const-string v14, "type"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1125
    const-string v14, "address"

    invoke-virtual {v12, v14, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    const-string v14, "sms"

    const/4 v15, 0x0

    invoke-virtual {v6, v14, v15, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1127
    add-int/lit8 v4, v4, 0x1

    .line 1128
    goto/16 :goto_0

    .line 1129
    .end local v2           #address:Ljava/lang/String;
    .end local v3           #body:Ljava/lang/String;
    .end local v5           #date:Ljava/lang/Long;
    .end local v7           #messageType:I
    .end local v8           #read:I
    .end local v9           #seen:I
    .end local v10           #serviceCenter:Ljava/lang/String;
    .end local v11           #simId:I
    .end local v12           #smsValue:Landroid/content/ContentValues;
    .end local v13           #threadId:I
    :cond_1
    const-string v14, "MessagingPreferenceActivity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "export mem end count = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1131
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1132
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 1133
    return v4
.end method

.method private copyToSDMemory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .parameter "src"
    .parameter "dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1139
    const-string v10, "MessagingPreferenceActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "export sdcard begin dst = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    const/4 v5, 0x0

    .line 1141
    .local v5, myInput:Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 1143
    .local v7, myOutput:Ljava/io/OutputStream;
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mediatek/encapsulation/android/os/storage/EncapsulatedStorageManager;->getDefaultPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "//message//"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1144
    .local v9, sdCardDirPath:Ljava/lang/String;
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1145
    .end local v5           #myInput:Ljava/io/InputStream;
    .local v6, myInput:Ljava/io/InputStream;
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1146
    .local v1, dir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 1147
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v10

    if-nez v10, :cond_0

    .line 1148
    const-string v10, "MessagingPreferenceActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "copyToSDMemory. mkDir:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  has failed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    .line 1180
    .end local v1           #dir:Ljava/io/File;
    .end local v6           #myInput:Ljava/io/InputStream;
    .end local v9           #sdCardDirPath:Ljava/lang/String;
    .restart local v5       #myInput:Ljava/io/InputStream;
    :goto_0
    return-void

    .line 1152
    .end local v5           #myInput:Ljava/io/InputStream;
    .restart local v1       #dir:Ljava/io/File;
    .restart local v6       #myInput:Ljava/io/InputStream;
    .restart local v9       #sdCardDirPath:Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1153
    .local v2, dstFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    .line 1154
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v10

    if-nez v10, :cond_1

    .line 1155
    const-string v10, "MessagingPreferenceActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "copyToSDMemory. createNewFile:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  has failed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    .line 1156
    .end local v6           #myInput:Ljava/io/InputStream;
    .restart local v5       #myInput:Ljava/io/InputStream;
    goto :goto_0

    .line 1159
    .end local v5           #myInput:Ljava/io/InputStream;
    .restart local v6       #myInput:Ljava/io/InputStream;
    :cond_1
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1161
    .end local v7           #myOutput:Ljava/io/OutputStream;
    .local v8, myOutput:Ljava/io/OutputStream;
    const/16 v10, 0x400

    :try_start_2
    new-array v0, v10, [B

    .line 1163
    .local v0, buffer:[B
    :goto_1
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, length:I
    if-lez v4, :cond_2

    .line 1164
    const/4 v10, 0x0

    invoke-virtual {v8, v0, v10, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    .line 1169
    .end local v0           #buffer:[B
    .end local v4           #length:I
    :catch_0
    move-exception v3

    move-object v7, v8

    .end local v8           #myOutput:Ljava/io/OutputStream;
    .restart local v7       #myOutput:Ljava/io/OutputStream;
    move-object v5, v6

    .line 1170
    .end local v1           #dir:Ljava/io/File;
    .end local v2           #dstFile:Ljava/io/File;
    .end local v6           #myInput:Ljava/io/InputStream;
    .end local v9           #sdCardDirPath:Ljava/lang/String;
    .local v3, e:Ljava/io/FileNotFoundException;
    .restart local v5       #myInput:Ljava/io/InputStream;
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1171
    const-string v10, "MessagingPreferenceActivity"

    const-string v11, "export sdcard FileNotFoundException"

    invoke-static {v10, v11}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :goto_3
    const-string v10, "MessagingPreferenceActivity"

    const-string v11, "export sdcard end"

    invoke-static {v10, v11}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1166
    .end local v5           #myInput:Ljava/io/InputStream;
    .end local v7           #myOutput:Ljava/io/OutputStream;
    .restart local v0       #buffer:[B
    .restart local v1       #dir:Ljava/io/File;
    .restart local v2       #dstFile:Ljava/io/File;
    .restart local v4       #length:I
    .restart local v6       #myInput:Ljava/io/InputStream;
    .restart local v8       #myOutput:Ljava/io/OutputStream;
    .restart local v9       #sdCardDirPath:Ljava/lang/String;
    :cond_2
    :try_start_3
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    .line 1167
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 1168
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_4

    move-object v7, v8

    .end local v8           #myOutput:Ljava/io/OutputStream;
    .restart local v7       #myOutput:Ljava/io/OutputStream;
    move-object v5, v6

    .line 1178
    .end local v6           #myInput:Ljava/io/InputStream;
    .restart local v5       #myInput:Ljava/io/InputStream;
    goto :goto_3

    .line 1172
    .end local v0           #buffer:[B
    .end local v1           #dir:Ljava/io/File;
    .end local v2           #dstFile:Ljava/io/File;
    .end local v4           #length:I
    .end local v9           #sdCardDirPath:Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 1173
    .local v3, e:Ljava/io/IOException;
    :goto_4
    const-string v10, "MessagingPreferenceActivity"

    const-string v11, "export sdcard IOException"

    invoke-static {v10, v11}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    throw v3

    .line 1175
    .end local v3           #e:Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 1176
    .local v3, e:Ljava/lang/IndexOutOfBoundsException;
    :goto_5
    const-string v10, "MessagingPreferenceActivity"

    const-string v11, "export sdcard IndexOutOfBoundsException"

    invoke-static {v10, v11}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 1175
    .end local v3           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v5           #myInput:Ljava/io/InputStream;
    .restart local v6       #myInput:Ljava/io/InputStream;
    .restart local v9       #sdCardDirPath:Ljava/lang/String;
    :catch_3
    move-exception v3

    move-object v5, v6

    .end local v6           #myInput:Ljava/io/InputStream;
    .restart local v5       #myInput:Ljava/io/InputStream;
    goto :goto_5

    .end local v5           #myInput:Ljava/io/InputStream;
    .end local v7           #myOutput:Ljava/io/OutputStream;
    .restart local v1       #dir:Ljava/io/File;
    .restart local v2       #dstFile:Ljava/io/File;
    .restart local v6       #myInput:Ljava/io/InputStream;
    .restart local v8       #myOutput:Ljava/io/OutputStream;
    :catch_4
    move-exception v3

    move-object v7, v8

    .end local v8           #myOutput:Ljava/io/OutputStream;
    .restart local v7       #myOutput:Ljava/io/OutputStream;
    move-object v5, v6

    .end local v6           #myInput:Ljava/io/InputStream;
    .restart local v5       #myInput:Ljava/io/InputStream;
    goto :goto_5

    .line 1172
    .end local v1           #dir:Ljava/io/File;
    .end local v2           #dstFile:Ljava/io/File;
    .end local v5           #myInput:Ljava/io/InputStream;
    .restart local v6       #myInput:Ljava/io/InputStream;
    :catch_5
    move-exception v3

    move-object v5, v6

    .end local v6           #myInput:Ljava/io/InputStream;
    .restart local v5       #myInput:Ljava/io/InputStream;
    goto :goto_4

    .end local v5           #myInput:Ljava/io/InputStream;
    .end local v7           #myOutput:Ljava/io/OutputStream;
    .restart local v1       #dir:Ljava/io/File;
    .restart local v2       #dstFile:Ljava/io/File;
    .restart local v6       #myInput:Ljava/io/InputStream;
    .restart local v8       #myOutput:Ljava/io/OutputStream;
    :catch_6
    move-exception v3

    move-object v7, v8

    .end local v8           #myOutput:Ljava/io/OutputStream;
    .restart local v7       #myOutput:Ljava/io/OutputStream;
    move-object v5, v6

    .end local v6           #myInput:Ljava/io/InputStream;
    .restart local v5       #myInput:Ljava/io/InputStream;
    goto :goto_4

    .line 1169
    .end local v1           #dir:Ljava/io/File;
    .end local v2           #dstFile:Ljava/io/File;
    .end local v9           #sdCardDirPath:Ljava/lang/String;
    :catch_7
    move-exception v3

    goto :goto_2

    .end local v5           #myInput:Ljava/io/InputStream;
    .restart local v6       #myInput:Ljava/io/InputStream;
    .restart local v9       #sdCardDirPath:Ljava/lang/String;
    :catch_8
    move-exception v3

    move-object v5, v6

    .end local v6           #myInput:Ljava/io/InputStream;
    .restart local v5       #myInput:Ljava/io/InputStream;
    goto :goto_2
.end method

.method public static enableNotifications(ZLandroid/content/Context;)V
    .locals 2
    .parameter "enabled"
    .parameter "context"

    .prologue
    .line 886
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 889
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_key_enable_notifications"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 891
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 892
    return-void
.end method

.method private enablePushSetting()V
    .locals 2

    .prologue
    .line 1540
    const-string v1, "pref_key_wappush_settings"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 1544
    .local v0, wapPushOptions:Landroid/preference/PreferenceCategory;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSlAutoLanuchEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1545
    const-string v1, "pref_key_wappush_sl_autoloading"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1552
    :cond_0
    return-void
.end method

.method private exportMessages()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 964
    const-string v2, "MessagingPreferenceActivity"

    const-string v3, "exportMessages"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->isSDcardReady()Z

    move-result v2

    if-nez v2, :cond_0

    .line 966
    const/4 v1, 0x0

    .line 1048
    :goto_0
    return v1

    .line 968
    :cond_0
    const-string v2, ""

    const v3, 0x7f0b00a3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 969
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mediatek/encapsulation/android/os/storage/EncapsulatedStorageManager;->getDefaultPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "//message//"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 970
    .local v0, sdCardDirPath:Ljava/lang/String;
    new-instance v2, Lcom/android/mms/ui/MessagingPreferenceActivity$9;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity$9;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private getAppropriateFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "destDirectory"

    .prologue
    .line 1057
    const/4 v4, 0x0

    .line 1058
    .local v4, fileNumberStringLength:I
    const/16 v7, 0x3e7

    .line 1059
    .local v7, tmp:I
    :goto_0
    if-lez v7, :cond_0

    .line 1060
    add-int/lit8 v4, v4, 0x1

    .line 1061
    div-int/lit8 v7, v7, 0xa

    goto :goto_0

    .line 1064
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "%s%0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "d%s"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1065
    .local v1, bodyFormat:Ljava/lang/String;
    const/4 v5, 0x1

    .local v5, i:I
    :goto_1
    const/16 v8, 0x3e7

    if-gt v5, v8, :cond_3

    .line 1066
    const/4 v6, 0x0

    .line 1067
    .local v6, isExitFile:Z
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFileNamePrefix:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFileNameSuffix:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1068
    .local v0, body:Ljava/lang/String;
    const-string v8, "%s%s.%s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x1

    aput-object v0, v9, v10

    const/4 v10, 0x2

    iget-object v11, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFileNameExtension:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1069
    .local v3, fileName:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1070
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1071
    const/4 v6, 0x1

    .line 1073
    :cond_1
    if-nez v6, :cond_2

    .line 1074
    const-string v8, "MessagingPreferenceActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "exportMessages getAppropriateFileName fileName ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    .end local v0           #body:Ljava/lang/String;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #fileName:Ljava/lang/String;
    .end local v6           #isExitFile:Z
    :goto_2
    return-object v3

    .line 1065
    .restart local v0       #body:Ljava/lang/String;
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #fileName:Ljava/lang/String;
    .restart local v6       #isExitFile:Z
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1078
    .end local v0           #body:Ljava/lang/String;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #fileName:Ljava/lang/String;
    .end local v6           #isExitFile:Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public static getNotificationEnabled(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 878
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 879
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_enable_notifications"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 881
    .local v0, notificationsEnabled:Z
    return v0
.end method

.method private getPreferenceValueInt(Ljava/lang/String;I)I
    .locals 3
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 1560
    const-string v1, "com.android.mms_preferences"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1561
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private getResourceArray(I)[Ljava/lang/String;
    .locals 1
    .parameter "resId"

    .prologue
    .line 1555
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getVisualTextName(Ljava/lang/String;II)Ljava/lang/CharSequence;
    .locals 5
    .parameter "enumName"
    .parameter "choiceNameResId"
    .parameter "choiceValueResId"

    .prologue
    .line 943
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 945
    .local v2, visualNames:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 949
    .local v0, enumNames:[Ljava/lang/CharSequence;
    array-length v3, v2

    array-length v4, v0

    if-eq v3, v4, :cond_0

    .line 950
    const-string v3, ""

    .line 958
    :goto_0
    return-object v3

    .line 953
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 954
    aget-object v3, v0, v1

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 955
    aget-object v3, v2, v1

    goto :goto_0

    .line 953
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 958
    :cond_2
    const-string v3, ""

    goto :goto_0
.end method

.method private isSDcardReady()Z
    .locals 3

    .prologue
    .line 1183
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1185
    .local v0, isSDcard:Z
    if-nez v0, :cond_0

    .line 1186
    const v1, 0x7f0b00a2

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->showToast(I)V

    .line 1187
    const-string v1, "MessagingPreferenceActivity"

    const-string v2, "there is no SD card"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    const/4 v1, 0x0

    .line 1190
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private newMainHandler()V
    .locals 1

    .prologue
    .line 1296
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$10;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$10;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMainHandler:Landroid/os/Handler;

    .line 1325
    return-void
.end method

.method private removeBackupMessage()V
    .locals 2

    .prologue
    .line 1331
    const-string v1, "pref_title_io_settings"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 1332
    .local v0, portPref:Landroid/preference/PreferenceCategory;
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1333
    return-void
.end method

.method private restoreDefaultPreferences()V
    .locals 1

    .prologue
    .line 724
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 726
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 727
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMessagePreferences()V

    .line 730
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setListPrefSummary()V

    .line 732
    return-void
.end method

.method private setEnabledNotificationsPref()V
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mEnableNotificationsPref:Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getNotificationEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 482
    return-void
.end method

.method private setListPrefSummary()V
    .locals 8

    .prologue
    .line 1248
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1250
    .local v3, sp:Landroid/content/SharedPreferences;
    const-string v5, "pref_key_mms_priority"

    const v6, 0x7f0b02d0

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1251
    .local v4, stored:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsPriority:Landroid/preference/ListPreference;

    const v6, 0x7f060008

    const v7, 0x7f060009

    invoke-direct {p0, v4, v6, v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getVisualTextName(Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1255
    const/4 v1, 0x0

    .line 1256
    .local v1, saveLocation:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsMultiSaveLocationEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1258
    invoke-static {p0}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v0

    .line 1259
    .local v0, currentSimCount:I
    const/4 v2, 0x0

    .line 1260
    .local v2, slotId:I
    const/4 v5, 0x1

    if-ne v0, v5, :cond_0

    .line 1261
    invoke-static {p0}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v5}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v2

    .line 1262
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v6, v2

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

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1264
    :cond_0
    const-string v5, "MessagingPreferenceActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setListPrefSummary mSmsLocation stored slotId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " stored ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    .end local v0           #currentSimCount:I
    .end local v2           #slotId:I
    :cond_1
    if-nez v1, :cond_2

    .line 1273
    const-string v5, "pref_key_sms_save_location"

    const-string v6, "Phone"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1275
    :cond_2
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f08

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1276
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLocation:Landroid/preference/ListPreference;

    const v6, 0x7f06000c

    const v7, 0x7f06000d

    invoke-direct {p0, v1, v6, v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getVisualTextName(Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1284
    :goto_0
    const-string v5, "pref_key_mms_creation_mode"

    const-string v6, "FREE"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1285
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsCreationMode:Landroid/preference/ListPreference;

    const v6, 0x7f060004

    const v7, 0x7f060005

    invoke-direct {p0, v4, v6, v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getVisualTextName(Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1289
    const-string v5, "pref_key_mms_size_limit"

    const-string v6, "300"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1290
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsSizeLimit:Landroid/preference/ListPreference;

    const v6, 0x7f060006

    const v7, 0x7f060007

    invoke-direct {p0, v4, v6, v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getVisualTextName(Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1292
    return-void

    .line 1279
    :cond_3
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLocation:Landroid/preference/ListPreference;

    const v6, 0x7f06000e

    const v7, 0x7f06000f

    invoke-direct {p0, v1, v6, v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getVisualTextName(Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setMessagePreferences()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 275
    const-string v7, "MessagingPreferenceActivity"

    const-string v8, "MTK_GEMINI_SUPPORT is true"

    invoke-static {v7, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-static {p0}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v7

    iput v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCurrentSimCount:I

    .line 277
    const-string v7, "MessagingPreferenceActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mCurrentSimCount is :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCurrentSimCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCurrentSimCount:I

    if-gt v7, v11, :cond_9

    .line 279
    const v7, 0x7f05000d

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 280
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDeliveryReportAllowed()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 281
    const-string v7, "pref_key_mms_enable_to_send_delivery_reports"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsEnableToSendDeliveryReport:Landroid/preference/CheckBoxPreference;

    .line 308
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getShowStorageStatusEnabled()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 309
    const-string v7, "pref_key_storage_status"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mStorageStatusPref:Landroid/preference/Preference;

    .line 316
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAdjustFontSizeEnabled()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 317
    const v7, 0x7f060010

    invoke-direct {p0, v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResourceArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizeChoices:[Ljava/lang/String;

    .line 318
    const v7, 0x7f060011

    invoke-direct {p0, v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResourceArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizeValues:[Ljava/lang/String;

    .line 319
    const-string v7, "pref_key_message_font_size"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSize:Landroid/preference/Preference;

    .line 320
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSize:Landroid/preference/Preference;

    iget-object v8, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizeChoices:[Ljava/lang/String;

    const-string v9, "pref_key_message_font_size"

    invoke-direct {p0, v9, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceValueInt(Ljava/lang/String;I)I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 328
    :goto_2
    const-string v7, "pref_key_cell_broadcast"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCBsettingPref:Landroid/preference/Preference;

    .line 330
    iget v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCurrentSimCount:I

    if-nez v7, :cond_0

    .line 331
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCBsettingPref:Landroid/preference/Preference;

    invoke-virtual {v7, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 334
    :cond_0
    const-string v7, "pref_key_sms_delete_limit"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitPref:Landroid/preference/Preference;

    .line 335
    const-string v7, "pref_key_mms_delete_limit"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitPref:Landroid/preference/Preference;

    .line 336
    const-string v7, "pref_key_mms_group_mms"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsGroupMmsPref:Landroid/preference/Preference;

    .line 337
    const-string v7, "pref_key_mms_clear_history"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mClearHistoryPref:Landroid/preference/Preference;

    .line 338
    const-string v7, "pref_key_quick_text_editor"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsQuickTextEditorPref:Landroid/preference/Preference;

    .line 340
    const-string v7, "pref_key_mms_priority"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsPriority:Landroid/preference/ListPreference;

    .line 341
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsPriority:Landroid/preference/ListPreference;

    invoke-virtual {v7, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 342
    const-string v7, "pref_key_sms_save_location"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLocation:Landroid/preference/ListPreference;

    .line 343
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLocation:Landroid/preference/ListPreference;

    invoke-virtual {v7, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 344
    const-string v7, "pref_key_mms_creation_mode"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsCreationMode:Landroid/preference/ListPreference;

    .line 345
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsCreationMode:Landroid/preference/ListPreference;

    invoke-virtual {v7, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 346
    const-string v7, "pref_key_mms_size_limit"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsSizeLimit:Landroid/preference/ListPreference;

    .line 347
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsSizeLimit:Landroid/preference/ListPreference;

    invoke-virtual {v7, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 348
    const-string v7, "pref_key_enable_notifications"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mEnableNotificationsPref:Landroid/preference/CheckBoxPreference;

    .line 349
    const-string v7, "pref_key_sms_settings"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    .line 354
    .local v3, smsCategory:Landroid/preference/PreferenceCategory;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsValidityPeriodEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 355
    const-string v7, "pref_key_sms_validity_period"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsValidityPeriodPref:Landroid/preference/Preference;

    .line 356
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsValidityPeriodPref:Landroid/preference/Preference;

    if-eqz v7, :cond_1

    .line 357
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsValidityPeriodPref:Landroid/preference/Preference;

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 361
    :cond_1
    iget v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCurrentSimCount:I

    if-nez v7, :cond_3

    .line 366
    const-string v7, "pref_key_manage_sim_messages"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    .line 367
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    invoke-virtual {v7, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 368
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSIMSmsAtSettingEnabled()Z

    move-result v7

    if-nez v7, :cond_2

    .line 369
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 372
    :cond_2
    const-string v7, "pref_key_sms_service_center"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsServiceCenterPref:Landroid/preference/Preference;

    .line 373
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsServiceCenterPref:Landroid/preference/Preference;

    invoke-virtual {v7, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 375
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsValidityPeriodEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 376
    const-string v7, "pref_key_sms_validity_period"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsValidityPeriodPref:Landroid/preference/Preference;

    .line 377
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsValidityPeriodPref:Landroid/preference/Preference;

    invoke-virtual {v7, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 417
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v7

    if-nez v7, :cond_c

    .line 419
    const-string v7, "pref_key_mms_settings"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 421
    .local v2, mmsOptions:Landroid/preference/PreferenceCategory;
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 423
    const-string v7, "pref_key_storage_settings"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    .line 425
    .local v6, storageOptions:Landroid/preference/PreferenceCategory;
    const-string v7, "pref_key_mms_delete_limit"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 436
    .end local v6           #storageOptions:Landroid/preference/PreferenceCategory;
    :cond_4
    :goto_3
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setEnabledNotificationsPref()V

    .line 438
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->enablePushSetting()V

    .line 440
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    .line 441
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    .line 444
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setSmsDisplayLimit()V

    .line 445
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMmsDisplayLimit()V

    .line 446
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->addSmsInputModePreference()V

    .line 449
    const-string v7, "MessagingPreferenceActivity"

    const-string v8, "MTK_GEMINI_SUPPORT is true"

    invoke-static {v7, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCurrentSimCount:I

    if-ne v7, v11, :cond_d

    .line 451
    const-string v7, "MessagingPreferenceActivity"

    const-string v8, "single sim"

    invoke-static {v7, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->changeSingleCardKeyToSimRelated()V

    .line 460
    :cond_5
    :goto_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getForwardWithSenderEnabled()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 461
    const-string v7, "pref_key_forward_with_sender"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsForwardWithSender:Landroid/preference/CheckBoxPreference;

    .line 462
    const-string v7, "com.android.mms_preferences"

    invoke-virtual {p0, v7, v11}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 463
    .local v4, sp:Landroid/content/SharedPreferences;
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsForwardWithSender:Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_6

    .line 464
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsForwardWithSender:Landroid/preference/CheckBoxPreference;

    iget-object v8, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsForwardWithSender:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 467
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsDirMode()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    if-eqz v7, :cond_7

    .line 468
    const-string v7, "pref_key_sms_settings"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    iget-object v8, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 475
    .end local v4           #sp:Landroid/content/SharedPreferences;
    :cond_7
    :goto_5
    return-void

    .line 283
    .end local v2           #mmsOptions:Landroid/preference/PreferenceCategory;
    .end local v3           #smsCategory:Landroid/preference/PreferenceCategory;
    :cond_8
    const-string v7, "pref_key_mms_enable_to_send_delivery_reports"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsEnableToSendDeliveryReport:Landroid/preference/CheckBoxPreference;

    .line 284
    const-string v7, "pref_key_mms_settings"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 285
    .local v1, mmsCategory:Landroid/preference/PreferenceCategory;
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsEnableToSendDeliveryReport:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 288
    .end local v1           #mmsCategory:Landroid/preference/PreferenceCategory;
    :cond_9
    const v7, 0x7f05000a

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 311
    :cond_a
    const-string v7, "pref_key_storage_status"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mStorageStatusPref:Landroid/preference/Preference;

    .line 312
    const-string v7, "pref_key_storage_settings"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 313
    .local v5, storageCategory:Landroid/preference/PreferenceCategory;
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mStorageStatusPref:Landroid/preference/Preference;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 322
    .end local v5           #storageCategory:Landroid/preference/PreferenceCategory;
    :cond_b
    const-string v7, "pref_key_font_size_setting"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 324
    .local v0, fontSizeOptions:Landroid/preference/PreferenceCategory;
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 427
    .end local v0           #fontSizeOptions:Landroid/preference/PreferenceCategory;
    .restart local v3       #smsCategory:Landroid/preference/PreferenceCategory;
    :cond_c
    const-string v7, "pref_key_mms_settings"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 430
    .restart local v2       #mmsOptions:Landroid/preference/PreferenceCategory;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getGroupMmsEnabled()Z

    move-result v7

    if-nez v7, :cond_4

    .line 431
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsGroupMmsPref:Landroid/preference/Preference;

    invoke-virtual {v2, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 453
    :cond_d
    iget v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCurrentSimCount:I

    if-le v7, v11, :cond_5

    .line 454
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMultiCardPreference()V

    goto/16 :goto_4

    .line 471
    :cond_e
    const-string v7, "pref_key_forward_with_sender"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsForwardWithSender:Landroid/preference/CheckBoxPreference;

    .line 472
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsForwardWithSender:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_5
.end method

.method private setMmsDisplayLimit()V
    .locals 5

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitPref:Landroid/preference/Preference;

    const v1, 0x7f0b02a6

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v4, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 494
    return-void
.end method

.method private setMultiCardPreference()V
    .locals 5

    .prologue
    const v4, 0x7f0b0008

    .line 1451
    const-string v3, "pref_key_sms_delivery_reports"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsDeliveryReportMultiSim:Landroid/preference/Preference;

    .line 1452
    const-string v3, "pref_key_mms_delivery_reports"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsDeliveryReportMultiSim:Landroid/preference/Preference;

    .line 1453
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDeliveryReportAllowed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1454
    const-string v3, "pref_key_mms_enable_to_send_delivery_reports"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsEnableToSendDeliveryReportMultiSim:Landroid/preference/Preference;

    .line 1462
    :goto_0
    const-string v3, "pref_key_mms_read_reports"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsReadReportMultiSim:Landroid/preference/Preference;

    .line 1464
    const-string v3, "pref_key_mms_auto_reply_read_reports"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsAutoReplyReadReportMultiSim:Landroid/preference/Preference;

    .line 1465
    const-string v3, "pref_key_mms_auto_retrieval"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsAutoRetrievalMultiSim:Landroid/preference/Preference;

    .line 1466
    const-string v3, "pref_key_mms_retrieval_during_roaming"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRetrievalDuringRoamingMultiSim:Landroid/preference/Preference;

    .line 1467
    const-string v3, "pref_key_sms_service_center"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsServiceCenterPrefMultiSim:Landroid/preference/Preference;

    .line 1468
    const-string v3, "pref_key_sms_validity_period"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsValidityPeriodPrefMultiSim:Landroid/preference/Preference;

    .line 1469
    const-string v3, "pref_key_manage_sim_messages"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSimPrefMultiSim:Landroid/preference/Preference;

    .line 1470
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    .line 1471
    const-string v3, "pref_key_sms_settings"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 1474
    .local v2, smsCategory:Landroid/preference/PreferenceCategory;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsMultiSaveLocationEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1475
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLocation:Landroid/preference/ListPreference;

    if-eqz v3, :cond_0

    .line 1476
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLocation:Landroid/preference/ListPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1477
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 1478
    .local v1, saveLocationMultiSim:Landroid/preference/Preference;
    const-string v3, "pref_key_sms_save_location"

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1479
    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 1480
    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 1481
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1482
    const-string v3, "pref_key_sms_save_location"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsSaveLoactionMultiSim:Landroid/preference/Preference;

    .line 1486
    .end local v1           #saveLocationMultiSim:Landroid/preference/Preference;
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSIMSmsAtSettingEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1487
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSimPrefMultiSim:Landroid/preference/Preference;

    if-eqz v3, :cond_1

    .line 1488
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSimPrefMultiSim:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1491
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsDeliveryReportMultiSim:Landroid/preference/Preference;

    const-string v4, "pref_key_sms_delivery_reports"

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1492
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsDeliveryReportMultiSim:Landroid/preference/Preference;

    const-string v4, "pref_key_mms_delivery_reports"

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1493
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsAutoRetrievalMultiSim:Landroid/preference/Preference;

    const-string v4, "pref_key_mms_auto_retrieval"

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1494
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsReadReportMultiSim:Landroid/preference/Preference;

    const-string v4, "pref_key_mms_read_reports"

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1495
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRetrievalDuringRoamingMultiSim:Landroid/preference/Preference;

    const-string v4, "pref_key_mms_retrieval_during_roaming"

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1496
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsAutoReplyReadReportMultiSim:Landroid/preference/Preference;

    const-string v4, "pref_key_mms_auto_reply_read_reports"

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1497
    const-string v3, "pref_key_cell_broadcast"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCellBroadcastMultiSim:Landroid/preference/Preference;

    .line 1498
    return-void

    .line 1456
    .end local v2           #smsCategory:Landroid/preference/PreferenceCategory;
    :cond_2
    const-string v3, "pref_key_mms_enable_to_send_delivery_reports"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsEnableToSendDeliveryReportMultiSim:Landroid/preference/Preference;

    .line 1457
    const-string v3, "pref_key_mms_settings"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 1459
    .local v0, mmsCategory:Landroid/preference/PreferenceCategory;
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsEnableToSendDeliveryReportMultiSim:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0
.end method

.method private setSmsDisplayLimit()V
    .locals 5

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitPref:Landroid/preference/Preference;

    const v1, 0x7f0b02a6

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v4, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 488
    return-void
.end method

.method private showToast(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 1194
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1195
    .local v0, t:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1196
    return-void
.end method


# virtual methods
.method public isUSimType(I)Z
    .locals 9
    .parameter "slot"

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 1215
    invoke-static {}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->getInstance()Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;

    move-result-object v1

    .line 1216
    .local v1, iTel:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    if-nez v1, :cond_0

    .line 1217
    const-string v3, "MessagingPreferenceActivity"

    const-string v4, "[isUIMType]: iTel = null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    :goto_0
    return v2

    .line 1223
    :cond_0
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->getIccCardTypeGemini(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UIM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 1227
    :catch_0
    move-exception v0

    .line 1228
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MessagingPreferenceActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isUSIMType]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%s: %s"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1229
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1230
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MessagingPreferenceActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isUSIMType]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%s: %s"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 1204
    const-string v0, "MessagingPreferenceActivity"

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

    .line 1205
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1206
    new-instance v0, Lcom/mediatek/encapsulation/android/widget/EncapsulatedListView;

    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/encapsulation/android/widget/EncapsulatedListView;-><init>(Landroid/widget/ListView;)V

    invoke-virtual {v0}, Lcom/mediatek/encapsulation/android/widget/EncapsulatedListView;->clearScrapViewsIfNeeded()V

    .line 1207
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 250
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 251
    const-string v1, "MessagingPreferenceActivity"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->newMainHandler()V

    .line 255
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 256
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 257
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMessagePreferences()V

    .line 258
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const v4, 0x104000a

    const/high16 v3, 0x104

    .line 806
    sparse-switch p1, :sswitch_data_0

    .line 874
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 808
    :sswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0321

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0322

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/mms/ui/MessagingPreferenceActivity$4;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$4;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 830
    :sswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b00ac

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b00a0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/mms/ui/MessagingPreferenceActivity$6;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$6;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/mms/ui/MessagingPreferenceActivity$5;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$5;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 848
    :sswitch_2
    new-instance v0, Lcom/android/mms/ui/FontSizeDialogAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizeChoices:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizeValues:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/mms/ui/FontSizeDialogAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 850
    .local v0, adapter:Lcom/android/mms/ui/FontSizeDialogAdapter;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0114

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0115

    new-instance v3, Lcom/android/mms/ui/MessagingPreferenceActivity$8;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$8;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "pref_key_message_font_size"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceValueInt(Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Lcom/android/mms/ui/MessagingPreferenceActivity$7;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$7;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizeDialog:Landroid/app/AlertDialog;

    .line 871
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizeDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 806
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
        0xa -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 497
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 498
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 499
    const v0, 0x7f0b029c

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 500
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 505
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 516
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 507
    :sswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->restoreDefaultPreferences()V

    goto :goto_0

    .line 513
    :sswitch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 505
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 1238
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1239
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsDisplayLimitDialog:Lcom/android/mms/ui/NumberPickerDialog;

    if-eqz v0, :cond_0

    .line 1240
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsDisplayLimitDialog:Lcom/android/mms/ui/NumberPickerDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1242
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsDisplayLimitDialog:Lcom/android/mms/ui/NumberPickerDialog;

    if-eqz v0, :cond_1

    .line 1243
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsDisplayLimitDialog:Lcom/android/mms/ui/NumberPickerDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1245
    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 12
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const v11, 0x7f06000f

    const v10, 0x7f06000e

    const v9, 0x7f06000d

    const v8, 0x7f06000c

    const/4 v7, 0x1

    .line 897
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 898
    .local v1, key:Ljava/lang/String;
    const/4 v2, 0x0

    .line 899
    .local v2, slotId:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsMultiSaveLocationEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 900
    invoke-static {p0}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v0

    .line 901
    .local v0, currentSimCount:I
    if-ne v0, v7, :cond_0

    .line 902
    invoke-static {p0}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v4}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v2

    .end local v0           #currentSimCount:I
    :cond_0
    move-object v3, p2

    .line 905
    check-cast v3, Ljava/lang/String;

    .line 906
    .local v3, stored:Ljava/lang/String;
    const-string v4, "pref_key_mms_priority"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 907
    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsPriority:Landroid/preference/ListPreference;

    const v5, 0x7f060008

    const v6, 0x7f060009

    invoke-direct {p0, v3, v5, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getVisualTextName(Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 940
    :cond_1
    :goto_0
    return v7

    .line 909
    :cond_2
    const-string v4, "pref_key_mms_creation_mode"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 910
    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsCreationMode:Landroid/preference/ListPreference;

    const v5, 0x7f060004

    const v6, 0x7f060005

    invoke-direct {p0, v3, v5, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getVisualTextName(Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 912
    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsCreationMode:Landroid/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 913
    invoke-static {p0}, Lcom/android/mms/data/WorkingMessage;->updateCreationMode(Landroid/content/Context;)V

    goto :goto_0

    .line 914
    :cond_3
    const-string v4, "pref_key_mms_size_limit"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 915
    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsSizeLimit:Landroid/preference/ListPreference;

    const v5, 0x7f060006

    const v6, 0x7f060007

    invoke-direct {p0, v3, v5, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getVisualTextName(Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 917
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/android/mms/MmsConfig;->setUserSetMmsSizeLimit(I)V

    goto :goto_0

    .line 919
    :cond_4
    const-string v4, "pref_key_sms_save_location"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCurrentSimCount:I

    if-le v4, v7, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsMultiSaveLocationEnabled()Z

    move-result v4

    if-nez v4, :cond_7

    .line 921
    :cond_5
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f08

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_6

    .line 922
    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLocation:Landroid/preference/ListPreference;

    invoke-direct {p0, v3, v8, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getVisualTextName(Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 925
    :cond_6
    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLocation:Landroid/preference/ListPreference;

    invoke-direct {p0, v3, v10, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getVisualTextName(Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 929
    :cond_7
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

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 931
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f08

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_8

    .line 932
    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLocation:Landroid/preference/ListPreference;

    invoke-direct {p0, v3, v8, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getVisualTextName(Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 935
    :cond_8
    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLocation:Landroid/preference/ListPreference;

    invoke-direct {p0, v3, v10, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getVisualTextName(Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 26
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 523
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mStorageStatusPref:Landroid/preference/Preference;

    move-object/from16 v0, p2

    if-ne v0, v3, :cond_1

    .line 524
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->getStorageStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    .line 525
    .local v19, memoryStatus:Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0b008b

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f02009f

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 720
    .end local v19           #memoryStatus:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-super/range {p0 .. p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    :goto_1
    return v3

    .line 531
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitPref:Landroid/preference/Preference;

    move-object/from16 v0, p2

    if-ne v0, v3, :cond_2

    .line 532
    new-instance v3, Lcom/android/mms/ui/NumberPickerDialog;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v4}, Lcom/android/mms/util/Recycler;->getMessageMinLimit()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v4}, Lcom/android/mms/util/Recycler;->getMessageMaxLimit()I

    move-result v8

    const v9, 0x7f0b02ac

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/mms/ui/NumberPickerDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;IIII)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsDisplayLimitDialog:Lcom/android/mms/ui/NumberPickerDialog;

    .line 539
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsDisplayLimitDialog:Lcom/android/mms/ui/NumberPickerDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 540
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitPref:Landroid/preference/Preference;

    move-object/from16 v0, p2

    if-ne v0, v3, :cond_3

    .line 541
    new-instance v3, Lcom/android/mms/ui/NumberPickerDialog;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v4}, Lcom/android/mms/util/Recycler;->getMessageMinLimit()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v4}, Lcom/android/mms/util/Recycler;->getMessageMaxLimit()I

    move-result v8

    const v9, 0x7f0b02ad

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/mms/ui/NumberPickerDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;IIII)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsDisplayLimitDialog:Lcom/android/mms/ui/NumberPickerDialog;

    .line 548
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsDisplayLimitDialog:Lcom/android/mms/ui/NumberPickerDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 549
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    move-object/from16 v0, p2

    if-ne v0, v3, :cond_4

    .line 551
    invoke-static/range {p0 .. p0}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mListSimInfo:Ljava/util/List;

    .line 552
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mListSimInfo:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v3}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v20

    .line 553
    .local v20, slotId:I
    const-string v3, "MessagingPreferenceActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "slotId is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    const/4 v3, -0x1

    move/from16 v0, v20

    if-eq v0, v3, :cond_0

    .line 555
    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    .line 556
    .local v18, it:Landroid/content/Intent;
    const-class v3, Lcom/android/mms/ui/ManageSimMessages;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 557
    const-string v3, "SlotId"

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 558
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 563
    .end local v18           #it:Landroid/content/Intent;
    .end local v20           #slotId:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mClearHistoryPref:Landroid/preference/Preference;

    move-object/from16 v0, p2

    if-ne v0, v3, :cond_5

    .line 564
    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->showDialog(I)V

    .line 565
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 566
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsQuickTextEditorPref:Landroid/preference/Preference;

    move-object/from16 v0, p2

    if-ne v0, v3, :cond_6

    .line 567
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 568
    .local v17, intent:Landroid/content/Intent;
    const-class v3, Lcom/android/mms/ui/SmsTemplateEditActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 569
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 570
    .end local v17           #intent:Landroid/content/Intent;
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsDeliveryReportMultiSim:Landroid/preference/Preference;

    move-object/from16 v0, p2

    if-eq v0, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsDeliveryReportMultiSim:Landroid/preference/Preference;

    move-object/from16 v0, p2

    if-eq v0, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsEnableToSendDeliveryReportMultiSim:Landroid/preference/Preference;

    move-object/from16 v0, p2

    if-eq v0, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsReadReportMultiSim:Landroid/preference/Preference;

    move-object/from16 v0, p2

    if-eq v0, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsAutoReplyReadReportMultiSim:Landroid/preference/Preference;

    move-object/from16 v0, p2

    if-eq v0, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsAutoRetrievalMultiSim:Landroid/preference/Preference;

    move-object/from16 v0, p2

    if-eq v0, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRetrievalDuringRoamingMultiSim:Landroid/preference/Preference;

    move-object/from16 v0, p2

    if-ne v0, v3, :cond_8

    .line 579
    :cond_7
    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    .line 580
    .restart local v18       #it:Landroid/content/Intent;
    const-class v3, Lcom/android/mms/ui/MultiSimPreferenceActivity;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 581
    const-string v3, "preference"

    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 582
    const-string v3, "preferenceTitle"

    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 583
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 584
    .end local v18           #it:Landroid/content/Intent;
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsServiceCenterPref:Landroid/preference/Preference;

    move-object/from16 v0, p2

    if-ne v0, v3, :cond_c

    .line 586
    invoke-static/range {p0 .. p0}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mListSimInfo:Ljava/util/List;

    .line 587
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mListSimInfo:Ljava/util/List;

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mListSimInfo:Ljava/util/List;

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mListSimInfo:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 588
    :cond_9
    const-string v3, "MessagingPreferenceActivity"

    const-string v4, "there is no sim card"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 591
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mListSimInfo:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v3}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v16

    .line 592
    .local v16, id:I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->isUSimType(I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 593
    const v3, 0x7f0b0106

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->showToast(I)V

    goto/16 :goto_0

    .line 596
    :cond_b
    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 597
    .local v12, dialog:Landroid/app/AlertDialog$Builder;
    new-instance v3, Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNumberText:Landroid/widget/EditText;

    .line 598
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNumberText:Landroid/widget/EditText;

    const v4, 0x7f0b0268

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHint(I)V

    .line 599
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNumberText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->computeScroll()V

    .line 600
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNumberText:Landroid/widget/EditText;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/text/InputFilter;

    const/4 v5, 0x0

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    const/16 v7, 0x14

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 602
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNumberText:Landroid/widget/EditText;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setInputType(I)V

    .line 603
    invoke-static {}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->getInstance()Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;

    move-result-object v21

    .line 607
    .local v21, teleService:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mListSimInfo:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v3}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v20

    .line 608
    .restart local v20       #slotId:I
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->getScAddressGemini(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 616
    .end local v20           #slotId:I
    .local v14, gotScNumber:Ljava/lang/String;
    :goto_2
    const-string v3, "MessagingPreferenceActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gotScNumber is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNumberText:Landroid/widget/EditText;

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    const v3, 0x7f02009f

    invoke-virtual {v12, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b000a

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNumberText:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b0006

    new-instance v5, Lcom/android/mms/ui/MessagingPreferenceActivity$PositiveButtonListener;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity$PositiveButtonListener;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;Lcom/android/mms/ui/MessagingPreferenceActivity$1;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b0007

    new-instance v5, Lcom/android/mms/ui/MessagingPreferenceActivity$NegativeButtonListener;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity$NegativeButtonListener;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;Lcom/android/mms/ui/MessagingPreferenceActivity$1;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNumberTextDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 612
    .end local v14           #gotScNumber:Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 613
    .local v13, e:Landroid/os/RemoteException;
    const/4 v14, 0x0

    .line 614
    .restart local v14       #gotScNumber:Ljava/lang/String;
    const-string v3, "MessagingPreferenceActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getScAddressGemini is failed.\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 628
    .end local v12           #dialog:Landroid/app/AlertDialog$Builder;
    .end local v13           #e:Landroid/os/RemoteException;
    .end local v14           #gotScNumber:Ljava/lang/String;
    .end local v16           #id:I
    .end local v21           #teleService:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsValidityPeriodPref:Landroid/preference/Preference;

    move-object/from16 v0, p2

    if-ne v0, v3, :cond_f

    .line 630
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mListSimInfo:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v3}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v20

    .line 631
    .restart local v20       #slotId:I
    const/4 v3, 0x6

    new-array v0, v3, [I

    move-object/from16 v25, v0

    fill-array-data v25, :array_0

    .line 635
    .local v25, validityPeroids:[I
    const/4 v3, 0x6

    new-array v0, v3, [Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v23, v3

    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v23, v3

    const/4 v3, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b000e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v23, v3

    const/4 v3, 0x3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v23, v3

    const/4 v3, 0x4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v23, v3

    const/4 v3, 0x5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0011

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v23, v3

    .line 643
    .local v23, validityItems:[Ljava/lang/CharSequence;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v20

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "pref_key_sms_validity_period"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 645
    .local v24, validityKey:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const/4 v4, -0x1

    move-object/from16 v0, v24

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v22

    .line 647
    .local v22, vailidity:I
    const/4 v11, 0x0

    .line 648
    .local v11, currentPosition:I
    const-string v3, "MessagingPreferenceActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "validity found the res = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    const/4 v15, 0x0

    .local v15, i:I
    :goto_3
    move-object/from16 v0, v25

    array-length v3, v0

    if-ge v15, v3, :cond_e

    .line 650
    aget v3, v25, v15

    move/from16 v0, v22

    if-ne v0, v3, :cond_d

    .line 651
    const-string v3, "MessagingPreferenceActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "validity found the position = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    move v11, v15

    .line 649
    :cond_d
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 656
    :cond_e
    new-instance v10, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 657
    .local v10, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 658
    new-instance v3, Lcom/android/mms/ui/MessagingPreferenceActivity$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v3, v0, v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity$1;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;Ljava/lang/String;[I)V

    move-object/from16 v0, v23

    invoke-virtual {v10, v0, v11, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 669
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 671
    .end local v10           #builder:Landroid/app/AlertDialog$Builder;
    .end local v11           #currentPosition:I
    .end local v15           #i:I
    .end local v20           #slotId:I
    .end local v22           #vailidity:I
    .end local v23           #validityItems:[Ljava/lang/CharSequence;
    .end local v24           #validityKey:Ljava/lang/String;
    .end local v25           #validityPeroids:[I
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsServiceCenterPrefMultiSim:Landroid/preference/Preference;

    move-object/from16 v0, p2

    if-eq v0, v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsValidityPeriodPrefMultiSim:Landroid/preference/Preference;

    move-object/from16 v0, p2

    if-eq v0, v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSimPrefMultiSim:Landroid/preference/Preference;

    move-object/from16 v0, p2

    if-eq v0, v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCellBroadcastMultiSim:Landroid/preference/Preference;

    move-object/from16 v0, p2

    if-eq v0, v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsSaveLoactionMultiSim:Landroid/preference/Preference;

    move-object/from16 v0, p2

    if-ne v0, v3, :cond_11

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCurrentSimCount:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_11

    .line 676
    :cond_10
    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    .line 677
    .restart local v18       #it:Landroid/content/Intent;
    const-class v3, Lcom/android/mms/ui/SelectCardPreferenceActivity;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 678
    const-string v3, "preference"

    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 679
    const-string v3, "preferenceTitle"

    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 680
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 681
    .end local v18           #it:Landroid/content/Intent;
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mEnableNotificationsPref:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v3, :cond_12

    .line 683
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mEnableNotificationsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    move-object/from16 v0, p0

    invoke-static {v3, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->enableNotifications(ZLandroid/content/Context;)V

    goto/16 :goto_0

    .line 684
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mImportMessages:Landroid/preference/Preference;

    move-object/from16 v0, p2

    if-ne v0, v3, :cond_13

    .line 686
    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    .line 687
    .restart local v18       #it:Landroid/content/Intent;
    const-class v3, Lcom/android/mms/ui/ImportSmsActivity;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 688
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 689
    .end local v18           #it:Landroid/content/Intent;
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mExportMessages:Landroid/preference/Preference;

    move-object/from16 v0, p2

    if-ne v0, v3, :cond_14

    .line 690
    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0

    .line 692
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCBsettingPref:Landroid/preference/Preference;

    move-object/from16 v0, p2

    if-ne v0, v3, :cond_17

    .line 696
    invoke-static/range {p0 .. p0}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mListSimInfo:Ljava/util/List;

    .line 697
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mListSimInfo:Ljava/util/List;

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mListSimInfo:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 698
    const-string v3, "MessagingPreferenceActivity"

    const-string v4, "there is no sim card"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 701
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mListSimInfo:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v3}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v20

    .line 702
    .restart local v20       #slotId:I
    const-string v3, "MessagingPreferenceActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCBsettingPref slotId is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->isUSimType(I)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 705
    const v3, 0x7f0b0106

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->showToast(I)V

    goto/16 :goto_0

    .line 708
    :cond_16
    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    .line 709
    .restart local v18       #it:Landroid/content/Intent;
    const-string v3, "com.android.phone"

    const-string v4, "com.mediatek.settings.CellBroadcastActivity"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 710
    const-string v3, "android.intent.action.MAIN"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 711
    const-string v3, "simId"

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 712
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->SUB_TITLE_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 713
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 715
    .end local v18           #it:Landroid/content/Intent;
    .end local v20           #slotId:I
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSize:Landroid/preference/Preference;

    move-object/from16 v0, p2

    if-ne v0, v3, :cond_0

    .line 716
    const/16 v3, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0

    .line 631
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
    .line 262
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 265
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setListPrefSummary()V

    .line 269
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setEnabledNotificationsPref()V

    .line 270
    return-void
.end method
