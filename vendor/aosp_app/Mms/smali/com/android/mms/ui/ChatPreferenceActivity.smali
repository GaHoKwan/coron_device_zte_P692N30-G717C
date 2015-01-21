.class public Lcom/android/mms/ui/ChatPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "ChatPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/mediatek/mms/ipmessage/INotificationsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ChatPreferenceActivity$ThreadListQueryHandler;
    }
.end annotation


# static fields
.field public static final ACTION_CATEGORY:Ljava/lang/String; = "pref_key_actions_settings"

.field public static final CHAT_MUTE:Ljava/lang/String; = "pref_key_mute_for_chat"

.field public static final CHAT_MUTE_START:Ljava/lang/String; = "chat_mute_start"

.field public static final CHAT_RINGTONE:Ljava/lang/String; = "pref_key_ringtone_for_chat"

.field public static final CHAT_SETTINGS_URI:Ljava/lang/String; = "content://mms-sms/thread_settings/"

.field public static final CHAT_THREAD_ID:Ljava/lang/String; = "for_chat_settings_pref"

.field public static final CHAT_VIBRATE:Ljava/lang/String; = "pref_key_vibrate_for_chat"

.field public static final CHAT_WALLPAPER:Ljava/lang/String; = "pref_key_chat_wallpaper_for_chat"

.field public static final CLEAR_CHAT_HISTORY:Ljava/lang/String; = "pref_key_clear_chat_history"

.field private static final DEBUG:Z = false

.field public static final DEFAULT_RINGTONE:Ljava/lang/String; = ""

.field private static final DELETE_CONVERSATION_TOKEN:I = 0x709

.field public static final DOWNLOAD_CHAT_HISTORY:Ljava/lang/String; = "pref_key_download_chat_history"

.field public static final EMAIL_CHAT_HISTORY:Ljava/lang/String; = "pref_key_email_chat_history"

.field public static final ENABLE_NOTIFICATION:Ljava/lang/String; = "pref_key_enable_notifications_for_chat"

.field private static final HAVE_LOCKED_MESSAGES_TOKEN:I = 0x1

.field private static final MENU_RESTORE_DEFAULTS:I = 0x1

.field private static final PICK_GALLERY:I = 0x3

.field private static final PICK_PHOTO:I = 0x4

.field private static final PICK_WALLPAPER:I = 0x2

.field private static final QUERY_THREAD_SETTINGS:I = 0x2

.field private static final SAVE_HISTORY_MIMETYPE_TEXT:Ljava/lang/String; = "text/plain"

.field private static final SAVE_HISTORY_MIMETYPE_ZIP:Ljava/lang/String; = "application/zip"

.field private static final SAVE_HISTORY_SUFFIX:Ljava/lang/String; = ".zip"

.field private static final TAG:Ljava/lang/String; = "ChatPreferenceActivity"

.field public static final TELEPHONYPROVIDER_WALLPAPER_ABSOLUTE_PATH:Ljava/lang/String; = "/data/data/com.android.providers.telephony/app_wallpaper/"

.field public static final THREAD_ID_KEY:Ljava/lang/String; = "chatThreadId"


# instance fields
.field private mChatDialogSave:Landroid/app/ProgressDialog;

.field private mChatDialogUpdate:Landroid/app/ProgressDialog;

.field mChatHandler:Landroid/os/Handler;

.field private mChatMutePref:Landroid/preference/ListPreference;

.field private mChatThreadId:J

.field private mChatWallpaperPref:Landroid/preference/Preference;

.field private mChatWallpaperUri:Ljava/lang/String;

.field private mClearChatHistoryPref:Landroid/preference/Preference;

.field private mClearhistory:Landroid/app/ProgressDialog;

.field private mDownloadChatHistoryPref:Landroid/preference/Preference;

.field private mEmailChatHistoryPref:Landroid/preference/Preference;

.field private mEnableNotificationsPref:Landroid/preference/CheckBoxPreference;

.field private mFromDownload:Z

.field private mFromSendEmail:Z

.field private mOldMuteStart:J

.field private mOldMuteValue:Ljava/lang/String;

.field private mOldNotificationEnable:Z

.field private mOldRingtone:Ljava/lang/String;

.field private mOldVibrate:Z

.field private mOldWallpaperUri:Ljava/lang/String;

.field private mQueryHandler:Lcom/android/mms/ui/ChatPreferenceActivity$ThreadListQueryHandler;

.field private mSaveChatHistory:Landroid/app/ProgressDialog;

.field private mSendEmail:Landroid/app/ProgressDialog;

.field private mShowQueryDialogHandler:Landroid/os/Handler;

.field private mVibratePref:Landroid/preference/CheckBoxPreference;

.field private mWallpaperImage:[I

.field private mWallpaperPathForCamera:Ljava/lang/String;

.field private mWallpaperText:[I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 114
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 187
    iput-boolean v1, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mFromDownload:Z

    .line 189
    iput-boolean v1, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mFromSendEmail:Z

    .line 191
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mChatWallpaperUri:Ljava/lang/String;

    .line 193
    iput-boolean v1, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mOldNotificationEnable:Z

    .line 195
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mOldMuteValue:Ljava/lang/String;

    .line 197
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mOldRingtone:Ljava/lang/String;

    .line 199
    iput-boolean v1, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mOldVibrate:Z

    .line 201
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mOldWallpaperUri:Ljava/lang/String;

    .line 203
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mOldMuteStart:J

    .line 205
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mWallpaperPathForCamera:Ljava/lang/String;

    .line 219
    iput-object v3, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mQueryHandler:Lcom/android/mms/ui/ChatPreferenceActivity$ThreadListQueryHandler;

    .line 221
    iput-object v3, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mShowQueryDialogHandler:Landroid/os/Handler;

    .line 223
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mWallpaperImage:[I

    .line 227
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mWallpaperText:[I

    .line 380
    new-instance v0, Lcom/android/mms/ui/ChatPreferenceActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ChatPreferenceActivity$2;-><init>(Lcom/android/mms/ui/ChatPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mChatHandler:Landroid/os/Handler;

    .line 1147
    return-void

    .line 223
    :array_0
    .array-data 0x4
        0x94t 0x1t 0x2t 0x7ft
        0x93t 0x1t 0x2t 0x7ft
        0x91t 0x1t 0x2t 0x7ft
        0x92t 0x1t 0x2t 0x7ft
    .end array-data

    .line 227
    :array_1
    .array-data 0x4
        0xa5t 0x1t 0xbt 0x7ft
        0xa6t 0x1t 0xbt 0x7ft
        0xa7t 0x1t 0xbt 0x7ft
        0xa8t 0x1t 0xbt 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ChatPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/mms/ui/ChatPreferenceActivity;->showRefreshDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ChatPreferenceActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mChatDialogUpdate:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/ChatPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/mms/ui/ChatPreferenceActivity;->pickWallpaperFromCam()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/ChatPreferenceActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ChatPreferenceActivity;->showSaveWallpaperResult(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/ChatPreferenceActivity;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ChatPreferenceActivity;->saveResourceWallpaperToMemory(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/ChatPreferenceActivity;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ChatPreferenceActivity;->saveWallpaperToMemory(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/ChatPreferenceActivity;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ChatPreferenceActivity;->showPreference(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/ChatPreferenceActivity;)Lcom/android/mms/ui/ChatPreferenceActivity$ThreadListQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mQueryHandler:Lcom/android/mms/ui/ChatPreferenceActivity$ThreadListQueryHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ChatPreferenceActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mChatDialogSave:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ChatPreferenceActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mChatThreadId:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/android/mms/ui/ChatPreferenceActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mFromDownload:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/mms/ui/ChatPreferenceActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mSaveChatHistory:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/mms/ui/ChatPreferenceActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mFromSendEmail:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/mms/ui/ChatPreferenceActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mSendEmail:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/mms/ui/ChatPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/mms/ui/ChatPreferenceActivity;->pickSysWallpaper()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/ui/ChatPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/mms/ui/ChatPreferenceActivity;->pickWallpaperFromGallery()V

    return-void
.end method

.method private changeThreadIdToDefault()V
    .locals 5

    .prologue
    .line 454
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 455
    .local v1, spChatThreadId:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 456
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "for_chat_settings_pref"

    const-wide/16 v3, -0x1

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 457
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 458
    return-void
.end method

.method private clearRefreshDialog()V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mChatHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 375
    iget-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mShowQueryDialogHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mShowQueryDialogHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 378
    :cond_0
    return-void
.end method

.method private compressAndRotateForMemory(Ljava/lang/String;)Ljava/lang/String;
    .locals 24
    .parameter "wallpaperCache"

    .prologue
    .line 940
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 941
    .local v4, chatWallpaperPStore:Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ChatPreferenceActivity;->mChatWallpaperUri:Ljava/lang/String;

    .line 942
    .local v5, chatWallpaperUri:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_9

    .line 943
    new-instance v12, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/ChatPreferenceActivity;->mChatThreadId:J

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "_"

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

    invoke-direct {v12, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    .local v12, mChatWallpaperMemory:Ljava/io/File;
    :try_start_0
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_0

    .line 947
    invoke-virtual {v12}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 952
    :cond_0
    :goto_0
    const-string v20, "ChatPreferenceActivity"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "mChatWallpapterMemory "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    const/4 v9, 0x0

    .line 955
    .local v9, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v9           #fos:Ljava/io/FileOutputStream;
    .local v10, fos:Ljava/io/FileOutputStream;
    move-object v9, v10

    .line 959
    .end local v10           #fos:Ljava/io/FileOutputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    :goto_1
    new-instance v15, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v15}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 960
    .local v15, options:Landroid/graphics/BitmapFactory$Options;
    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v15, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 961
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 962
    const/16 v20, 0x0

    move/from16 v0, v20

    iput-boolean v0, v15, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 963
    iget v0, v15, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v18, v0

    .line 964
    .local v18, wallpaperWidth:I
    iget v0, v15, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v17, v0

    .line 965
    .local v17, wallpaperHeight:I
    const-string v20, "window"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/WindowManager;

    .line 966
    .local v19, windowManager:Landroid/view/WindowManager;
    invoke-interface/range {v19 .. v19}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/Display;->getWidth()I

    move-result v14

    .line 967
    .local v14, mCurrentMaxWidth:I
    invoke-interface/range {v19 .. v19}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/Display;->getHeight()I

    move-result v13

    .line 968
    .local v13, mCurrentMaxHeight:I
    const/4 v2, 0x1

    .line 969
    .local v2, be:I
    if-le v13, v14, :cond_6

    .line 970
    div-int v20, v17, v13

    div-int v21, v18, v14

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 974
    :goto_2
    const-string v20, "ChatPreferenceActivity"

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

    .line 975
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ge v2, v0, :cond_1

    .line 976
    const/4 v2, 0x1

    .line 978
    :cond_1
    iput v2, v15, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 979
    const/4 v6, 0x0

    .line 980
    .local v6, degree:I
    const/16 v16, 0x0

    .line 981
    .local v16, orientation:I
    const/4 v11, 0x0

    .line 983
    .local v11, isCopyed:Z
    :try_start_2
    new-instance v8, Landroid/media/ExifInterface;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 984
    .local v8, exif:Landroid/media/ExifInterface;
    if-eqz v8, :cond_2

    .line 985
    const-string v20, "Orientation"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v16

    .line 986
    invoke-static/range {v16 .. v16}, Lcom/android/mms/ui/UriImage;->getExifRotation(I)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v6

    .line 991
    .end local v8           #exif:Landroid/media/ExifInterface;
    :cond_2
    :goto_3
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 992
    .local v3, bm:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_3

    .line 993
    invoke-static {v3, v6}, Lcom/android/mms/ui/UriImage;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 994
    sget-object v20, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v21, 0x64

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v11

    .line 997
    :cond_3
    if-eqz v9, :cond_4

    .line 998
    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 1000
    :cond_4
    if-eqz v3, :cond_5

    .line 1001
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1003
    :cond_5
    if-nez v11, :cond_7

    .line 1004
    const/16 v20, 0x0

    .line 1016
    .end local v2           #be:I
    .end local v3           #bm:Landroid/graphics/Bitmap;
    .end local v6           #degree:I
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .end local v11           #isCopyed:Z
    .end local v12           #mChatWallpaperMemory:Ljava/io/File;
    .end local v13           #mCurrentMaxHeight:I
    .end local v14           #mCurrentMaxWidth:I
    .end local v15           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v16           #orientation:I
    .end local v17           #wallpaperHeight:I
    .end local v18           #wallpaperWidth:I
    .end local v19           #windowManager:Landroid/view/WindowManager;
    :goto_4
    return-object v20

    .line 949
    .restart local v12       #mChatWallpaperMemory:Ljava/io/File;
    :catch_0
    move-exception v7

    .line 950
    .local v7, e:Ljava/io/IOException;
    const-string v20, "ChatPreferenceActivity"

    const-string v21, "compressAndRotateForMemory, IOException"

    invoke-static/range {v20 .. v21}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 956
    .end local v7           #e:Ljava/io/IOException;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v7

    .line 957
    .local v7, e:Ljava/io/FileNotFoundException;
    const-string v20, "ChatPreferenceActivity"

    const-string v21, "compressAndRotateForMemory, FileNotFoundException"

    invoke-static/range {v20 .. v21}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 972
    .end local v7           #e:Ljava/io/FileNotFoundException;
    .restart local v2       #be:I
    .restart local v13       #mCurrentMaxHeight:I
    .restart local v14       #mCurrentMaxWidth:I
    .restart local v15       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v17       #wallpaperHeight:I
    .restart local v18       #wallpaperWidth:I
    .restart local v19       #windowManager:Landroid/view/WindowManager;
    :cond_6
    div-int v20, v17, v14

    div-int v21, v18, v13

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto/16 :goto_2

    .line 988
    .restart local v6       #degree:I
    .restart local v11       #isCopyed:Z
    .restart local v16       #orientation:I
    :catch_2
    move-exception v7

    .line 989
    .local v7, e:Ljava/io/IOException;
    const-string v20, "ChatPreferenceActivity"

    const-string v21, "compressAndRotateForMemory, IOException"

    invoke-static/range {v20 .. v21}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1006
    .end local v7           #e:Ljava/io/IOException;
    .restart local v3       #bm:Landroid/graphics/Bitmap;
    :catch_3
    move-exception v7

    .line 1007
    .restart local v7       #e:Ljava/io/IOException;
    const-string v20, "ChatPreferenceActivity"

    const-string v21, "compressAndRotateForMemory, IOException"

    invoke-static/range {v20 .. v21}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    .end local v7           #e:Ljava/io/IOException;
    :cond_7
    const-string v20, "ChatPreferenceActivity"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "isCopyed: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    if-nez v11, :cond_8

    .line 1011
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v20, v5

    .line 1012
    goto :goto_4

    .line 1014
    :cond_8
    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .end local v2           #be:I
    .end local v3           #bm:Landroid/graphics/Bitmap;
    .end local v6           #degree:I
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .end local v11           #isCopyed:Z
    .end local v12           #mChatWallpaperMemory:Ljava/io/File;
    .end local v13           #mCurrentMaxHeight:I
    .end local v14           #mCurrentMaxWidth:I
    .end local v15           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v16           #orientation:I
    .end local v17           #wallpaperHeight:I
    .end local v18           #wallpaperWidth:I
    .end local v19           #windowManager:Landroid/view/WindowManager;
    :cond_9
    move-object/from16 v20, v5

    .line 1016
    goto :goto_4
.end method

.method public static enableNotifications(ZLandroid/content/Context;)V
    .locals 2
    .parameter "enabled"
    .parameter "context"

    .prologue
    .line 627
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 628
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_key_enable_notifications_for_chat"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 629
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 630
    return-void
.end method

.method public static getNotificationEnabled(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 620
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 621
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_enable_notifications_for_chat"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 622
    .local v0, notificationsEnabled:Z
    return v0
.end method

.method public static getSDCardPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 20
    .parameter "c"

    .prologue
    .line 1023
    invoke-static/range {p0 .. p0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v12

    .line 1024
    .local v12, storageManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v12}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v15

    .line 1025
    .local v15, volumes:[Landroid/os/storage/StorageVolume;
    const-wide/16 v8, 0x0

    .line 1026
    .local v8, largestStorageSize:J
    const/4 v6, 0x0

    .line 1027
    .local v6, fitStoragePath:Ljava/lang/String;
    move-object v1, v15

    .local v1, arr$:[Landroid/os/storage/StorageVolume;
    array-length v10, v1

    .local v10, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v10, :cond_1

    aget-object v14, v1, v7

    .line 1028
    .local v14, volume:Landroid/os/storage/StorageVolume;
    const-string v16, "mounted"

    invoke-virtual {v14}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 1030
    invoke-virtual {v14}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v11

    .line 1031
    .local v11, path:Ljava/lang/String;
    new-instance v13, Landroid/os/StatFs;

    invoke-direct {v13, v11}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1032
    .local v13, storageStat:Landroid/os/StatFs;
    invoke-virtual {v13}, Landroid/os/StatFs;->getBlockSize()I

    move-result v16

    move/from16 v0, v16

    int-to-long v4, v0

    .line 1033
    .local v4, blockSize:J
    invoke-virtual {v13}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v16

    move/from16 v0, v16

    int-to-long v2, v0

    .line 1034
    .local v2, availableBlocks:J
    mul-long v16, v4, v2

    const-wide/16 v18, 0x400

    div-long v16, v16, v18

    cmp-long v16, v16, v8

    if-lez v16, :cond_0

    .line 1035
    mul-long v8, v4, v2

    .line 1036
    move-object v6, v11

    .line 1027
    .end local v2           #availableBlocks:J
    .end local v4           #blockSize:J
    .end local v11           #path:Ljava/lang/String;
    .end local v13           #storageStat:Landroid/os/StatFs;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1040
    .end local v14           #volume:Landroid/os/storage/StorageVolume;
    :cond_1
    const-string v16, "ChatPreferenceActivity"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "getSDCardPath return path= "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    return-object v6
.end method

.method private pickSysWallpaper()V
    .locals 2

    .prologue
    .line 719
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/WallpaperChooser;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 720
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 721
    return-void
.end method

.method private pickWallpaperFromCam()V
    .locals 7

    .prologue
    .line 788
    invoke-static {p0}, Lcom/android/mms/ui/ChatPreferenceActivity;->getSDCardPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 789
    const-string v4, "ChatPreferenceActivity"

    const-string v5, "SDcard esisted "

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/mms/ui/ChatPreferenceActivity;->getSDCardPath(Landroid/content/Context;)Ljava/lang/String;

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

    iget-wide v5, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mChatThreadId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

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

    iput-object v4, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mWallpaperPathForCamera:Ljava/lang/String;

    .line 792
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mWallpaperPathForCamera:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 793
    .local v3, out:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 794
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 796
    :cond_0
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 797
    .local v2, mWallpaperTakeuri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 798
    .local v1, imageCaptureIntent:Landroid/content/Intent;
    const-string v4, "output"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 799
    const-string v4, "ChatPreferenceActivity"

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

    .line 801
    const/4 v4, 0x4

    :try_start_0
    invoke-virtual {p0, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 814
    .end local v2           #mWallpaperTakeuri:Landroid/net/Uri;
    .end local v3           #out:Ljava/io/File;
    :goto_0
    return-void

    .line 802
    .restart local v2       #mWallpaperTakeuri:Landroid/net/Uri;
    .restart local v3       #out:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 803
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v4, "ChatPreferenceActivity"

    const-string v5, "activity not found!"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 806
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #imageCaptureIntent:Landroid/content/Intent;
    .end local v2           #mWallpaperTakeuri:Landroid/net/Uri;
    .end local v3           #out:Ljava/io/File;
    :cond_1
    const-string v4, "ChatPreferenceActivity"

    const-string v5, "SDcard not esisted "

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 809
    .restart local v1       #imageCaptureIntent:Landroid/content/Intent;
    const/4 v4, 0x4

    :try_start_1
    invoke-virtual {p0, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 810
    :catch_1
    move-exception v0

    .line 811
    .restart local v0       #e:Landroid/content/ActivityNotFoundException;
    const-string v4, "ChatPreferenceActivity"

    const-string v5, "activity not found!"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private pickWallpaperFromCamResult()V
    .locals 2

    .prologue
    .line 883
    iget-object v1, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mWallpaperPathForCamera:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ChatPreferenceActivity;->compressAndRotateForMemory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 884
    .local v0, chatWallpaperCompressForCamera:Ljava/lang/String;
    new-instance v1, Lcom/android/mms/ui/ChatPreferenceActivity$13;

    invoke-direct {v1, p0, v0}, Lcom/android/mms/ui/ChatPreferenceActivity$13;-><init>(Lcom/android/mms/ui/ChatPreferenceActivity;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 890
    return-void
.end method

.method private pickWallpaperFromGallery()V
    .locals 4

    .prologue
    .line 817
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 818
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 820
    :try_start_0
    const-string v2, "Gallery"

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 824
    :goto_0
    return-void

    .line 821
    :catch_0
    move-exception v0

    .line 822
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "ChatPreferenceActivity"

    const-string v3, "activity not found!"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private pickWallpaperFromGalleryResult(Landroid/content/Intent;)V
    .locals 9
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 851
    if-nez p1, :cond_1

    .line 879
    :cond_0
    :goto_0
    return-void

    .line 854
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 855
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

    .line 857
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 860
    const-string v8, ""

    .line 862
    .local v8, wallpaperPathForGallery:Ljava/lang/String;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 869
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 865
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 866
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 869
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 871
    const-string v0, "ChatPreferenceActivity"

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

    .line 872
    invoke-direct {p0, v8}, Lcom/android/mms/ui/ChatPreferenceActivity;->compressAndRotateForMemory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 873
    .local v7, chatWallpaperCompressForGallery:Ljava/lang/String;
    new-instance v0, Lcom/android/mms/ui/ChatPreferenceActivity$12;

    invoke-direct {v0, p0, v7}, Lcom/android/mms/ui/ChatPreferenceActivity$12;-><init>(Lcom/android/mms/ui/ChatPreferenceActivity;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 869
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
    .line 742
    const-string v1, "wallpaper_index"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 743
    .local v0, sourceId:I
    const-string v1, "ChatPreferenceActivity"

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

    .line 744
    new-instance v1, Lcom/android/mms/ui/ChatPreferenceActivity$11;

    invoke-direct {v1, p0, v0}, Lcom/android/mms/ui/ChatPreferenceActivity$11;-><init>(Lcom/android/mms/ui/ChatPreferenceActivity;I)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 750
    return-void
.end method

.method private restoreDefaultPreferences()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 607
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 608
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_key_enable_notifications_for_chat"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 609
    const-string v1, "pref_key_mute_for_chat"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 610
    const-string v1, "pref_key_ringtone_for_chat"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 611
    const-string v1, "pref_key_vibrate_for_chat"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 612
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 613
    invoke-virtual {p0}, Lcom/android/mms/ui/ChatPreferenceActivity;->clearWallpaperSingle()Z

    .line 614
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 615
    invoke-direct {p0}, Lcom/android/mms/ui/ChatPreferenceActivity;->setMessagePreferences()V

    .line 616
    invoke-direct {p0}, Lcom/android/mms/ui/ChatPreferenceActivity;->setListPrefSummary()V

    .line 617
    return-void
.end method

.method private saveResourceWallpaperToMemory(I)Z
    .locals 14
    .parameter "resourceId"

    .prologue
    const/4 v13, 0x0

    .line 753
    const/4 v2, 0x0

    .line 754
    .local v2, is:Ljava/io/InputStream;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 756
    .local v6, r:Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 760
    :goto_0
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 761
    .local v0, bm:Landroid/graphics/Bitmap;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/data/data/com.android.providers.telephony/app_wallpaper/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mChatThreadId:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".jpeg"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 763
    .local v7, resourceWallpaper:Ljava/lang/String;
    const-string v10, "content://mms-sms/thread_settings/"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-wide v11, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mChatThreadId:J

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 764
    .local v8, uri:Landroid/net/Uri;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 765
    .local v9, values:Landroid/content/ContentValues;
    const-string v10, "_data"

    invoke-virtual {v9, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, v8, v9, v13, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 767
    const/4 v3, 0x0

    .line 769
    .local v3, isSaveSucccessed:Z
    :try_start_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v5

    .line 770
    .local v5, o:Ljava/io/OutputStream;
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v0, v10, v11, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v3

    .line 771
    const-string v10, "ChatPreferenceActivity"

    const-string v11, "decodeFile over"

    invoke-static {v10, v11}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    if-eqz v5, :cond_0

    .line 773
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 775
    :cond_0
    if-eqz v0, :cond_1

    .line 776
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .end local v5           #o:Ljava/io/OutputStream;
    :cond_1
    :goto_1
    move v4, v3

    .line 783
    .end local v3           #isSaveSucccessed:Z
    .local v4, isSaveSucccessed:Z
    return v4

    .line 757
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v4           #isSaveSucccessed:Z
    .end local v7           #resourceWallpaper:Ljava/lang/String;
    .end local v8           #uri:Landroid/net/Uri;
    .end local v9           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 758
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    const-string v10, "ChatPreferenceActivity"

    const-string v11, "NotFoundException"

    invoke-static {v10, v11, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 778
    .end local v1           #e:Landroid/content/res/Resources$NotFoundException;
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v3       #isSaveSucccessed:Z
    .restart local v7       #resourceWallpaper:Ljava/lang/String;
    .restart local v8       #uri:Landroid/net/Uri;
    .restart local v9       #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v1

    .line 779
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v10, "ChatPreferenceActivity"

    const-string v11, "FileNotFoundException"

    invoke-static {v10, v11, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 783
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v10

    goto :goto_1

    .line 780
    :catch_2
    move-exception v1

    .line 781
    .local v1, e:Ljava/io/IOException;
    const-string v10, "ChatPreferenceActivity"

    const-string v11, "IOException"

    invoke-static {v10, v11, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private saveWallpaperToMemory(Ljava/lang/String;)Z
    .locals 12
    .parameter "oldWallpaper"

    .prologue
    const/4 v11, 0x0

    .line 905
    if-nez p1, :cond_1

    .line 906
    const/4 v2, 0x0

    .line 935
    :cond_0
    :goto_0
    return v2

    .line 908
    :cond_1
    const-string v8, "content://mms-sms/thread_settings/"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-wide v9, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mChatThreadId:J

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 909
    .local v6, uri:Landroid/net/Uri;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 910
    .local v7, values:Landroid/content/ContentValues;
    const-string v5, ""

    .line 911
    .local v5, tempFileName:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/data/data/com.android.providers.telephony/app_wallpaper/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mChatThreadId:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".jpeg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 912
    const-string v8, "_data"

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v6, v7, v11, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 914
    const/4 v2, 0x0

    .line 916
    .local v2, isSaveSucceed:Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v3

    .line 917
    .local v3, o:Ljava/io/OutputStream;
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 918
    .local v0, bm:Landroid/graphics/Bitmap;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {v0, v8, v9, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v2

    .line 919
    const-string v8, "ChatPreferenceActivity"

    const-string v9, "decodeFile over"

    invoke-static {v8, v9}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    if-eqz v3, :cond_2

    .line 921
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 923
    :cond_2
    if-eqz v0, :cond_3

    .line 924
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 926
    :cond_3
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 927
    .local v4, tempFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 928
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 930
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v3           #o:Ljava/io/OutputStream;
    .end local v4           #tempFile:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 931
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_1
    const-string v8, "ChatPreferenceActivity"

    const-string v9, "FileNotFoundException"

    invoke-static {v8, v9, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 935
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v8

    goto :goto_0

    .line 932
    :catch_1
    move-exception v1

    .line 933
    .local v1, e:Ljava/io/IOException;
    const-string v8, "ChatPreferenceActivity"

    const-string v9, "IOException"

    invoke-static {v8, v9, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private setEnabledNotificationsPref()V
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mEnableNotificationsPref:Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Lcom/android/mms/ui/ChatPreferenceActivity;->getNotificationEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 506
    return-void
.end method

.method private setListPrefSummary()V
    .locals 5

    .prologue
    .line 461
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 463
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_mute_for_chat"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, notificationMute:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mChatMutePref:Landroid/preference/ListPreference;

    const v3, 0x7f060024

    const v4, 0x7f060025

    invoke-static {p0, v0, v3, v4}, Lcom/android/mms/ui/MessageUtils;->getVisualTextName(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 466
    return-void
.end method

.method private setMessagePreferences()V
    .locals 2

    .prologue
    .line 470
    const/high16 v0, 0x7f05

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 474
    const-string v0, "pref_key_mute_for_chat"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mChatMutePref:Landroid/preference/ListPreference;

    .line 475
    iget-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mChatMutePref:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 476
    const-string v0, "pref_key_enable_notifications_for_chat"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mEnableNotificationsPref:Landroid/preference/CheckBoxPreference;

    .line 477
    const-string v0, "pref_key_vibrate_for_chat"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mVibratePref:Landroid/preference/CheckBoxPreference;

    .line 478
    const-string v0, "pref_key_download_chat_history"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mDownloadChatHistoryPref:Landroid/preference/Preference;

    .line 479
    const-string v0, "pref_key_email_chat_history"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mEmailChatHistoryPref:Landroid/preference/Preference;

    .line 480
    const-string v0, "pref_key_clear_chat_history"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mClearChatHistoryPref:Landroid/preference/Preference;

    .line 481
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getServiceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ServiceManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mediatek/mms/ipmessage/ServiceManager;->isFeatureSupported(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 483
    invoke-virtual {p0}, Lcom/android/mms/ui/ChatPreferenceActivity;->removeActionsCategory()V

    .line 488
    :cond_0
    :goto_0
    const-string v0, "pref_key_chat_wallpaper_for_chat"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mChatWallpaperPref:Landroid/preference/Preference;

    .line 489
    return-void

    .line 484
    :cond_1
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getServiceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ServiceManager;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/mediatek/mms/ipmessage/ServiceManager;->isFeatureSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 486
    invoke-virtual {p0}, Lcom/android/mms/ui/ChatPreferenceActivity;->removeSaveAndEmail()V

    goto :goto_0
.end method

.method private showPreference(Landroid/database/Cursor;)V
    .locals 14
    .parameter "c"

    .prologue
    const-wide/16 v12, 0x3e8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/16 v10, 0x0

    .line 307
    const/4 v2, 0x0

    .line 308
    .local v2, mMute:I
    if-nez p1, :cond_0

    .line 309
    const-string v6, "ChatPreferenceActivity"

    const-string v7, "cursor is null."

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :goto_0
    return-void

    .line 313
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-nez v8, :cond_2

    .line 314
    const-string v6, "ChatPreferenceActivity"

    const-string v7, "cursor count is 0"

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    :goto_1
    if-eqz p1, :cond_1

    .line 330
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 333
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 334
    .local v4, sp:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 335
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    iget-wide v6, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mOldMuteStart:J

    cmp-long v6, v6, v10

    if-lez v6, :cond_7

    if-lez v2, :cond_7

    .line 336
    const-string v6, "ChatPreferenceActivity"

    const-string v7, "thread mute timeout, reset to default."

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    div-long/2addr v6, v12

    long-to-int v0, v6

    .line 338
    .local v0, currentTime:I
    mul-int/lit16 v6, v2, 0xe10

    int-to-long v6, v6

    iget-wide v8, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mOldMuteStart:J

    div-long/2addr v8, v12

    add-long/2addr v6, v8

    int-to-long v8, v0

    cmp-long v6, v6, v8

    if-gtz v6, :cond_6

    .line 339
    const-string v6, "ChatPreferenceActivity"

    const-string v7, "mute Overtime"

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const-string v6, "chat_mute_start"

    invoke-interface {v1, v6, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 341
    const-string v6, "pref_key_mute_for_chat"

    const-string v7, "0"

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 342
    const-string v6, "0"

    iput-object v6, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mOldMuteValue:Ljava/lang/String;

    .line 343
    iput-wide v10, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mOldMuteStart:J

    .line 344
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 359
    .end local v0           #currentTime:I
    :goto_2
    const-string v6, "pref_key_enable_notifications_for_chat"

    iget-boolean v7, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mOldNotificationEnable:Z

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 360
    const-string v6, "pref_key_chat_wallpaper_for_chat"

    iget-object v7, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mOldWallpaperUri:Ljava/lang/String;

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 361
    const-string v6, "pref_key_ringtone_for_chat"

    iget-object v7, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mOldRingtone:Ljava/lang/String;

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 362
    const-string v6, "pref_key_vibrate_for_chat"

    iget-boolean v7, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mOldVibrate:Z

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 363
    const-string v6, "for_chat_settings_pref"

    iget-wide v7, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mChatThreadId:J

    invoke-interface {v1, v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 364
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 365
    invoke-direct {p0}, Lcom/android/mms/ui/ChatPreferenceActivity;->setMessagePreferences()V

    .line 366
    invoke-direct {p0}, Lcom/android/mms/ui/ChatPreferenceActivity;->setEnabledNotificationsPref()V

    .line 367
    invoke-direct {p0}, Lcom/android/mms/ui/ChatPreferenceActivity;->setListPrefSummary()V

    .line 368
    const-string v6, "ChatPreferenceActivity"

    const-string v7, "SAVE IN XML"

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-direct {p0}, Lcom/android/mms/ui/ChatPreferenceActivity;->clearRefreshDialog()V

    goto/16 :goto_0

    .line 316
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v4           #sp:Landroid/content/SharedPreferences;
    :cond_2
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 317
    const/4 v8, 0x0

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 318
    .local v3, notificationEnable:I
    if-nez v3, :cond_4

    move v8, v6

    :goto_3
    iput-boolean v8, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mOldNotificationEnable:Z

    .line 319
    const/4 v8, 0x1

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 320
    const/4 v8, 0x2

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mOldRingtone:Ljava/lang/String;

    .line 321
    const/4 v8, 0x3

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 322
    .local v5, vibrate:I
    const/4 v8, 0x4

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mOldWallpaperUri:Ljava/lang/String;

    .line 323
    iget-object v8, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mOldWallpaperUri:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mChatWallpaperUri:Ljava/lang/String;

    .line 324
    const/4 v8, 0x5

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mOldMuteStart:J

    .line 325
    if-nez v5, :cond_5

    :goto_4
    iput-boolean v6, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mOldVibrate:Z

    .line 326
    const-string v6, "ChatPreferenceActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\tmute = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\tringtone = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mOldRingtone:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\tvibrate = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mOldVibrate:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 329
    .end local v3           #notificationEnable:I
    .end local v5           #vibrate:I
    :catchall_0
    move-exception v6

    if-eqz p1, :cond_3

    .line 330
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 329
    :cond_3
    throw v6

    .restart local v3       #notificationEnable:I
    :cond_4
    move v8, v7

    .line 318
    goto :goto_3

    .restart local v5       #vibrate:I
    :cond_5
    move v6, v7

    .line 325
    goto :goto_4

    .line 346
    .end local v3           #notificationEnable:I
    .end local v5           #vibrate:I
    .restart local v0       #currentTime:I
    .restart local v1       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v4       #sp:Landroid/content/SharedPreferences;
    :cond_6
    const-string v6, "ChatPreferenceActivity"

    const-string v7, "mute not Overtime"

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v6, "chat_mute_start"

    iget-wide v7, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mOldMuteStart:J

    invoke-interface {v1, v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 348
    const-string v6, "pref_key_mute_for_chat"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 349
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mOldMuteValue:Ljava/lang/String;

    .line 350
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_2

    .line 353
    .end local v0           #currentTime:I
    :cond_7
    const-string v6, "chat_mute_start"

    invoke-interface {v1, v6, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 354
    const-string v6, "pref_key_mute_for_chat"

    const-string v7, "0"

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 355
    const-string v6, "0"

    iput-object v6, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mOldMuteValue:Ljava/lang/String;

    .line 356
    iput-wide v10, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mOldMuteStart:J

    .line 357
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_2
.end method

.method private showRefreshDialog()V
    .locals 3

    .prologue
    .line 291
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b019d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mChatDialogUpdate:Landroid/app/ProgressDialog;

    .line 293
    return-void
.end method

.method private showSaveWallpaperResult(Z)V
    .locals 1
    .parameter "isShow"

    .prologue
    .line 724
    if-eqz p1, :cond_0

    .line 725
    new-instance v0, Lcom/android/mms/ui/ChatPreferenceActivity$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ChatPreferenceActivity$9;-><init>(Lcom/android/mms/ui/ChatPreferenceActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 739
    :goto_0
    return-void

    .line 732
    :cond_0
    new-instance v0, Lcom/android/mms/ui/ChatPreferenceActivity$10;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ChatPreferenceActivity$10;-><init>(Lcom/android/mms/ui/ChatPreferenceActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private startAsyncQuery()V
    .locals 8

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 296
    const/4 v0, 0x6

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "notification_enable"

    aput-object v5, v4, v0

    const/4 v0, 0x1

    const-string v5, "mute"

    aput-object v5, v4, v0

    const-string v0, "ringtone"

    aput-object v0, v4, v1

    const/4 v0, 0x3

    const-string v5, "vibrate"

    aput-object v5, v4, v0

    const/4 v0, 0x4

    const-string v5, "_data"

    aput-object v5, v4, v0

    const/4 v0, 0x5

    const-string v5, "mute_start"

    aput-object v5, v4, v0

    .line 302
    .local v4, projection:[Ljava/lang/String;
    const-string v0, "content://mms-sms/thread_settings/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-wide v5, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mChatThreadId:J

    long-to-int v5, v5

    int-to-long v5, v5

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 303
    .local v3, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mQueryHandler:Lcom/android/mms/ui/ChatPreferenceActivity$ThreadListQueryHandler;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    return-void
.end method


# virtual methods
.method public clearWallpaperSingle()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 894
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 895
    .local v0, cv:Landroid/content/ContentValues;
    const-string v3, "_data"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    const-string v3, "content://mms-sms/thread_settings/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mChatThreadId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 897
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v0, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 898
    .local v1, i:I
    if-lez v1, :cond_0

    .line 899
    const/4 v3, 0x1

    .line 901
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V
    .locals 3
    .parameter "threadId"
    .parameter "handler"

    .prologue
    .line 1235
    const/4 v0, 0x0

    .line 1236
    .local v0, threadIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-eqz v1, :cond_0

    .line 1237
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #threadIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1238
    .restart local v0       #threadIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1240
    :cond_0
    invoke-virtual {p0, v0, p3}, Lcom/android/mms/ui/ChatPreferenceActivity;->confirmDeleteThreads(Ljava/util/Collection;Landroid/content/AsyncQueryHandler;)V

    .line 1241
    return-void
.end method

.method public confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;Ljava/util/Collection;ZLandroid/content/Context;)V
    .locals 14
    .parameter "listener"
    .parameter
    .parameter "hasLockedMessages"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mms/ui/ConversationList$DeleteThreadListener;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;Z",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1273
    .local p2, threadIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    const v1, 0x7f04001f

    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 1274
    .local v9, contents:Landroid/view/View;
    const v1, 0x7f0f0087

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 1275
    .local v12, msg:Landroid/widget/TextView;
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v1

    const/16 v2, 0x7a

    invoke-virtual {v1, v2}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1277
    const v1, 0x7f0f0088

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    .line 1278
    .local v8, checkbox:Landroid/widget/CheckBox;
    if-nez p3, :cond_4

    .line 1279
    const/16 v1, 0x8

    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1294
    :goto_0
    const/4 v10, 0x0

    .line 1295
    .local v10, cursor:Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 1296
    .local v13, smsId:I
    const/4 v11, 0x0

    .line 1297
    .local v11, mmsId:I
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "max(_id)"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1298
    if-eqz v10, :cond_1

    .line 1300
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1301
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1302
    const-string v1, "ChatPreferenceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "confirmDeleteThreadDialog max SMS id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1305
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1306
    const/4 v10, 0x0

    .line 1309
    :cond_1
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "max(_id)"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1310
    if-eqz v10, :cond_3

    .line 1312
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1313
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1314
    const-string v1, "ChatPreferenceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "confirmDeleteThreadDialog max MMS id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1317
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1318
    const/4 v10, 0x0

    .line 1321
    :cond_3
    invoke-virtual {p1, v11, v13}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->setMaxMsgId(II)V

    .line 1322
    const-string v1, "ChatPreferenceActivity"

    const-string v2, "Alertdialog shows"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    new-instance v7, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p4

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1324
    .local v7, builder:Landroid/app/AlertDialog$Builder;
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v1

    const/16 v2, 0x79

    invoke-virtual {v1, v2}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b02bf

    invoke-virtual {v1, v2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0296

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1332
    return-void

    .line 1282
    .end local v7           #builder:Landroid/app/AlertDialog$Builder;
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v11           #mmsId:I
    .end local v13           #smsId:I
    :cond_4
    const-string v1, "ChatPreferenceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serviceId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p4 .. p4}, Lcom/android/mms/MmsConfig;->getIpMessagServiceId(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    invoke-static/range {p4 .. p4}, Lcom/android/mms/MmsConfig;->getIpMessagServiceId(Landroid/content/Context;)I

    move-result v1

    if-lez v1, :cond_5

    .line 1284
    invoke-static/range {p4 .. p4}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v1

    const/16 v2, 0x75

    invoke-virtual {v1, v2}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1287
    :cond_5
    invoke-virtual {v8}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->setDeleteLockedMessage(Z)V

    .line 1288
    new-instance v1, Lcom/android/mms/ui/ChatPreferenceActivity$18;

    invoke-direct {v1, p0, p1, v8}, Lcom/android/mms/ui/ChatPreferenceActivity$18;-><init>(Lcom/android/mms/ui/ChatPreferenceActivity;Lcom/android/mms/ui/ConversationList$DeleteThreadListener;Landroid/widget/CheckBox;)V

    invoke-virtual {v8, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 1305
    .restart local v10       #cursor:Landroid/database/Cursor;
    .restart local v11       #mmsId:I
    .restart local v13       #smsId:I
    :catchall_0
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1306
    const/4 v10, 0x0

    .line 1305
    throw v1

    .line 1317
    :catchall_1
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1318
    const/4 v10, 0x0

    .line 1317
    throw v1
.end method

.method public confirmDeleteThreads(Ljava/util/Collection;Landroid/content/AsyncQueryHandler;)V
    .locals 1
    .parameter
    .parameter "handler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/content/AsyncQueryHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1254
    .local p1, threadIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, Lcom/android/mms/data/Conversation;->startQueryHaveLockedMessages(Landroid/content/AsyncQueryHandler;Ljava/util/Collection;I)V

    .line 1255
    return-void
.end method

.method public notificationsReceived(Landroid/content/Intent;)V
    .locals 12
    .parameter "intent"

    .prologue
    const/4 v11, 0x0

    .line 1047
    const-string v8, "ChatPreferenceActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "save history intent = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1049
    .local v0, action:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1145
    :cond_0
    :goto_0
    return-void

    .line 1052
    :cond_1
    invoke-static {v0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getActionTypeByAction(Ljava/lang/String;)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    .line 1054
    :pswitch_0
    const-string v8, "com.mediatek.mms.ipmessage.saveHistroyDone"

    const/4 v9, 0x1

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1055
    .local v1, done:I
    const-string v8, "com.mediatek.mms.ipmessage.saveHistoryFile"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1056
    .local v4, filePath:Ljava/lang/String;
    const-string v8, "ChatPreferenceActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "save history done: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    const-string v8, "ChatPreferenceActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "save history file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    iget-boolean v8, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mFromDownload:Z

    if-eqz v8, :cond_2

    .line 1059
    iget-object v8, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mSaveChatHistory:Landroid/app/ProgressDialog;

    if-eqz v8, :cond_2

    .line 1060
    iget-object v8, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mSaveChatHistory:Landroid/app/ProgressDialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->dismiss()V

    .line 1063
    :cond_2
    if-nez v1, :cond_5

    iget-boolean v8, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mFromDownload:Z

    if-eqz v8, :cond_5

    .line 1064
    iput-boolean v11, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mFromDownload:Z

    .line 1065
    new-instance v8, Lcom/android/mms/ui/ChatPreferenceActivity$14;

    invoke-direct {v8, p0, v4}, Lcom/android/mms/ui/ChatPreferenceActivity$14;-><init>(Lcom/android/mms/ui/ChatPreferenceActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1091
    :cond_3
    :goto_1
    iget-boolean v8, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mFromSendEmail:Z

    if-eqz v8, :cond_4

    .line 1092
    iget-object v8, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mSendEmail:Landroid/app/ProgressDialog;

    if-eqz v8, :cond_4

    .line 1093
    iget-object v8, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mSendEmail:Landroid/app/ProgressDialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->dismiss()V

    .line 1096
    :cond_4
    if-nez v1, :cond_8

    iget-boolean v8, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mFromSendEmail:Z

    if-eqz v8, :cond_8

    .line 1097
    iput-boolean v11, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mFromSendEmail:Z

    .line 1098
    const-string v8, "ChatPreferenceActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "send file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    if-eqz v4, :cond_7

    .line 1100
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1101
    .local v3, emailFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1102
    const-string v8, "ChatPreferenceActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1104
    .local v5, i:Landroid/content/Intent;
    const-string v8, "android.intent.action.SEND"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1105
    const-string v8, "android.intent.extra.STREAM"

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1106
    const-string v8, "message/rfc822"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1109
    :try_start_0
    invoke-virtual {p0, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1110
    :catch_0
    move-exception v2

    .line 1111
    .local v2, e:Landroid/content/ActivityNotFoundException;
    const-string v8, "ChatPreferenceActivity"

    const-string v9, "ActivityNotFoundException."

    invoke-static {v8, v9}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1074
    .end local v2           #e:Landroid/content/ActivityNotFoundException;
    .end local v3           #emailFile:Ljava/io/File;
    .end local v5           #i:Landroid/content/Intent;
    :cond_5
    if-eqz v1, :cond_3

    iget-boolean v8, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mFromDownload:Z

    if-eqz v8, :cond_3

    .line 1075
    iput-boolean v11, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mFromDownload:Z

    .line 1076
    if-eqz v4, :cond_6

    .line 1077
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1078
    .local v6, saveHistoryFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1079
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1082
    .end local v6           #saveHistoryFile:Ljava/io/File;
    :cond_6
    new-instance v8, Lcom/android/mms/ui/ChatPreferenceActivity$15;

    invoke-direct {v8, p0}, Lcom/android/mms/ui/ChatPreferenceActivity$15;-><init>(Lcom/android/mms/ui/ChatPreferenceActivity;)V

    invoke-virtual {p0, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 1115
    :cond_7
    new-instance v8, Lcom/android/mms/ui/ChatPreferenceActivity$16;

    invoke-direct {v8, p0}, Lcom/android/mms/ui/ChatPreferenceActivity$16;-><init>(Lcom/android/mms/ui/ChatPreferenceActivity;)V

    invoke-virtual {p0, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1124
    :cond_8
    if-eqz v1, :cond_0

    iget-boolean v8, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mFromSendEmail:Z

    if-eqz v8, :cond_0

    .line 1125
    iput-boolean v11, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mFromSendEmail:Z

    .line 1126
    if-eqz v4, :cond_9

    .line 1127
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1128
    .local v7, sendHistoryFile:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1129
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 1132
    .end local v7           #sendHistoryFile:Ljava/io/File;
    :cond_9
    new-instance v8, Lcom/android/mms/ui/ChatPreferenceActivity$17;

    invoke-direct {v8, p0}, Lcom/android/mms/ui/ChatPreferenceActivity$17;-><init>(Lcom/android/mms/ui/ChatPreferenceActivity;)V

    invoke-virtual {p0, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1052
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 827
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 828
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 829
    packed-switch p1, :pswitch_data_0

    .line 848
    :cond_0
    :goto_0
    return-void

    .line 831
    :pswitch_0
    invoke-direct {p0, p3}, Lcom/android/mms/ui/ChatPreferenceActivity;->pickWallpaperFromGalleryResult(Landroid/content/Intent;)V

    goto :goto_0

    .line 834
    :pswitch_1
    invoke-direct {p0}, Lcom/android/mms/ui/ChatPreferenceActivity;->pickWallpaperFromCamResult()V

    goto :goto_0

    .line 837
    :pswitch_2
    invoke-direct {p0, p3}, Lcom/android/mms/ui/ChatPreferenceActivity;->pickWallpaperFromSys(Landroid/content/Intent;)V

    .line 838
    const-string v0, "ChatPreferenceActivity"

    const-string v1, "sytem result"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 844
    :cond_1
    if-nez p2, :cond_0

    .line 845
    const-string v0, "ChatPreferenceActivity"

    const-string v1, "nothing selected"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 829
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 661
    const-string v0, "ChatPreferenceActivity"

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

    .line 662
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 663
    new-instance v0, Lcom/mediatek/encapsulation/android/widget/EncapsulatedListView;

    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/encapsulation/android/widget/EncapsulatedListView;-><init>(Landroid/widget/ListView;)V

    invoke-virtual {v0}, Lcom/mediatek/encapsulation/android/widget/EncapsulatedListView;->clearScrapViewsIfNeeded()V

    .line 664
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 269
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 270
    const-string v1, "ChatPreferenceActivity"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    if-eqz p1, :cond_0

    const-string v1, "wallpaperCameraPath"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    const-string v1, "wallpaperCameraPath"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mWallpaperPathForCamera:Ljava/lang/String;

    .line 274
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "chatThreadId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mChatThreadId:J

    .line 275
    const-string v1, "ChatPreferenceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mChatThreadId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mChatThreadId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 277
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 278
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b019b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 279
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mShowQueryDialogHandler:Landroid/os/Handler;

    .line 280
    iget-object v1, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mShowQueryDialogHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/ChatPreferenceActivity$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ChatPreferenceActivity$1;-><init>(Lcom/android/mms/ui/ChatPreferenceActivity;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 285
    new-instance v1, Lcom/android/mms/ui/ChatPreferenceActivity$ThreadListQueryHandler;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/ChatPreferenceActivity$ThreadListQueryHandler;-><init>(Lcom/android/mms/ui/ChatPreferenceActivity;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mQueryHandler:Lcom/android/mms/ui/ChatPreferenceActivity$ThreadListQueryHandler;

    .line 286
    invoke-direct {p0}, Lcom/android/mms/ui/ChatPreferenceActivity;->startAsyncQuery()V

    .line 287
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 509
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 510
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 511
    const v0, 0x7f0b029c

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 512
    return v2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 1339
    iget-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mChatDialogUpdate:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1340
    iget-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mChatDialogUpdate:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1342
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 1343
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 407
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 408
    invoke-virtual {p0}, Lcom/android/mms/ui/ChatPreferenceActivity;->saveToDatabase()V

    .line 410
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 517
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 529
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 519
    :sswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/ChatPreferenceActivity;->restoreDefaultPreferences()V

    goto :goto_0

    .line 524
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ChatPreferenceActivity;->saveToDatabase()V

    goto :goto_0

    .line 517
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 239
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 240
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 634
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .local v1, key:Ljava/lang/String;
    move-object v4, p2

    .line 635
    check-cast v4, Ljava/lang/String;

    .line 636
    .local v4, notificationMute:Ljava/lang/String;
    const-string v6, "pref_key_mute_for_chat"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 637
    const v6, 0x7f060024

    const v7, 0x7f060025

    invoke-static {p0, v4, v6, v7}, Lcom/android/mms/ui/MessageUtils;->getVisualTextName(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 639
    .local v2, mMute:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mChatMutePref:Landroid/preference/ListPreference;

    invoke-virtual {v6, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 640
    const-string v6, "ChatPreferenceActivity"

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

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    const-string v6, "0"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 642
    const-string v6, "ChatPreferenceActivity"

    const-string v7, "mute_start 0"

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 644
    .local v5, sp:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 645
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "chat_mute_start"

    const-wide/16 v7, 0x0

    invoke-interface {v0, v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 646
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 656
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #mMute:Ljava/lang/CharSequence;
    .end local v5           #sp:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    const/4 v6, 0x1

    return v6

    .line 648
    .restart local v2       #mMute:Ljava/lang/CharSequence;
    :cond_1
    const-string v6, "ChatPreferenceActivity"

    const-string v7, "mute_start not 0"

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 650
    .local v3, muteTime:Ljava/lang/Long;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 651
    .restart local v5       #sp:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 652
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "chat_mute_start"

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-interface {v0, v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 653
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const v7, 0x7f0b01b4

    const v6, 0x7f0b0007

    const v5, 0x7f0b0006

    const/4 v4, 0x1

    .line 534
    iget-object v2, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mEnableNotificationsPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_1

    .line 536
    iget-object v2, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mEnableNotificationsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    invoke-static {v2, p0}, Lcom/android/mms/ui/ChatPreferenceActivity;->enableNotifications(ZLandroid/content/Context;)V

    .line 603
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    .line 537
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mDownloadChatHistoryPref:Landroid/preference/Preference;

    if-ne p2, v2, :cond_3

    .line 538
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 539
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 540
    .local v0, downloadDialog:Landroid/app/AlertDialog$Builder;
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v2

    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 542
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v2

    const/16 v3, 0x77

    invoke-virtual {v2, v3}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 544
    new-instance v2, Lcom/android/mms/ui/ChatPreferenceActivity$4;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ChatPreferenceActivity$4;-><init>(Lcom/android/mms/ui/ChatPreferenceActivity;)V

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 556
    new-instance v2, Lcom/android/mms/ui/ChatPreferenceActivity$5;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ChatPreferenceActivity$5;-><init>(Lcom/android/mms/ui/ChatPreferenceActivity;)V

    invoke-virtual {v0, v6, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 562
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 564
    .end local v0           #downloadDialog:Landroid/app/AlertDialog$Builder;
    :cond_2
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 567
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mEmailChatHistoryPref:Landroid/preference/Preference;

    if-ne p2, v2, :cond_5

    .line 568
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 569
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 570
    .local v1, emailDialog:Landroid/app/AlertDialog$Builder;
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v2

    const/16 v3, 0x7e

    invoke-virtual {v2, v3}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 572
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v2

    const/16 v3, 0x78

    invoke-virtual {v2, v3}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 574
    new-instance v2, Lcom/android/mms/ui/ChatPreferenceActivity$6;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ChatPreferenceActivity$6;-><init>(Lcom/android/mms/ui/ChatPreferenceActivity;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 586
    new-instance v2, Lcom/android/mms/ui/ChatPreferenceActivity$7;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ChatPreferenceActivity$7;-><init>(Lcom/android/mms/ui/ChatPreferenceActivity;)V

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 592
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 594
    .end local v1           #emailDialog:Landroid/app/AlertDialog$Builder;
    :cond_4
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 597
    :cond_5
    iget-object v2, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mClearChatHistoryPref:Landroid/preference/Preference;

    if-ne p2, v2, :cond_6

    .line 598
    new-instance v2, Lcom/android/mms/ui/ChatPreferenceActivity$ThreadListQueryHandler;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/mms/ui/ChatPreferenceActivity$ThreadListQueryHandler;-><init>(Lcom/android/mms/ui/ChatPreferenceActivity;Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mQueryHandler:Lcom/android/mms/ui/ChatPreferenceActivity$ThreadListQueryHandler;

    .line 599
    iget-wide v2, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mChatThreadId:J

    iget-object v4, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mQueryHandler:Lcom/android/mms/ui/ChatPreferenceActivity$ThreadListQueryHandler;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/mms/ui/ChatPreferenceActivity;->confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V

    goto/16 :goto_0

    .line 600
    :cond_6
    iget-object v2, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mChatWallpaperPref:Landroid/preference/Preference;

    if-ne p2, v2, :cond_0

    .line 601
    invoke-virtual {p0}, Lcom/android/mms/ui/ChatPreferenceActivity;->pickChatWallpaper()V

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 244
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 247
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 262
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 263
    const-string v0, "ChatPreferenceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWallpaperPathForCamera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mWallpaperPathForCamera:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v0, "wallpaperCameraPath"

    iget-object v1, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mWallpaperPathForCamera:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 233
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 234
    invoke-static {p0, p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->addIpMsgNotificationListeners(Landroid/content/Context;Lcom/mediatek/mms/ipmessage/INotificationsListener;)V

    .line 235
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 251
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    invoke-static {p0, p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->removeIpMsgNotificationListeners(Landroid/content/Context;Lcom/mediatek/mms/ipmessage/INotificationsListener;)V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mShowQueryDialogHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mShowQueryDialogHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 257
    :cond_1
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 258
    return-void
.end method

.method public pickChatWallpaper()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    .line 667
    new-instance v12, Landroid/app/AlertDialog$Builder;

    invoke-direct {v12, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 668
    .local v12, wallpaperDialog:Landroid/app/AlertDialog$Builder;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 669
    .local v2, wallpaper:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    const/4 v1, 0x4

    if-ge v8, v1, :cond_0

    .line 670
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 671
    .local v7, hm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ItemImage"

    iget-object v3, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mWallpaperImage:[I

    aget v3, v3, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    const-string v1, "ItemText"

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mWallpaperText:[I

    aget v4, v4, v8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 675
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

    .line 678
    .local v0, wallpaperDialogAdapter:Landroid/widget/SimpleAdapter;
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 679
    .local v10, mInflater:Landroid/view/LayoutInflater;
    const v3, 0x7f040077

    const v1, 0x7f0f01a2

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v10, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 681
    .local v9, layout:Landroid/view/View;
    const v1, 0x7f0f01a3

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/GridView;

    .line 682
    .local v6, gv:Landroid/widget/GridView;
    invoke-virtual {v6, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 683
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

    .line 685
    .local v11, wallpaperChooser:Landroid/app/AlertDialog;
    invoke-virtual {v11}, Landroid/app/Dialog;->show()V

    .line 686
    new-instance v1, Lcom/android/mms/ui/ChatPreferenceActivity$8;

    invoke-direct {v1, p0, v11}, Lcom/android/mms/ui/ChatPreferenceActivity$8;-><init>(Lcom/android/mms/ui/ChatPreferenceActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v6, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 716
    return-void

    .line 675
    nop

    :array_0
    .array-data 0x4
        0xa5t 0x1t 0xft 0x7ft
        0xa6t 0x1t 0xft 0x7ft
    .end array-data
.end method

.method public removeActionsCategory()V
    .locals 2

    .prologue
    .line 492
    const-string v1, "pref_key_actions_settings"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 493
    .local v0, actionsPref:Landroid/preference/PreferenceCategory;
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 494
    return-void
.end method

.method public removeSaveAndEmail()V
    .locals 2

    .prologue
    .line 497
    const-string v1, "pref_key_actions_settings"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 498
    .local v0, displayOptions:Landroid/preference/PreferenceCategory;
    const-string v1, "pref_key_download_chat_history"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 499
    const-string v1, "pref_key_email_chat_history"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 500
    return-void
.end method

.method public saveToDatabase()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 414
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 415
    .local v8, sp:Landroid/content/SharedPreferences;
    const-string v0, "pref_key_enable_notifications_for_chat"

    invoke-interface {v8, v0, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 416
    .local v2, mNotificationEnable:Z
    const-string v0, "pref_key_mute_for_chat"

    const-string v1, "0"

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 417
    .local v3, mMute:Ljava/lang/String;
    const-string v0, "pref_key_ringtone_for_chat"

    const-string v1, ""

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 418
    .local v6, mRingtone:Ljava/lang/String;
    const-string v0, "pref_key_vibrate_for_chat"

    invoke-interface {v8, v0, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 419
    .local v7, mVibrate:Z
    const-string v0, "chat_mute_start"

    const-wide/16 v9, 0x0

    invoke-interface {v8, v0, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 420
    .local v4, mMuteStart:J
    iget-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mOldMuteValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mOldRingtone:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 421
    :cond_0
    const-string v0, "ChatPreferenceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mOldMuteValue = "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v9, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mOldMuteValue:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "mOldRingtone = "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v9, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mOldRingtone:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :goto_0
    return-void

    .line 424
    :cond_1
    iget-boolean v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mOldNotificationEnable:Z

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mOldMuteValue:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mOldRingtone:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mOldVibrate:Z

    if-ne v0, v7, :cond_2

    iget-wide v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mOldMuteStart:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    .line 426
    const-string v0, "ChatPreferenceActivity"

    const-string v1, "no setting change"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mChatHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 450
    :goto_1
    invoke-direct {p0}, Lcom/android/mms/ui/ChatPreferenceActivity;->changeThreadIdToDefault()V

    goto :goto_0

    .line 430
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v9, 0x7f0b019c

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity;->mChatDialogSave:Landroid/app/ProgressDialog;

    .line 432
    new-instance v0, Lcom/android/mms/ui/ChatPreferenceActivity$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/ChatPreferenceActivity$3;-><init>(Lcom/android/mms/ui/ChatPreferenceActivity;ZLjava/lang/String;JLjava/lang/String;Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method
