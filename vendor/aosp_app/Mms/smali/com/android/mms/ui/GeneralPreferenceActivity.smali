.class public Lcom/android/mms/ui/GeneralPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "GeneralPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final AUTO_DELETE:Ljava/lang/String; = "pref_key_auto_delete"

.field public static final AUTO_ROTATION:Ljava/lang/String; = "pref_key_auto_rotation"

.field public static final BACKUP_MESSAGE:Ljava/lang/String; = "pref_key_backup_message"

.field public static final BACKUP_RESTORE:Ljava/lang/String; = "pref_key_backup_restore_settings"

.field public static final CELL_BROADCAST:Ljava/lang/String; = "pref_key_cell_broadcast"

.field public static final CHAT_SETTINGS_URI:Ljava/lang/String; = "content://mms-sms/thread_settings"

.field public static final DISPLAY_PREFERENCE:Ljava/lang/String; = "pref_key_display_preference_settings"

.field private static final FONT_SIZE_DIALOG:I = 0xa

.field public static final FONT_SIZE_SETTING:Ljava/lang/String; = "pref_key_message_font_size"

.field public static final GENERAL_CHAT_WALLPAPER:Ljava/lang/String; = "pref_key_chat_wallpaper"

.field public static final GENERAL_WALLPAPER_FOR_PROVIDER:Ljava/lang/String; = "/data/data/com.android.providers.telephony/app_wallpaper/general_wallpaper.jpeg"

.field private static final LOCATION_PHONE:Ljava/lang/String; = "Phone"

.field private static final LOCATION_SIM:Ljava/lang/String; = "Sim"

.field private static final MAX_MMS_PER_THREAD:Ljava/lang/String; = "MaxMmsMessagesPerThread"

.field private static final MAX_SMS_PER_THREAD:Ljava/lang/String; = "MaxSmsMessagesPerThread"

.field private static final MENU_RESTORE_DEFAULTS:I = 0x1

.field public static final MMS_DELETE_LIMIT:Ljava/lang/String; = "pref_key_mms_delete_limit"

.field private static final MMS_PREFERENCE:Ljava/lang/String; = "com.android.mms_preferences"

.field private static final MMS_SIZE_LIMIT_DEFAULT:I = 0x32

.field private static final PICK_GALLERY:I = 0x3

.field private static final PICK_PHOTO:I = 0x4

.field private static final PICK_WALLPAPER:I = 0x2

.field public static final RESTORE_MESSAGE:Ljava/lang/String; = "pref_key_restore_message"

.field public static final SHOW_EMAIL_ADDRESS:Ljava/lang/String; = "pref_key_show_email_address"

.field public static final SMS_DELETE_LIMIT:Ljava/lang/String; = "pref_key_sms_delete_limit"

.field private static final SMS_SIZE_LIMIT_DEFAULT:I = 0x1f4

.field public static final STORAGE_SETTING:Ljava/lang/String; = "pref_key_storage_settings"

.field public static final STORAGE_STATUS:Ljava/lang/String; = "pref_key_storage_status"

.field private static final TAG:Ljava/lang/String; = "GeneralPreferenceActivity"

.field public static final TEXT_SIZE:Ljava/lang/String; = "message_font_size"

.field public static final TEXT_SIZE_DEFAULT:I = 0x12

.field public static final WAPPUSH_AUTO_DOWNLOAD:Ljava/lang/String; = "pref_key_wappush_sl_autoloading"

.field public static final WAPPUSH_ENABLED:Ljava/lang/String; = "pref_key_wappush_enable"

.field public static final WAPPUSH_SETTING:Ljava/lang/String; = "pref_key_wappush_settings"


# instance fields
.field public SUB_TITLE_NAME:Ljava/lang/String;

.field private mCBsettingPref:Landroid/preference/Preference;

.field private mCellBroadcastMultiSim:Landroid/preference/Preference;

.field private mChatWallpaperPref:Landroid/preference/Preference;

.field private mChatWallpaperUri:Ljava/lang/String;

.field private mCurrentSimCount:I

.field private mFontSize:Landroid/preference/Preference;

.field private mFontSizeChoices:[Ljava/lang/String;

.field private mFontSizeDialog:Landroid/app/AlertDialog;

.field private mFontSizeValues:[Ljava/lang/String;

.field private mMMSHandler:Landroid/os/Handler;

.field private mMmsDisplayLimitDialog:Lcom/android/mms/ui/NumberPickerDialog;

.field mMmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

.field private mMmsLimitPref:Landroid/preference/Preference;

.field private mMmsRecycler:Lcom/android/mms/util/Recycler;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSMSHandler:Landroid/os/Handler;

.field private mShowEmailPref:Landroid/preference/CheckBoxPreference;

.field private mSmsDisplayLimitDialog:Lcom/android/mms/ui/NumberPickerDialog;

.field mSmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

.field private mSmsLimitPref:Landroid/preference/Preference;

.field private mSmsRecycler:Lcom/android/mms/util/Recycler;

.field private mStorageStatusPref:Landroid/preference/Preference;

.field private mWallpaperImage:[I

.field private mWallpaperPathForCamera:Ljava/lang/String;

.field private mWallpaperText:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 84
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 176
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mSMSHandler:Landroid/os/Handler;

    .line 178
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mMMSHandler:Landroid/os/Handler;

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 182
    const-string v0, "sub_title_name"

    iput-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->SUB_TITLE_NAME:Ljava/lang/String;

    .line 184
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mCurrentSimCount:I

    .line 186
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mChatWallpaperUri:Ljava/lang/String;

    .line 188
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mWallpaperPathForCamera:Ljava/lang/String;

    .line 200
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mWallpaperImage:[I

    .line 204
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mWallpaperText:[I

    .line 487
    new-instance v0, Lcom/android/mms/ui/GeneralPreferenceActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/GeneralPreferenceActivity$4;-><init>(Lcom/android/mms/ui/GeneralPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mSmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    .line 518
    new-instance v0, Lcom/android/mms/ui/GeneralPreferenceActivity$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/GeneralPreferenceActivity$5;-><init>(Lcom/android/mms/ui/GeneralPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mMmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    return-void

    .line 200
    nop

    :array_0
    .array-data 0x4
        0x94t 0x1t 0x2t 0x7ft
        0x93t 0x1t 0x2t 0x7ft
        0x91t 0x1t 0x2t 0x7ft
        0x92t 0x1t 0x2t 0x7ft
    .end array-data

    .line 204
    :array_1
    .array-data 0x4
        0xa5t 0x1t 0xbt 0x7ft
        0xa6t 0x1t 0xbt 0x7ft
        0xa7t 0x1t 0xbt 0x7ft
        0xa8t 0x1t 0xbt 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/mms/ui/GeneralPreferenceActivity;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mFontSizeValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/GeneralPreferenceActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mFontSizeDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/GeneralPreferenceActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mMMSHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/GeneralPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/mms/ui/GeneralPreferenceActivity;->pickSysWallpaper()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/GeneralPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/mms/ui/GeneralPreferenceActivity;->pickWallpaperFromGallery()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/GeneralPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/mms/ui/GeneralPreferenceActivity;->pickWallpaperFromCam()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/GeneralPreferenceActivity;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/mms/ui/GeneralPreferenceActivity;->saveWallpaperToMemory(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/GeneralPreferenceActivity;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/mms/ui/GeneralPreferenceActivity;->saveResourceWallpaperToMemory(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/GeneralPreferenceActivity;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mFontSizeChoices:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/GeneralPreferenceActivity;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mFontSize:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/GeneralPreferenceActivity;)Lcom/android/mms/util/Recycler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/GeneralPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/mms/ui/GeneralPreferenceActivity;->setSmsDisplayLimit()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/GeneralPreferenceActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/mms/ui/GeneralPreferenceActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/mms/ui/GeneralPreferenceActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mSMSHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/GeneralPreferenceActivity;)Lcom/android/mms/util/Recycler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/GeneralPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/mms/ui/GeneralPreferenceActivity;->setMmsDisplayLimit()V

    return-void
.end method

.method private compressAndRotateForMemory(Ljava/lang/String;)Ljava/lang/String;
    .locals 24
    .parameter "wallpaperCache"

    .prologue
    .line 854
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 855
    .local v12, mChatWallpaperPStore:Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mChatWallpaperUri:Ljava/lang/String;

    .line 856
    .local v4, chatWallpaperUri:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_9

    .line 857
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

    .line 860
    .local v11, mChatWallpaperMemory:Ljava/io/File;
    :try_start_0
    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 863
    :goto_0
    const-string v20, "GeneralPreferenceActivity"

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

    invoke-static/range {v20 .. v21}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    const/4 v8, 0x0

    .line 866
    .local v8, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v8           #fos:Ljava/io/FileOutputStream;
    .local v9, fos:Ljava/io/FileOutputStream;
    move-object v8, v9

    .line 870
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    :goto_1
    new-instance v15, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v15}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 871
    .local v15, options:Landroid/graphics/BitmapFactory$Options;
    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v15, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 872
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 873
    const/16 v20, 0x0

    move/from16 v0, v20

    iput-boolean v0, v15, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 874
    iget v0, v15, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v17, v0

    .line 875
    .local v17, wallpaperHeight:I
    iget v0, v15, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v18, v0

    .line 876
    .local v18, wallpaperWidth:I
    const-string v20, "window"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/WindowManager;

    .line 877
    .local v19, windowManager:Landroid/view/WindowManager;
    invoke-interface/range {v19 .. v19}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/Display;->getHeight()I

    move-result v13

    .line 878
    .local v13, mCurrentMaxHeight:I
    invoke-interface/range {v19 .. v19}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/Display;->getWidth()I

    move-result v14

    .line 879
    .local v14, mCurrentMaxWidth:I
    const/4 v2, 0x1

    .line 880
    .local v2, be:I
    if-le v13, v14, :cond_5

    .line 881
    div-int v20, v17, v13

    div-int v21, v18, v14

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 885
    :goto_2
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ge v2, v0, :cond_0

    .line 886
    const/4 v2, 0x1

    .line 888
    :cond_0
    const-string v20, "GeneralPreferenceActivity"

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

    invoke-static/range {v20 .. v21}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    iput v2, v15, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 890
    const/16 v16, 0x0

    .line 891
    .local v16, orientation:I
    const/4 v5, 0x0

    .line 892
    .local v5, degree:I
    const/4 v10, 0x0

    .line 894
    .local v10, isCopyed:Z
    :try_start_2
    new-instance v7, Landroid/media/ExifInterface;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 895
    .local v7, exif:Landroid/media/ExifInterface;
    if-eqz v7, :cond_1

    .line 896
    const-string v20, "Orientation"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v16

    .line 897
    invoke-static/range {v16 .. v16}, Lcom/android/mms/ui/UriImage;->getExifRotation(I)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v5

    .line 902
    .end local v7           #exif:Landroid/media/ExifInterface;
    :cond_1
    :goto_3
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 903
    .local v3, bm:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_2

    .line 904
    invoke-static {v3, v5}, Lcom/android/mms/ui/UriImage;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 905
    sget-object v20, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v21, 0x64

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v10

    .line 908
    :cond_2
    if-eqz v8, :cond_3

    .line 909
    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 911
    :cond_3
    if-eqz v3, :cond_4

    .line 912
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 914
    :cond_4
    if-nez v10, :cond_6

    .line 915
    const/16 v20, 0x0

    .line 935
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
    :goto_4
    return-object v20

    .line 867
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    .restart local v11       #mChatWallpaperMemory:Ljava/io/File;
    :catch_0
    move-exception v6

    .line 868
    .local v6, e:Ljava/io/FileNotFoundException;
    const-string v20, "GeneralPreferenceActivity"

    const-string v21, "compressAndRotateForMemory, FileNotFoundException"

    invoke-static/range {v20 .. v21}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 883
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

    goto :goto_2

    .line 899
    .restart local v5       #degree:I
    .restart local v10       #isCopyed:Z
    .restart local v16       #orientation:I
    :catch_1
    move-exception v6

    .line 900
    .local v6, e:Ljava/io/IOException;
    const-string v20, "GeneralPreferenceActivity"

    const-string v21, "compressAndRotateForMemory, FileNotFoundException1"

    invoke-static/range {v20 .. v21}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 917
    .end local v6           #e:Ljava/io/IOException;
    .restart local v3       #bm:Landroid/graphics/Bitmap;
    :catch_2
    move-exception v6

    .line 918
    .restart local v6       #e:Ljava/io/IOException;
    const-string v20, "GeneralPreferenceActivity"

    const-string v21, "compressAndRotateForMemory, FileNotFoundException2"

    invoke-static/range {v20 .. v21}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    .end local v6           #e:Ljava/io/IOException;
    :cond_6
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 922
    if-eqz v3, :cond_7

    .line 923
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 928
    :cond_7
    :goto_5
    const-string v20, "GeneralPreferenceActivity"

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

    invoke-static/range {v20 .. v21}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    if-nez v10, :cond_8

    .line 930
    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v20, v4

    .line 931
    goto :goto_4

    .line 925
    :catch_3
    move-exception v6

    .line 926
    .restart local v6       #e:Ljava/io/IOException;
    const-string v20, "GeneralPreferenceActivity"

    const-string v21, "compressAndRotateForMemory, FileNotFoundException3"

    invoke-static/range {v20 .. v21}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 933
    .end local v6           #e:Ljava/io/IOException;
    :cond_8
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
    :cond_9
    move-object/from16 v20, v4

    .line 935
    goto :goto_4

    .line 861
    .restart local v11       #mChatWallpaperMemory:Ljava/io/File;
    :catch_4
    move-exception v20

    goto/16 :goto_0
.end method

.method private enablePushSetting()V
    .locals 2

    .prologue
    .line 454
    const-string v1, "pref_key_wappush_settings"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 456
    .local v0, wapPushOptions:Landroid/preference/PreferenceCategory;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSlAutoLanuchEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 457
    const-string v1, "pref_key_wappush_sl_autoloading"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 464
    :cond_0
    return-void
.end method

.method private getFontSizeArray(I)[Ljava/lang/String;
    .locals 1
    .parameter "resId"

    .prologue
    .line 555
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFontSizeCurrentPosition()I
    .locals 3

    .prologue
    .line 559
    const-string v1, "com.android.mms_preferences"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 560
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "pref_key_message_font_size"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private getPreferenceValueInt(Ljava/lang/String;I)I
    .locals 3
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 570
    const-string v1, "com.android.mms_preferences"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 571
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private getResourceArray(I)[Ljava/lang/String;
    .locals 1
    .parameter "resId"

    .prologue
    .line 575
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

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

    .line 681
    const/4 v1, 0x0

    .line 682
    .local v1, sdDir:Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 683
    .local v2, sdStatus:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 684
    const-string v4, "mounted"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 685
    .local v0, sdCardExist:Z
    if-eqz v0, :cond_0

    .line 686
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 687
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    .line 692
    .end local v0           #sdCardExist:Z
    :cond_0
    return-object v3
.end method

.method private getVisualTextName(Ljava/lang/String;II)Ljava/lang/CharSequence;
    .locals 5
    .parameter "enumName"
    .parameter "choiceNameResId"
    .parameter "choiceValueResId"

    .prologue
    .line 473
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 474
    .local v2, visualNames:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 476
    .local v0, enumNames:[Ljava/lang/CharSequence;
    array-length v3, v2

    array-length v4, v0

    if-eq v3, v4, :cond_0

    .line 477
    const-string v3, ""

    .line 484
    :goto_0
    return-object v3

    .line 479
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 480
    aget-object v3, v0, v1

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 481
    aget-object v3, v2, v1

    goto :goto_0

    .line 479
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 484
    :cond_2
    const-string v3, ""

    goto :goto_0
.end method

.method private pickSysWallpaper()V
    .locals 2

    .prologue
    .line 939
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/WallpaperChooser;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 940
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 941
    return-void
.end method

.method private pickWallpaperFromCam()V
    .locals 7

    .prologue
    .line 643
    invoke-static {p0}, Lcom/android/mms/ui/GeneralPreferenceActivity;->getSDCardPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 644
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/mms/ui/GeneralPreferenceActivity;->getSDCardPath(Landroid/content/Context;)Ljava/lang/String;

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

    iput-object v4, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mWallpaperPathForCamera:Ljava/lang/String;

    .line 646
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mWallpaperPathForCamera:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 647
    .local v3, out:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 648
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 650
    :cond_0
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 651
    .local v2, mWallpaperTakeuri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 652
    .local v1, imageCaptureIntent:Landroid/content/Intent;
    const-string v4, "output"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 653
    const-string v4, "GeneralPreferenceActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MediaStoreUri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const/4 v4, 0x4

    :try_start_0
    invoke-virtual {p0, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 668
    .end local v2           #mWallpaperTakeuri:Landroid/net/Uri;
    .end local v3           #out:Ljava/io/File;
    :goto_0
    return-void

    .line 656
    .restart local v2       #mWallpaperTakeuri:Landroid/net/Uri;
    .restart local v3       #out:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 657
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v4, "GeneralPreferenceActivity"

    const-string v5, "pickWallpaperFromCam, ActivityNotFoundException."

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 660
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #imageCaptureIntent:Landroid/content/Intent;
    .end local v2           #mWallpaperTakeuri:Landroid/net/Uri;
    .end local v3           #out:Ljava/io/File;
    :cond_1
    const-string v4, "GeneralPreferenceActivity"

    const-string v5, "SDcard not esisted "

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 663
    .restart local v1       #imageCaptureIntent:Landroid/content/Intent;
    const/4 v4, 0x4

    :try_start_1
    invoke-virtual {p0, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 664
    :catch_1
    move-exception v0

    .line 665
    .restart local v0       #e:Landroid/content/ActivityNotFoundException;
    const-string v4, "GeneralPreferenceActivity"

    const-string v5, "pickWallpaperFromCam, ActivityNotFoundException2."

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private pickWallpaperFromCamResult()V
    .locals 2

    .prologue
    .line 770
    iget-object v1, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mWallpaperPathForCamera:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/GeneralPreferenceActivity;->compressAndRotateForMemory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 771
    .local v0, chatWallpaperCompressForCamera:Ljava/lang/String;
    new-instance v1, Lcom/android/mms/ui/GeneralPreferenceActivity$10;

    invoke-direct {v1, p0, v0}, Lcom/android/mms/ui/GeneralPreferenceActivity$10;-><init>(Lcom/android/mms/ui/GeneralPreferenceActivity;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 777
    return-void
.end method

.method private pickWallpaperFromGallery()V
    .locals 4

    .prologue
    .line 671
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 672
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 674
    :try_start_0
    const-string v2, "Gallery"

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    :goto_0
    return-void

    .line 675
    :catch_0
    move-exception v0

    .line 676
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "GeneralPreferenceActivity"

    const-string v3, "pickWallpaperFromGallery, ActivityNotFoundException."

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private pickWallpaperFromGalleryResult(Landroid/content/Intent;)V
    .locals 9
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 720
    if-nez p1, :cond_1

    .line 748
    :cond_0
    :goto_0
    return-void

    .line 723
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 724
    .local v1, mChatWallpaperGalleryUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_data"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 726
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 729
    const-string v8, ""

    .line 731
    .local v8, wallpaperPathForGallery:Ljava/lang/String;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 738
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 734
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 735
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 738
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 740
    const-string v0, "GeneralPreferenceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Save wallpaper Gallery Uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    invoke-direct {p0, v8}, Lcom/android/mms/ui/GeneralPreferenceActivity;->compressAndRotateForMemory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 742
    .local v7, chatWallpaperCompressForGallery:Ljava/lang/String;
    new-instance v0, Lcom/android/mms/ui/GeneralPreferenceActivity$7;

    invoke-direct {v0, p0, v7}, Lcom/android/mms/ui/GeneralPreferenceActivity$7;-><init>(Lcom/android/mms/ui/GeneralPreferenceActivity;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 738
    .end local v7           #chatWallpaperCompressForGallery:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private pickWallpaperFromSys(Landroid/content/Intent;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 944
    const-string v1, "wallpaper_index"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 945
    .local v0, sourceId:I
    const-string v1, "GeneralPreferenceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sourceId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    new-instance v1, Lcom/android/mms/ui/GeneralPreferenceActivity$11;

    invoke-direct {v1, p0, v0}, Lcom/android/mms/ui/GeneralPreferenceActivity$11;-><init>(Lcom/android/mms/ui/GeneralPreferenceActivity;I)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 952
    return-void
.end method

.method private restoreDefaultPreferences()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 396
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 398
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_key_message_font_size"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 399
    const-string v1, "message_font_size"

    iget-object v2, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mFontSizeValues:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 400
    const-string v1, "pref_key_auto_delete"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 401
    const-string v1, "MaxSmsMessagesPerThread"

    const/16 v2, 0x1f4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 402
    const-string v1, "MaxMmsMessagesPerThread"

    const/16 v2, 0x32

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 403
    const-string v1, "pref_key_cell_broadcast"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 405
    const-string v1, "pref_key_wappush_enable"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 406
    const-string v1, "pref_key_wappush_sl_autoloading"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 409
    const-string v1, "pref_key_show_email_address"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 411
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 412
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 413
    invoke-virtual {p0}, Lcom/android/mms/ui/GeneralPreferenceActivity;->clearWallpaperAll()Z

    .line 414
    invoke-direct {p0}, Lcom/android/mms/ui/GeneralPreferenceActivity;->setMessagePreferences()V

    .line 415
    return-void
.end method

.method private saveResourceWallpaperToMemory(I)Z
    .locals 13
    .parameter "resourceId"

    .prologue
    const/4 v12, 0x0

    .line 955
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 956
    .local v7, r:Landroid/content/res/Resources;
    const/4 v3, 0x0

    .line 958
    .local v3, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v7, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 962
    :goto_0
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 963
    .local v0, bm:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 964
    .local v1, cv:Landroid/content/ContentValues;
    const-string v9, "_data"

    const-string v10, "/data/data/com.android.providers.telephony/app_wallpaper/general_wallpaper.jpeg"

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    const/4 v4, 0x0

    .line 1001
    .local v4, isSaveSuccessed:Z
    const-string v9, "content://mms-sms/thread_settings"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const-wide/16 v10, 0x0

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 1002
    .local v8, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v8, v1, v12, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1004
    :try_start_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v6

    .line 1005
    .local v6, o:Ljava/io/OutputStream;
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x64

    invoke-virtual {v0, v9, v10, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v4

    .line 1006
    const-string v9, "GeneralPreferenceActivity"

    const-string v10, "decodeFile over"

    invoke-static {v9, v10}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    if-eqz v6, :cond_0

    .line 1008
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 1010
    :cond_0
    if-eqz v0, :cond_1

    .line 1011
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .end local v6           #o:Ljava/io/OutputStream;
    :cond_1
    :goto_1
    move v5, v4

    .line 1018
    .end local v4           #isSaveSuccessed:Z
    .local v5, isSaveSuccessed:Z
    return v5

    .line 959
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v5           #isSaveSuccessed:Z
    .end local v8           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 960
    .local v2, e:Landroid/content/res/Resources$NotFoundException;
    const-string v9, "GeneralPreferenceActivity"

    const-string v10, "NotFoundException"

    invoke-static {v9, v10, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1013
    .end local v2           #e:Landroid/content/res/Resources$NotFoundException;
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v1       #cv:Landroid/content/ContentValues;
    .restart local v4       #isSaveSuccessed:Z
    .restart local v8       #uri:Landroid/net/Uri;
    :catch_1
    move-exception v2

    .line 1014
    .local v2, e:Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v9, "GeneralPreferenceActivity"

    const-string v10, "FileNotFoundException"

    invoke-static {v9, v10, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1018
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v9

    goto :goto_1

    .line 1015
    :catch_2
    move-exception v2

    .line 1016
    .local v2, e:Ljava/io/IOException;
    const-string v9, "GeneralPreferenceActivity"

    const-string v10, "IOException"

    invoke-static {v9, v10, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private saveWallpaperToMemory(Ljava/lang/String;)Z
    .locals 11
    .parameter "oldWallpaper"

    .prologue
    const/4 v10, 0x0

    .line 781
    if-nez p1, :cond_1

    .line 782
    const/4 v3, 0x0

    .line 849
    :cond_0
    :goto_0
    return v3

    .line 784
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 785
    .local v1, cv:Landroid/content/ContentValues;
    const-string v7, "_data"

    const-string v8, "/data/data/com.android.providers.telephony/app_wallpaper/general_wallpaper.jpeg"

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    const/4 v3, 0x0

    .line 827
    .local v3, isSaveSuccess:Z
    const-string v7, "content://mms-sms/thread_settings"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 828
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v6, v1, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 830
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v4

    .line 831
    .local v4, o:Ljava/io/OutputStream;
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 832
    .local v0, bm:Landroid/graphics/Bitmap;
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {v0, v7, v8, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v3

    .line 833
    const-string v7, "GeneralPreferenceActivity"

    const-string v8, "decodeFile over"

    invoke-static {v7, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    if-eqz v4, :cond_2

    .line 835
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 837
    :cond_2
    if-eqz v0, :cond_3

    .line 838
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 840
    :cond_3
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 841
    .local v5, tempFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 842
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 844
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v4           #o:Ljava/io/OutputStream;
    .end local v5           #tempFile:Ljava/io/File;
    :catch_0
    move-exception v2

    .line 845
    .local v2, e:Ljava/io/FileNotFoundException;
    :try_start_1
    const-string v7, "GeneralPreferenceActivity"

    const-string v8, "FileNotFoundException"

    invoke-static {v7, v8, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 849
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v7

    goto :goto_0

    .line 846
    :catch_1
    move-exception v2

    .line 847
    .local v2, e:Ljava/io/IOException;
    const-string v7, "GeneralPreferenceActivity"

    const-string v8, "IOException"

    invoke-static {v7, v8, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private setMessagePreferences()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 249
    invoke-static {p0}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mCurrentSimCount:I

    .line 250
    const v3, 0x7f050003

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 251
    invoke-virtual {p0}, Lcom/android/mms/ui/GeneralPreferenceActivity;->removeBackupRestore()V

    .line 252
    invoke-virtual {p0}, Lcom/android/mms/ui/GeneralPreferenceActivity;->removeAutoRotation()V

    .line 253
    const-string v3, "pref_key_show_email_address"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mShowEmailPref:Landroid/preference/CheckBoxPreference;

    .line 254
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 255
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v3, "GeneralPreferenceActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "email address check = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mShowEmailPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v3, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mShowEmailPref:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_0

    .line 257
    iget-object v3, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mShowEmailPref:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mShowEmailPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 259
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getShowStorageStatusEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 260
    const-string v3, "pref_key_storage_status"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mStorageStatusPref:Landroid/preference/Preference;

    .line 266
    :goto_0
    const-string v3, "pref_key_message_font_size"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mFontSize:Landroid/preference/Preference;

    .line 267
    const v3, 0x7f060010

    invoke-direct {p0, v3}, Lcom/android/mms/ui/GeneralPreferenceActivity;->getResourceArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mFontSizeChoices:[Ljava/lang/String;

    .line 268
    const v3, 0x7f060011

    invoke-direct {p0, v3}, Lcom/android/mms/ui/GeneralPreferenceActivity;->getResourceArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mFontSizeValues:[Ljava/lang/String;

    .line 269
    const-string v3, "pref_key_message_font_size"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mFontSize:Landroid/preference/Preference;

    .line 270
    iget-object v3, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mFontSize:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mFontSizeChoices:[Ljava/lang/String;

    const-string v5, "pref_key_message_font_size"

    invoke-direct {p0, v5, v7}, Lcom/android/mms/ui/GeneralPreferenceActivity;->getPreferenceValueInt(Ljava/lang/String;I)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 271
    const-string v3, "pref_key_chat_wallpaper"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mChatWallpaperPref:Landroid/preference/Preference;

    .line 272
    const-string v3, "pref_key_cell_broadcast"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mCBsettingPref:Landroid/preference/Preference;

    .line 273
    iget v3, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mCurrentSimCount:I

    if-ge v3, v6, :cond_1

    .line 274
    iget-object v3, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mCBsettingPref:Landroid/preference/Preference;

    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 276
    :cond_1
    const-string v3, "pref_key_sms_delete_limit"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mSmsLimitPref:Landroid/preference/Preference;

    .line 277
    const-string v3, "pref_key_mms_delete_limit"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mMmsLimitPref:Landroid/preference/Preference;

    .line 278
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 279
    const-string v3, "pref_key_storage_settings"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 280
    .local v2, storageOptions:Landroid/preference/PreferenceCategory;
    const-string v3, "pref_key_mms_delete_limit"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 282
    .end local v2           #storageOptions:Landroid/preference/PreferenceCategory;
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/GeneralPreferenceActivity;->enablePushSetting()V

    .line 283
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    .line 284
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    .line 286
    invoke-direct {p0}, Lcom/android/mms/ui/GeneralPreferenceActivity;->setSmsDisplayLimit()V

    .line 287
    invoke-direct {p0}, Lcom/android/mms/ui/GeneralPreferenceActivity;->setMmsDisplayLimit()V

    .line 290
    const-string v3, "GeneralPreferenceActivity"

    const-string v4, "MTK_GEMINI_SUPPORT is true"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget v3, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mCurrentSimCount:I

    if-ne v3, v6, :cond_5

    .line 292
    const-string v3, "GeneralPreferenceActivity"

    const-string v4, "single sim"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :cond_3
    :goto_1
    const-string v3, "pref_key_chat_wallpaper"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mChatWallpaperUri:Ljava/lang/String;

    .line 298
    return-void

    .line 262
    :cond_4
    const-string v3, "pref_key_storage_status"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mStorageStatusPref:Landroid/preference/Preference;

    .line 263
    const-string v3, "pref_key_storage_settings"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 264
    .local v1, storageCategory:Landroid/preference/PreferenceCategory;
    iget-object v3, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mStorageStatusPref:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 293
    .end local v1           #storageCategory:Landroid/preference/PreferenceCategory;
    :cond_5
    iget v3, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mCurrentSimCount:I

    if-le v3, v6, :cond_3

    .line 294
    invoke-direct {p0}, Lcom/android/mms/ui/GeneralPreferenceActivity;->setMultiCardPreference()V

    goto :goto_1
.end method

.method private setMmsDisplayLimit()V
    .locals 5

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mMmsLimitPref:Landroid/preference/Preference;

    const v1, 0x7f0b02a6

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v4, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 318
    return-void
.end method

.method private setMultiCardPreference()V
    .locals 1

    .prologue
    .line 313
    const-string v0, "pref_key_cell_broadcast"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mCellBroadcastMultiSim:Landroid/preference/Preference;

    .line 314
    return-void
.end method

.method private setSmsDisplayLimit()V
    .locals 5

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mSmsLimitPref:Landroid/preference/Preference;

    const v1, 0x7f0b02a6

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v4, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 329
    return-void
.end method

.method private showToast(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 565
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 566
    .local v0, t:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 567
    return-void
.end method


# virtual methods
.method public clearWallpaperAll()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 632
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 633
    .local v0, cv:Landroid/content/ContentValues;
    const-string v3, "_data"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const-string v3, "content://mms-sms/thread_settings"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 635
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v0, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 636
    .local v1, i:I
    if-lez v1, :cond_0

    .line 637
    const/4 v3, 0x1

    .line 639
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 696
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 697
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 698
    packed-switch p1, :pswitch_data_0

    .line 717
    :cond_0
    :goto_0
    return-void

    .line 700
    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/GeneralPreferenceActivity;->pickWallpaperFromCamResult()V

    goto :goto_0

    .line 703
    :pswitch_1
    invoke-direct {p0, p3}, Lcom/android/mms/ui/GeneralPreferenceActivity;->pickWallpaperFromSys(Landroid/content/Intent;)V

    .line 704
    const-string v0, "GeneralPreferenceActivity"

    const-string v1, "sytem result"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 707
    :pswitch_2
    invoke-direct {p0, p3}, Lcom/android/mms/ui/GeneralPreferenceActivity;->pickWallpaperFromGalleryResult(Landroid/content/Intent;)V

    goto :goto_0

    .line 713
    :cond_1
    if-nez p2, :cond_0

    .line 714
    const-string v0, "GeneralPreferenceActivity"

    const-string v1, "nothing selected"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 698
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 549
    const-string v0, "GeneralPreferenceActivity"

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

    .line 550
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 551
    new-instance v0, Lcom/mediatek/encapsulation/android/widget/EncapsulatedListView;

    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/encapsulation/android/widget/EncapsulatedListView;-><init>(Landroid/widget/ListView;)V

    invoke-virtual {v0}, Lcom/mediatek/encapsulation/android/widget/EncapsulatedListView;->clearScrapViewsIfNeeded()V

    .line 552
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 230
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 231
    const-string v1, "GeneralPreferenceActivity"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    if-eqz p1, :cond_0

    const-string v1, "wallpaperCameraPath"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    const-string v1, "wallpaperCameraPath"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mWallpaperPathForCamera:Ljava/lang/String;

    .line 235
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 236
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 237
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 239
    invoke-direct {p0}, Lcom/android/mms/ui/GeneralPreferenceActivity;->setMessagePreferences()V

    .line 240
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 419
    packed-switch p1, :pswitch_data_0

    .line 447
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 421
    :pswitch_0
    new-instance v0, Lcom/android/mms/ui/FontSizeDialogAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mFontSizeChoices:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mFontSizeValues:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/mms/ui/FontSizeDialogAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 423
    .local v0, adapter:Lcom/android/mms/ui/FontSizeDialogAdapter;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0114

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0115

    new-instance v3, Lcom/android/mms/ui/GeneralPreferenceActivity$2;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/GeneralPreferenceActivity$2;-><init>(Lcom/android/mms/ui/GeneralPreferenceActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/mms/ui/GeneralPreferenceActivity;->getFontSizeCurrentPosition()I

    move-result v2

    new-instance v3, Lcom/android/mms/ui/GeneralPreferenceActivity$1;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/GeneralPreferenceActivity$1;-><init>(Lcom/android/mms/ui/GeneralPreferenceActivity;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mFontSizeDialog:Landroid/app/AlertDialog;

    .line 440
    iget-object v1, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mFontSizeDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/mms/ui/GeneralPreferenceActivity$3;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/GeneralPreferenceActivity$3;-><init>(Lcom/android/mms/ui/GeneralPreferenceActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 445
    iget-object v1, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mFontSizeDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 419
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 321
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 322
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 323
    const v0, 0x7f0b029c

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 324
    return v2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 225
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 226
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 333
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 343
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 335
    :sswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/GeneralPreferenceActivity;->restoreDefaultPreferences()V

    goto :goto_0

    .line 338
    :sswitch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 333
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 211
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 212
    iget-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mSmsDisplayLimitDialog:Lcom/android/mms/ui/NumberPickerDialog;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mSmsDisplayLimitDialog:Lcom/android/mms/ui/NumberPickerDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mMmsDisplayLimitDialog:Lcom/android/mms/ui/NumberPickerDialog;

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mMmsDisplayLimitDialog:Lcom/android/mms/ui/NumberPickerDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 218
    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 469
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 11
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    .line 348
    iget-object v1, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mSmsLimitPref:Landroid/preference/Preference;

    if-ne p2, v1, :cond_1

    .line 349
    new-instance v0, Lcom/android/mms/ui/NumberPickerDialog;

    iget-object v2, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mSmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    iget-object v1, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v3

    iget-object v1, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMinLimit()I

    move-result v4

    iget-object v1, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMaxLimit()I

    move-result v5

    const v6, 0x7f0b02ac

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/NumberPickerDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;IIII)V

    iput-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mSmsDisplayLimitDialog:Lcom/android/mms/ui/NumberPickerDialog;

    .line 352
    iget-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mSmsDisplayLimitDialog:Lcom/android/mms/ui/NumberPickerDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 392
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    :goto_1
    return v0

    .line 353
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mCellBroadcastMultiSim:Landroid/preference/Preference;

    if-ne p2, v1, :cond_2

    .line 354
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 355
    .local v7, it:Landroid/content/Intent;
    const-class v0, Lcom/android/mms/ui/SelectCardPreferenceActivity;

    invoke-virtual {v7, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 356
    const-string v0, "preference"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    const-string v0, "preferenceTitleId"

    const v1, 0x7f0b0222

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 358
    invoke-virtual {p0, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 359
    .end local v7           #it:Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mMmsLimitPref:Landroid/preference/Preference;

    if-ne p2, v1, :cond_3

    .line 360
    new-instance v0, Lcom/android/mms/ui/NumberPickerDialog;

    iget-object v2, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mMmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    iget-object v1, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v3

    iget-object v1, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMinLimit()I

    move-result v4

    iget-object v1, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMaxLimit()I

    move-result v5

    const v6, 0x7f0b02ad

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/NumberPickerDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;IIII)V

    iput-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mMmsDisplayLimitDialog:Lcom/android/mms/ui/NumberPickerDialog;

    .line 363
    iget-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mMmsDisplayLimitDialog:Lcom/android/mms/ui/NumberPickerDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 364
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mCBsettingPref:Landroid/preference/Preference;

    if-ne p2, v1, :cond_6

    .line 365
    invoke-static {p0}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v8

    .line 366
    .local v8, listSimInfo:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;>;"
    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 367
    const-string v1, "GeneralPreferenceActivity"

    const-string v2, "there is no sim card"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 370
    :cond_4
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v0}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v10

    .line 371
    .local v10, slotId:I
    const-string v0, "GeneralPreferenceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCBsettingPref slotId is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-static {v10}, Lcom/android/mms/ui/MessageUtils;->isUSimType(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 373
    const v0, 0x7f0b0106

    invoke-direct {p0, v0}, Lcom/android/mms/ui/GeneralPreferenceActivity;->showToast(I)V

    goto/16 :goto_0

    .line 375
    :cond_5
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 376
    .restart local v7       #it:Landroid/content/Intent;
    const-string v0, "com.android.phone"

    const-string v1, "com.mediatek.settings.CellBroadcastActivity"

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    const-string v0, "simId"

    invoke-virtual {v7, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 379
    iget-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->SUB_TITLE_NAME:Ljava/lang/String;

    invoke-static {p0, v10}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    invoke-virtual {p0, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 382
    .end local v7           #it:Landroid/content/Intent;
    .end local v8           #listSimInfo:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;>;"
    .end local v10           #slotId:I
    :cond_6
    iget-object v1, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mFontSize:Landroid/preference/Preference;

    if-ne p2, v1, :cond_7

    .line 383
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0

    .line 384
    :cond_7
    iget-object v1, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mStorageStatusPref:Landroid/preference/Preference;

    if-ne p2, v1, :cond_8

    .line 385
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->getStorageStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 386
    .local v9, memoryStatus:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b008b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f02009f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 389
    .end local v9           #memoryStatus:Ljava/lang/String;
    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mChatWallpaperPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 390
    invoke-virtual {p0}, Lcom/android/mms/ui/GeneralPreferenceActivity;->pickChatWallpaper()V

    goto/16 :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 243
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 244
    const-string v0, "GeneralPreferenceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWallpaperPathForCamera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mWallpaperPathForCamera:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v0, "wallpaperCameraPath"

    iget-object v1, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mWallpaperPathForCamera:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method public pickChatWallpaper()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    .line 579
    new-instance v12, Landroid/app/AlertDialog$Builder;

    invoke-direct {v12, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 580
    .local v12, wallpaperDialog:Landroid/app/AlertDialog$Builder;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 581
    .local v2, wallpaper:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    const/4 v1, 0x4

    if-ge v8, v1, :cond_0

    .line 582
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 583
    .local v7, hm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ItemImage"

    iget-object v3, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mWallpaperImage:[I

    aget v3, v3, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    const-string v1, "ItemText"

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/GeneralPreferenceActivity;->mWallpaperText:[I

    aget v4, v4, v8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 587
    .end local v7           #hm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f040079

    new-array v4, v13, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "ItemImage"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "ItemText"

    aput-object v5, v4, v1

    new-array v5, v13, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 590
    .local v0, wallpaperDialogAdapter:Landroid/widget/SimpleAdapter;
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 591
    .local v10, mInflater:Landroid/view/LayoutInflater;
    const v3, 0x7f040077

    const v1, 0x7f0f01a2

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v10, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 593
    .local v9, layout:Landroid/view/View;
    const v1, 0x7f0f01a3

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/GridView;

    .line 594
    .local v6, gv:Landroid/widget/GridView;
    invoke-virtual {v6, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 595
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

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

    .line 597
    .local v11, wallpaperChooser:Landroid/app/AlertDialog;
    invoke-virtual {v11}, Landroid/app/Dialog;->show()V

    .line 598
    new-instance v1, Lcom/android/mms/ui/GeneralPreferenceActivity$6;

    invoke-direct {v1, p0, v11}, Lcom/android/mms/ui/GeneralPreferenceActivity$6;-><init>(Lcom/android/mms/ui/GeneralPreferenceActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v6, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 629
    return-void

    .line 587
    nop

    :array_0
    .array-data 0x4
        0xa5t 0x1t 0xft 0x7ft
        0xa6t 0x1t 0xft 0x7ft
    .end array-data
.end method

.method public removeAutoRotation()V
    .locals 2

    .prologue
    .line 307
    const-string v1, "pref_key_display_preference_settings"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 308
    .local v0, displayOptions:Landroid/preference/PreferenceCategory;
    const-string v1, "pref_key_auto_rotation"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 309
    return-void
.end method

.method public removeBackupRestore()V
    .locals 4

    .prologue
    .line 301
    const-string v1, "pref_key_backup_restore_settings"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 302
    .local v0, backupRestorePref:Landroid/preference/PreferenceCategory;
    const-string v1, "GeneralPreferenceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "backupRestorePref: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 304
    return-void
.end method

.method showSaveWallpaperResult(Z)V
    .locals 1
    .parameter "isShow"

    .prologue
    .line 752
    if-eqz p1, :cond_0

    .line 753
    new-instance v0, Lcom/android/mms/ui/GeneralPreferenceActivity$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/GeneralPreferenceActivity$8;-><init>(Lcom/android/mms/ui/GeneralPreferenceActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 767
    :goto_0
    return-void

    .line 760
    :cond_0
    new-instance v0, Lcom/android/mms/ui/GeneralPreferenceActivity$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/GeneralPreferenceActivity$9;-><init>(Lcom/android/mms/ui/GeneralPreferenceActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
