.class public Lcom/android/mms/ui/ClassifyGeneralFragment;
.super Landroid/preference/PreferenceFragment;
.source "ClassifyGeneralFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final AUTO_DELETE:Ljava/lang/String; = "pref_key_auto_delete"

.field public static final CHAT_SETTINGS_URI:Ljava/lang/String; = "content://mms-sms/thread_settings"

.field public static final CREATION_MODE:Ljava/lang/String; = "pref_key_mms_creation_mode"

.field public static final CREATION_MODE_FREE:Ljava/lang/String; = "FREE"

.field public static final DEFAULT_RINGTONE:Ljava/lang/String; = "content://settings/system/notification_sound"

.field public static final DEFAULT_RINGTONE_SECOND:Ljava/lang/String; = "content://settings/system/notif_sound_second"

.field public static final DISPLAY_PREFERENCE:Ljava/lang/String; = "pref_key_display_preference_settings"

.field private static final FONT_SIZE_DIALOG:I = 0xa

.field public static final FONT_SIZE_SETTING:Ljava/lang/String; = "pref_key_message_font_size"

.field public static final GENERAL_CHAT_WALLPAPER:Ljava/lang/String; = "pref_key_chat_wallpaper"

.field public static final GENERAL_WALLPAPER_FOR_PROVIDER:Ljava/lang/String; = "/data/data/com.android.providers.telephony/app_wallpaper/general_wallpaper.jpeg"

.field public static final GROUP_MMS_MODE:Ljava/lang/String; = "pref_key_mms_group_mms"

.field public static final MAX_MMS_PER_THREAD:Ljava/lang/String; = "MaxMmsMessagesPerThread"

.field public static final MAX_SMS_PER_THREAD:Ljava/lang/String; = "MaxSmsMessagesPerThread"

.field public static final MMS_DELETE_LIMIT:Ljava/lang/String; = "pref_key_mms_delete_limit"

.field private static final MMS_PREFERENCE:Ljava/lang/String; = "com.android.mms_preferences"

.field public static final MMS_SETTINGS:Ljava/lang/String; = "pref_key_mms_settings"

.field public static final MMS_SIZE_LIMIT:Ljava/lang/String; = "pref_key_mms_size_limit"

.field public static final MMS_SIZE_LIMIT_DEFAULT:I = 0x32

.field public static final MUTE_START:Ljava/lang/String; = "mute_start"

.field public static final NOTIFICATION_ENABLED:Ljava/lang/String; = "pref_key_enable_notifications"

.field public static final NOTIFICATION_MUTE:Ljava/lang/String; = "pref_key_mute"

.field public static final NOTIFICATION_RINGTONE:Ljava/lang/String; = "pref_key_ringtone"

.field public static final NOTIFICATION_RINGTONE_CARD_SECOND:Ljava/lang/String; = "pref_key_ringtone_card_second"

.field public static final NOTIFICATION_VIBRATE:Ljava/lang/String; = "pref_key_vibrate"

.field private static final PICK_GALLERY:I = 0x3

.field private static final PICK_PHOTO:I = 0x4

.field private static final PICK_WALLPAPER:I = 0x2

.field private static final PICTURE_SUFFIX:Ljava/lang/String; = ".jpeg"

.field public static final POPUP_NOTIFICATION:Ljava/lang/String; = "pref_key_popup_notification"

.field public static final PRIORITY:Ljava/lang/String; = "pref_key_mms_priority"

.field public static final PRIORITY_NORMAL:Ljava/lang/String; = "Normal"

.field public static final SHOW_EMAIL_ADDRESS:Ljava/lang/String; = "pref_key_show_email_address"

.field public static final SIZE_LIMIT_300:Ljava/lang/String; = "300"

.field public static final SMS_DELETE_LIMIT:Ljava/lang/String; = "pref_key_sms_delete_limit"

.field public static final SMS_QUICK_TEXT_EDITOR:Ljava/lang/String; = "pref_key_quick_text_editor"

.field public static final SMS_SIZE_LIMIT_DEFAULT:I = 0x1f4

.field public static final STORAGE_SETTING:Ljava/lang/String; = "pref_key_storage_settings"

.field private static final TAG:Ljava/lang/String; = "ClassifyGeneralFragment"

.field public static final TEXT_SIZE:Ljava/lang/String; = "message_font_size"

.field public static final TEXT_SIZE_DEFAULT:I = 0x12

.field public static final WAPPUSH_ENABLED:Ljava/lang/String; = "pref_key_wappush_enable"

.field public static final WAPPUSH_SETTING:Ljava/lang/String; = "pref_key_wappush_settings"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

.field private mChatWallpaperPref:Landroid/preference/Preference;

.field private mChatWallpaperUri:Ljava/lang/String;

.field private mCurrentSimCount:I

.field private mEnableNotificationsPref:Landroid/preference/CheckBoxPreference;

.field private mFontSize:Landroid/preference/Preference;

.field private mFontSizeChoices:[Ljava/lang/String;

.field private mFontSizeValues:[Ljava/lang/String;

.field private mMMSHandler:Landroid/os/Handler;

.field private mMmsCreationMode:Landroid/preference/ListPreference;

.field private mMmsDisplayLimitDialog:Lcom/android/mms/ui/NumberPickerDialog;

.field private mMmsGroupMms:Landroid/preference/CheckBoxPreference;

.field mMmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

.field private mMmsLimitPref:Landroid/preference/Preference;

.field private mMmsPriority:Landroid/preference/ListPreference;

.field private mMmsRecycler:Lcom/android/mms/util/Recycler;

.field private mMmsSizeLimit:Landroid/preference/ListPreference;

.field private mNotificaitonMute:Landroid/preference/ListPreference;

.field private mPopupNotificationPref:Landroid/preference/CheckBoxPreference;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSMSHandler:Landroid/os/Handler;

.field private mShowEmailPref:Landroid/preference/CheckBoxPreference;

.field private mSmsDisplayLimitDialog:Lcom/android/mms/ui/NumberPickerDialog;

.field mSmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

.field private mSmsLimitPref:Landroid/preference/Preference;

.field private mSmsQuickTextEditorPref:Landroid/preference/Preference;

.field private mSmsRecycler:Lcom/android/mms/util/Recycler;

.field private mVibratePref:Landroid/preference/CheckBoxPreference;

.field private mWallpaperImage:[I

.field private mWallpaperPathForCamera:Ljava/lang/String;

.field private mWallpaperText:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 121
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 190
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mSMSHandler:Landroid/os/Handler;

    .line 192
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mMMSHandler:Landroid/os/Handler;

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 196
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mChatWallpaperUri:Ljava/lang/String;

    .line 198
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mWallpaperPathForCamera:Ljava/lang/String;

    .line 220
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mWallpaperImage:[I

    .line 224
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mWallpaperText:[I

    .line 276
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mCurrentSimCount:I

    .line 549
    new-instance v0, Lcom/android/mms/ui/ClassifyGeneralFragment$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ClassifyGeneralFragment$4;-><init>(Lcom/android/mms/ui/ClassifyGeneralFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mSmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    .line 579
    new-instance v0, Lcom/android/mms/ui/ClassifyGeneralFragment$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ClassifyGeneralFragment$5;-><init>(Lcom/android/mms/ui/ClassifyGeneralFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mMmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    return-void

    .line 220
    nop

    :array_0
    .array-data 0x4
        0x94t 0x1t 0x2t 0x7ft
        0x93t 0x1t 0x2t 0x7ft
        0x91t 0x1t 0x2t 0x7ft
        0x92t 0x1t 0x2t 0x7ft
    .end array-data

    .line 224
    :array_1
    .array-data 0x4
        0xa5t 0x1t 0xbt 0x7ft
        0xa6t 0x1t 0xbt 0x7ft
        0xa7t 0x1t 0xbt 0x7ft
        0xa8t 0x1t 0xbt 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ClassifyGeneralFragment;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ClassifyGeneralFragment;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mFontSizeValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/ClassifyGeneralFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mMMSHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/ClassifyGeneralFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/mms/ui/ClassifyGeneralFragment;->pickSysWallpaper()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/ClassifyGeneralFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/mms/ui/ClassifyGeneralFragment;->pickWallpaperFromGallery()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/ClassifyGeneralFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/mms/ui/ClassifyGeneralFragment;->pickWallpaperFromCam()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/ClassifyGeneralFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ClassifyGeneralFragment;->compressAndRotateForMemory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/ClassifyGeneralFragment;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ClassifyGeneralFragment;->saveWallpaperToMemory(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/ClassifyGeneralFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mWallpaperPathForCamera:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/ClassifyGeneralFragment;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ClassifyGeneralFragment;->saveResourceWallpaperToMemory(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ClassifyGeneralFragment;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mFontSizeChoices:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ClassifyGeneralFragment;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mFontSize:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ClassifyGeneralFragment;)Lcom/android/mms/util/Recycler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ClassifyGeneralFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/mms/ui/ClassifyGeneralFragment;->setSmsDisplayLimit()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ClassifyGeneralFragment;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/mms/ui/ClassifyGeneralFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/mms/ui/ClassifyGeneralFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mSMSHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/ClassifyGeneralFragment;)Lcom/android/mms/util/Recycler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/ClassifyGeneralFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/mms/ui/ClassifyGeneralFragment;->setMmsDisplayLimit()V

    return-void
.end method

.method private compressAndRotateForMemory(Ljava/lang/String;)Ljava/lang/String;
    .locals 24
    .parameter "wallpaperCache"

    .prologue
    .line 864
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 865
    .local v12, mChatWallpaperPStore:Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mChatWallpaperUri:Ljava/lang/String;

    .line 866
    .local v4, chatWallpaperUri:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_a

    .line 867
    new-instance v11, Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "general_wallpaper_"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ".jpeg"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v11, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    .local v11, mChatWallpaperMemory:Ljava/io/File;
    :try_start_0
    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 873
    :goto_0
    const-string v20, "ClassifyGeneralFragment"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "mChatWallpapterMemory "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    const/4 v8, 0x0

    .line 876
    .local v8, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v8           #fos:Ljava/io/FileOutputStream;
    .local v9, fos:Ljava/io/FileOutputStream;
    move-object v8, v9

    .line 880
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    :goto_1
    new-instance v15, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v15}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 881
    .local v15, options:Landroid/graphics/BitmapFactory$Options;
    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v15, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 882
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 883
    const/16 v20, 0x0

    move/from16 v0, v20

    iput-boolean v0, v15, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 884
    iget v0, v15, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v17, v0

    .line 885
    .local v17, wallpaperHeight:I
    iget v0, v15, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v18, v0

    .line 886
    .local v18, wallpaperWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    const-string v21, "window"

    invoke-virtual/range {v20 .. v21}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/WindowManager;

    .line 887
    .local v19, windowManager:Landroid/view/WindowManager;
    invoke-interface/range {v19 .. v19}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/Display;->getHeight()I

    move-result v13

    .line 888
    .local v13, mCurrentMaxHeight:I
    invoke-interface/range {v19 .. v19}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/Display;->getWidth()I

    move-result v14

    .line 889
    .local v14, mCurrentMaxWidth:I
    const/4 v2, 0x1

    .line 890
    .local v2, be:I
    if-le v13, v14, :cond_5

    .line 891
    div-int v20, v17, v13

    div-int v21, v18, v14

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 895
    :goto_2
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ge v2, v0, :cond_0

    .line 896
    const/4 v2, 0x1

    .line 898
    :cond_0
    const-string v20, "ClassifyGeneralFragment"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "be: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    iput v2, v15, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 900
    const/16 v16, 0x0

    .line 901
    .local v16, orientation:I
    const/4 v5, 0x0

    .line 902
    .local v5, degree:I
    const/4 v10, 0x0

    .line 904
    .local v10, isCopyed:Z
    :try_start_2
    new-instance v7, Landroid/media/ExifInterface;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 905
    .local v7, exif:Landroid/media/ExifInterface;
    if-eqz v7, :cond_1

    .line 906
    const-string v20, "Orientation"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v16

    .line 907
    invoke-static/range {v16 .. v16}, Lcom/android/mms/ui/UriImage;->getExifRotation(I)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v5

    .line 912
    .end local v7           #exif:Landroid/media/ExifInterface;
    :cond_1
    :goto_3
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 913
    .local v3, bm:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_2

    .line 914
    invoke-static {v3, v5}, Lcom/android/mms/ui/UriImage;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 915
    sget-object v20, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v21, 0x64

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v10

    .line 917
    :cond_2
    const-string v20, "ClassifyGeneralFragment"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "isCopyed: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    if-nez v10, :cond_6

    .line 920
    const/16 v20, 0x0

    .line 923
    if-eqz v8, :cond_3

    .line 925
    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 930
    :cond_3
    :goto_4
    if-eqz v3, :cond_4

    .line 931
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 940
    .end local v2           #be:I
    .end local v3           #bm:Landroid/graphics/Bitmap;
    .end local v5           #degree:I
    .end local v8           #fos:Ljava/io/FileOutputStream;
    .end local v10           #isCopyed:Z
    .end local v11           #mChatWallpaperMemory:Ljava/io/File;
    .end local v13           #mCurrentMaxHeight:I
    .end local v14           #mCurrentMaxWidth:I
    .end local v15           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v16           #orientation:I
    .end local v17           #wallpaperHeight:I
    .end local v18           #wallpaperWidth:I
    .end local v19           #windowManager:Landroid/view/WindowManager;
    :cond_4
    :goto_5
    return-object v20

    .line 877
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    .restart local v11       #mChatWallpaperMemory:Ljava/io/File;
    :catch_0
    move-exception v6

    .line 878
    .local v6, e:Ljava/io/FileNotFoundException;
    const-string v20, "ClassifyGeneralFragment"

    const-string v21, "compressAndRotateForMemory, FileNotFoundException"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 893
    .end local v6           #e:Ljava/io/FileNotFoundException;
    .restart local v2       #be:I
    .restart local v13       #mCurrentMaxHeight:I
    .restart local v14       #mCurrentMaxWidth:I
    .restart local v15       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v17       #wallpaperHeight:I
    .restart local v18       #wallpaperWidth:I
    .restart local v19       #windowManager:Landroid/view/WindowManager;
    :cond_5
    div-int v20, v17, v14

    div-int v21, v18, v13

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto/16 :goto_2

    .line 909
    .restart local v5       #degree:I
    .restart local v10       #isCopyed:Z
    .restart local v16       #orientation:I
    :catch_1
    move-exception v6

    .line 910
    .local v6, e:Ljava/io/IOException;
    const-string v20, "ClassifyGeneralFragment"

    const-string v21, "compressAndRotateForMemory, FileNotFoundException1"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 923
    .end local v6           #e:Ljava/io/IOException;
    .restart local v3       #bm:Landroid/graphics/Bitmap;
    :cond_6
    if-eqz v8, :cond_7

    .line 925
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 930
    :cond_7
    :goto_6
    if-eqz v3, :cond_8

    .line 931
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 934
    :cond_8
    if-nez v10, :cond_9

    .line 935
    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v20, v4

    .line 936
    goto :goto_5

    .line 938
    :cond_9
    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .end local v2           #be:I
    .end local v3           #bm:Landroid/graphics/Bitmap;
    .end local v5           #degree:I
    .end local v8           #fos:Ljava/io/FileOutputStream;
    .end local v10           #isCopyed:Z
    .end local v11           #mChatWallpaperMemory:Ljava/io/File;
    .end local v13           #mCurrentMaxHeight:I
    .end local v14           #mCurrentMaxWidth:I
    .end local v15           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v16           #orientation:I
    .end local v17           #wallpaperHeight:I
    .end local v18           #wallpaperWidth:I
    .end local v19           #windowManager:Landroid/view/WindowManager;
    :cond_a
    move-object/from16 v20, v4

    .line 940
    goto :goto_5

    .line 871
    .restart local v11       #mChatWallpaperMemory:Ljava/io/File;
    :catch_2
    move-exception v20

    goto/16 :goto_0

    .line 926
    .restart local v2       #be:I
    .restart local v3       #bm:Landroid/graphics/Bitmap;
    .restart local v5       #degree:I
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    .restart local v10       #isCopyed:Z
    .restart local v13       #mCurrentMaxHeight:I
    .restart local v14       #mCurrentMaxWidth:I
    .restart local v15       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v16       #orientation:I
    .restart local v17       #wallpaperHeight:I
    .restart local v18       #wallpaperWidth:I
    .restart local v19       #windowManager:Landroid/view/WindowManager;
    :catch_3
    move-exception v6

    .line 927
    .restart local v6       #e:Ljava/io/IOException;
    const-string v21, "ClassifyGeneralFragment"

    const-string v22, "fos.close() exception"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 926
    .end local v6           #e:Ljava/io/IOException;
    :catch_4
    move-exception v6

    .line 927
    .restart local v6       #e:Ljava/io/IOException;
    const-string v20, "ClassifyGeneralFragment"

    const-string v21, "fos.close() exception"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method private enablePushSetting()V
    .locals 2

    .prologue
    .line 379
    const-string v1, "pref_key_wappush_settings"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 385
    .local v0, wapPushOptions:Landroid/preference/PreferenceCategory;
    return-void
.end method

.method private getFontSizeCurrentPosition()I
    .locals 4

    .prologue
    .line 545
    iget-object v1, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;

    const-string v2, "com.android.mms_preferences"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 546
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "pref_key_message_font_size"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getNotificationEnabled(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 373
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 374
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_enable_notifications"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 375
    .local v0, notificationsEnabled:Z
    return v0
.end method

.method private getPreferenceValueInt(Ljava/lang/String;I)I
    .locals 4
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 608
    iget-object v1, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;

    const-string v2, "com.android.mms_preferences"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 609
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private getResourceArray(I)[Ljava/lang/String;
    .locals 1
    .parameter "resId"

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSDCardPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "c"

    .prologue
    const/4 v3, 0x0

    .line 726
    const/4 v1, 0x0

    .line 727
    .local v1, sdDir:Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 728
    .local v2, sdStatus:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 729
    const-string v4, "mounted"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 730
    .local v0, sdCardExist:Z
    if-eqz v0, :cond_0

    .line 731
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 732
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    .line 737
    .end local v0           #sdCardExist:Z
    :cond_0
    return-object v3
.end method

.method public static newInstance()Lcom/android/mms/ui/ClassifyGeneralFragment;
    .locals 1

    .prologue
    .line 322
    new-instance v0, Lcom/android/mms/ui/ClassifyGeneralFragment;

    invoke-direct {v0}, Lcom/android/mms/ui/ClassifyGeneralFragment;-><init>()V

    return-object v0
.end method

.method private pickSysWallpaper()V
    .locals 3

    .prologue
    .line 944
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/mms/ui/WallpaperChooser;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 945
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 946
    return-void
.end method

.method private pickWallpaperFromCam()V
    .locals 7

    .prologue
    .line 688
    iget-object v4, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/android/mms/ui/ClassifyGeneralFragment;->getSDCardPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 689
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/android/mms/ui/ClassifyGeneralFragment;->getSDCardPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Message_WallPaper"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "general_wallpaper_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpeg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mWallpaperPathForCamera:Ljava/lang/String;

    .line 691
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mWallpaperPathForCamera:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 692
    .local v3, out:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 693
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 695
    :cond_0
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 696
    .local v2, mWallpaperTakeuri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 697
    .local v1, imageCaptureIntent:Landroid/content/Intent;
    const-string v4, "output"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 698
    const-string v4, "ClassifyGeneralFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MediaStoreUri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    const/4 v4, 0x4

    :try_start_0
    invoke-virtual {p0, v1, v4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    .end local v2           #mWallpaperTakeuri:Landroid/net/Uri;
    .end local v3           #out:Ljava/io/File;
    :goto_0
    return-void

    .line 701
    .restart local v2       #mWallpaperTakeuri:Landroid/net/Uri;
    .restart local v3       #out:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 702
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v4, "ClassifyGeneralFragment"

    const-string v5, "pickWallpaperFromCam, ActivityNotFoundException."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 705
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #imageCaptureIntent:Landroid/content/Intent;
    .end local v2           #mWallpaperTakeuri:Landroid/net/Uri;
    .end local v3           #out:Ljava/io/File;
    :cond_1
    const-string v4, "ClassifyGeneralFragment"

    const-string v5, "SDcard not esisted "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 708
    .restart local v1       #imageCaptureIntent:Landroid/content/Intent;
    const/4 v4, 0x4

    :try_start_1
    invoke-virtual {p0, v1, v4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 709
    :catch_1
    move-exception v0

    .line 710
    .restart local v0       #e:Landroid/content/ActivityNotFoundException;
    const-string v4, "ClassifyGeneralFragment"

    const-string v5, "pickWallpaperFromCam, ActivityNotFoundException2."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private pickWallpaperFromCamResult()V
    .locals 4

    .prologue
    .line 815
    invoke-virtual {p0}, Lcom/android/mms/ui/ClassifyGeneralFragment;->getAsyncDialog()Lcom/android/mms/ui/AsyncDialog;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ClassifyGeneralFragment$10;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ClassifyGeneralFragment$10;-><init>(Lcom/android/mms/ui/ClassifyGeneralFragment;)V

    const/4 v2, 0x0

    const v3, 0x7f0b019d

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/AsyncDialog;->runAsync(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    .line 822
    return-void
.end method

.method private pickWallpaperFromGallery()V
    .locals 4

    .prologue
    .line 716
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 717
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 719
    :try_start_0
    const-string v2, "Gallery"

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    :goto_0
    return-void

    .line 720
    :catch_0
    move-exception v0

    .line 721
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "ClassifyGeneralFragment"

    const-string v3, "pickWallpaperFromGallery, ActivityNotFoundException."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private pickWallpaperFromGalleryResult(Landroid/content/Intent;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 765
    if-nez p1, :cond_0

    .line 794
    :goto_0
    return-void

    .line 768
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ClassifyGeneralFragment;->getAsyncDialog()Lcom/android/mms/ui/AsyncDialog;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ClassifyGeneralFragment$7;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/ClassifyGeneralFragment$7;-><init>(Lcom/android/mms/ui/ClassifyGeneralFragment;Landroid/content/Intent;)V

    const/4 v2, 0x0

    const v3, 0x7f0b019d

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/AsyncDialog;->runAsync(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    goto :goto_0
.end method

.method private pickWallpaperFromSys(Landroid/content/Intent;)V
    .locals 5
    .parameter "data"

    .prologue
    .line 949
    const-string v1, "wallpaper_index"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 950
    .local v0, sourceId:I
    const-string v1, "ClassifyGeneralFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sourceId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    invoke-virtual {p0}, Lcom/android/mms/ui/ClassifyGeneralFragment;->getAsyncDialog()Lcom/android/mms/ui/AsyncDialog;

    move-result-object v1

    new-instance v2, Lcom/android/mms/ui/ClassifyGeneralFragment$11;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/ClassifyGeneralFragment$11;-><init>(Lcom/android/mms/ui/ClassifyGeneralFragment;I)V

    const/4 v3, 0x0

    const v4, 0x7f0b019d

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/mms/ui/AsyncDialog;->runAsync(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    .line 957
    return-void
.end method

.method private saveResourceWallpaperToMemory(I)Z
    .locals 13
    .parameter "resourceId"

    .prologue
    const/4 v12, 0x0

    .line 960
    iget-object v9, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 961
    .local v7, r:Landroid/content/res/Resources;
    const/4 v3, 0x0

    .line 963
    .local v3, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v7, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 967
    :goto_0
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 968
    .local v0, bm:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 969
    .local v1, cv:Landroid/content/ContentValues;
    const-string v9, "_data"

    const-string v10, "/data/data/com.android.providers.telephony/app_wallpaper/general_wallpaper.jpeg"

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    const/4 v4, 0x0

    .line 971
    .local v4, isSaveSuccessed:Z
    const-string v9, "content://mms-sms/thread_settings"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const-wide/16 v10, 0x0

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 972
    .local v8, uri:Landroid/net/Uri;
    iget-object v9, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v8, v1, v12, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 973
    const/4 v6, 0x0

    .line 975
    .local v6, o:Ljava/io/OutputStream;
    :try_start_1
    iget-object v9, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v6

    .line 976
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x64

    invoke-virtual {v0, v9, v10, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v4

    .line 977
    const-string v9, "ClassifyGeneralFragment"

    const-string v10, "decodeFile over"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 983
    if-eqz v6, :cond_0

    .line 985
    :try_start_2
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 990
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 991
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    :goto_2
    move v5, v4

    .line 993
    .end local v4           #isSaveSuccessed:Z
    .local v5, isSaveSuccessed:Z
    return v5

    .line 964
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v5           #isSaveSuccessed:Z
    .end local v6           #o:Ljava/io/OutputStream;
    .end local v8           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 965
    .local v2, e:Landroid/content/res/Resources$NotFoundException;
    const-string v9, "ClassifyGeneralFragment"

    const-string v10, "NotFoundException"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 978
    .end local v2           #e:Landroid/content/res/Resources$NotFoundException;
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v1       #cv:Landroid/content/ContentValues;
    .restart local v4       #isSaveSuccessed:Z
    .restart local v6       #o:Ljava/io/OutputStream;
    .restart local v8       #uri:Landroid/net/Uri;
    :catch_1
    move-exception v2

    .line 979
    .local v2, e:Ljava/io/FileNotFoundException;
    :try_start_3
    const-string v9, "ClassifyGeneralFragment"

    const-string v10, "FileNotFoundException"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 983
    if-eqz v6, :cond_2

    .line 985
    :try_start_4
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 990
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :cond_2
    :goto_3
    if-eqz v0, :cond_1

    .line 991
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2

    .line 980
    :catch_2
    move-exception v2

    .line 981
    .local v2, e:Ljava/io/IOException;
    :try_start_5
    const-string v9, "ClassifyGeneralFragment"

    const-string v10, "IOException"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 983
    if-eqz v6, :cond_3

    .line 985
    :try_start_6
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 990
    :cond_3
    :goto_4
    if-eqz v0, :cond_1

    .line 991
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2

    .line 983
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    if-eqz v6, :cond_4

    .line 985
    :try_start_7
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 990
    :cond_4
    :goto_5
    if-eqz v0, :cond_1

    .line 991
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2

    .line 986
    :catch_3
    move-exception v2

    .line 987
    .restart local v2       #e:Ljava/io/IOException;
    const-string v9, "ClassifyGeneralFragment"

    const-string v10, "fos.close() exception"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 986
    .local v2, e:Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v2

    .line 987
    .local v2, e:Ljava/io/IOException;
    const-string v9, "ClassifyGeneralFragment"

    const-string v10, "fos.close() exception"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 986
    :catch_5
    move-exception v2

    .line 987
    const-string v9, "ClassifyGeneralFragment"

    const-string v10, "fos.close() exception"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 986
    .end local v2           #e:Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 987
    .restart local v2       #e:Ljava/io/IOException;
    const-string v9, "ClassifyGeneralFragment"

    const-string v10, "fos.close() exception"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private saveWallpaperToMemory(Ljava/lang/String;)Z
    .locals 11
    .parameter "oldWallpaper"

    .prologue
    const/4 v10, 0x0

    .line 825
    if-nez p1, :cond_1

    .line 826
    const/4 v3, 0x0

    .line 859
    :cond_0
    :goto_0
    return v3

    .line 828
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 829
    .local v1, cv:Landroid/content/ContentValues;
    const-string v7, "_data"

    const-string v8, "/data/data/com.android.providers.telephony/app_wallpaper/general_wallpaper.jpeg"

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    const/4 v3, 0x0

    .line 831
    .local v3, isSaveSuccess:Z
    const-string v7, "content://mms-sms/thread_settings"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 832
    .local v6, uri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v6, v1, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 833
    const/4 v4, 0x0

    .line 834
    .local v4, o:Ljava/io/OutputStream;
    const/4 v0, 0x0

    .line 836
    .local v0, bm:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v7, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v4

    .line 837
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 838
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {v0, v7, v8, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v3

    .line 839
    const-string v7, "ClassifyGeneralFragment"

    const-string v8, "decodeFile over"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 841
    .local v5, tempFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 842
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 849
    :cond_2
    if-eqz v4, :cond_3

    .line 851
    :try_start_1
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 856
    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    .line 857
    .end local v5           #tempFile:Ljava/io/File;
    :goto_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 844
    :catch_0
    move-exception v2

    .line 845
    .local v2, e:Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v7, "ClassifyGeneralFragment"

    const-string v8, "FileNotFoundException"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 849
    if-eqz v4, :cond_4

    .line 851
    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 856
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :cond_4
    :goto_3
    if-eqz v0, :cond_0

    goto :goto_2

    .line 846
    :catch_1
    move-exception v2

    .line 847
    .local v2, e:Ljava/io/IOException;
    :try_start_4
    const-string v7, "ClassifyGeneralFragment"

    const-string v8, "IOException"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 849
    if-eqz v4, :cond_5

    .line 851
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 856
    :cond_5
    :goto_4
    if-eqz v0, :cond_0

    goto :goto_2

    .line 849
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    if-eqz v4, :cond_6

    .line 851
    :try_start_6
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 856
    :cond_6
    :goto_5
    if-eqz v0, :cond_0

    goto :goto_2

    .line 852
    :catch_2
    move-exception v2

    .line 853
    .restart local v2       #e:Ljava/io/IOException;
    const-string v7, "ClassifyGeneralFragment"

    const-string v8, "o.close() exception"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 852
    .local v2, e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v2

    .line 853
    .local v2, e:Ljava/io/IOException;
    const-string v7, "ClassifyGeneralFragment"

    const-string v8, "o.close() exception"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 852
    :catch_4
    move-exception v2

    .line 853
    const-string v7, "ClassifyGeneralFragment"

    const-string v8, "o.close() exception"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 852
    .end local v2           #e:Ljava/io/IOException;
    .restart local v5       #tempFile:Ljava/io/File;
    :catch_5
    move-exception v2

    .line 853
    .restart local v2       #e:Ljava/io/IOException;
    const-string v7, "ClassifyGeneralFragment"

    const-string v8, "o.close() exception"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setEnabledNotificationsPref()V
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mEnableNotificationsPref:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/mms/ui/ClassifyGeneralFragment;->getNotificationEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 340
    return-void
.end method

.method private setListPrefSummary()V
    .locals 12

    .prologue
    .line 343
    iget-object v8, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 345
    .local v6, sp:Landroid/content/SharedPreferences;
    const-string v8, "pref_key_mms_priority"

    const v9, 0x7f0b02d0

    invoke-virtual {p0, v9}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 346
    .local v7, stored:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mMmsPriority:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;

    const v10, 0x7f060008

    const v11, 0x7f060009

    invoke-static {v9, v7, v10, v11}, Lcom/android/mms/ui/MessageUtils;->getVisualTextName(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 348
    const-string v8, "pref_key_mms_creation_mode"

    const-string v9, "FREE"

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 349
    iget-object v8, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mMmsCreationMode:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;

    const v10, 0x7f060004

    const v11, 0x7f060005

    invoke-static {v9, v7, v10, v11}, Lcom/android/mms/ui/MessageUtils;->getVisualTextName(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 351
    const-string v8, "pref_key_mms_size_limit"

    const-string v9, "300"

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 352
    iget-object v8, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mMmsSizeLimit:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;

    const v10, 0x7f060006

    const v11, 0x7f060007

    invoke-static {v9, v7, v10, v11}, Lcom/android/mms/ui/MessageUtils;->getVisualTextName(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 355
    const-string v8, "mute_start"

    const-wide/16 v9, 0x0

    invoke-interface {v6, v8, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 356
    .local v3, mMuteStart:J
    const-string v8, "pref_key_mute"

    const-string v9, "0"

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 357
    .local v2, mMuteOrigin:I
    const-wide/16 v8, 0x0

    cmp-long v8, v3, v8

    if-lez v8, :cond_0

    if-lez v2, :cond_0

    .line 358
    const-string v8, "ClassifyGeneralFragment"

    const-string v9, "thread mute timeout, reset to default."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    long-to-int v0, v8

    .line 360
    .local v0, currentTime:I
    mul-int/lit16 v8, v2, 0xe10

    int-to-long v8, v8

    const-wide/16 v10, 0x3e8

    div-long v10, v3, v10

    add-long/2addr v8, v10

    int-to-long v10, v0

    cmp-long v8, v8, v10

    if-gtz v8, :cond_0

    .line 361
    iget-object v8, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 362
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v8, "mute_start"

    const-wide/16 v9, 0x0

    invoke-interface {v1, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 363
    const-string v8, "pref_key_mute"

    const-string v9, "0"

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 364
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 367
    .end local v0           #currentTime:I
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    const-string v8, "pref_key_mute"

    const-string v9, "0"

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 368
    .local v5, notificationMute:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mNotificaitonMute:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;

    const v10, 0x7f060024

    const v11, 0x7f060025

    invoke-static {v9, v5, v10, v11}, Lcom/android/mms/ui/MessageUtils;->getVisualTextName(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 370
    return-void
.end method

.method private setMessagePreferences()V
    .locals 8

    .prologue
    .line 439
    iget-object v4, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v4

    iput v4, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mCurrentSimCount:I

    .line 442
    const-string v4, "pref_key_quick_text_editor"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mSmsQuickTextEditorPref:Landroid/preference/Preference;

    .line 444
    const-string v4, "pref_key_mms_group_mms"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mMmsGroupMms:Landroid/preference/CheckBoxPreference;

    .line 445
    invoke-static {}, Lcom/android/mms/MmsConfig;->getGroupMmsEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 446
    const-string v4, "ClassifyGeneralFragment"

    const-string v5, "remove the group mms entry, it should be hidden."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const-string v4, "pref_key_mms_settings"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 448
    .local v0, mmOptions:Landroid/preference/PreferenceCategory;
    const-string v4, "pref_key_mms_group_mms"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 450
    .end local v0           #mmOptions:Landroid/preference/PreferenceCategory;
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mMmsGroupMms:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_1

    .line 451
    iget-object v4, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mMmsGroupMms:Landroid/preference/CheckBoxPreference;

    const-string v5, "pref_key_mms_group_mms"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 453
    :cond_1
    const-string v4, "pref_key_mms_priority"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mMmsPriority:Landroid/preference/ListPreference;

    .line 454
    iget-object v4, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mMmsPriority:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 455
    const-string v4, "pref_key_mms_creation_mode"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mMmsCreationMode:Landroid/preference/ListPreference;

    .line 456
    iget-object v4, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mMmsCreationMode:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 457
    const-string v4, "pref_key_mms_size_limit"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mMmsSizeLimit:Landroid/preference/ListPreference;

    .line 458
    iget-object v4, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mMmsSizeLimit:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 459
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 460
    const-string v4, "pref_key_mms_settings"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 461
    .local v1, mmsOptions:Landroid/preference/PreferenceCategory;
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 464
    .end local v1           #mmsOptions:Landroid/preference/PreferenceCategory;
    :cond_2
    const-string v4, "pref_key_mute"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mNotificaitonMute:Landroid/preference/ListPreference;

    .line 465
    iget-object v4, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mNotificaitonMute:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 466
    const-string v4, "pref_key_enable_notifications"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mEnableNotificationsPref:Landroid/preference/CheckBoxPreference;

    .line 467
    const-string v4, "pref_key_vibrate"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mVibratePref:Landroid/preference/CheckBoxPreference;

    .line 468
    const-string v4, "pref_key_popup_notification"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mPopupNotificationPref:Landroid/preference/CheckBoxPreference;

    .line 470
    const-string v4, "pref_key_show_email_address"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mShowEmailPref:Landroid/preference/CheckBoxPreference;

    .line 471
    iget-object v4, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 472
    .local v2, sp:Landroid/content/SharedPreferences;
    iget-object v4, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mShowEmailPref:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_3

    .line 473
    iget-object v4, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mShowEmailPref:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mShowEmailPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 475
    :cond_3
    const-string v4, "pref_key_message_font_size"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mFontSize:Landroid/preference/Preference;

    .line 476
    const v4, 0x7f060010

    invoke-direct {p0, v4}, Lcom/android/mms/ui/ClassifyGeneralFragment;->getResourceArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mFontSizeChoices:[Ljava/lang/String;

    .line 477
    const v4, 0x7f060011

    invoke-direct {p0, v4}, Lcom/android/mms/ui/ClassifyGeneralFragment;->getResourceArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mFontSizeValues:[Ljava/lang/String;

    .line 478
    const-string v4, "pref_key_message_font_size"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mFontSize:Landroid/preference/Preference;

    .line 479
    iget-object v4, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mFontSize:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mFontSizeChoices:[Ljava/lang/String;

    const-string v6, "pref_key_message_font_size"

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/android/mms/ui/ClassifyGeneralFragment;->getPreferenceValueInt(Ljava/lang/String;I)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 480
    const-string v4, "pref_key_chat_wallpaper"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mChatWallpaperPref:Landroid/preference/Preference;

    .line 481
    const-string v4, "pref_key_sms_delete_limit"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mSmsLimitPref:Landroid/preference/Preference;

    .line 482
    const-string v4, "pref_key_mms_delete_limit"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mMmsLimitPref:Landroid/preference/Preference;

    .line 483
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v4

    if-nez v4, :cond_4

    .line 484
    const-string v4, "pref_key_storage_settings"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    .line 485
    .local v3, storageOptions:Landroid/preference/PreferenceCategory;
    const-string v4, "pref_key_mms_delete_limit"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 487
    .end local v3           #storageOptions:Landroid/preference/PreferenceCategory;
    :cond_4
    invoke-direct {p0}, Lcom/android/mms/ui/ClassifyGeneralFragment;->enablePushSetting()V

    .line 488
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    .line 489
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    .line 491
    invoke-direct {p0}, Lcom/android/mms/ui/ClassifyGeneralFragment;->setSmsDisplayLimit()V

    .line 492
    invoke-direct {p0}, Lcom/android/mms/ui/ClassifyGeneralFragment;->setMmsDisplayLimit()V

    .line 493
    const-string v4, "pref_key_chat_wallpaper"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mChatWallpaperUri:Ljava/lang/String;

    .line 494
    return-void
.end method

.method private setMmsDisplayLimit()V
    .locals 6

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mMmsLimitPref:Landroid/preference/Preference;

    const v1, 0x7f0b02a6

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    iget-object v5, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v5}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 390
    return-void
.end method

.method private setSmsDisplayLimit()V
    .locals 6

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mSmsLimitPref:Landroid/preference/Preference;

    const v1, 0x7f0b02a6

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    iget-object v5, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v5}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 395
    return-void
.end method


# virtual methods
.method public clearWallpaperAll(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 677
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 678
    .local v0, cv:Landroid/content/ContentValues;
    const-string v3, "_data"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    const-string v3, "content://mms-sms/thread_settings"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 680
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v0, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 681
    .local v1, i:I
    if-lez v1, :cond_0

    .line 682
    const/4 v3, 0x1

    .line 684
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected getAsyncDialog()Lcom/android/mms/ui/AsyncDialog;
    .locals 2

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

    if-nez v0, :cond_0

    .line 618
    new-instance v0, Lcom/android/mms/ui/AsyncDialog;

    iget-object v1, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/android/mms/ui/AsyncDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 741
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 742
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 743
    packed-switch p1, :pswitch_data_0

    .line 762
    :cond_0
    :goto_0
    return-void

    .line 745
    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/ClassifyGeneralFragment;->pickWallpaperFromCamResult()V

    goto :goto_0

    .line 748
    :pswitch_1
    invoke-direct {p0, p3}, Lcom/android/mms/ui/ClassifyGeneralFragment;->pickWallpaperFromSys(Landroid/content/Intent;)V

    .line 749
    const-string v0, "ClassifyGeneralFragment"

    const-string v1, "sytem result"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 752
    :pswitch_2
    invoke-direct {p0, p3}, Lcom/android/mms/ui/ClassifyGeneralFragment;->pickWallpaperFromGalleryResult(Landroid/content/Intent;)V

    goto :goto_0

    .line 758
    :cond_1
    if-nez p2, :cond_0

    .line 759
    const-string v0, "ClassifyGeneralFragment"

    const-string v1, "nothing selected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 743
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 309
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 310
    iput-object p1, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;

    .line 311
    const-string v0, "ClassifyGeneralFragment"

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 285
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 286
    const-string v0, "ClassifyGeneralFragment"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    if-eqz p1, :cond_0

    const-string v0, "wallpaperCameraPath"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    const-string v0, "wallpaperCameraPath"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mWallpaperPathForCamera:Ljava/lang/String;

    .line 291
    :cond_0
    const v0, 0x7f050004

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 292
    invoke-direct {p0}, Lcom/android/mms/ui/ClassifyGeneralFragment;->setMessagePreferences()V

    .line 293
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 316
    const-string v0, "ClassifyGeneralFragment"

    const-string v1, "onDetach"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;

    .line 318
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 319
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 304
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 305
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 399
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .local v1, key:Ljava/lang/String;
    move-object v4, p2

    .line 400
    check-cast v4, Ljava/lang/String;

    .line 402
    .local v4, preferenceChange:Ljava/lang/String;
    const-string v6, "pref_key_mms_priority"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 403
    iget-object v6, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mMmsPriority:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;

    const v8, 0x7f060008

    const v9, 0x7f060009

    invoke-static {v7, v4, v8, v9}, Lcom/android/mms/ui/MessageUtils;->getVisualTextName(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 416
    :cond_0
    :goto_0
    const-string v6, "pref_key_mute"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 417
    iget-object v6, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;

    const v7, 0x7f060024

    const v8, 0x7f060025

    invoke-static {v6, v4, v7, v8}, Lcom/android/mms/ui/MessageUtils;->getVisualTextName(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 419
    .local v2, mMute:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mNotificaitonMute:Landroid/preference/ListPreference;

    invoke-virtual {v6, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 420
    const-string v6, "ClassifyGeneralFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "preference change: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const-string v6, "0"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 422
    iget-object v6, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 423
    .local v5, sp:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 424
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "mute_start"

    const-wide/16 v7, 0x0

    invoke-interface {v0, v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 425
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 434
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #mMute:Ljava/lang/CharSequence;
    .end local v5           #sp:Landroid/content/SharedPreferences;
    :cond_1
    :goto_1
    const/4 v6, 0x1

    return v6

    .line 405
    :cond_2
    const-string v6, "pref_key_mms_size_limit"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 406
    iget-object v6, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mMmsSizeLimit:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;

    const v8, 0x7f060006

    const v9, 0x7f060007

    invoke-static {v7, v4, v8, v9}, Lcom/android/mms/ui/MessageUtils;->getVisualTextName(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 408
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lcom/android/mms/MmsConfig;->setUserSetMmsSizeLimit(I)V

    goto :goto_0

    .line 409
    :cond_3
    const-string v6, "pref_key_mms_creation_mode"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 410
    iget-object v6, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mMmsCreationMode:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;

    const v8, 0x7f060004

    const v9, 0x7f060005

    invoke-static {v7, v4, v8, v9}, Lcom/android/mms/ui/MessageUtils;->getVisualTextName(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 412
    iget-object v6, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mMmsCreationMode:Landroid/preference/ListPreference;

    invoke-virtual {v6, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 413
    iget-object v6, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/android/mms/data/WorkingMessage;->updateCreationMode(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 427
    .restart local v2       #mMute:Ljava/lang/CharSequence;
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 428
    .local v3, muteTime:Ljava/lang/Long;
    iget-object v6, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 429
    .restart local v5       #sp:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 430
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "mute_start"

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-interface {v0, v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 431
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mSmsQuickTextEditorPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    .line 499
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 500
    .local v7, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;

    const-class v1, Lcom/android/mms/ui/SmsTemplateEditActivity;

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 501
    invoke-virtual {p0, v7}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 517
    .end local v7           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 502
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mSmsLimitPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_2

    .line 503
    new-instance v0, Lcom/android/mms/ui/NumberPickerDialog;

    iget-object v1, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mSmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    iget-object v3, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    iget-object v4, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v3

    iget-object v4, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v4}, Lcom/android/mms/util/Recycler;->getMessageMinLimit()I

    move-result v4

    iget-object v5, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v5}, Lcom/android/mms/util/Recycler;->getMessageMaxLimit()I

    move-result v5

    const v6, 0x7f0b02ac

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/NumberPickerDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;IIII)V

    iput-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mSmsDisplayLimitDialog:Lcom/android/mms/ui/NumberPickerDialog;

    .line 506
    iget-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mSmsDisplayLimitDialog:Lcom/android/mms/ui/NumberPickerDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 507
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mMmsLimitPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_3

    .line 508
    new-instance v0, Lcom/android/mms/ui/NumberPickerDialog;

    iget-object v1, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mMmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    iget-object v3, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    iget-object v4, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v3

    iget-object v4, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v4}, Lcom/android/mms/util/Recycler;->getMessageMinLimit()I

    move-result v4

    iget-object v5, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v5}, Lcom/android/mms/util/Recycler;->getMessageMaxLimit()I

    move-result v5

    const v6, 0x7f0b02ad

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/NumberPickerDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;IIII)V

    iput-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mMmsDisplayLimitDialog:Lcom/android/mms/ui/NumberPickerDialog;

    .line 511
    iget-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mMmsDisplayLimitDialog:Lcom/android/mms/ui/NumberPickerDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 512
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mFontSize:Landroid/preference/Preference;

    if-ne p2, v0, :cond_4

    .line 513
    invoke-virtual {p0}, Lcom/android/mms/ui/ClassifyGeneralFragment;->showFontDialog()V

    goto :goto_0

    .line 514
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mChatWallpaperPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 515
    invoke-virtual {p0}, Lcom/android/mms/ui/ClassifyGeneralFragment;->pickChatWallpaper()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 297
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 298
    invoke-direct {p0}, Lcom/android/mms/ui/ClassifyGeneralFragment;->setEnabledNotificationsPref()V

    .line 299
    invoke-direct {p0}, Lcom/android/mms/ui/ClassifyGeneralFragment;->setListPrefSummary()V

    .line 300
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 327
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 328
    const-string v0, "ClassifyGeneralFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWallpaperPathForCamera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mWallpaperPathForCamera:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const-string v0, "wallpaperCameraPath"

    iget-object v1, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mWallpaperPathForCamera:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method public pickChatWallpaper()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    .line 624
    new-instance v12, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v12, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 625
    .local v12, wallpaperDialog:Landroid/app/AlertDialog$Builder;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 626
    .local v2, wallpaper:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    const/4 v1, 0x4

    if-ge v8, v1, :cond_0

    .line 627
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 628
    .local v7, hm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ItemImage"

    iget-object v3, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mWallpaperImage:[I

    aget v3, v3, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    const-string v1, "ItemText"

    iget-object v3, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mWallpaperText:[I

    aget v4, v4, v8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 632
    .end local v7           #hm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f040079

    new-array v4, v14, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v13, "ItemImage"

    aput-object v13, v4, v5

    const/4 v5, 0x1

    const-string v13, "ItemText"

    aput-object v13, v4, v5

    new-array v5, v14, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 635
    .local v0, wallpaperDialogAdapter:Landroid/widget/SimpleAdapter;
    iget-object v1, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;

    const-string v3, "layout_inflater"

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 636
    .local v10, mInflater:Landroid/view/LayoutInflater;
    const v3, 0x7f040077

    iget-object v1, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0f01a2

    invoke-virtual {v1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v10, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 638
    .local v9, layout:Landroid/view/View;
    const v1, 0x7f0f01a3

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/GridView;

    .line 639
    .local v6, gv:Landroid/widget/GridView;
    invoke-virtual {v6, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 640
    iget-object v1, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b01a9

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    .line 642
    .local v11, wallpaperChooser:Landroid/app/AlertDialog;
    invoke-virtual {v11}, Landroid/app/Dialog;->show()V

    .line 643
    new-instance v1, Lcom/android/mms/ui/ClassifyGeneralFragment$6;

    invoke-direct {v1, p0, v11}, Lcom/android/mms/ui/ClassifyGeneralFragment$6;-><init>(Lcom/android/mms/ui/ClassifyGeneralFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v6, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 674
    return-void

    .line 632
    :array_0
    .array-data 0x4
        0xa5t 0x1t 0xft 0x7ft
        0xa6t 0x1t 0xft 0x7ft
    .end array-data
.end method

.method protected showFontDialog()V
    .locals 4

    .prologue
    .line 521
    new-instance v0, Lcom/android/mms/ui/FontSizeDialogAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mFontSizeChoices:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mFontSizeValues:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/ui/FontSizeDialogAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 522
    .local v0, adapter:Lcom/android/mms/ui/FontSizeDialogAdapter;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0114

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0115

    new-instance v3, Lcom/android/mms/ui/ClassifyGeneralFragment$3;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/ClassifyGeneralFragment$3;-><init>(Lcom/android/mms/ui/ClassifyGeneralFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/mms/ui/ClassifyGeneralFragment;->getFontSizeCurrentPosition()I

    move-result v2

    new-instance v3, Lcom/android/mms/ui/ClassifyGeneralFragment$2;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/ClassifyGeneralFragment$2;-><init>(Lcom/android/mms/ui/ClassifyGeneralFragment;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/mms/ui/ClassifyGeneralFragment$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ClassifyGeneralFragment$1;-><init>(Lcom/android/mms/ui/ClassifyGeneralFragment;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 541
    return-void
.end method

.method showSaveWallpaperResult(Z)V
    .locals 2
    .parameter "isShow"

    .prologue
    .line 797
    if-eqz p1, :cond_0

    .line 798
    iget-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/android/mms/ui/ClassifyGeneralFragment$8;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ClassifyGeneralFragment$8;-><init>(Lcom/android/mms/ui/ClassifyGeneralFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 812
    :goto_0
    return-void

    .line 805
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/android/mms/ui/ClassifyGeneralFragment$9;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ClassifyGeneralFragment$9;-><init>(Lcom/android/mms/ui/ClassifyGeneralFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
