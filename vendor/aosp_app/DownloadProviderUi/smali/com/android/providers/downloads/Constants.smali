.class public Lcom/android/providers/downloads/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ACTION_EMMRRS_PS_RESUME_INDICATOR:Ljava/lang/String; = "android.intent.action.EMMRRS_PS_RESUME"

.field public static final ACTION_HIDE:Ljava/lang/String; = "android.intent.action.DOWNLOAD_HIDE"

.field public static final ACTION_LIST:Ljava/lang/String; = "android.intent.action.DOWNLOAD_LIST"

.field public static final ACTION_OPEN:Ljava/lang/String; = "android.intent.action.DOWNLOAD_OPEN"

.field public static final ACTION_PS_STATE_RESUMED_BROADCAST:Ljava/lang/String; = "com.mtk.ACTION_PS_STATE_RESUMED"

.field public static final ACTION_RETRY:Ljava/lang/String; = "android.intent.action.DOWNLOAD_WAKEUP"

.field public static final BROWSER_NOTIFICATION_PACKAGE:Ljava/lang/String; = "com.android.browser"

.field public static final BUFFER_SIZE:I = 0x1000

.field public static final DD_FILE_MIMETYPE:Ljava/lang/String; = "application/vnd.oma.dd+xml"

.field public static final DEFAULT_DL_BINARY_EXTENSION:Ljava/lang/String; = ".bin"

.field public static final DEFAULT_DL_FILENAME:Ljava/lang/String; = "downloadfile"

.field public static final DEFAULT_DL_HTML_EXTENSION:Ljava/lang/String; = ".html"

.field public static final DEFAULT_DL_SUBDIR:Ljava/lang/String; = null

.field public static final DEFAULT_DL_TEXT_EXTENSION:Ljava/lang/String; = ".txt"

.field public static final DEFAULT_USER_AGENT:Ljava/lang/String; = null

.field public static final DL_DRM:Ljava/lang/String; = "DownloadManager/DRM"

.field public static final DL_ENHANCE:Ljava/lang/String; = "DownloadManager/Enhance"

.field public static final ETAG:Ljava/lang/String; = "etag"

.field public static final FAILED_CONNECTIONS:Ljava/lang/String; = "numfailed"

.field public static final FILENAME_SEQUENCE_SEPARATOR:Ljava/lang/String; = "-"

.field public static final FILE_MANAGER_URI:Ljava/lang/String; = "content://com.mediatek.filemanager.provider"

.field private static final LOCAL_LOGV:Z = false

.field private static final LOCAL_LOGVV:Z = false

#the value of this static final field might be set in the static constructor
.field public static final LOGV:Z = false

#the value of this static final field might be set in the static constructor
.field public static final LOGVV:Z = false

.field static final LOGX:Z = false

.field public static final LOG_OMA_DL:Ljava/lang/String; = "DownloadManager/OMA"

.field public static final MAX_DOWNLOADS:I = 0x3e8

.field public static final MAX_REDIRECTS:I = 0x7

.field public static final MAX_RETRIES:I = 0x14

.field public static final MAX_RETRY_AFTER:I = 0x15180

.field public static final MEDIA_SCANNED:Ljava/lang/String; = "scanned"

.field public static final MIMETYPE_APK:Ljava/lang/String; = "application/vnd.android.package"

.field public static final MIMETYPE_DRM_MESSAGE:Ljava/lang/String; = "application/vnd.oma.drm.message"

.field public static final MIN_PROGRESS_STEP:I = 0x1000

.field public static final MIN_PROGRESS_TIME:J = 0x5dcL

.field public static final MIN_RETRY_AFTER:I = 0x1e

.field public static final MTK_DRM_ENABLED:Z = true

.field public static final NO_SYSTEM_FILES:Ljava/lang/String; = "no_system"

.field public static final OMADL_NOTIFICATION_PACKAGE:Ljava/lang/String; = "com.android.providers.downloads.ui"

.field public static final OP02_CUSTOMIZATION_AUDIO_DL_SUBDIR:Ljava/lang/String; = "/Music"

.field public static final OTA_UPDATE:Ljava/lang/String; = "otaupdate"

.field public static final PROVIDER_PACKAGE_NAME:Ljava/lang/String; = "com.android.providers.downloads"

.field public static final RECOVERY_DIRECTORY:Ljava/lang/String; = "recovery"

.field public static final RETRY_AFTER_X_REDIRECT_COUNT:Ljava/lang/String; = "method"

.field public static final RETRY_FIRST_DELAY:I = 0x3

.field public static final TAG:Ljava/lang/String; = "DownloadManager"

.field public static final UID:Ljava/lang/String; = "uid"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 95
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/providers/downloads/Constants;->DEFAULT_DL_SUBDIR:Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .local v0, builder:Ljava/lang/StringBuilder;
    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    move v3, v4

    .line 107
    .local v3, validRelease:Z
    :goto_0
    sget-object v6, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    move v2, v4

    .line 108
    .local v2, validId:Z
    :goto_1
    const-string v6, "REL"

    sget-object v7, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    move v1, v4

    .line 111
    .local v1, includeModel:Z
    :goto_2
    const-string v4, "AndroidDownloadManager"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    if-eqz v3, :cond_0

    .line 113
    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :cond_0
    const-string v4, " (Linux; U; Android"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    if-eqz v3, :cond_1

    .line 117
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :cond_1
    if-nez v1, :cond_2

    if-eqz v2, :cond_4

    .line 120
    :cond_2
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    if-eqz v1, :cond_3

    .line 122
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_3
    if-eqz v2, :cond_4

    .line 125
    const-string v4, " Build/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :cond_4
    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/providers/downloads/Constants;->DEFAULT_USER_AGENT:Ljava/lang/String;

    .line 188
    sput-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    .line 192
    sput-boolean v5, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    return-void

    .end local v1           #includeModel:Z
    .end local v2           #validId:Z
    .end local v3           #validRelease:Z
    :cond_5
    move v3, v5

    .line 106
    goto :goto_0

    .restart local v3       #validRelease:Z
    :cond_6
    move v2, v5

    .line 107
    goto :goto_1

    .restart local v2       #validId:Z
    :cond_7
    move v1, v5

    .line 108
    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
