.class public Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;
.super Ljava/lang/Object;
.source "StandardInterfaceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$ContactItem;,
        Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$MoveTaskUpdateCB;,
        Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.zte.browser.dataprovider"

.field private static final AUTHORITY_URI:Landroid/net/Uri; = null

.field public static final BUFFERSIZE:I = 0xfa000

.field public static final CALL_LOG_MODE_NAME:[Ljava/lang/String; = null

.field public static DELIVERED_SMS_ACTION:Ljava/lang/String; = null

.field public static final ENCRYHEADSIZE:I = 0x2800

.field public static final ENCRY_TYPE_DIR:I = 0x5

.field public static final ENCRY_TYPE_FILE:I = 0x4

.field public static final ENCRY_TYPE_IMAGE:I = 0x1

.field public static final ENCRY_TYPE_VIDEO_1:I = 0x2

.field public static final ENCRY_TYPE_VIDEO_2:I = 0x3

.field public static EXIT_PRICACYIMAGEVIDEOFILE_BROADCAST:Ljava/lang/String; = null

.field public static EXIT_PRICACYSPACE_BROADCAST:Ljava/lang/String; = null

.field public static final FEATURE_ANTI_PHONE_RECORDING:I = 0x2

.field public static final FEATURE_APP_LOCK:I = 0x4

.field public static final FEATURE_BASE:I = 0x0

.field public static final FEATURE_BLUETOOTH_CONTROL:I = 0x7

.field public static final FEATURE_CALENDAR_CONTROL:I = 0x1

.field public static final FEATURE_CALLLOG_CONTROL:I = 0xa

.field public static final FEATURE_CAMERA_CONTROL:I = 0xb

.field public static final FEATURE_DATA_CONTROL:I = 0x8

.field public static final FEATURE_NEW_INTERCEPT_AD:I = 0xe

.field public static final FEATURE_NOTIFICATION_CONTROL:I = 0x3

.field public static final FEATURE_RECORD_AUDIO:I = 0x6

.field public static final FEATURE_SEND_MMS:I = 0xc

.field public static final FEATURE_WIFI_CONTROL:I = 0x9

.field public static INBOX_SMS_INTERCEPT:Ljava/lang/String; = null

.field public static IV:[B = null

.field private static final MAX_NUMBER_LENGTH:I = 0x7

.field public static final RETRIEVE_SMS:[Ljava/lang/String; = null

.field public static SENT_SMS_ACTION:Ljava/lang/String; = null

.field private static final SIXTY_DAY:J = 0x134fd9000L

.field public static final SMS_MODE_NAME:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "StandardInterfaceUtils"

.field public static final TIME_FORMAT:Ljava/lang/String; = "yyyy-MM-dd HH:mm"

.field private static final ZB_CONTENT_URI:Landroid/net/Uri;

.field private static activityManager:Landroid/app/ActivityManager;

.field private static antiEavesdropTip:Lcom/zte/heartyservice/common/ui/FloatFrame;

.field private static antiEavesdropWatchDog:Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;

.field private static appLockWatchDog:Lcom/zte/heartyservice/privacy/AppLockWatchDog;

.field private static fileHelper:Lcom/zte/filexplorer/FileHelper;

.field private static heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

.field private static mKeyguardManager:Landroid/app/KeyguardManager;

.field private static map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static packageManager:Landroid/content/pm/PackageManager;

.field private static sHasSystemPermission:Ljava/lang/Boolean;

.field private static sPrivacyManager:Lcom/zte/privacy/ZTEPrivacyManager;

.field private static securityExtentionVersion:I

.field private static staThread:Ljava/lang/Thread;

.field private static virusDBEngine:Lcom/zte/heartyservice/porting/All/VirusDBEngine;

.field public static wait:Ljava/lang/Object;

.field public static waitUpdateMaxHandledCallId:Ljava/lang/Object;

.field public static waitUpdateMaxHandledSmsId:Ljava/lang/Object;

.field private static windowManager:Landroid/view/WindowManager;

.field private static zbThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 174
    sput-object v3, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->activityManager:Landroid/app/ActivityManager;

    .line 175
    sput-object v3, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->packageManager:Landroid/content/pm/PackageManager;

    .line 176
    sput-object v3, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 177
    sput-object v3, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->windowManager:Landroid/view/WindowManager;

    .line 178
    sput-object v3, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->sPrivacyManager:Lcom/zte/privacy/ZTEPrivacyManager;

    .line 179
    const/4 v0, -0x1

    sput v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->securityExtentionVersion:I

    .line 180
    sput-object v3, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->fileHelper:Lcom/zte/filexplorer/FileHelper;

    .line 185
    sput-object v3, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->virusDBEngine:Lcom/zte/heartyservice/porting/All/VirusDBEngine;

    .line 188
    sput-object v3, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->staThread:Ljava/lang/Thread;

    .line 189
    sput-object v3, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->zbThread:Ljava/lang/Thread;

    .line 191
    sput-object v3, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->antiEavesdropTip:Lcom/zte/heartyservice/common/ui/FloatFrame;

    .line 208
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "simid"

    aput-object v1, v0, v2

    const-string v1, "mode_id"

    aput-object v1, v0, v4

    const-string v1, "sub_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->CALL_LOG_MODE_NAME:[Ljava/lang/String;

    .line 209
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "sim_id"

    aput-object v1, v0, v2

    const-string v1, "sub_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->SMS_MODE_NAME:[Ljava/lang/String;

    .line 227
    const-string v0, "PRIVACY.SENT_SMS_ACTION"

    sput-object v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->SENT_SMS_ACTION:Ljava/lang/String;

    .line 228
    const-string v0, "PRIVACY.DELIVERED_SMS_ACTION"

    sput-object v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->DELIVERED_SMS_ACTION:Ljava/lang/String;

    .line 229
    const-string v0, "PRIVACY.INBOX_SMS_INTERCEPT"

    sput-object v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->INBOX_SMS_INTERCEPT:Ljava/lang/String;

    .line 230
    const-string v0, "PRIVACY.EXIT_PRICACYSPACE_BROADCAST"

    sput-object v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->EXIT_PRICACYSPACE_BROADCAST:Ljava/lang/String;

    .line 231
    const-string v0, "PRIVACY.EXIT_PRICACYIMAGEVIDEOFILE_BROADCAST"

    sput-object v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->EXIT_PRICACYIMAGEVIDEOFILE_BROADCAST:Ljava/lang/String;

    .line 235
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->waitUpdateMaxHandledSmsId:Ljava/lang/Object;

    .line 236
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->waitUpdateMaxHandledCallId:Ljava/lang/Object;

    .line 239
    const-string v0, "content://com.zte.browser.dataprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->AUTHORITY_URI:Landroid/net/Uri;

    .line 240
    sget-object v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "historydata"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->ZB_CONTENT_URI:Landroid/net/Uri;

    .line 242
    sput-object v3, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->appLockWatchDog:Lcom/zte/heartyservice/privacy/AppLockWatchDog;

    .line 243
    sput-object v3, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->antiEavesdropWatchDog:Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;

    .line 245
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->map:Ljava/util/HashMap;

    .line 247
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->wait:Ljava/lang/Object;

    .line 1786
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->IV:[B

    .line 5241
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ztesd*"

    aput-object v1, v0, v2

    const-string v1, "ztexl*"

    aput-object v1, v0, v4

    const-string v1, "ztedw*"

    aput-object v1, v0, v5

    const-string v1, "ztecc*"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "*zte_sd*"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "*zte_xl*"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "*zte_dw*"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "*zte_cc*"

    aput-object v2, v0, v1

    sput-object v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->RETRIEVE_SMS:[Ljava/lang/String;

    .line 5466
    sput-object v3, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->sHasSystemPermission:Ljava/lang/Boolean;

    return-void

    .line 1786
    :array_0
    .array-data 0x1
        0x13t
        0x2t
        0x37t
        0x4t
        0x5t
        0x1t
        0x6at
        0x8t
        0x1at
        0x7ft
        0x35t
        0x2bt
        0xat
        0x2t
        0x77t
        0x18t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->init()V

    .line 294
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkNeedStartAppLockWatchDog()V

    .line 295
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkNeedStartAntiEavesdropWatchDog()V

    .line 296
    new-instance v2, Lcom/zte/filexplorer/FileHelper;

    invoke-direct {v2}, Lcom/zte/filexplorer/FileHelper;-><init>()V

    sput-object v2, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->fileHelper:Lcom/zte/filexplorer/FileHelper;

    .line 306
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->clean_tmp_file()V

    .line 307
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->clean_dir_tmp_file()V

    .line 308
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.zte.heartyservice.porting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getVirusDBEngineName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".PortingInterfaceUtils"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, className:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-virtual {v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/porting/All/VirusDBEngine;

    sput-object v2, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->virusDBEngine:Lcom/zte/heartyservice/porting/All/VirusDBEngine;

    .line 311
    const-string v2, "StandardInterfaceUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "virusDBEngine class init :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    sget-object v2, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->virusDBEngine:Lcom/zte/heartyservice/porting/All/VirusDBEngine;

    sget-object v3, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-virtual {v2, v3}, Lcom/zte/heartyservice/porting/All/VirusDBEngine;->engineAppInit(Landroid/app/Application;)V

    .line 313
    sget-object v2, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->virusDBEngine:Lcom/zte/heartyservice/porting/All/VirusDBEngine;

    invoke-virtual {v2}, Lcom/zte/heartyservice/porting/All/VirusDBEngine;->SIUInit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :goto_0
    return-void

    .line 314
    :catch_0
    move-exception v1

    .line 315
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "StandardInterfaceUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load virusDBEngine class:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$002(Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"

    .prologue
    .line 170
    sput-object p0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->staThread:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic access$102(Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"

    .prologue
    .line 170
    sput-object p0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->zbThread:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic access$200()Lcom/zte/heartyservice/common/ui/FloatFrame;
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->antiEavesdropTip:Lcom/zte/heartyservice/common/ui/FloatFrame;

    return-object v0
.end method

.method static synthetic access$202(Lcom/zte/heartyservice/common/ui/FloatFrame;)Lcom/zte/heartyservice/common/ui/FloatFrame;
    .locals 0
    .parameter "x0"

    .prologue
    .line 170
    sput-object p0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->antiEavesdropTip:Lcom/zte/heartyservice/common/ui/FloatFrame;

    return-object p0
.end method

.method static synthetic access$300()Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->windowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public static addLaunchShortCut()V
    .locals 3

    .prologue
    .line 3916
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3917
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings.SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3918
    const-string v1, "com.zte.heartyservice"

    const-string v2, "com.zte.heartyservice.main.HeartServiceActivityShortcut"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3920
    const/high16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3921
    sget-object v1, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    const v2, 0x7f0a000f

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020017

    invoke-static {v0, v1, v2}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->addShortCut(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 3924
    return-void
.end method

.method public static addLockedPackage(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 5158
    sget-object v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->appLockWatchDog:Lcom/zte/heartyservice/privacy/AppLockWatchDog;

    invoke-virtual {v0, p0}, Lcom/zte/heartyservice/privacy/AppLockWatchDog;->addLockedPackage(Ljava/lang/String;)V

    .line 5159
    const/4 v0, 0x1

    return v0
.end method

.method public static addShortCut(Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 4
    .parameter "shortcutIntent"
    .parameter "title"
    .parameter "iconId"

    .prologue
    .line 3896
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3897
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3898
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3899
    sget-object v2, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-static {v2, p2}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v0

    .line 3900
    .local v0, iconRes:Landroid/content/Intent$ShortcutIconResource;
    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3903
    const-string v2, "duplicate"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3904
    sget-object v2, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-virtual {v2, v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 3905
    return-void
.end method

.method public static analysisReceiver(Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;)V
    .locals 23
    .parameter "localBackgroundAutoRunAppInfo"

    .prologue
    .line 5613
    sget-object v18, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->wait:Ljava/lang/Object;

    monitor-enter v18

    .line 5614
    :try_start_0
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getReceiverSQLiteOpenHelper()Lcom/zte/heartyservice/speedup/ReceiverSQLiteOpenHelper;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->version:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/speedup/ReceiverSQLiteOpenHelper;->getReceivers(Ljava/lang/String;I)Ljava/util/HashMap;

    move-result-object v13

    .line 5618
    .local v13, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/16 v16, 0x1

    .line 5619
    .local v16, stoppedState:I
    if-eqz v13, :cond_4

    .line 5620
    invoke-virtual {v13}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 5621
    .local v14, receiverName:Ljava/lang/String;
    new-instance v7, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v7, v0, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5624
    .local v7, cn:Landroid/content/ComponentName;
    sget-object v17, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->packageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v15

    .line 5625
    .local v15, status:I
    packed-switch v15, :pswitch_data_0

    goto :goto_0

    .line 5634
    :pswitch_0
    and-int/lit8 v16, v16, 0x0

    .line 5635
    goto :goto_0

    .line 5627
    :pswitch_1
    and-int/lit8 v16, v16, 0x1

    .line 5628
    goto :goto_0

    .line 5630
    :pswitch_2
    and-int/lit8 v16, v16, 0x0

    .line 5631
    goto :goto_0

    .line 5637
    :pswitch_3
    and-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 5641
    .end local v7           #cn:Landroid/content/ComponentName;
    .end local v14           #receiverName:Ljava/lang/String;
    .end local v15           #status:I
    :cond_0
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->receivers:Ljava/util/HashMap;

    .line 5642
    if-nez v16, :cond_2

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getReceiverSQLiteOpenHelper()Lcom/zte/heartyservice/speedup/ReceiverSQLiteOpenHelper;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->version:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/speedup/ReceiverSQLiteOpenHelper;->getStoppedState(Ljava/lang/String;I)I

    move-result v17

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getFromExSetByPkgName(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v17

    if-nez v17, :cond_2

    .line 5645
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->stoppedState:I

    .line 5646
    invoke-virtual {v13}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 5647
    .restart local v14       #receiverName:Ljava/lang/String;
    new-instance v7, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v7, v0, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5650
    .restart local v7       #cn:Landroid/content/ComponentName;
    sget-object v17, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->packageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v15

    .line 5651
    .restart local v15       #status:I
    const/16 v17, 0x2

    move/from16 v0, v17

    if-eq v15, v0, :cond_1

    .line 5653
    :try_start_1
    sget-object v17, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->packageManager:Landroid/content/pm/PackageManager;

    const/16 v19, 0x2

    const/16 v20, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v7, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 5654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->setPackageStoppedState(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 5658
    :goto_2
    :try_start_2
    const-string v17, "20140122"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "2 "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ":setComponentEnabledSetting COMPONENT_ENABLED_STATE_DISABLED"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5782
    .end local v7           #cn:Landroid/content/ComponentName;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v13           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v14           #receiverName:Ljava/lang/String;
    .end local v15           #status:I
    .end local v16           #stoppedState:I
    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v17

    .line 5662
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v13       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v16       #stoppedState:I
    :cond_2
    :try_start_3
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->stoppedState:I

    .line 5663
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getReceiverSQLiteOpenHelper()Lcom/zte/heartyservice/speedup/ReceiverSQLiteOpenHelper;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->version:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->stoppedState:I

    move/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/zte/heartyservice/speedup/ReceiverSQLiteOpenHelper;->saveStoppedState(Ljava/lang/String;II)V

    .line 5782
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_3
    :goto_3
    monitor-exit v18

    .line 5783
    return-void

    .line 5670
    :cond_4
    const/4 v12, 0x0

    .line 5671
    .local v12, localXmlResourceParser:Landroid/content/res/XmlResourceParser;
    new-instance v13, Ljava/util/HashMap;

    .end local v13           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5672
    .restart local v13       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v8, 0x1

    .line 5674
    .local v8, defaultEnable:Z
    :try_start_4
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v17

    const-string v19, "AndroidManifest.xml"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openXmlResourceParser(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v12

    .line 5680
    const/4 v10, 0x0

    .line 5681
    .local v10, flag:Z
    const/4 v14, 0x0

    .line 5682
    .restart local v14       #receiverName:Ljava/lang/String;
    const/4 v6, 0x0

    .line 5683
    .local v6, actions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_4
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v17

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_d

    .line 5684
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v17

    const/16 v19, 0x2

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v19, "receiver"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 5687
    const-string v17, "http://schemas.android.com/apk/res/android"

    const-string v19, "name"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 5691
    const-string v17, "."

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 5692
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 5695
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v14}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->isComponentExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_7

    .line 5699
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, "."

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 5701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v14}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->isComponentExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_7

    .line 5705
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_4

    .line 5767
    .end local v6           #actions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v10           #flag:Z
    .end local v14           #receiverName:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 5768
    .local v9, e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 5770
    :try_start_6
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->receivers:Ljava/util/HashMap;

    .line 5771
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->stoppedState:I

    .line 5772
    if-eqz v12, :cond_6

    .line 5773
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    .line 5776
    .end local v9           #e:Ljava/lang/Exception;
    :cond_6
    :goto_5
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getReceiverSQLiteOpenHelper()Lcom/zte/heartyservice/speedup/ReceiverSQLiteOpenHelper;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->version:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->receivers:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->stoppedState:I

    move/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zte/heartyservice/speedup/ReceiverSQLiteOpenHelper;->saveReceivers(Ljava/lang/String;ILjava/util/HashMap;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_3

    .line 5709
    .restart local v6       #actions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10       #flag:Z
    .restart local v14       #receiverName:Ljava/lang/String;
    :cond_7
    :try_start_7
    const-string v17, "http://schemas.android.com/apk/res/android"

    const-string v19, "enabled"

    const/16 v20, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v12, v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    .line 5713
    const/4 v10, 0x1

    .line 5714
    new-instance v6, Ljava/util/ArrayList;

    .end local v6           #actions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 5716
    .restart local v6       #actions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v17

    const/16 v19, 0x2

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v19, "action"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_9

    .line 5720
    const-string v17, "http://schemas.android.com/apk/res/android"

    const-string v19, "name"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5725
    .local v5, action:Ljava/lang/String;
    const-string v17, "android."

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 5726
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5729
    .end local v5           #action:Ljava/lang/String;
    :cond_9
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v17

    const/16 v19, 0x3

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v19, "receiver"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_a

    .line 5733
    const/4 v10, 0x0

    .line 5734
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_a

    .line 5735
    new-instance v7, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v7, v0, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5738
    .restart local v7       #cn:Landroid/content/ComponentName;
    sget-object v17, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->packageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v15

    .line 5740
    .restart local v15       #status:I
    packed-switch v15, :pswitch_data_1

    .line 5761
    :goto_6
    invoke-virtual {v13, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5764
    .end local v7           #cn:Landroid/content/ComponentName;
    .end local v15           #status:I
    :cond_a
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_4

    .line 5770
    .end local v6           #actions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v10           #flag:Z
    .end local v14           #receiverName:Ljava/lang/String;
    :catchall_1
    move-exception v17

    :try_start_8
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->receivers:Ljava/util/HashMap;

    .line 5771
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->stoppedState:I

    .line 5772
    if-eqz v12, :cond_b

    .line 5773
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_b
    throw v17
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 5742
    .restart local v6       #actions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7       #cn:Landroid/content/ComponentName;
    .restart local v10       #flag:Z
    .restart local v14       #receiverName:Ljava/lang/String;
    .restart local v15       #status:I
    :pswitch_4
    and-int/lit8 v16, v16, 0x1

    .line 5743
    goto :goto_6

    .line 5745
    :pswitch_5
    and-int/lit8 v16, v16, 0x0

    .line 5746
    goto :goto_6

    .line 5748
    :pswitch_6
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_c

    .line 5749
    and-int/lit8 v16, v16, 0x0

    goto :goto_6

    .line 5751
    :cond_c
    and-int/lit8 v16, v16, 0x1

    .line 5753
    :try_start_9
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_4

    .line 5758
    :pswitch_7
    and-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 5770
    .end local v7           #cn:Landroid/content/ComponentName;
    .end local v15           #status:I
    :cond_d
    :try_start_a
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->receivers:Ljava/util/HashMap;

    .line 5771
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->stoppedState:I

    .line 5772
    if-eqz v12, :cond_6

    .line 5773
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_5

    .line 5655
    .end local v6           #actions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v8           #defaultEnable:Z
    .end local v10           #flag:Z
    .end local v12           #localXmlResourceParser:Landroid/content/res/XmlResourceParser;
    .restart local v7       #cn:Landroid/content/ComponentName;
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v15       #status:I
    :catch_1
    move-exception v17

    goto/16 :goto_2

    .line 5625
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 5740
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method

.method private static auth()Z
    .locals 9

    .prologue
    .line 5320
    const/4 v5, 0x0

    .line 5322
    .local v5, ret:Z
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 5323
    .local v6, uid:I
    sget-object v7, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v6}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 5324
    .local v4, pkgs:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 5325
    .local v3, pkg:Ljava/lang/String;
    const-string v7, "com.zte.heartyservice"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "com.zte.backup.mmi"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->isBackup()Z

    move-result v8

    if-eq v7, v8, :cond_2

    :cond_0
    const-string v7, "com.android.ztemms"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "com.android.mms"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_1
    invoke-static {v3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->isSystemPkg(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_4

    .line 5327
    :cond_2
    const/4 v5, 0x1

    .line 5334
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #pkg:Ljava/lang/String;
    .end local v4           #pkgs:[Ljava/lang/String;
    .end local v6           #uid:I
    :cond_3
    :goto_1
    return v5

    .line 5324
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #pkg:Ljava/lang/String;
    .restart local v4       #pkgs:[Ljava/lang/String;
    .restart local v6       #uid:I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5331
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #pkg:Ljava/lang/String;
    .end local v4           #pkgs:[Ljava/lang/String;
    .end local v6           #uid:I
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public static calcAppMask(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "packageName"

    .prologue
    const/4 v12, 0x1

    const/4 v11, -0x1

    .line 4555
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4557
    .local v1, appMask:Ljava/lang/StringBuilder;
    invoke-static {p0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->isPackageLocked(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 4558
    const-string v10, "1"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4563
    :goto_0
    const/4 v7, 0x0

    .line 4565
    .local v7, permission_status:I
    :try_start_0
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v6

    .line 4566
    .local v6, permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;
    const/16 v10, 0x9

    invoke-virtual {v6, v10, p0}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getAppCategoryPermissionType(ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v7

    .line 4570
    .end local v6           #permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;
    :goto_1
    packed-switch v7, :pswitch_data_0

    .line 4578
    sget v10, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->securityExtentionVersion:I

    if-eq v10, v11, :cond_0

    sget-object v10, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->sPrivacyManager:Lcom/zte/privacy/ZTEPrivacyManager;

    if-nez v10, :cond_3

    .line 4579
    :cond_0
    const-string v10, "3"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4595
    :goto_2
    invoke-static {p0}, Lcom/zte/heartyservice/net/WifiDataBaseAdapter;->isWlanOpen(Ljava/lang/String;)Z

    move-result v10

    if-ne v12, v10, :cond_4

    .line 4596
    const-string v10, "1"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4602
    :goto_3
    const/4 v2, 0x1

    .line 4604
    .local v2, app_status:I
    :try_start_1
    sget-object v10, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, p0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 4608
    :goto_4
    packed-switch v2, :pswitch_data_1

    .line 4624
    :goto_5
    invoke-static {p0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isInWhiteApps(Ljava/lang/String;)Z

    move-result v10

    if-ne v10, v12, :cond_5

    .line 4625
    const-string v10, "1"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4650
    :goto_6
    const/16 v10, 0x11

    new-array v8, v10, [I

    fill-array-data v8, :array_0

    .line 4670
    .local v8, permissions:[I
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v6

    .line 4671
    .restart local v6       #permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;
    invoke-virtual {v6}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getAllPermissionCategory()Ljava/util/ArrayList;

    move-result-object v0

    .line 4673
    .local v0, allPermissionCategory:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object v3, v8

    .local v3, arr$:[I
    array-length v5, v3

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_7
    if-ge v4, v5, :cond_8

    aget v9, v3, v4

    .line 4674
    .local v9, permossion:I
    const/4 v7, 0x0

    .line 4676
    :try_start_2
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 4677
    invoke-virtual {v6, v9, p0}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getAppCategoryPermissionType(ILjava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v7

    .line 4684
    :goto_8
    sparse-switch v7, :sswitch_data_0

    .line 4698
    sget v10, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->securityExtentionVersion:I

    if-eq v10, v11, :cond_1

    sget-object v10, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->sPrivacyManager:Lcom/zte/privacy/ZTEPrivacyManager;

    if-nez v10, :cond_7

    .line 4699
    :cond_1
    const-string v10, "3"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4673
    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 4560
    .end local v0           #allPermissionCategory:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2           #app_status:I
    .end local v3           #arr$:[I
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;
    .end local v7           #permission_status:I
    .end local v8           #permissions:[I
    .end local v9           #permossion:I
    :cond_2
    const-string v10, "0"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4572
    .restart local v7       #permission_status:I
    :pswitch_0
    const-string v10, "1"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 4575
    :pswitch_1
    const-string v10, "0"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 4581
    :cond_3
    const-string v10, "4"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 4598
    :cond_4
    const-string v10, "0"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 4610
    .restart local v2       #app_status:I
    :pswitch_2
    const-string v10, "1"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 4613
    :pswitch_3
    const-string v10, "0"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 4616
    :pswitch_4
    const-string v10, "2"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 4619
    :pswitch_5
    const-string v10, "3"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 4627
    :cond_5
    const-string v10, "0"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 4679
    .restart local v0       #allPermissionCategory:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v3       #arr$:[I
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;
    .restart local v8       #permissions:[I
    .restart local v9       #permossion:I
    :cond_6
    const/16 v7, 0x9

    goto :goto_8

    .line 4686
    :sswitch_0
    const-string v10, "1"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 4689
    :sswitch_1
    const-string v10, "0"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 4692
    :sswitch_2
    const-string v10, "2"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 4695
    :sswitch_3
    const-string v10, "9"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 4701
    :cond_7
    const-string v10, "4"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 4707
    .end local v9           #permossion:I
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 4681
    .restart local v9       #permossion:I
    :catch_0
    move-exception v10

    goto :goto_8

    .line 4605
    .end local v0           #allPermissionCategory:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3           #arr$:[I
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;
    .end local v8           #permissions:[I
    .end local v9           #permossion:I
    :catch_1
    move-exception v10

    goto/16 :goto_4

    .line 4567
    .end local v2           #app_status:I
    :catch_2
    move-exception v10

    goto/16 :goto_1

    .line 4570
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 4608
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 4650
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
    .end array-data

    .line 4684
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x9 -> :sswitch_3
    .end sparse-switch
.end method

.method public static calcSign(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "str"

    .prologue
    .line 3272
    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    .line 3273
    .local v2, crc32:Ljava/util/zip/CRC32;
    new-instance v1, Ljava/util/zip/Adler32;

    invoke-direct {v1}, Ljava/util/zip/Adler32;-><init>()V

    .line 3274
    .local v1, adler32:Ljava/util/zip/Adler32;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/zip/CRC32;->update([B)V

    .line 3275
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/zip/Adler32;->update([B)V

    .line 3276
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3277
    .local v0, AC:Ljava/lang/String;
    return-object v0
.end method

.method public static callNum(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "num"

    .prologue
    .line 3951
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3952
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3955
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->startActivitySafe(Landroid/content/Context;Landroid/content/Intent;)V

    .line 3957
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static callNumber(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "number"

    .prologue
    .line 3593
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 3594
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3596
    .local v0, intent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->setOutIntent(Landroid/content/Intent;)V

    .line 3597
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3599
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static cancelMissedCallsNotification()V
    .locals 2

    .prologue
    .line 3603
    :try_start_0
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3605
    .local v0, iTelephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_0

    .line 3606
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->cancelMissedCallsNotification()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3611
    :cond_0
    :goto_0
    return-void

    .line 3608
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static changePassword(Ljava/lang/String;I)Z
    .locals 5
    .parameter "newPassword"
    .parameter "newPasswordType"

    .prologue
    const/4 v3, 0x1

    .line 3281
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    .line 3282
    .local v0, privateKey:Ljava/security/PrivateKey;
    invoke-static {v0, p0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->writeKey2Str(Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3283
    .local v1, privateKeyStr:Ljava/lang/String;
    invoke-static {p0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->calcSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3284
    .local v2, sign:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v4

    invoke-virtual {v4, v1, v2, p1}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->savePrivateKey(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-ne v3, v4, :cond_1

    .line 3286
    invoke-static {v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setPrivateKey(Ljava/security/PrivateKey;)V

    .line 3287
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->setRSAKeyPairExist(Z)V

    .line 3288
    invoke-static {p0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setPassword(Ljava/lang/String;)V

    .line 3289
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPasswordType()I

    move-result v4

    if-eq v4, p1, :cond_0

    .line 3290
    invoke-static {p1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setPasswordType(I)V

    .line 3291
    invoke-static {}, Lcom/zte/heartyservice/privacy/PrivacySetting;->resetDisguisePassword()V

    .line 3296
    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static checkComponent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "pkgName"
    .parameter "component"

    .prologue
    .line 5601
    const/4 v1, 0x0

    .line 5603
    .local v1, info:Landroid/content/pm/PackageInfo;
    :try_start_0
    sget-object v2, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->packageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 5607
    :goto_0
    if-eqz v1, :cond_0

    .line 5608
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getReceiverSQLiteOpenHelper()Lcom/zte/heartyservice/speedup/ReceiverSQLiteOpenHelper;

    move-result-object v2

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, p0, v3, p1}, Lcom/zte/heartyservice/speedup/ReceiverSQLiteOpenHelper;->checkComponent(Ljava/lang/String;ILjava/lang/String;)V

    .line 5610
    :cond_0
    return-void

    .line 5604
    :catch_0
    move-exception v0

    .line 5605
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static checkEditTextIsEmpty(Landroid/widget/EditText;Landroid/content/Context;I)Z
    .locals 2
    .parameter "editText"
    .parameter "context"
    .parameter "resId"

    .prologue
    const/4 v0, 0x0

    .line 3745
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 3746
    if-eqz p1, :cond_1

    .line 3747
    if-eqz p2, :cond_0

    .line 3748
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3750
    :cond_0
    invoke-static {p1, p0}, Lcom/zte/heartyservice/common/utils/AnimationUtils;->startShakeAniamtion(Landroid/content/Context;Landroid/view/View;)V

    .line 3751
    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    .line 3753
    :cond_1
    const/4 v0, 0x1

    .line 3755
    :cond_2
    return v0
.end method

.method public static checkEditTextLength(Landroid/widget/EditText;ILandroid/content/Context;I)Z
    .locals 4
    .parameter "editText"
    .parameter "length"
    .parameter "context"
    .parameter "resId"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3759
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result v2

    if-ge v2, p1, :cond_2

    .line 3760
    if-eqz p2, :cond_1

    .line 3761
    if-eqz p3, :cond_0

    .line 3762
    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p2, p3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 3764
    :cond_0
    invoke-static {p2, p0}, Lcom/zte/heartyservice/common/utils/AnimationUtils;->startShakeAniamtion(Landroid/content/Context;Landroid/view/View;)V

    .line 3765
    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    .line 3769
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static checkFeatureSurpport(I)Z
    .locals 4
    .parameter "feature"

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 5207
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 5237
    :cond_0
    :goto_0
    return v0

    .line 5209
    :pswitch_1
    sget v2, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->securityExtentionVersion:I

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 5211
    :pswitch_2
    sget v2, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->securityExtentionVersion:I

    if-gt v2, v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 5213
    :pswitch_3
    sget v2, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->securityExtentionVersion:I

    if-gt v2, v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 5215
    :pswitch_4
    sget v2, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->securityExtentionVersion:I

    if-gt v2, v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 5217
    :pswitch_5
    sget v2, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->securityExtentionVersion:I

    if-gt v2, v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 5220
    :pswitch_6
    sget v2, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->securityExtentionVersion:I

    if-gt v2, v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 5222
    :pswitch_7
    sget v2, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->securityExtentionVersion:I

    if-gt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 5224
    :pswitch_8
    sget v2, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->securityExtentionVersion:I

    if-gt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 5226
    :pswitch_9
    sget v2, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->securityExtentionVersion:I

    if-gt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 5228
    :pswitch_a
    sget v2, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->securityExtentionVersion:I

    if-gt v2, v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 5230
    :pswitch_b
    sget v2, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->securityExtentionVersion:I

    if-gt v2, v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 5232
    :pswitch_c
    sget v2, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->securityExtentionVersion:I

    if-gt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 5235
    :pswitch_d
    sget v2, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->securityExtentionVersion:I

    if-gt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 5207
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_d
    .end packed-switch
.end method

.method public static checkIsDataSpaceNotEnoughAndShowToast()Z
    .locals 4

    .prologue
    .line 3717
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SysInfo;->getAvailableInternalMemorySize()J

    move-result-wide v0

    .line 3718
    .local v0, availableInternalMemorySize:J
    const-wide/32 v2, 0x500000

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 3719
    const-wide/32 v2, 0xa00000

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 3720
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->showDataSpaceNearlyNotEnough()V

    .line 3722
    :cond_0
    const/4 v2, 0x1

    .line 3725
    :goto_0
    return v2

    .line 3724
    :cond_1
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->showDataSpaceNotEnough()V

    .line 3725
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static checkIsMSIM()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3655
    const/16 v3, 0x8

    new-array v0, v3, [Ljava/lang/Class;

    .line 3656
    .local v0, paramTypes:[Ljava/lang/Class;
    const-class v3, Lcom/android/internal/telephony/CallerInfo;

    aput-object v3, v0, v1

    .line 3657
    const-class v3, Landroid/content/Context;

    aput-object v3, v0, v2

    .line 3658
    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v0, v3

    .line 3659
    const/4 v3, 0x3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v0, v3

    .line 3660
    const/4 v3, 0x4

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v0, v3

    .line 3661
    const/4 v3, 0x5

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v0, v3

    .line 3662
    const/4 v3, 0x6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v0, v3

    .line 3663
    const/4 v3, 0x7

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v0, v3

    .line 3664
    const-class v3, Landroid/provider/CallLog$Calls;

    const-string v4, "addCall"

    invoke-static {v3, v4, v0}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->is_class_method_exit(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3685
    :cond_0
    :goto_0
    return v1

    .line 3680
    :cond_1
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkIsMTKMsim()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkIsQualcommMsim()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    .line 3685
    goto :goto_0
.end method

.method public static checkIsMTKMsim()Z
    .locals 3

    .prologue
    .line 3689
    const-class v0, Landroid/telephony/SmsMessage;

    const-string v1, "getMessageSimId"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->is_class_method_exit(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public static checkIsQualcommMsim()Z
    .locals 3

    .prologue
    .line 3693
    const-class v0, Landroid/telephony/SmsMessage;

    const-string v1, "getSubId"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->is_class_method_exit(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public static checkIsSDSpaceNotEnoughAndShowToast(J)Z
    .locals 4
    .parameter "needSize"

    .prologue
    .line 3733
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getAvailableSDSizeForPD()J

    move-result-wide v0

    .line 3736
    .local v0, availableExternalMemorySize:J
    const-wide/32 v2, 0x500000

    add-long/2addr v2, p0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 3737
    const/4 v2, 0x1

    .line 3740
    :goto_0
    return v2

    .line 3739
    :cond_0
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->showSDSpaceNotEnough()V

    .line 3740
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static checkNeedStartAntiEavesdropWatchDog()V
    .locals 2

    .prologue
    .line 5091
    sget v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->securityExtentionVersion:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 5092
    new-instance v0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;

    invoke-direct {v0}, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;-><init>()V

    sput-object v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->antiEavesdropWatchDog:Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;

    .line 5094
    :cond_0
    return-void
.end method

.method private static checkNeedStartAppLockWatchDog()V
    .locals 1

    .prologue
    .line 5087
    new-instance v0, Lcom/zte/heartyservice/privacy/AppLockWatchDog;

    invoke-direct {v0}, Lcom/zte/heartyservice/privacy/AppLockWatchDog;-><init>()V

    sput-object v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->appLockWatchDog:Lcom/zte/heartyservice/privacy/AppLockWatchDog;

    .line 5088
    return-void
.end method

.method public static checkPrivacyPassword(Ljava/lang/String;)Z
    .locals 2
    .parameter "password"

    .prologue
    .line 3987
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3988
    const/4 v1, 0x0

    .line 3991
    :goto_0
    return v1

    .line 3990
    :cond_0
    invoke-static {p0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->calcSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3991
    .local v0, sign:Ljava/lang/String;
    invoke-static {}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getPasswordSign()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private static checkSecurityExtentionEnabled()V
    .locals 4

    .prologue
    .line 5072
    sget-object v2, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->sPrivacyManager:Lcom/zte/privacy/ZTEPrivacyManager;

    if-nez v2, :cond_0

    .line 5073
    const-string v2, "privacy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 5074
    .local v0, privacy:Landroid/os/IBinder;
    if-nez v0, :cond_1

    .line 5081
    :cond_0
    :goto_0
    return-void

    .line 5077
    :cond_1
    invoke-static {v0}, Lcom/zte/privacy/IZTEPrivacyManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/privacy/IZTEPrivacyManager;

    move-result-object v1

    .line 5078
    .local v1, privacyService:Lcom/zte/privacy/IZTEPrivacyManager;
    new-instance v2, Lcom/zte/privacy/ZTEPrivacyManager;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/zte/privacy/ZTEPrivacyManager;-><init>(Landroid/content/Context;Lcom/zte/privacy/IZTEPrivacyManager;)V

    sput-object v2, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->sPrivacyManager:Lcom/zte/privacy/ZTEPrivacyManager;

    .line 5079
    sget-object v2, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->sPrivacyManager:Lcom/zte/privacy/ZTEPrivacyManager;

    invoke-virtual {v2}, Lcom/zte/privacy/ZTEPrivacyManager;->getSecurityExtentionVersion()I

    move-result v2

    sput v2, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->securityExtentionVersion:I

    goto :goto_0
.end method

.method public static checkVirusList(Z)I
    .locals 15
    .parameter "cleanList"

    .prologue
    .line 3817
    const/4 v8, 0x0

    .line 3818
    .local v8, size:I
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getDetectedNotSecurityAppList()Ljava/util/List;

    move-result-object v11

    .line 3819
    .local v11, virusList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/VirusScanResult;>;"
    if-eqz v11, :cond_0

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_1

    :cond_0
    move v9, v8

    .line 3864
    .end local v8           #size:I
    .local v9, size:I
    :goto_0
    return v9

    .line 3823
    .end local v9           #size:I
    .restart local v8       #size:I
    :cond_1
    const/4 v10, 0x0

    .line 3824
    .local v10, virusExist:Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3825
    .local v5, noExistlist:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/VirusScanResult;>;"
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v12

    invoke-virtual {v12}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 3826
    .local v6, pm:Landroid/content/pm/PackageManager;
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    .line 3827
    .local v4, installedApp:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zte/heartyservice/common/datatype/VirusScanResult;

    .line 3828
    .local v7, result:Lcom/zte/heartyservice/common/datatype/VirusScanResult;
    const/4 v10, 0x0

    .line 3829
    iget v12, v7, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->apkType:I

    packed-switch v12, :pswitch_data_0

    .line 3840
    iget-object v12, v7, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->pkgName:Ljava/lang/String;

    if-eqz v12, :cond_4

    .line 3841
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 3842
    .local v3, info:Landroid/content/pm/PackageInfo;
    iget-object v12, v7, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->pkgName:Ljava/lang/String;

    iget-object v13, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 3843
    add-int/lit8 v8, v8, 0x1

    .line 3844
    const/4 v10, 0x1

    .line 3852
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #info:Landroid/content/pm/PackageInfo;
    :cond_4
    :goto_2
    if-eqz p0, :cond_2

    if-nez v10, :cond_2

    .line 3853
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3831
    :pswitch_0
    iget-object v12, v7, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->path:Ljava/lang/String;

    if-eqz v12, :cond_4

    .line 3832
    new-instance v0, Ljava/io/File;

    iget-object v12, v7, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->path:Ljava/lang/String;

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3833
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-nez v12, :cond_4

    .line 3834
    add-int/lit8 v8, v8, 0x1

    .line 3835
    const/4 v10, 0x1

    goto :goto_2

    .line 3858
    .end local v0           #file:Ljava/io/File;
    .end local v7           #result:Lcom/zte/heartyservice/common/datatype/VirusScanResult;
    :cond_5
    if-eqz p0, :cond_6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_6

    .line 3859
    invoke-static {v5}, Lcom/zte/heartyservice/main/HeartyServiceApp;->deleteNotSecurityAppFromTable(Ljava/util/List;)V

    .line 3862
    :cond_6
    const-string v12, "StandardInterfaceUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "virusList.size()"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": size "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    .line 3864
    .end local v8           #size:I
    .restart local v9       #size:I
    goto/16 :goto_0

    .line 3829
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static chooseInterceptAdScheme()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 334
    new-instance v5, Ljava/io/File;

    const-string v7, "/data/data/com.zte.heartyservice/files/used.dat"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 335
    .local v5, used:Ljava/io/File;
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isInterceptadOpen()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 338
    sget-object v7, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    const v8, 0x7f060012

    const-string v9, "used.dat"

    invoke-static {v7, v8, v9}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->copyFileFromRaw(Landroid/content/Context;ILjava/lang/String;)V

    .line 346
    :cond_0
    :goto_0
    const/16 v7, 0xe

    invoke-static {v7}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkFeatureSurpport(I)Z

    move-result v7

    if-nez v7, :cond_4

    .line 349
    :try_start_0
    sget-object v7, Lcom/zte/heartyservice/main/HeartyServiceApp;->shell:Lorg/sufficientlysecure/rootcommands/Shell;

    if-nez v7, :cond_1

    .line 350
    invoke-static {}, Lorg/sufficientlysecure/rootcommands/Shell;->startRootShell()Lorg/sufficientlysecure/rootcommands/Shell;

    move-result-object v7

    sput-object v7, Lcom/zte/heartyservice/main/HeartyServiceApp;->shell:Lorg/sufficientlysecure/rootcommands/Shell;

    .line 353
    :cond_1
    new-instance v3, Lorg/sufficientlysecure/rootcommands/Toolbox;

    sget-object v7, Lcom/zte/heartyservice/main/HeartyServiceApp;->shell:Lorg/sufficientlysecure/rootcommands/Shell;

    invoke-direct {v3, v7}, Lorg/sufficientlysecure/rootcommands/Toolbox;-><init>(Lorg/sufficientlysecure/rootcommands/Shell;)V

    .line 355
    .local v3, tb:Lorg/sufficientlysecure/rootcommands/Toolbox;
    invoke-virtual {v3}, Lorg/sufficientlysecure/rootcommands/Toolbox;->isRootAccessGiven()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 356
    new-instance v6, Ljava/io/File;

    const-string v7, "/data/data/com.zte.heartyservice/files/validate.dat"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 359
    .local v6, validate:Ljava/io/File;
    sget-object v7, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    const v8, 0x7f060013

    const-string v9, "validate.dat"

    invoke-static {v7, v8, v9}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->copyFileFromRaw(Landroid/content/Context;ILjava/lang/String;)V

    .line 362
    new-instance v4, Ljava/io/File;

    const-string v7, "/data/data/com.zte.heartyservice/files/trace.dat"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 365
    .local v4, trace:Ljava/io/File;
    sget-object v7, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    const v8, 0x7f060011

    const-string v9, "trace.dat"

    invoke-static {v7, v8, v9}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->copyFileFromRaw(Landroid/content/Context;ILjava/lang/String;)V

    .line 368
    new-instance v0, Lorg/sufficientlysecure/rootcommands/command/SimpleCommand;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "chmod 700 /data/data/com.zte.heartyservice/files/validate.dat"

    aput-object v9, v7, v8

    invoke-direct {v0, v7}, Lorg/sufficientlysecure/rootcommands/command/SimpleCommand;-><init>([Ljava/lang/String;)V

    .line 369
    .local v0, command0:Lorg/sufficientlysecure/rootcommands/command/SimpleCommand;
    new-instance v1, Lorg/sufficientlysecure/rootcommands/command/SimpleCommand;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "chmod 644 /data/data/com.zte.heartyservice/files/used.dat"

    aput-object v9, v7, v8

    invoke-direct {v1, v7}, Lorg/sufficientlysecure/rootcommands/command/SimpleCommand;-><init>([Ljava/lang/String;)V

    .line 370
    .local v1, command1:Lorg/sufficientlysecure/rootcommands/command/SimpleCommand;
    new-instance v2, Lorg/sufficientlysecure/rootcommands/command/SimpleCommand;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "/data/data/com.zte.heartyservice/files/validate.dat /system/bin/netd /data/data/com.zte.heartyservice/files/trace.dat"

    aput-object v9, v7, v8

    invoke-direct {v2, v7}, Lorg/sufficientlysecure/rootcommands/command/SimpleCommand;-><init>([Ljava/lang/String;)V

    .line 372
    .local v2, command2:Lorg/sufficientlysecure/rootcommands/command/SimpleCommand;
    sget-object v7, Lcom/zte/heartyservice/main/HeartyServiceApp;->shell:Lorg/sufficientlysecure/rootcommands/Shell;

    invoke-virtual {v7, v0}, Lorg/sufficientlysecure/rootcommands/Shell;->add(Lorg/sufficientlysecure/rootcommands/command/Command;)Lorg/sufficientlysecure/rootcommands/command/Command;

    move-result-object v7

    invoke-virtual {v7}, Lorg/sufficientlysecure/rootcommands/command/Command;->waitForFinish()V

    .line 374
    sget-object v7, Lcom/zte/heartyservice/main/HeartyServiceApp;->shell:Lorg/sufficientlysecure/rootcommands/Shell;

    invoke-virtual {v7, v1}, Lorg/sufficientlysecure/rootcommands/Shell;->add(Lorg/sufficientlysecure/rootcommands/command/Command;)Lorg/sufficientlysecure/rootcommands/command/Command;

    move-result-object v7

    invoke-virtual {v7}, Lorg/sufficientlysecure/rootcommands/command/Command;->waitForFinish()V

    .line 376
    sget-object v7, Lcom/zte/heartyservice/main/HeartyServiceApp;->shell:Lorg/sufficientlysecure/rootcommands/Shell;

    invoke-virtual {v7, v2}, Lorg/sufficientlysecure/rootcommands/Shell;->add(Lorg/sufficientlysecure/rootcommands/command/Command;)Lorg/sufficientlysecure/rootcommands/command/Command;

    move-result-object v7

    invoke-virtual {v7}, Lorg/sufficientlysecure/rootcommands/command/Command;->waitForFinish()V

    .line 377
    const/4 v7, 0x1

    sput-boolean v7, Lcom/zte/heartyservice/main/HeartyServiceApp;->showNewInterceptAdView:Z

    .line 378
    const/4 v7, 0x1

    sput-boolean v7, Lcom/zte/heartyservice/main/HeartyServiceApp;->interceptAdRoot:Z

    .line 379
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SysInfo;->getNetdPid()J

    move-result-wide v7

    sput-wide v7, Lcom/zte/heartyservice/main/HeartyServiceApp;->netdPid:J

    .line 380
    const-string v7, "20140122"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "set netdPid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-wide v9, Lcom/zte/heartyservice/main/HeartyServiceApp;->netdPid:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    .end local v0           #command0:Lorg/sufficientlysecure/rootcommands/command/SimpleCommand;
    .end local v1           #command1:Lorg/sufficientlysecure/rootcommands/command/SimpleCommand;
    .end local v2           #command2:Lorg/sufficientlysecure/rootcommands/command/SimpleCommand;
    .end local v3           #tb:Lorg/sufficientlysecure/rootcommands/Toolbox;
    .end local v4           #trace:Ljava/io/File;
    .end local v6           #validate:Ljava/io/File;
    :cond_2
    :goto_1
    return-void

    .line 341
    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 342
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    .line 384
    :catchall_0
    move-exception v7

    throw v7

    .line 388
    :cond_4
    sput-boolean v10, Lcom/zte/heartyservice/main/HeartyServiceApp;->showNewInterceptAdView:Z

    goto :goto_1

    .line 382
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public static clean_dir_tmp_file()V
    .locals 2

    .prologue
    .line 1779
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getPDTempDirExchangeFolder()Ljava/lang/String;

    move-result-object v0

    .line 1780
    .local v0, temp_dir_exchange_folder:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1784
    :goto_0
    return-void

    .line 1783
    :cond_0
    sget-object v1, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->fileHelper:Lcom/zte/filexplorer/FileHelper;

    invoke-virtual {v1, v0}, Lcom/zte/filexplorer/FileHelper;->deleteSingleDir(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static clean_tmp_file()V
    .locals 2

    .prologue
    .line 1771
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getPDTempExchangeFolder()Ljava/lang/String;

    move-result-object v0

    .line 1772
    .local v0, temp_exchange_folder:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1776
    :goto_0
    return-void

    .line 1775
    :cond_0
    sget-object v1, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->fileHelper:Lcom/zte/filexplorer/FileHelper;

    invoke-virtual {v1, v0}, Lcom/zte/filexplorer/FileHelper;->deleteSingleDir(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private static close(Ljava/io/FileInputStream;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 1752
    if-eqz p0, :cond_0

    .line 1753
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1758
    :cond_0
    :goto_0
    return-void

    .line 1755
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static close(Ljava/io/FileOutputStream;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 1762
    if-eqz p0, :cond_0

    .line 1763
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1768
    :cond_0
    :goto_0
    return-void

    .line 1765
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static close(Ljava/nio/channels/FileChannel;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 1742
    if-eqz p0, :cond_0

    .line 1743
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1748
    :cond_0
    :goto_0
    return-void

    .line 1745
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeAntiEavesdropTip()V
    .locals 3

    .prologue
    .line 4898
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->isAntieavesdropEnable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4913
    .local v0, e:Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 4902
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_0
    sget-object v1, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->antiEavesdropTip:Lcom/zte/heartyservice/common/ui/FloatFrame;

    if-eqz v1, :cond_2

    .line 4903
    sget-object v1, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->windowManager:Landroid/view/WindowManager;

    sget-object v2, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->antiEavesdropTip:Lcom/zte/heartyservice/common/ui/FloatFrame;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 4904
    const/4 v1, 0x0

    sput-object v1, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->antiEavesdropTip:Lcom/zte/heartyservice/common/ui/FloatFrame;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4910
    .restart local v0       #e:Ljava/lang/Exception;
    :cond_2
    :goto_1
    sget-object v1, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->antiEavesdropWatchDog:Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;

    if-eqz v1, :cond_0

    .line 4911
    sget-object v1, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->antiEavesdropWatchDog:Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;

    invoke-virtual {v1}, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;->pauseWatch()V

    goto :goto_0

    .line 4906
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 4908
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static cloudVinusScan()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/VirusScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 652
    :try_start_0
    sget-object v1, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->virusDBEngine:Lcom/zte/heartyservice/porting/All/VirusDBEngine;

    invoke-virtual {v1}, Lcom/zte/heartyservice/porting/All/VirusDBEngine;->SIUcloudVinusScan()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 656
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    return-object v1

    .line 653
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 654
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "StandardInterfaceUtils"

    const-string v2, "cloudVinusScan error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 656
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static collapseStatusBar()V
    .locals 4

    .prologue
    .line 5453
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 5456
    .local v0, sbm:Landroid/app/StatusBarManager;
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-ge v1, v2, :cond_0

    .line 5457
    const-string v1, "android.app.StatusBarManager"

    const-string v2, "collapse"

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->Load(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 5464
    :goto_0
    return-void

    .line 5459
    :cond_0
    const-string v1, "android.app.StatusBarManager"

    const-string v2, "collapsePanels"

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->Load(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5461
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static convertNumberToAC(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "number"

    .prologue
    .line 3255
    if-nez p0, :cond_0

    .line 3256
    const/4 v0, 0x0

    .line 3268
    :goto_0
    return-object v0

    .line 3259
    :cond_0
    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 3260
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x7

    if-le v3, v4, :cond_1

    .line 3261
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x7

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 3263
    :cond_1
    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    .line 3264
    .local v2, crc32:Ljava/util/zip/CRC32;
    new-instance v1, Ljava/util/zip/Adler32;

    invoke-direct {v1}, Ljava/util/zip/Adler32;-><init>()V

    .line 3265
    .local v1, adler32:Ljava/util/zip/Adler32;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/zip/CRC32;->update([B)V

    .line 3266
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/zip/Adler32;->update([B)V

    .line 3267
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3268
    .local v0, AC:Ljava/lang/String;
    goto :goto_0
.end method

.method public static copyFileFromRaw(Landroid/content/Context;ILjava/lang/String;)V
    .locals 11
    .parameter "context"
    .parameter "id"
    .parameter "name"

    .prologue
    .line 4916
    const/4 v5, 0x0

    .line 4917
    .local v5, in:Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 4918
    .local v7, out:Ljava/io/FileOutputStream;
    invoke-virtual {p0, p2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 4919
    .local v4, file:Ljava/io/File;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_tmp"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 4921
    .local v3, fTmp:Ljava/io/File;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 4922
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4923
    .end local v7           #out:Ljava/io/FileOutputStream;
    .local v8, out:Ljava/io/FileOutputStream;
    const/16 v9, 0x400

    :try_start_1
    new-array v0, v9, [B

    .line 4925
    .local v0, buf:[B
    const/4 v1, 0x1

    .line 4927
    .local v1, copyright:Z
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v6

    .local v6, len:I
    if-lez v6, :cond_0

    .line 4929
    const/4 v9, 0x0

    :try_start_2
    invoke-virtual {v8, v0, v9, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 4930
    :catch_0
    move-exception v2

    .line 4931
    .local v2, e:Ljava/io/IOException;
    const/4 v1, 0x0

    .line 4936
    .end local v2           #e:Ljava/io/IOException;
    :cond_0
    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 4937
    const/4 v7, 0x0

    .line 4939
    .end local v8           #out:Ljava/io/FileOutputStream;
    .restart local v7       #out:Ljava/io/FileOutputStream;
    if-eqz v1, :cond_1

    .line 4940
    :try_start_4
    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 4947
    .end local v0           #buf:[B
    .end local v1           #copyright:Z
    .end local v6           #len:I
    :goto_1
    return-void

    .line 4942
    .restart local v0       #buf:[B
    .restart local v1       #copyright:Z
    .restart local v6       #len:I
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 4944
    .end local v0           #buf:[B
    .end local v1           #copyright:Z
    .end local v6           #len:I
    :catch_1
    move-exception v9

    goto :goto_1

    .end local v7           #out:Ljava/io/FileOutputStream;
    .restart local v8       #out:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v9

    move-object v7, v8

    .end local v8           #out:Ljava/io/FileOutputStream;
    .restart local v7       #out:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static createRSAKeyPair(Ljava/lang/String;I)Z
    .locals 12
    .parameter "keyInfo"
    .parameter "key_type"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 3089
    :try_start_0
    const-string v10, "RSA"

    invoke-static {v10}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    .line 3090
    .local v1, keygen:Ljava/security/KeyPairGenerator;
    new-instance v7, Ljava/security/SecureRandom;

    invoke-direct {v7}, Ljava/security/SecureRandom;-><init>()V

    .line 3091
    .local v7, random:Ljava/security/SecureRandom;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 3093
    const/16 v10, 0x400

    invoke-virtual {v1, v10, v7}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    .line 3095
    invoke-virtual {v1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v2

    .line 3097
    .local v2, kp:Ljava/security/KeyPair;
    invoke-virtual {v2}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v5

    .line 3099
    .local v5, publicKey:Ljava/security/PublicKey;
    invoke-virtual {v2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v3

    .line 3101
    .local v3, privateKey:Ljava/security/PrivateKey;
    const/4 v10, 0x0

    invoke-static {v5, v10}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->writeKey2Str(Ljava/security/Key;Z)Ljava/lang/String;

    move-result-object v6

    .line 3103
    .local v6, publicKeyStr:Ljava/lang/String;
    const/4 v10, 0x1

    invoke-static {v3, v10}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->writeKey2Str(Ljava/security/Key;Z)Ljava/lang/String;

    move-result-object v4

    .line 3105
    .local v4, privateKeyStr:Ljava/lang/String;
    if-eqz v6, :cond_0

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v10

    invoke-virtual {v10, v6, v4, p1}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->saveRSAKeyPair(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v10

    if-ne v8, v10, :cond_0

    .line 3109
    invoke-static {v5}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setPublicKey(Ljava/security/PublicKey;)V

    .line 3110
    invoke-static {p1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setPasswordType(I)V

    .line 3111
    invoke-static {v3}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setPrivateKey(Ljava/security/PrivateKey;)V

    .line 3112
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->setRSAKeyPairExist(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3118
    .end local v1           #keygen:Ljava/security/KeyPairGenerator;
    .end local v2           #kp:Ljava/security/KeyPair;
    .end local v3           #privateKey:Ljava/security/PrivateKey;
    .end local v4           #privateKeyStr:Ljava/lang/String;
    .end local v5           #publicKey:Ljava/security/PublicKey;
    .end local v6           #publicKeyStr:Ljava/lang/String;
    .end local v7           #random:Ljava/security/SecureRandom;
    :goto_0
    return v8

    .line 3115
    :catch_0
    move-exception v0

    .line 3116
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    move v8, v9

    .line 3118
    goto :goto_0
.end method

.method public static createRandomAESKey()[B
    .locals 7

    .prologue
    .line 3007
    :try_start_0
    const-string v5, "AES"

    invoke-static {v5}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v2

    .line 3008
    .local v2, keygen:Ljavax/crypto/KeyGenerator;
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    .line 3009
    .local v3, random:Ljava/security/SecureRandom;
    invoke-virtual {v2, v3}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/SecureRandom;)V

    .line 3010
    invoke-virtual {v2}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 3011
    .local v1, key:Ljavax/crypto/SecretKey;
    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v4

    .line 3012
    .local v4, tmp:[B
    const/4 v5, 0x0

    aget-byte v5, v4, v5

    if-nez v5, :cond_0

    .line 3013
    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/security/SecureRandom;->nextInt()I

    move-result v6

    or-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    aput-byte v6, v4, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3019
    .end local v1           #key:Ljavax/crypto/SecretKey;
    .end local v3           #random:Ljava/security/SecureRandom;
    .end local v4           #tmp:[B
    :cond_0
    :goto_0
    return-object v4

    .line 3016
    :catch_0
    move-exception v0

    .line 3017
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3019
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static createTab(Landroid/content/Context;Landroid/widget/TabHost;Ljava/lang/String;ILandroid/content/Intent;)Landroid/widget/TabHost$TabSpec;
    .locals 4
    .parameter "context"
    .parameter "tabHost"
    .parameter "tag"
    .parameter "titleResId"
    .parameter "content"

    .prologue
    .line 895
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03011f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 896
    .local v0, tabView:Landroid/view/View;
    const v1, 0x7f0e03b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(I)V

    .line 897
    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    return-object v1
.end method

.method public static decrypt(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JII[BLcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;)Z
    .locals 10
    .parameter "n"
    .parameter "id"
    .parameter "name"
    .parameter "nn"
    .parameter "op"
    .parameter "ot"
    .parameter "tp"
    .parameter "hs"
    .parameter "keyData"
    .parameter "mUpdatePD"

    .prologue
    .line 1864
    packed-switch p7, :pswitch_data_0

    .line 1877
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    move v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    move/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    .line 1867
    invoke-static/range {v0 .. v9}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->decryptWhenHeadEncry(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI[BLcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    move v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    move/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    .line 1872
    invoke-static/range {v0 .. v9}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->decryptWhenTotalEncry(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI[BLcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;)Z

    move-result v0

    goto :goto_0

    :pswitch_3
    move v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    .line 1875
    invoke-static/range {v0 .. v8}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->decryptWhenDirEncry(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J[BLcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;)Z

    move-result v0

    goto :goto_0

    .line 1864
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static decryptString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "str"

    .prologue
    .line 2993
    :try_start_0
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPassword()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ASCII"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 2994
    .local v2, raw:[B
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v3, v2, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 2995
    .local v3, skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    const-string v4, "AES/CBC/PKCS5Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 2996
    .local v0, cip:Ljavax/crypto/Cipher;
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v4, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->IV:[B

    invoke-direct {v1, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 2997
    .local v1, iv:Ljavax/crypto/spec/IvParameterSpec;
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 2998
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x2

    invoke-static {p0, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3002
    .end local v0           #cip:Ljavax/crypto/Cipher;
    .end local v1           #iv:Ljavax/crypto/spec/IvParameterSpec;
    .end local v2           #raw:[B
    .end local v3           #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v4

    .line 2999
    :catch_0
    move-exception v4

    .line 3002
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static decryptString(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 6
    .parameter "str"
    .parameter "keyData"

    .prologue
    .line 3053
    :try_start_0
    const-string v4, "AES/CBC/PKCS5Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 3054
    .local v0, cip:Ljavax/crypto/Cipher;
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v4, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->IV:[B

    invoke-direct {v2, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 3055
    .local v2, iv:Ljavax/crypto/spec/IvParameterSpec;
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v3, p1, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 3056
    .local v3, keySpec:Ljavax/crypto/spec/SecretKeySpec;
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 3057
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x2

    invoke-static {p0, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3061
    .end local v0           #cip:Ljavax/crypto/Cipher;
    .end local v2           #iv:Ljavax/crypto/spec/IvParameterSpec;
    .end local v3           #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v4

    .line 3058
    :catch_0
    move-exception v1

    .line 3059
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3061
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static decryptStringRSA(Ljava/lang/String;Ljava/security/Key;)[B
    .locals 2
    .parameter "str"
    .parameter "key"

    .prologue
    .line 3077
    :try_start_0
    const-string v1, "RSA"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 3078
    .local v0, cip:Ljavax/crypto/Cipher;
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 3079
    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3083
    .end local v0           #cip:Ljavax/crypto/Cipher;
    :goto_0
    return-object v1

    .line 3080
    :catch_0
    move-exception v1

    .line 3083
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static decryptWhenDirEncry(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J[BLcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;)Z
    .locals 35
    .parameter "n"
    .parameter "id"
    .parameter "name"
    .parameter "nn"
    .parameter "op"
    .parameter "ot"
    .parameter "keyData"
    .parameter "cb"

    .prologue
    .line 1883
    const-string v28, "chenlu"

    const-string v29, "decrypt begin"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->clean_dir_tmp_file()V

    .line 1885
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getPDPath()Ljava/lang/String;

    move-result-object v22

    .line 1886
    .local v22, privacyDataPath:Ljava/lang/String;
    if-nez v22, :cond_0

    .line 1887
    const/16 v28, 0x0

    .line 1957
    :goto_0
    return v28

    .line 1889
    :cond_0
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-direct {v10, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1890
    .local v10, file:Ljava/io/File;
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getPDTempDirExchangeFile()Ljava/lang/String;

    move-result-object v26

    .line 1891
    .local v26, temp_dir_exchange_filename:Ljava/lang/String;
    if-nez v26, :cond_1

    .line 1892
    const/16 v28, 0x0

    goto :goto_0

    .line 1894
    :cond_1
    new-instance v27, Ljava/io/File;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1895
    .local v27, zipfile:Ljava/io/File;
    new-instance v25, Ljava/io/File;

    move-object/from16 v0, v25

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1896
    .local v25, target_file:Ljava/io/File;
    const/4 v11, 0x0

    .line 1897
    .local v11, in:Ljava/nio/channels/FileChannel;
    const/16 v19, 0x0

    .line 1898
    .local v19, out:Ljava/nio/channels/FileChannel;
    const/4 v12, 0x0

    .line 1899
    .local v12, inStream:Ljava/io/FileInputStream;
    const/16 v20, 0x0

    .line 1901
    .local v20, outStream:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v16

    .line 1902
    .local v16, length:J
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1903
    .end local v12           #inStream:Ljava/io/FileInputStream;
    .local v13, inStream:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v21, Ljava/io/FileOutputStream;

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1904
    .end local v20           #outStream:Ljava/io/FileOutputStream;
    .local v21, outStream:Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v13}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v11

    .line 1905
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v19

    .line 1906
    const v28, 0xfa010

    invoke-static/range {v28 .. v28}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1907
    .local v4, buffer_in:Ljava/nio/ByteBuffer;
    const v28, 0xfa000

    invoke-static/range {v28 .. v28}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 1908
    .local v5, buffer_out:Ljava/nio/ByteBuffer;
    const-wide/16 v7, 0x0

    .line 1909
    .local v7, cur:J
    const/16 v23, -0x1

    .line 1910
    .local v23, read:I
    const-string v28, "%.2f%%"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const-wide/16 v31, 0x0

    invoke-static/range {v31 .. v32}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p8

    move/from16 v1, p0

    move-object/from16 v2, v28

    move-object/from16 v3, p2

    invoke-interface {v0, v1, v2, v3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;->updatePDMsg(ILjava/lang/String;Ljava/lang/String;)V

    .line 1911
    const-string v28, "AES/CBC/PKCS5Padding"

    invoke-static/range {v28 .. v28}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    .line 1912
    .local v6, cip:Ljavax/crypto/Cipher;
    new-instance v14, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v28, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->IV:[B

    move-object/from16 v0, v28

    invoke-direct {v14, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 1913
    .local v14, iv:Ljavax/crypto/spec/IvParameterSpec;
    new-instance v15, Ljavax/crypto/spec/SecretKeySpec;

    const-string v28, "AES"

    move-object/from16 v0, p7

    move-object/from16 v1, v28

    invoke-direct {v15, v0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 1914
    .local v15, keySpec:Ljavax/crypto/spec/SecretKeySpec;
    const/16 v28, 0x2

    move/from16 v0, v28

    invoke-virtual {v6, v0, v15, v14}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1915
    :goto_1
    invoke-virtual {v11, v4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v23

    const/16 v28, -0x1

    move/from16 v0, v23

    move/from16 v1, v28

    if-eq v0, v1, :cond_2

    .line 1916
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1917
    invoke-virtual {v6, v4, v5}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    .line 1918
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1919
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1920
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1921
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1922
    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v7, v7, v28

    .line 1923
    const-string v28, "%.2f%%"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const-wide/16 v31, 0x64

    mul-long v31, v31, v7

    move-wide/from16 v0, v31

    long-to-double v0, v0

    move-wide/from16 v31, v0

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v33, v0

    div-double v31, v31, v33

    invoke-static/range {v31 .. v32}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p8

    move/from16 v1, p0

    move-object/from16 v2, v28

    move-object/from16 v3, p2

    invoke-interface {v0, v1, v2, v3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;->updatePDMsg(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    .line 1934
    .end local v4           #buffer_in:Ljava/nio/ByteBuffer;
    .end local v5           #buffer_out:Ljava/nio/ByteBuffer;
    .end local v6           #cip:Ljavax/crypto/Cipher;
    .end local v7           #cur:J
    .end local v14           #iv:Ljavax/crypto/spec/IvParameterSpec;
    .end local v15           #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .end local v23           #read:I
    :catch_0
    move-exception v9

    move-object/from16 v20, v21

    .end local v21           #outStream:Ljava/io/FileOutputStream;
    .restart local v20       #outStream:Ljava/io/FileOutputStream;
    move-object v12, v13

    .line 1935
    .end local v13           #inStream:Ljava/io/FileInputStream;
    .end local v16           #length:J
    .local v9, e:Ljava/io/FileNotFoundException;
    .restart local v12       #inStream:Ljava/io/FileInputStream;
    :goto_2
    :try_start_3
    const-string v28, "chenlu"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "decrypt cancel because FileNotFoundException "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1936
    const/16 v28, 0x0

    .line 1953
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->clean_dir_tmp_file()V

    .line 1954
    invoke-static {v12}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 1955
    invoke-static {v11}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 1956
    invoke-static/range {v20 .. v20}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 1957
    invoke-static/range {v19 .. v19}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    goto/16 :goto_0

    .line 1925
    .end local v9           #e:Ljava/io/FileNotFoundException;
    .end local v12           #inStream:Ljava/io/FileInputStream;
    .end local v20           #outStream:Ljava/io/FileOutputStream;
    .restart local v4       #buffer_in:Ljava/nio/ByteBuffer;
    .restart local v5       #buffer_out:Ljava/nio/ByteBuffer;
    .restart local v6       #cip:Ljavax/crypto/Cipher;
    .restart local v7       #cur:J
    .restart local v13       #inStream:Ljava/io/FileInputStream;
    .restart local v14       #iv:Ljavax/crypto/spec/IvParameterSpec;
    .restart local v15       #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v16       #length:J
    .restart local v21       #outStream:Ljava/io/FileOutputStream;
    .restart local v23       #read:I
    :cond_2
    :try_start_4
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-wide/from16 v2, p5

    invoke-static {v0, v1, v2, v3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->unzip(Ljava/io/File;Ljava/lang/String;J)V

    .line 1926
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v18

    .line 1927
    .local v18, localPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->deleteRecordById(I)Z

    move-result v24

    .line 1928
    .local v24, ret:Z
    if-nez v24, :cond_4

    .line 1929
    new-instance v28, Ljava/lang/Exception;

    const-string v29, "save to database error"

    invoke-direct/range {v28 .. v29}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v28
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 1937
    .end local v4           #buffer_in:Ljava/nio/ByteBuffer;
    .end local v5           #buffer_out:Ljava/nio/ByteBuffer;
    .end local v6           #cip:Ljavax/crypto/Cipher;
    .end local v7           #cur:J
    .end local v14           #iv:Ljavax/crypto/spec/IvParameterSpec;
    .end local v15           #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .end local v18           #localPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
    .end local v23           #read:I
    .end local v24           #ret:Z
    :catch_1
    move-exception v9

    move-object/from16 v20, v21

    .end local v21           #outStream:Ljava/io/FileOutputStream;
    .restart local v20       #outStream:Ljava/io/FileOutputStream;
    move-object v12, v13

    .line 1938
    .end local v13           #inStream:Ljava/io/FileInputStream;
    .end local v16           #length:J
    .local v9, e:Ljava/io/IOException;
    .restart local v12       #inStream:Ljava/io/FileInputStream;
    :goto_3
    :try_start_5
    invoke-virtual {v9}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v28

    const-string v29, "ENOSPC"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_3

    .line 1939
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->showSDSpaceNotEnough()V

    .line 1941
    :cond_3
    const-string v28, "chenlu"

    invoke-virtual {v9}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    const-string v28, "chenlu"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "decrypt cancel file is"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    const-string v28, "chenlu"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "delete target_file is"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1945
    const/16 v28, 0x0

    .line 1953
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->clean_dir_tmp_file()V

    .line 1954
    invoke-static {v12}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 1955
    invoke-static {v11}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 1956
    invoke-static/range {v20 .. v20}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 1957
    invoke-static/range {v19 .. v19}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    goto/16 :goto_0

    .line 1931
    .end local v9           #e:Ljava/io/IOException;
    .end local v12           #inStream:Ljava/io/FileInputStream;
    .end local v20           #outStream:Ljava/io/FileOutputStream;
    .restart local v4       #buffer_in:Ljava/nio/ByteBuffer;
    .restart local v5       #buffer_out:Ljava/nio/ByteBuffer;
    .restart local v6       #cip:Ljavax/crypto/Cipher;
    .restart local v7       #cur:J
    .restart local v13       #inStream:Ljava/io/FileInputStream;
    .restart local v14       #iv:Ljavax/crypto/spec/IvParameterSpec;
    .restart local v15       #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v16       #length:J
    .restart local v18       #localPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
    .restart local v21       #outStream:Ljava/io/FileOutputStream;
    .restart local v23       #read:I
    .restart local v24       #ret:Z
    :cond_4
    :try_start_6
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 1932
    const-string v28, "chenlu"

    const-string v29, "decrypt end"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 1933
    const/16 v28, 0x1

    .line 1953
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->clean_dir_tmp_file()V

    .line 1954
    invoke-static {v13}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 1955
    invoke-static {v11}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 1956
    invoke-static/range {v21 .. v21}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 1957
    invoke-static/range {v19 .. v19}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    goto/16 :goto_0

    .line 1946
    .end local v4           #buffer_in:Ljava/nio/ByteBuffer;
    .end local v5           #buffer_out:Ljava/nio/ByteBuffer;
    .end local v6           #cip:Ljavax/crypto/Cipher;
    .end local v7           #cur:J
    .end local v13           #inStream:Ljava/io/FileInputStream;
    .end local v14           #iv:Ljavax/crypto/spec/IvParameterSpec;
    .end local v15           #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .end local v16           #length:J
    .end local v18           #localPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
    .end local v21           #outStream:Ljava/io/FileOutputStream;
    .end local v23           #read:I
    .end local v24           #ret:Z
    .restart local v12       #inStream:Ljava/io/FileInputStream;
    .restart local v20       #outStream:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v9

    .line 1947
    .local v9, e:Ljava/lang/Exception;
    :goto_4
    :try_start_7
    const-string v28, "chenlu"

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    const-string v28, "chenlu"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "decrypt cancel file is"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    const-string v28, "chenlu"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "delete target_file is"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->delete()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1951
    const/16 v28, 0x0

    .line 1953
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->clean_dir_tmp_file()V

    .line 1954
    invoke-static {v12}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 1955
    invoke-static {v11}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 1956
    invoke-static/range {v20 .. v20}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 1957
    invoke-static/range {v19 .. v19}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    goto/16 :goto_0

    .line 1953
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v28

    :goto_5
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->clean_dir_tmp_file()V

    .line 1954
    invoke-static {v12}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 1955
    invoke-static {v11}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 1956
    invoke-static/range {v20 .. v20}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 1957
    invoke-static/range {v19 .. v19}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    throw v28

    .line 1953
    .end local v12           #inStream:Ljava/io/FileInputStream;
    .restart local v13       #inStream:Ljava/io/FileInputStream;
    .restart local v16       #length:J
    :catchall_1
    move-exception v28

    move-object v12, v13

    .end local v13           #inStream:Ljava/io/FileInputStream;
    .restart local v12       #inStream:Ljava/io/FileInputStream;
    goto :goto_5

    .end local v12           #inStream:Ljava/io/FileInputStream;
    .end local v20           #outStream:Ljava/io/FileOutputStream;
    .restart local v13       #inStream:Ljava/io/FileInputStream;
    .restart local v21       #outStream:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v28

    move-object/from16 v20, v21

    .end local v21           #outStream:Ljava/io/FileOutputStream;
    .restart local v20       #outStream:Ljava/io/FileOutputStream;
    move-object v12, v13

    .end local v13           #inStream:Ljava/io/FileInputStream;
    .restart local v12       #inStream:Ljava/io/FileInputStream;
    goto :goto_5

    .line 1946
    .end local v12           #inStream:Ljava/io/FileInputStream;
    .restart local v13       #inStream:Ljava/io/FileInputStream;
    :catch_3
    move-exception v9

    move-object v12, v13

    .end local v13           #inStream:Ljava/io/FileInputStream;
    .restart local v12       #inStream:Ljava/io/FileInputStream;
    goto :goto_4

    .end local v12           #inStream:Ljava/io/FileInputStream;
    .end local v20           #outStream:Ljava/io/FileOutputStream;
    .restart local v13       #inStream:Ljava/io/FileInputStream;
    .restart local v21       #outStream:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v9

    move-object/from16 v20, v21

    .end local v21           #outStream:Ljava/io/FileOutputStream;
    .restart local v20       #outStream:Ljava/io/FileOutputStream;
    move-object v12, v13

    .end local v13           #inStream:Ljava/io/FileInputStream;
    .restart local v12       #inStream:Ljava/io/FileInputStream;
    goto :goto_4

    .line 1937
    .end local v16           #length:J
    :catch_5
    move-exception v9

    goto/16 :goto_3

    .end local v12           #inStream:Ljava/io/FileInputStream;
    .restart local v13       #inStream:Ljava/io/FileInputStream;
    .restart local v16       #length:J
    :catch_6
    move-exception v9

    move-object v12, v13

    .end local v13           #inStream:Ljava/io/FileInputStream;
    .restart local v12       #inStream:Ljava/io/FileInputStream;
    goto/16 :goto_3

    .line 1934
    .end local v16           #length:J
    :catch_7
    move-exception v9

    goto/16 :goto_2

    .end local v12           #inStream:Ljava/io/FileInputStream;
    .restart local v13       #inStream:Ljava/io/FileInputStream;
    .restart local v16       #length:J
    :catch_8
    move-exception v9

    move-object v12, v13

    .end local v13           #inStream:Ljava/io/FileInputStream;
    .restart local v12       #inStream:Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method private static decryptWhenHeadEncry(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI[BLcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;)Z
    .locals 36
    .parameter "n"
    .parameter "id"
    .parameter "name"
    .parameter "nn"
    .parameter "op"
    .parameter "ot"
    .parameter "hs"
    .parameter "keyData"
    .parameter "cb"

    .prologue
    .line 2070
    const-string v29, "chenlu"

    const-string v30, "decrypt begin"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getPDPath()Ljava/lang/String;

    move-result-object v23

    .line 2072
    .local v23, privacyDataPath:Ljava/lang/String;
    if-nez v23, :cond_0

    .line 2073
    const/16 v29, 0x0

    .line 2182
    :goto_0
    return v29

    .line 2075
    :cond_0
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-direct {v11, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2076
    .local v11, file:Ljava/io/File;
    const/16 v27, 0x0

    .line 2077
    .local v27, target_file:Ljava/io/File;
    const/16 v26, 0x0

    .line 2078
    .local v26, showTemp:Z
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isShowTemp()Z

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_2

    .line 2079
    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setShowTemp(Z)V

    .line 2080
    const/16 v26, 0x1

    .line 2081
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->clean_tmp_file()V

    .line 2082
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getPDTempExchangeFolder()Ljava/lang/String;

    move-result-object v28

    .line 2083
    .local v28, temp_exchange_folder:Ljava/lang/String;
    if-nez v28, :cond_1

    .line 2084
    const/16 v29, 0x0

    goto :goto_0

    .line 2086
    :cond_1
    new-instance v27, Ljava/io/File;

    .end local v27           #target_file:Ljava/io/File;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "/"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2090
    .end local v28           #temp_exchange_folder:Ljava/lang/String;
    .restart local v27       #target_file:Ljava/io/File;
    :goto_1
    const/4 v12, 0x0

    .line 2091
    .local v12, in:Ljava/nio/channels/FileChannel;
    const/16 v20, 0x0

    .line 2092
    .local v20, out:Ljava/nio/channels/FileChannel;
    const/4 v13, 0x0

    .line 2093
    .local v13, inStream:Ljava/io/FileInputStream;
    const/16 v21, 0x0

    .line 2095
    .local v21, outStream:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v17

    .line 2096
    .local v17, length:J
    invoke-static/range {v17 .. v18}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkIsSDSpaceNotEnoughAndShowToast(J)Z

    move-result v29

    if-nez v29, :cond_3

    .line 2098
    new-instance v29, Ljava/lang/Exception;

    const-string v30, "SD space not enough"

    invoke-direct/range {v29 .. v30}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v29
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 2160
    .end local v17           #length:J
    :catch_0
    move-exception v10

    .line 2161
    .local v10, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_1
    const-string v29, "chenlu"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "decrypt cancel because FileNotFoundException "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2162
    const/16 v29, 0x0

    .line 2179
    invoke-static {v13}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 2180
    invoke-static {v12}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 2181
    invoke-static/range {v21 .. v21}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 2182
    invoke-static/range {v20 .. v20}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    goto/16 :goto_0

    .line 2088
    .end local v10           #e:Ljava/io/FileNotFoundException;
    .end local v12           #in:Ljava/nio/channels/FileChannel;
    .end local v13           #inStream:Ljava/io/FileInputStream;
    .end local v20           #out:Ljava/nio/channels/FileChannel;
    .end local v21           #outStream:Ljava/io/FileOutputStream;
    :cond_2
    new-instance v27, Ljava/io/File;

    .end local v27           #target_file:Ljava/io/File;
    move-object/from16 v0, v27

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v27       #target_file:Ljava/io/File;
    goto :goto_1

    .line 2100
    .restart local v12       #in:Ljava/nio/channels/FileChannel;
    .restart local v13       #inStream:Ljava/io/FileInputStream;
    .restart local v17       #length:J
    .restart local v20       #out:Ljava/nio/channels/FileChannel;
    .restart local v21       #outStream:Ljava/io/FileOutputStream;
    :cond_3
    :try_start_2
    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 2101
    .end local v13           #inStream:Ljava/io/FileInputStream;
    .local v14, inStream:Ljava/io/FileInputStream;
    :try_start_3
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->exists()Z

    move-result v29

    if-eqz v29, :cond_4

    .line 2102
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->delete()Z

    .line 2104
    :cond_4
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->mkdirs()Z

    .line 2105
    new-instance v22, Ljava/io/FileOutputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 2106
    .end local v21           #outStream:Ljava/io/FileOutputStream;
    .local v22, outStream:Ljava/io/FileOutputStream;
    :try_start_4
    invoke-virtual {v14}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v12

    .line 2107
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v20

    .line 2108
    const/16 v29, 0x2810

    invoke-static/range {v29 .. v29}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 2109
    .local v5, buffer_in:Ljava/nio/ByteBuffer;
    const v29, 0xfa000

    invoke-static/range {v29 .. v29}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 2110
    .local v6, buffer_out:Ljava/nio/ByteBuffer;
    const-wide/16 v8, 0x0

    .line 2111
    .local v8, cur:J
    const/16 v24, -0x1

    .line 2112
    .local v24, read:I
    const-string v29, "%.2f%%"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const-wide/16 v32, 0x0

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p9

    move/from16 v1, p0

    move-object/from16 v2, v29

    move-object/from16 v3, p2

    invoke-interface {v0, v1, v2, v3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;->updatePDMsg(ILjava/lang/String;Ljava/lang/String;)V

    .line 2113
    const-string v29, "AES/CBC/PKCS5Padding"

    invoke-static/range {v29 .. v29}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v7

    .line 2114
    .local v7, cip:Ljavax/crypto/Cipher;
    new-instance v15, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v29, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->IV:[B

    move-object/from16 v0, v29

    invoke-direct {v15, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 2115
    .local v15, iv:Ljavax/crypto/spec/IvParameterSpec;
    new-instance v16, Ljavax/crypto/spec/SecretKeySpec;

    const-string v29, "AES"

    move-object/from16 v0, v16

    move-object/from16 v1, p8

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 2116
    .local v16, keySpec:Ljavax/crypto/spec/SecretKeySpec;
    const/16 v29, 0x2

    move/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v7, v0, v1, v15}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 2117
    if-lez p7, :cond_6

    .line 2118
    invoke-static/range {p7 .. p7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 2119
    .local v4, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v12, v4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v24

    .line 2120
    move/from16 v0, v24

    move/from16 v1, p7

    if-eq v0, v1, :cond_5

    .line 2121
    new-instance v29, Ljava/lang/Exception;

    const-string v30, "read head error"

    invoke-direct/range {v29 .. v30}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v29

    .line 2160
    .end local v4           #buffer:Ljava/nio/ByteBuffer;
    .end local v5           #buffer_in:Ljava/nio/ByteBuffer;
    .end local v6           #buffer_out:Ljava/nio/ByteBuffer;
    .end local v7           #cip:Ljavax/crypto/Cipher;
    .end local v8           #cur:J
    .end local v15           #iv:Ljavax/crypto/spec/IvParameterSpec;
    .end local v16           #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .end local v24           #read:I
    :catch_1
    move-exception v10

    move-object/from16 v21, v22

    .end local v22           #outStream:Ljava/io/FileOutputStream;
    .restart local v21       #outStream:Ljava/io/FileOutputStream;
    move-object v13, v14

    .end local v14           #inStream:Ljava/io/FileInputStream;
    .restart local v13       #inStream:Ljava/io/FileInputStream;
    goto/16 :goto_2

    .line 2123
    .end local v13           #inStream:Ljava/io/FileInputStream;
    .end local v21           #outStream:Ljava/io/FileOutputStream;
    .restart local v4       #buffer:Ljava/nio/ByteBuffer;
    .restart local v5       #buffer_in:Ljava/nio/ByteBuffer;
    .restart local v6       #buffer_out:Ljava/nio/ByteBuffer;
    .restart local v7       #cip:Ljavax/crypto/Cipher;
    .restart local v8       #cur:J
    .restart local v14       #inStream:Ljava/io/FileInputStream;
    .restart local v15       #iv:Ljavax/crypto/spec/IvParameterSpec;
    .restart local v16       #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v22       #outStream:Ljava/io/FileOutputStream;
    .restart local v24       #read:I
    :cond_5
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 2124
    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v29, v0

    add-long v8, v8, v29

    .line 2125
    const-string v29, "%.2f%%"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    mul-int/lit8 v32, p7, 0x64

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v0, v17

    long-to-double v0, v0

    move-wide/from16 v34, v0

    div-double v32, v32, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p9

    move/from16 v1, p0

    move-object/from16 v2, v29

    move-object/from16 v3, p2

    invoke-interface {v0, v1, v2, v3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;->updatePDMsg(ILjava/lang/String;Ljava/lang/String;)V

    .line 2127
    .end local v4           #buffer:Ljava/nio/ByteBuffer;
    :cond_6
    invoke-virtual {v12, v5}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v24

    .line 2128
    const/16 v29, -0x1

    move/from16 v0, v24

    move/from16 v1, v29

    if-eq v0, v1, :cond_b

    .line 2129
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 2130
    invoke-virtual {v7, v5, v6}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    .line 2131
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 2132
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 2133
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 2134
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 2135
    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v29, v0

    add-long v8, v8, v29

    .line 2136
    const-string v29, "%.2f%%"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const-wide/16 v32, 0x64

    mul-long v32, v32, v8

    move-wide/from16 v0, v32

    long-to-double v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v0, v17

    long-to-double v0, v0

    move-wide/from16 v34, v0

    div-double v32, v32, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p9

    move/from16 v1, p0

    move-object/from16 v2, v29

    move-object/from16 v3, p2

    invoke-interface {v0, v1, v2, v3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;->updatePDMsg(ILjava/lang/String;Ljava/lang/String;)V

    .line 2137
    :goto_3
    invoke-virtual {v12, v6}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v24

    const/16 v29, -0x1

    move/from16 v0, v24

    move/from16 v1, v29

    if-eq v0, v1, :cond_8

    .line 2138
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 2139
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 2140
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 2141
    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v29, v0

    add-long v8, v8, v29

    .line 2142
    const-string v29, "%.2f%%"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const-wide/16 v32, 0x64

    mul-long v32, v32, v8

    move-wide/from16 v0, v32

    long-to-double v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v0, v17

    long-to-double v0, v0

    move-wide/from16 v34, v0

    div-double v32, v32, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p9

    move/from16 v1, p0

    move-object/from16 v2, v29

    move-object/from16 v3, p2

    invoke-interface {v0, v1, v2, v3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;->updatePDMsg(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 2163
    .end local v5           #buffer_in:Ljava/nio/ByteBuffer;
    .end local v6           #buffer_out:Ljava/nio/ByteBuffer;
    .end local v7           #cip:Ljavax/crypto/Cipher;
    .end local v8           #cur:J
    .end local v15           #iv:Ljavax/crypto/spec/IvParameterSpec;
    .end local v16           #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .end local v24           #read:I
    :catch_2
    move-exception v10

    move-object/from16 v21, v22

    .end local v22           #outStream:Ljava/io/FileOutputStream;
    .restart local v21       #outStream:Ljava/io/FileOutputStream;
    move-object v13, v14

    .line 2164
    .end local v14           #inStream:Ljava/io/FileInputStream;
    .end local v17           #length:J
    .local v10, e:Ljava/io/IOException;
    .restart local v13       #inStream:Ljava/io/FileInputStream;
    :goto_4
    :try_start_5
    invoke-virtual {v10}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v29

    const-string v30, "ENOSPC"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_7

    .line 2165
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->showSDSpaceNotEnough()V

    .line 2167
    :cond_7
    const-string v29, "chenlu"

    invoke-virtual {v10}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    const-string v29, "chenlu"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "decrypt cancel file is"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    const-string v29, "chenlu"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "delete target_file is"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2171
    const/16 v29, 0x0

    .line 2179
    invoke-static {v13}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 2180
    invoke-static {v12}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 2181
    invoke-static/range {v21 .. v21}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 2182
    invoke-static/range {v20 .. v20}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    goto/16 :goto_0

    .line 2144
    .end local v10           #e:Ljava/io/IOException;
    .end local v13           #inStream:Ljava/io/FileInputStream;
    .end local v21           #outStream:Ljava/io/FileOutputStream;
    .restart local v5       #buffer_in:Ljava/nio/ByteBuffer;
    .restart local v6       #buffer_out:Ljava/nio/ByteBuffer;
    .restart local v7       #cip:Ljavax/crypto/Cipher;
    .restart local v8       #cur:J
    .restart local v14       #inStream:Ljava/io/FileInputStream;
    .restart local v15       #iv:Ljavax/crypto/spec/IvParameterSpec;
    .restart local v16       #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v17       #length:J
    .restart local v22       #outStream:Ljava/io/FileOutputStream;
    .restart local v24       #read:I
    :cond_8
    if-nez v26, :cond_a

    .line 2145
    :try_start_6
    move-object/from16 v0, v27

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    .line 2146
    invoke-static/range {p4 .. p4}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->scanFileAsync(Ljava/lang/String;)V

    .line 2147
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v19

    .line 2149
    .local v19, localPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->deleteRecordById(I)Z

    move-result v25

    .line 2150
    .local v25, ret:Z
    if-nez v25, :cond_9

    .line 2151
    new-instance v29, Ljava/lang/Exception;

    const-string v30, "delete Record error"

    invoke-direct/range {v29 .. v30}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v29
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 2172
    .end local v5           #buffer_in:Ljava/nio/ByteBuffer;
    .end local v6           #buffer_out:Ljava/nio/ByteBuffer;
    .end local v7           #cip:Ljavax/crypto/Cipher;
    .end local v8           #cur:J
    .end local v15           #iv:Ljavax/crypto/spec/IvParameterSpec;
    .end local v16           #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .end local v19           #localPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
    .end local v24           #read:I
    .end local v25           #ret:Z
    :catch_3
    move-exception v10

    move-object/from16 v21, v22

    .end local v22           #outStream:Ljava/io/FileOutputStream;
    .restart local v21       #outStream:Ljava/io/FileOutputStream;
    move-object v13, v14

    .line 2173
    .end local v14           #inStream:Ljava/io/FileInputStream;
    .end local v17           #length:J
    .local v10, e:Ljava/lang/Exception;
    .restart local v13       #inStream:Ljava/io/FileInputStream;
    :goto_5
    :try_start_7
    const-string v29, "chenlu"

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2174
    const-string v29, "chenlu"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "decrypt cancel file is"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2175
    const-string v29, "chenlu"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "delete target_file is"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->delete()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2177
    const/16 v29, 0x0

    .line 2179
    invoke-static {v13}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 2180
    invoke-static {v12}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 2181
    invoke-static/range {v21 .. v21}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 2182
    invoke-static/range {v20 .. v20}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    goto/16 :goto_0

    .line 2153
    .end local v10           #e:Ljava/lang/Exception;
    .end local v13           #inStream:Ljava/io/FileInputStream;
    .end local v21           #outStream:Ljava/io/FileOutputStream;
    .restart local v5       #buffer_in:Ljava/nio/ByteBuffer;
    .restart local v6       #buffer_out:Ljava/nio/ByteBuffer;
    .restart local v7       #cip:Ljavax/crypto/Cipher;
    .restart local v8       #cur:J
    .restart local v14       #inStream:Ljava/io/FileInputStream;
    .restart local v15       #iv:Ljavax/crypto/spec/IvParameterSpec;
    .restart local v16       #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v17       #length:J
    .restart local v19       #localPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
    .restart local v22       #outStream:Ljava/io/FileOutputStream;
    .restart local v24       #read:I
    .restart local v25       #ret:Z
    :cond_9
    :try_start_8
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 2155
    .end local v19           #localPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
    .end local v25           #ret:Z
    :cond_a
    const-string v29, "chenlu"

    const-string v30, "decrypt end"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 2156
    const/16 v29, 0x1

    .line 2179
    invoke-static {v14}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 2180
    invoke-static {v12}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 2181
    invoke-static/range {v22 .. v22}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 2182
    invoke-static/range {v20 .. v20}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    goto/16 :goto_0

    .line 2158
    :cond_b
    :try_start_9
    new-instance v29, Ljava/lang/Exception;

    const-string v30, "read head error"

    invoke-direct/range {v29 .. v30}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v29
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 2179
    .end local v5           #buffer_in:Ljava/nio/ByteBuffer;
    .end local v6           #buffer_out:Ljava/nio/ByteBuffer;
    .end local v7           #cip:Ljavax/crypto/Cipher;
    .end local v8           #cur:J
    .end local v15           #iv:Ljavax/crypto/spec/IvParameterSpec;
    .end local v16           #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .end local v24           #read:I
    :catchall_0
    move-exception v29

    move-object/from16 v21, v22

    .end local v22           #outStream:Ljava/io/FileOutputStream;
    .restart local v21       #outStream:Ljava/io/FileOutputStream;
    move-object v13, v14

    .end local v14           #inStream:Ljava/io/FileInputStream;
    .end local v17           #length:J
    .restart local v13       #inStream:Ljava/io/FileInputStream;
    :goto_6
    invoke-static {v13}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 2180
    invoke-static {v12}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 2181
    invoke-static/range {v21 .. v21}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 2182
    invoke-static/range {v20 .. v20}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    throw v29

    .line 2179
    :catchall_1
    move-exception v29

    goto :goto_6

    .end local v13           #inStream:Ljava/io/FileInputStream;
    .restart local v14       #inStream:Ljava/io/FileInputStream;
    .restart local v17       #length:J
    :catchall_2
    move-exception v29

    move-object v13, v14

    .end local v14           #inStream:Ljava/io/FileInputStream;
    .restart local v13       #inStream:Ljava/io/FileInputStream;
    goto :goto_6

    .line 2172
    .end local v17           #length:J
    :catch_4
    move-exception v10

    goto/16 :goto_5

    .end local v13           #inStream:Ljava/io/FileInputStream;
    .restart local v14       #inStream:Ljava/io/FileInputStream;
    .restart local v17       #length:J
    :catch_5
    move-exception v10

    move-object v13, v14

    .end local v14           #inStream:Ljava/io/FileInputStream;
    .restart local v13       #inStream:Ljava/io/FileInputStream;
    goto/16 :goto_5

    .line 2163
    .end local v17           #length:J
    :catch_6
    move-exception v10

    goto/16 :goto_4

    .end local v13           #inStream:Ljava/io/FileInputStream;
    .restart local v14       #inStream:Ljava/io/FileInputStream;
    .restart local v17       #length:J
    :catch_7
    move-exception v10

    move-object v13, v14

    .end local v14           #inStream:Ljava/io/FileInputStream;
    .restart local v13       #inStream:Ljava/io/FileInputStream;
    goto/16 :goto_4

    .line 2160
    .end local v13           #inStream:Ljava/io/FileInputStream;
    .restart local v14       #inStream:Ljava/io/FileInputStream;
    :catch_8
    move-exception v10

    move-object v13, v14

    .end local v14           #inStream:Ljava/io/FileInputStream;
    .restart local v13       #inStream:Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method private static decryptWhenTotalEncry(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI[BLcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;)Z
    .locals 36
    .parameter "n"
    .parameter "id"
    .parameter "name"
    .parameter "nn"
    .parameter "op"
    .parameter "ot"
    .parameter "hs"
    .parameter "keyData"
    .parameter "cb"

    .prologue
    .line 1963
    const-string v29, "chenlu"

    const-string v30, "decrypt begin"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getPDPath()Ljava/lang/String;

    move-result-object v23

    .line 1965
    .local v23, privacyDataPath:Ljava/lang/String;
    if-nez v23, :cond_0

    .line 1966
    const/16 v29, 0x0

    .line 2064
    :goto_0
    return v29

    .line 1968
    :cond_0
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-direct {v11, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1969
    .local v11, file:Ljava/io/File;
    const/16 v27, 0x0

    .line 1970
    .local v27, target_file:Ljava/io/File;
    const/16 v26, 0x0

    .line 1971
    .local v26, showTemp:Z
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isShowTemp()Z

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_2

    .line 1972
    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setShowTemp(Z)V

    .line 1973
    const/16 v26, 0x1

    .line 1974
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->clean_tmp_file()V

    .line 1975
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getPDTempExchangeFolder()Ljava/lang/String;

    move-result-object v28

    .line 1976
    .local v28, temp_exchange_folder:Ljava/lang/String;
    if-nez v28, :cond_1

    .line 1977
    const/16 v29, 0x0

    goto :goto_0

    .line 1979
    :cond_1
    new-instance v27, Ljava/io/File;

    .end local v27           #target_file:Ljava/io/File;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "/"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1983
    .end local v28           #temp_exchange_folder:Ljava/lang/String;
    .restart local v27       #target_file:Ljava/io/File;
    :goto_1
    const/4 v12, 0x0

    .line 1984
    .local v12, in:Ljava/nio/channels/FileChannel;
    const/16 v20, 0x0

    .line 1985
    .local v20, out:Ljava/nio/channels/FileChannel;
    const/4 v13, 0x0

    .line 1986
    .local v13, inStream:Ljava/io/FileInputStream;
    const/16 v21, 0x0

    .line 1988
    .local v21, outStream:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v17

    .line 1989
    .local v17, length:J
    invoke-static/range {v17 .. v18}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkIsSDSpaceNotEnoughAndShowToast(J)Z

    move-result v29

    if-nez v29, :cond_3

    .line 1991
    new-instance v29, Ljava/lang/Exception;

    const-string v30, "SD space not enough"

    invoke-direct/range {v29 .. v30}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v29
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 2042
    .end local v17           #length:J
    :catch_0
    move-exception v10

    .line 2043
    .local v10, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_1
    const-string v29, "chenlu"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "decrypt cancel because FileNotFoundException "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2044
    const/16 v29, 0x0

    .line 2061
    invoke-static {v13}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 2062
    invoke-static {v12}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 2063
    invoke-static/range {v21 .. v21}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 2064
    invoke-static/range {v20 .. v20}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    goto/16 :goto_0

    .line 1981
    .end local v10           #e:Ljava/io/FileNotFoundException;
    .end local v12           #in:Ljava/nio/channels/FileChannel;
    .end local v13           #inStream:Ljava/io/FileInputStream;
    .end local v20           #out:Ljava/nio/channels/FileChannel;
    .end local v21           #outStream:Ljava/io/FileOutputStream;
    :cond_2
    new-instance v27, Ljava/io/File;

    .end local v27           #target_file:Ljava/io/File;
    move-object/from16 v0, v27

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v27       #target_file:Ljava/io/File;
    goto :goto_1

    .line 1993
    .restart local v12       #in:Ljava/nio/channels/FileChannel;
    .restart local v13       #inStream:Ljava/io/FileInputStream;
    .restart local v17       #length:J
    .restart local v20       #out:Ljava/nio/channels/FileChannel;
    .restart local v21       #outStream:Ljava/io/FileOutputStream;
    :cond_3
    :try_start_2
    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 1994
    .end local v13           #inStream:Ljava/io/FileInputStream;
    .local v14, inStream:Ljava/io/FileInputStream;
    :try_start_3
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->exists()Z

    move-result v29

    if-eqz v29, :cond_4

    .line 1995
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->delete()Z

    .line 1997
    :cond_4
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->mkdirs()Z

    .line 1998
    new-instance v22, Ljava/io/FileOutputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 1999
    .end local v21           #outStream:Ljava/io/FileOutputStream;
    .local v22, outStream:Ljava/io/FileOutputStream;
    :try_start_4
    invoke-virtual {v14}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v12

    .line 2000
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v20

    .line 2001
    const v29, 0xfa010

    invoke-static/range {v29 .. v29}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 2002
    .local v5, buffer_in:Ljava/nio/ByteBuffer;
    const v29, 0xfa000

    invoke-static/range {v29 .. v29}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 2003
    .local v6, buffer_out:Ljava/nio/ByteBuffer;
    const-wide/16 v8, 0x0

    .line 2004
    .local v8, cur:J
    const/16 v24, -0x1

    .line 2005
    .local v24, read:I
    const-string v29, "%.2f%%"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const-wide/16 v32, 0x0

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p9

    move/from16 v1, p0

    move-object/from16 v2, v29

    move-object/from16 v3, p2

    invoke-interface {v0, v1, v2, v3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;->updatePDMsg(ILjava/lang/String;Ljava/lang/String;)V

    .line 2006
    const-string v29, "AES/CBC/PKCS5Padding"

    invoke-static/range {v29 .. v29}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v7

    .line 2007
    .local v7, cip:Ljavax/crypto/Cipher;
    new-instance v15, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v29, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->IV:[B

    move-object/from16 v0, v29

    invoke-direct {v15, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 2008
    .local v15, iv:Ljavax/crypto/spec/IvParameterSpec;
    new-instance v16, Ljavax/crypto/spec/SecretKeySpec;

    const-string v29, "AES"

    move-object/from16 v0, v16

    move-object/from16 v1, p8

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 2009
    .local v16, keySpec:Ljavax/crypto/spec/SecretKeySpec;
    const/16 v29, 0x2

    move/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v7, v0, v1, v15}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 2010
    if-lez p7, :cond_6

    .line 2011
    invoke-static/range {p7 .. p7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 2012
    .local v4, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v12, v4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v24

    .line 2013
    move/from16 v0, v24

    move/from16 v1, p7

    if-eq v0, v1, :cond_5

    .line 2014
    new-instance v29, Ljava/lang/Exception;

    const-string v30, "read head error"

    invoke-direct/range {v29 .. v30}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v29

    .line 2042
    .end local v4           #buffer:Ljava/nio/ByteBuffer;
    .end local v5           #buffer_in:Ljava/nio/ByteBuffer;
    .end local v6           #buffer_out:Ljava/nio/ByteBuffer;
    .end local v7           #cip:Ljavax/crypto/Cipher;
    .end local v8           #cur:J
    .end local v15           #iv:Ljavax/crypto/spec/IvParameterSpec;
    .end local v16           #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .end local v24           #read:I
    :catch_1
    move-exception v10

    move-object/from16 v21, v22

    .end local v22           #outStream:Ljava/io/FileOutputStream;
    .restart local v21       #outStream:Ljava/io/FileOutputStream;
    move-object v13, v14

    .end local v14           #inStream:Ljava/io/FileInputStream;
    .restart local v13       #inStream:Ljava/io/FileInputStream;
    goto/16 :goto_2

    .line 2016
    .end local v13           #inStream:Ljava/io/FileInputStream;
    .end local v21           #outStream:Ljava/io/FileOutputStream;
    .restart local v4       #buffer:Ljava/nio/ByteBuffer;
    .restart local v5       #buffer_in:Ljava/nio/ByteBuffer;
    .restart local v6       #buffer_out:Ljava/nio/ByteBuffer;
    .restart local v7       #cip:Ljavax/crypto/Cipher;
    .restart local v8       #cur:J
    .restart local v14       #inStream:Ljava/io/FileInputStream;
    .restart local v15       #iv:Ljavax/crypto/spec/IvParameterSpec;
    .restart local v16       #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v22       #outStream:Ljava/io/FileOutputStream;
    .restart local v24       #read:I
    :cond_5
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 2017
    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v29, v0

    add-long v8, v8, v29

    .line 2018
    const-string v29, "%.2f%%"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    mul-int/lit8 v32, p7, 0x64

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v0, v17

    long-to-double v0, v0

    move-wide/from16 v34, v0

    div-double v32, v32, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p9

    move/from16 v1, p0

    move-object/from16 v2, v29

    move-object/from16 v3, p2

    invoke-interface {v0, v1, v2, v3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;->updatePDMsg(ILjava/lang/String;Ljava/lang/String;)V

    .line 2020
    .end local v4           #buffer:Ljava/nio/ByteBuffer;
    :cond_6
    :goto_3
    invoke-virtual {v12, v5}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v24

    const/16 v29, -0x1

    move/from16 v0, v24

    move/from16 v1, v29

    if-eq v0, v1, :cond_8

    .line 2021
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 2022
    invoke-virtual {v7, v5, v6}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    .line 2023
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 2024
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 2025
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 2026
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 2027
    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v29, v0

    add-long v8, v8, v29

    .line 2028
    const-string v29, "%.2f%%"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const-wide/16 v32, 0x64

    mul-long v32, v32, v8

    move-wide/from16 v0, v32

    long-to-double v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v0, v17

    long-to-double v0, v0

    move-wide/from16 v34, v0

    div-double v32, v32, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p9

    move/from16 v1, p0

    move-object/from16 v2, v29

    move-object/from16 v3, p2

    invoke-interface {v0, v1, v2, v3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;->updatePDMsg(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 2045
    .end local v5           #buffer_in:Ljava/nio/ByteBuffer;
    .end local v6           #buffer_out:Ljava/nio/ByteBuffer;
    .end local v7           #cip:Ljavax/crypto/Cipher;
    .end local v8           #cur:J
    .end local v15           #iv:Ljavax/crypto/spec/IvParameterSpec;
    .end local v16           #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .end local v24           #read:I
    :catch_2
    move-exception v10

    move-object/from16 v21, v22

    .end local v22           #outStream:Ljava/io/FileOutputStream;
    .restart local v21       #outStream:Ljava/io/FileOutputStream;
    move-object v13, v14

    .line 2046
    .end local v14           #inStream:Ljava/io/FileInputStream;
    .end local v17           #length:J
    .local v10, e:Ljava/io/IOException;
    .restart local v13       #inStream:Ljava/io/FileInputStream;
    :goto_4
    :try_start_5
    invoke-virtual {v10}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v29

    const-string v30, "ENOSPC"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_7

    .line 2047
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->showSDSpaceNotEnough()V

    .line 2049
    :cond_7
    const-string v29, "chenlu"

    invoke-virtual {v10}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    const-string v29, "chenlu"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "decrypt cancel file is"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    const-string v29, "chenlu"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "delete target_file is"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2053
    const/16 v29, 0x0

    .line 2061
    invoke-static {v13}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 2062
    invoke-static {v12}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 2063
    invoke-static/range {v21 .. v21}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 2064
    invoke-static/range {v20 .. v20}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    goto/16 :goto_0

    .line 2030
    .end local v10           #e:Ljava/io/IOException;
    .end local v13           #inStream:Ljava/io/FileInputStream;
    .end local v21           #outStream:Ljava/io/FileOutputStream;
    .restart local v5       #buffer_in:Ljava/nio/ByteBuffer;
    .restart local v6       #buffer_out:Ljava/nio/ByteBuffer;
    .restart local v7       #cip:Ljavax/crypto/Cipher;
    .restart local v8       #cur:J
    .restart local v14       #inStream:Ljava/io/FileInputStream;
    .restart local v15       #iv:Ljavax/crypto/spec/IvParameterSpec;
    .restart local v16       #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v17       #length:J
    .restart local v22       #outStream:Ljava/io/FileOutputStream;
    .restart local v24       #read:I
    :cond_8
    if-nez v26, :cond_a

    .line 2031
    :try_start_6
    move-object/from16 v0, v27

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    .line 2032
    invoke-static/range {p4 .. p4}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->scanFileAsync(Ljava/lang/String;)V

    .line 2033
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v19

    .line 2034
    .local v19, localPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->deleteRecordById(I)Z

    move-result v25

    .line 2035
    .local v25, ret:Z
    if-nez v25, :cond_9

    .line 2036
    new-instance v29, Ljava/lang/Exception;

    const-string v30, "delete Record error"

    invoke-direct/range {v29 .. v30}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v29
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 2054
    .end local v5           #buffer_in:Ljava/nio/ByteBuffer;
    .end local v6           #buffer_out:Ljava/nio/ByteBuffer;
    .end local v7           #cip:Ljavax/crypto/Cipher;
    .end local v8           #cur:J
    .end local v15           #iv:Ljavax/crypto/spec/IvParameterSpec;
    .end local v16           #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .end local v19           #localPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
    .end local v24           #read:I
    .end local v25           #ret:Z
    :catch_3
    move-exception v10

    move-object/from16 v21, v22

    .end local v22           #outStream:Ljava/io/FileOutputStream;
    .restart local v21       #outStream:Ljava/io/FileOutputStream;
    move-object v13, v14

    .line 2055
    .end local v14           #inStream:Ljava/io/FileInputStream;
    .end local v17           #length:J
    .local v10, e:Ljava/lang/Exception;
    .restart local v13       #inStream:Ljava/io/FileInputStream;
    :goto_5
    :try_start_7
    const-string v29, "chenlu"

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    const-string v29, "chenlu"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "decrypt cancel file is"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2057
    const-string v29, "chenlu"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "delete target_file is"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->delete()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2059
    const/16 v29, 0x0

    .line 2061
    invoke-static {v13}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 2062
    invoke-static {v12}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 2063
    invoke-static/range {v21 .. v21}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 2064
    invoke-static/range {v20 .. v20}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    goto/16 :goto_0

    .line 2038
    .end local v10           #e:Ljava/lang/Exception;
    .end local v13           #inStream:Ljava/io/FileInputStream;
    .end local v21           #outStream:Ljava/io/FileOutputStream;
    .restart local v5       #buffer_in:Ljava/nio/ByteBuffer;
    .restart local v6       #buffer_out:Ljava/nio/ByteBuffer;
    .restart local v7       #cip:Ljavax/crypto/Cipher;
    .restart local v8       #cur:J
    .restart local v14       #inStream:Ljava/io/FileInputStream;
    .restart local v15       #iv:Ljavax/crypto/spec/IvParameterSpec;
    .restart local v16       #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v17       #length:J
    .restart local v19       #localPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
    .restart local v22       #outStream:Ljava/io/FileOutputStream;
    .restart local v24       #read:I
    .restart local v25       #ret:Z
    :cond_9
    :try_start_8
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 2040
    .end local v19           #localPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
    .end local v25           #ret:Z
    :cond_a
    const-string v29, "chenlu"

    const-string v30, "decrypt end"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 2041
    const/16 v29, 0x1

    .line 2061
    invoke-static {v14}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 2062
    invoke-static {v12}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 2063
    invoke-static/range {v22 .. v22}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 2064
    invoke-static/range {v20 .. v20}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    goto/16 :goto_0

    .line 2061
    .end local v5           #buffer_in:Ljava/nio/ByteBuffer;
    .end local v6           #buffer_out:Ljava/nio/ByteBuffer;
    .end local v7           #cip:Ljavax/crypto/Cipher;
    .end local v8           #cur:J
    .end local v14           #inStream:Ljava/io/FileInputStream;
    .end local v15           #iv:Ljavax/crypto/spec/IvParameterSpec;
    .end local v16           #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .end local v17           #length:J
    .end local v22           #outStream:Ljava/io/FileOutputStream;
    .end local v24           #read:I
    .restart local v13       #inStream:Ljava/io/FileInputStream;
    .restart local v21       #outStream:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v29

    :goto_6
    invoke-static {v13}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 2062
    invoke-static {v12}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 2063
    invoke-static/range {v21 .. v21}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 2064
    invoke-static/range {v20 .. v20}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    throw v29

    .line 2061
    .end local v13           #inStream:Ljava/io/FileInputStream;
    .restart local v14       #inStream:Ljava/io/FileInputStream;
    .restart local v17       #length:J
    :catchall_1
    move-exception v29

    move-object v13, v14

    .end local v14           #inStream:Ljava/io/FileInputStream;
    .restart local v13       #inStream:Ljava/io/FileInputStream;
    goto :goto_6

    .end local v13           #inStream:Ljava/io/FileInputStream;
    .end local v21           #outStream:Ljava/io/FileOutputStream;
    .restart local v14       #inStream:Ljava/io/FileInputStream;
    .restart local v22       #outStream:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v29

    move-object/from16 v21, v22

    .end local v22           #outStream:Ljava/io/FileOutputStream;
    .restart local v21       #outStream:Ljava/io/FileOutputStream;
    move-object v13, v14

    .end local v14           #inStream:Ljava/io/FileInputStream;
    .restart local v13       #inStream:Ljava/io/FileInputStream;
    goto :goto_6

    .line 2054
    .end local v17           #length:J
    :catch_4
    move-exception v10

    goto/16 :goto_5

    .end local v13           #inStream:Ljava/io/FileInputStream;
    .restart local v14       #inStream:Ljava/io/FileInputStream;
    .restart local v17       #length:J
    :catch_5
    move-exception v10

    move-object v13, v14

    .end local v14           #inStream:Ljava/io/FileInputStream;
    .restart local v13       #inStream:Ljava/io/FileInputStream;
    goto/16 :goto_5

    .line 2045
    .end local v17           #length:J
    :catch_6
    move-exception v10

    goto/16 :goto_4

    .end local v13           #inStream:Ljava/io/FileInputStream;
    .restart local v14       #inStream:Ljava/io/FileInputStream;
    .restart local v17       #length:J
    :catch_7
    move-exception v10

    move-object v13, v14

    .end local v14           #inStream:Ljava/io/FileInputStream;
    .restart local v13       #inStream:Ljava/io/FileInputStream;
    goto/16 :goto_4

    .line 2042
    .end local v13           #inStream:Ljava/io/FileInputStream;
    .restart local v14       #inStream:Ljava/io/FileInputStream;
    :catch_8
    move-exception v10

    move-object v13, v14

    .end local v14           #inStream:Ljava/io/FileInputStream;
    .restart local v13       #inStream:Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method public static deleteAudioAsync(Ljava/lang/String;)V
    .locals 5
    .parameter "path"

    .prologue
    .line 2218
    :try_start_0
    const-string v2, "\'"

    const-string v3, "\'\'"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2219
    .local v0, localPath:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_data=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2220
    .local v1, where:Ljava/lang/String;
    sget-object v2, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-virtual {v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2224
    .end local v0           #localPath:Ljava/lang/String;
    .end local v1           #where:Ljava/lang/String;
    :goto_0
    return-void

    .line 2221
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static deleteData()V
    .locals 4

    .prologue
    .line 4808
    :try_start_0
    sget-object v1, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-virtual {v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4809
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->ZB_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4813
    :goto_0
    return-void

    .line 4810
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static deleteImageAsync(Ljava/lang/String;)V
    .locals 5
    .parameter "path"

    .prologue
    .line 2198
    :try_start_0
    const-string v2, "\'"

    const-string v3, "\'\'"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2199
    .local v0, localPath:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_data=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2200
    .local v1, where:Ljava/lang/String;
    sget-object v2, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-virtual {v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2204
    .end local v0           #localPath:Ljava/lang/String;
    .end local v1           #where:Ljava/lang/String;
    :goto_0
    return-void

    .line 2201
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static deletePrivacyData(ILjava/lang/String;)Z
    .locals 9
    .parameter "id"
    .parameter "nn"

    .prologue
    const/4 v5, 0x0

    .line 3697
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getPDPath()Ljava/lang/String;

    move-result-object v3

    .line 3698
    .local v3, privacyDataPath:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 3712
    :goto_0
    return v5

    .line 3701
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3703
    .local v1, file:Ljava/io/File;
    :try_start_0
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v2

    .line 3704
    .local v2, localPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
    invoke-virtual {v2, p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->deleteRecordById(I)Z

    move-result v4

    .line 3705
    .local v4, ret:Z
    if-nez v4, :cond_1

    .line 3706
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "save to database error"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3710
    .end local v2           #localPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
    .end local v4           #ret:Z
    :catch_0
    move-exception v0

    .line 3711
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "chenlu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delete failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3708
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #localPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
    .restart local v4       #ret:Z
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3709
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static deleteVideoAsync(Ljava/lang/String;)V
    .locals 5
    .parameter "path"

    .prologue
    .line 2208
    :try_start_0
    const-string v2, "\'"

    const-string v3, "\'\'"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2209
    .local v0, localPath:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_data=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2210
    .local v1, where:Ljava/lang/String;
    sget-object v2, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-virtual {v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2214
    .end local v0           #localPath:Ljava/lang/String;
    .end local v1           #where:Ljava/lang/String;
    :goto_0
    return-void

    .line 2211
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static disableAntieavesdrop()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5120
    sget v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->securityExtentionVersion:I

    if-le v0, v1, :cond_0

    .line 5121
    sget-object v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->sPrivacyManager:Lcom/zte/privacy/ZTEPrivacyManager;

    invoke-virtual {v0, v1}, Lcom/zte/privacy/ZTEPrivacyManager;->setAntiPhoneRecordingSetting(I)V

    .line 5125
    :goto_0
    return v1

    .line 5124
    :cond_0
    invoke-static {v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setAntiPhoneRecordingSetting(I)V

    goto :goto_0
.end method

.method public static disablePackegePermissions(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 5185
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v0

    .line 5186
    .local v0, permUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;
    invoke-virtual {v0, p0}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->disableAllPermissions(Ljava/lang/String;)V

    .line 5187
    return-void
.end method

.method public static doInterceptAdPrepare()V
    .locals 1

    .prologue
    .line 321
    new-instance v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$1;

    invoke-direct {v0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$1;-><init>()V

    invoke-virtual {v0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$1;->start()V

    .line 329
    return-void
.end method

.method public static doPermissionScan()Lcom/zte/heartyservice/common/datatype/PermissionScanResult;
    .locals 2

    .prologue
    .line 502
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v0

    .line 503
    .local v0, permUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;
    const/4 v1, 0x0

    .line 504
    .local v1, result:Lcom/zte/heartyservice/common/datatype/PermissionScanResult;
    invoke-virtual {v0}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->doPermissionScan()Lcom/zte/heartyservice/common/datatype/PermissionScanResult;

    move-result-object v1

    .line 505
    return-object v1
.end method

.method private static doQuery(Ljava/util/HashMap;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4789
    .local p0, item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    sget-object v1, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-virtual {v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4790
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 4792
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->ZB_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "url"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "visits"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4793
    if-eqz v6, :cond_1

    .line 4794
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4795
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 4796
    .local v7, key:I
    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 4797
    .local v8, value:I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4801
    .end local v7           #key:I
    .end local v8           #value:I
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_0

    .line 4802
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v1

    .line 4801
    :cond_1
    if-eqz v6, :cond_2

    .line 4802
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4804
    :cond_2
    return-void
.end method

.method public static enableAntieavesdrop()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 5110
    sget v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->securityExtentionVersion:I

    if-le v0, v1, :cond_0

    .line 5111
    sget-object v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->sPrivacyManager:Lcom/zte/privacy/ZTEPrivacyManager;

    invoke-virtual {v0, v2}, Lcom/zte/privacy/ZTEPrivacyManager;->setAntiPhoneRecordingSetting(I)V

    .line 5115
    :goto_0
    return v1

    .line 5114
    :cond_0
    invoke-static {v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setAntiPhoneRecordingSetting(I)V

    goto :goto_0
.end method

.method public static encry(ILjava/lang/String;ILcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;Landroid/graphics/Bitmap;)Z
    .locals 5
    .parameter "n"
    .parameter "path"
    .parameter "encry_type"
    .parameter "cb"
    .parameter "bitMap"

    .prologue
    const-wide/16 v3, 0x2800

    .line 907
    packed-switch p2, :pswitch_data_0

    .line 942
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 910
    :pswitch_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 911
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 912
    .local v1, length:J
    cmp-long v3, v1, v3

    if-gtz v3, :cond_0

    .line 913
    invoke-static {p0, p1, p3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encry_image_without_bitmap(ILjava/lang/String;Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;)Z

    move-result v3

    goto :goto_0

    .line 915
    :cond_0
    invoke-static {p0, p1, p3, p4}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encry_image_head_with_bitmap(ILjava/lang/String;Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;Landroid/graphics/Bitmap;)Z

    move-result v3

    goto :goto_0

    .line 921
    .end local v0           #file:Ljava/io/File;
    .end local v1           #length:J
    :pswitch_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 922
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 923
    .restart local v1       #length:J
    cmp-long v3, v1, v3

    if-gtz v3, :cond_1

    .line 924
    invoke-static {p0, p1, p3, p4}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encry_video_with_bitmap(ILjava/lang/String;Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;Landroid/graphics/Bitmap;)Z

    move-result v3

    goto :goto_0

    .line 926
    :cond_1
    invoke-static {p0, p1, p3, p4}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encry_video_head_with_bitmap(ILjava/lang/String;Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;Landroid/graphics/Bitmap;)Z

    move-result v3

    goto :goto_0

    .line 932
    .end local v0           #file:Ljava/io/File;
    .end local v1           #length:J
    :pswitch_2
    invoke-static {p0, p1, p3, p4}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encry_video_with_bitmap(ILjava/lang/String;Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;Landroid/graphics/Bitmap;)Z

    move-result v3

    goto :goto_0

    .line 936
    :pswitch_3
    invoke-static {p0, p1, p3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encry_file(ILjava/lang/String;Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;)Z

    move-result v3

    goto :goto_0

    .line 939
    :pswitch_4
    invoke-static {p0, p1, p3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encry_dir(ILjava/lang/String;Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;)Z

    move-result v3

    goto :goto_0

    .line 907
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static encryString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "str"

    .prologue
    .line 2978
    :try_start_0
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPassword()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ASCII"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 2979
    .local v2, raw:[B
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v3, v2, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 2980
    .local v3, skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    const-string v4, "AES/CBC/PKCS5Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 2981
    .local v0, cip:Ljavax/crypto/Cipher;
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v4, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->IV:[B

    invoke-direct {v1, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 2982
    .local v1, iv:Ljavax/crypto/spec/IvParameterSpec;
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 2983
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 2987
    .end local v0           #cip:Ljavax/crypto/Cipher;
    .end local v1           #iv:Ljavax/crypto/spec/IvParameterSpec;
    .end local v2           #raw:[B
    .end local v3           #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v4

    .line 2984
    :catch_0
    move-exception v4

    .line 2987
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static encryString(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 5
    .parameter "str"
    .parameter "keyData"

    .prologue
    .line 3025
    :try_start_0
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 3026
    .local v0, cip:Ljavax/crypto/Cipher;
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v3, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->IV:[B

    invoke-direct {v1, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 3027
    .local v1, iv:Ljavax/crypto/spec/IvParameterSpec;
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, p1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 3028
    .local v2, keySpec:Ljavax/crypto/spec/SecretKeySpec;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 3029
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 3033
    .end local v0           #cip:Ljavax/crypto/Cipher;
    .end local v1           #iv:Ljavax/crypto/spec/IvParameterSpec;
    .end local v2           #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v3

    .line 3030
    :catch_0
    move-exception v3

    .line 3033
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static encryString2Bytes(Ljava/lang/String;[B)[B
    .locals 4
    .parameter "str"
    .parameter "keyData"

    .prologue
    .line 3039
    :try_start_0
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 3040
    .local v0, cip:Ljavax/crypto/Cipher;
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v3, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->IV:[B

    invoke-direct {v1, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 3041
    .local v1, iv:Ljavax/crypto/spec/IvParameterSpec;
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, p1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 3042
    .local v2, keySpec:Ljavax/crypto/spec/SecretKeySpec;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 3043
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 3047
    .end local v0           #cip:Ljavax/crypto/Cipher;
    .end local v1           #iv:Ljavax/crypto/spec/IvParameterSpec;
    .end local v2           #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v3

    .line 3044
    :catch_0
    move-exception v3

    .line 3047
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static encryStringRSA([BLjava/security/Key;)Ljava/lang/String;
    .locals 4
    .parameter "keyData"
    .parameter "key"

    .prologue
    .line 3066
    :try_start_0
    const-string v2, "RSA"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 3067
    .local v0, cip:Ljavax/crypto/Cipher;
    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 3068
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 3072
    .end local v0           #cip:Ljavax/crypto/Cipher;
    :goto_0
    return-object v2

    .line 3069
    :catch_0
    move-exception v1

    .line 3070
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3072
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static encry_dir(ILjava/lang/String;Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;)Z
    .locals 36
    .parameter "n"
    .parameter "path"
    .parameter "cb"

    .prologue
    .line 1597
    const-string v3, "chenlu"

    const-string v4, "encry begin"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->clean_dir_tmp_file()V

    .line 1599
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1600
    .local v20, file:Ljava/io/File;
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getPDTempDirExchangeFile()Ljava/lang/String;

    move-result-object v33

    .line 1601
    .local v33, temp_dir_exchange_filename:Ljava/lang/String;
    if-nez v33, :cond_0

    .line 1602
    const/4 v3, 0x0

    .line 1676
    :goto_0
    return v3

    .line 1604
    :cond_0
    new-instance v35, Ljava/io/File;

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1605
    .local v35, zipfile:Ljava/io/File;
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getEncryFile()Ljava/io/File;

    move-result-object v19

    .line 1606
    .local v19, encry_file:Ljava/io/File;
    if-nez v19, :cond_1

    .line 1607
    const/4 v3, 0x0

    goto :goto_0

    .line 1610
    :cond_1
    const/16 v21, 0x0

    .line 1611
    .local v21, in:Ljava/nio/channels/FileChannel;
    const/16 v28, 0x0

    .line 1612
    .local v28, out:Ljava/nio/channels/FileChannel;
    const/16 v22, 0x0

    .line 1613
    .local v22, inStream:Ljava/io/FileInputStream;
    const/16 v29, 0x0

    .line 1615
    .local v29, outStream:Ljava/io/FileOutputStream;
    :try_start_0
    move-object/from16 v0, v35

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->zip(Ljava/io/File;Ljava/io/File;)V

    .line 1616
    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->length()J

    move-result-wide v26

    .line 1617
    .local v26, length:J
    new-instance v23, Ljava/io/FileInputStream;

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1618
    .end local v22           #inStream:Ljava/io/FileInputStream;
    .local v23, inStream:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v30, Ljava/io/FileOutputStream;

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1619
    .end local v29           #outStream:Ljava/io/FileOutputStream;
    .local v30, outStream:Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v21

    .line 1620
    invoke-virtual/range {v30 .. v30}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v28

    .line 1621
    const v3, 0xfa000

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 1622
    .local v13, buffer_in:Ljava/nio/ByteBuffer;
    const v3, 0xfa010

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 1623
    .local v14, buffer_out:Ljava/nio/ByteBuffer;
    const-wide/16 v16, 0x0

    .line 1624
    .local v16, cur:J
    const/16 v31, -0x1

    .line 1625
    .local v31, read:I
    const/16 v34, -0x1

    .line 1626
    .local v34, write:I
    const-string v3, "%.2f%%"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move/from16 v1, p0

    invoke-interface {v0, v1, v3, v4}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;->updatePDMsg(ILjava/lang/String;Ljava/lang/String;)V

    .line 1627
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->createRandomAESKey()[B

    move-result-object v12

    .line 1628
    .local v12, keyData:[B
    new-instance v25, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    move-object/from16 v0, v25

    invoke-direct {v0, v12, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 1629
    .local v25, keySpec:Ljavax/crypto/spec/SecretKeySpec;
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v15

    .line 1630
    .local v15, cip:Ljavax/crypto/Cipher;
    new-instance v24, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v3, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->IV:[B

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 1631
    .local v24, iv:Ljavax/crypto/spec/IvParameterSpec;
    const/4 v3, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v15, v3, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1632
    :goto_1
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v31

    const/4 v3, -0x1

    move/from16 v0, v31

    if-eq v0, v3, :cond_2

    .line 1633
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1634
    invoke-virtual {v15, v13, v14}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    .line 1635
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1636
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1637
    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v34

    .line 1638
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1639
    move/from16 v0, v31

    int-to-long v3, v0

    add-long v16, v16, v3

    .line 1640
    const-string v3, "chenlu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encry read:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " write"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    const-string v3, "%.2f%%"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-wide/16 v6, 0x64

    mul-long v6, v6, v16

    long-to-double v6, v6

    move-wide/from16 v0, v26

    long-to-double v8, v0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move/from16 v1, p0

    invoke-interface {v0, v1, v3, v4}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;->updatePDMsg(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    .line 1653
    .end local v12           #keyData:[B
    .end local v13           #buffer_in:Ljava/nio/ByteBuffer;
    .end local v14           #buffer_out:Ljava/nio/ByteBuffer;
    .end local v15           #cip:Ljavax/crypto/Cipher;
    .end local v16           #cur:J
    .end local v24           #iv:Ljavax/crypto/spec/IvParameterSpec;
    .end local v25           #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .end local v31           #read:I
    .end local v34           #write:I
    :catch_0
    move-exception v18

    move-object/from16 v29, v30

    .end local v30           #outStream:Ljava/io/FileOutputStream;
    .restart local v29       #outStream:Ljava/io/FileOutputStream;
    move-object/from16 v22, v23

    .line 1654
    .end local v23           #inStream:Ljava/io/FileInputStream;
    .end local v26           #length:J
    .local v18, e:Ljava/io/FileNotFoundException;
    .restart local v22       #inStream:Ljava/io/FileInputStream;
    :goto_2
    :try_start_3
    const-string v3, "chenlu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encry cancel because FileNotFoundException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1655
    const/4 v3, 0x0

    .line 1672
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->clean_dir_tmp_file()V

    .line 1673
    invoke-static/range {v22 .. v22}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 1674
    invoke-static/range {v21 .. v21}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 1675
    invoke-static/range {v29 .. v29}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 1676
    invoke-static/range {v28 .. v28}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    goto/16 :goto_0

    .line 1643
    .end local v18           #e:Ljava/io/FileNotFoundException;
    .end local v22           #inStream:Ljava/io/FileInputStream;
    .end local v29           #outStream:Ljava/io/FileOutputStream;
    .restart local v12       #keyData:[B
    .restart local v13       #buffer_in:Ljava/nio/ByteBuffer;
    .restart local v14       #buffer_out:Ljava/nio/ByteBuffer;
    .restart local v15       #cip:Ljavax/crypto/Cipher;
    .restart local v16       #cur:J
    .restart local v23       #inStream:Ljava/io/FileInputStream;
    .restart local v24       #iv:Ljavax/crypto/spec/IvParameterSpec;
    .restart local v25       #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v26       #length:J
    .restart local v30       #outStream:Ljava/io/FileOutputStream;
    .restart local v31       #read:I
    .restart local v34       #write:I
    :cond_2
    :try_start_4
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v2

    .line 1644
    .local v2, localPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getFolderUuid()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x8

    move-object/from16 v4, p1

    invoke-virtual/range {v2 .. v12}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->insertRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;I[B)Z

    move-result v32

    .line 1647
    .local v32, ret:Z
    if-nez v32, :cond_4

    .line 1648
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "save to database error"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 1656
    .end local v2           #localPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
    .end local v12           #keyData:[B
    .end local v13           #buffer_in:Ljava/nio/ByteBuffer;
    .end local v14           #buffer_out:Ljava/nio/ByteBuffer;
    .end local v15           #cip:Ljavax/crypto/Cipher;
    .end local v16           #cur:J
    .end local v24           #iv:Ljavax/crypto/spec/IvParameterSpec;
    .end local v25           #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .end local v31           #read:I
    .end local v32           #ret:Z
    .end local v34           #write:I
    :catch_1
    move-exception v18

    move-object/from16 v29, v30

    .end local v30           #outStream:Ljava/io/FileOutputStream;
    .restart local v29       #outStream:Ljava/io/FileOutputStream;
    move-object/from16 v22, v23

    .line 1657
    .end local v23           #inStream:Ljava/io/FileInputStream;
    .end local v26           #length:J
    .local v18, e:Ljava/io/IOException;
    .restart local v22       #inStream:Ljava/io/FileInputStream;
    :goto_3
    :try_start_5
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ENOSPC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1658
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->showSDSpaceNotEnough()V

    .line 1660
    :cond_3
    const-string v3, "chenlu"

    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    const-string v3, "chenlu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encry cancel file is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    const-string v3, "chenlu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete encry_file is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1664
    const/4 v3, 0x0

    .line 1672
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->clean_dir_tmp_file()V

    .line 1673
    invoke-static/range {v22 .. v22}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 1674
    invoke-static/range {v21 .. v21}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 1675
    invoke-static/range {v29 .. v29}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 1676
    invoke-static/range {v28 .. v28}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    goto/16 :goto_0

    .line 1650
    .end local v18           #e:Ljava/io/IOException;
    .end local v22           #inStream:Ljava/io/FileInputStream;
    .end local v29           #outStream:Ljava/io/FileOutputStream;
    .restart local v2       #localPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
    .restart local v12       #keyData:[B
    .restart local v13       #buffer_in:Ljava/nio/ByteBuffer;
    .restart local v14       #buffer_out:Ljava/nio/ByteBuffer;
    .restart local v15       #cip:Ljavax/crypto/Cipher;
    .restart local v16       #cur:J
    .restart local v23       #inStream:Ljava/io/FileInputStream;
    .restart local v24       #iv:Ljavax/crypto/spec/IvParameterSpec;
    .restart local v25       #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v26       #length:J
    .restart local v30       #outStream:Ljava/io/FileOutputStream;
    .restart local v31       #read:I
    .restart local v32       #ret:Z
    .restart local v34       #write:I
    :cond_4
    :try_start_6
    invoke-static/range {p1 .. p1}, Lcom/zte/filexplorer/FileHelper;->deleteTarget(Ljava/lang/String;)Z

    .line 1651
    const-string v3, "chenlu"

    const-string v4, "encry end"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 1652
    const/4 v3, 0x1

    .line 1672
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->clean_dir_tmp_file()V

    .line 1673
    invoke-static/range {v23 .. v23}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 1674
    invoke-static/range {v21 .. v21}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 1675
    invoke-static/range {v30 .. v30}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 1676
    invoke-static/range {v28 .. v28}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    goto/16 :goto_0

    .line 1665
    .end local v2           #localPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
    .end local v12           #keyData:[B
    .end local v13           #buffer_in:Ljava/nio/ByteBuffer;
    .end local v14           #buffer_out:Ljava/nio/ByteBuffer;
    .end local v15           #cip:Ljavax/crypto/Cipher;
    .end local v16           #cur:J
    .end local v23           #inStream:Ljava/io/FileInputStream;
    .end local v24           #iv:Ljavax/crypto/spec/IvParameterSpec;
    .end local v25           #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .end local v26           #length:J
    .end local v30           #outStream:Ljava/io/FileOutputStream;
    .end local v31           #read:I
    .end local v32           #ret:Z
    .end local v34           #write:I
    .restart local v22       #inStream:Ljava/io/FileInputStream;
    .restart local v29       #outStream:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v18

    .line 1666
    .local v18, e:Ljava/lang/Exception;
    :goto_4
    :try_start_7
    const-string v3, "chenlu"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    const-string v3, "chenlu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encry cancel file is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    const-string v3, "chenlu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete encry_file is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1670
    const/4 v3, 0x0

    .line 1672
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->clean_dir_tmp_file()V

    .line 1673
    invoke-static/range {v22 .. v22}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 1674
    invoke-static/range {v21 .. v21}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 1675
    invoke-static/range {v29 .. v29}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 1676
    invoke-static/range {v28 .. v28}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    goto/16 :goto_0

    .line 1672
    .end local v18           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :goto_5
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->clean_dir_tmp_file()V

    .line 1673
    invoke-static/range {v22 .. v22}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 1674
    invoke-static/range {v21 .. v21}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 1675
    invoke-static/range {v29 .. v29}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 1676
    invoke-static/range {v28 .. v28}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    throw v3

    .line 1672
    .end local v22           #inStream:Ljava/io/FileInputStream;
    .restart local v23       #inStream:Ljava/io/FileInputStream;
    .restart local v26       #length:J
    :catchall_1
    move-exception v3

    move-object/from16 v22, v23

    .end local v23           #inStream:Ljava/io/FileInputStream;
    .restart local v22       #inStream:Ljava/io/FileInputStream;
    goto :goto_5

    .end local v22           #inStream:Ljava/io/FileInputStream;
    .end local v29           #outStream:Ljava/io/FileOutputStream;
    .restart local v23       #inStream:Ljava/io/FileInputStream;
    .restart local v30       #outStream:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v3

    move-object/from16 v29, v30

    .end local v30           #outStream:Ljava/io/FileOutputStream;
    .restart local v29       #outStream:Ljava/io/FileOutputStream;
    move-object/from16 v22, v23

    .end local v23           #inStream:Ljava/io/FileInputStream;
    .restart local v22       #inStream:Ljava/io/FileInputStream;
    goto :goto_5

    .line 1665
    .end local v22           #inStream:Ljava/io/FileInputStream;
    .restart local v23       #inStream:Ljava/io/FileInputStream;
    :catch_3
    move-exception v18

    move-object/from16 v22, v23

    .end local v23           #inStream:Ljava/io/FileInputStream;
    .restart local v22       #inStream:Ljava/io/FileInputStream;
    goto :goto_4

    .end local v22           #inStream:Ljava/io/FileInputStream;
    .end local v29           #outStream:Ljava/io/FileOutputStream;
    .restart local v23       #inStream:Ljava/io/FileInputStream;
    .restart local v30       #outStream:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v18

    move-object/from16 v29, v30

    .end local v30           #outStream:Ljava/io/FileOutputStream;
    .restart local v29       #outStream:Ljava/io/FileOutputStream;
    move-object/from16 v22, v23

    .end local v23           #inStream:Ljava/io/FileInputStream;
    .restart local v22       #inStream:Ljava/io/FileInputStream;
    goto :goto_4

    .line 1656
    .end local v26           #length:J
    :catch_5
    move-exception v18

    goto/16 :goto_3

    .end local v22           #inStream:Ljava/io/FileInputStream;
    .restart local v23       #inStream:Ljava/io/FileInputStream;
    .restart local v26       #length:J
    :catch_6
    move-exception v18

    move-object/from16 v22, v23

    .end local v23           #inStream:Ljava/io/FileInputStream;
    .restart local v22       #inStream:Ljava/io/FileInputStream;
    goto/16 :goto_3

    .line 1653
    .end local v26           #length:J
    :catch_7
    move-exception v18

    goto/16 :goto_2

    .end local v22           #inStream:Ljava/io/FileInputStream;
    .restart local v23       #inStream:Ljava/io/FileInputStream;
    .restart local v26       #length:J
    :catch_8
    move-exception v18

    move-object/from16 v22, v23

    .end local v23           #inStream:Ljava/io/FileInputStream;
    .restart local v22       #inStream:Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method private static encry_file(ILjava/lang/String;Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;)Z
    .locals 34
    .parameter "n"
    .parameter "path"
    .parameter "cb"

    .prologue
    .line 1516
    const-string v3, "chenlu"

    const-string v4, "encry begin"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1518
    .local v20, file:Ljava/io/File;
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getEncryFile()Ljava/io/File;

    move-result-object v19

    .line 1519
    .local v19, encry_file:Ljava/io/File;
    if-nez v19, :cond_0

    .line 1520
    const/4 v3, 0x0

    .line 1591
    :goto_0
    return v3

    .line 1523
    :cond_0
    const/16 v21, 0x0

    .line 1524
    .local v21, in:Ljava/nio/channels/FileChannel;
    const/16 v28, 0x0

    .line 1525
    .local v28, out:Ljava/nio/channels/FileChannel;
    const/16 v22, 0x0

    .line 1526
    .local v22, inStream:Ljava/io/FileInputStream;
    const/16 v29, 0x0

    .line 1528
    .local v29, outStream:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->length()J

    move-result-wide v26

    .line 1529
    .local v26, length:J
    invoke-static/range {v26 .. v27}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkIsSDSpaceNotEnoughAndShowToast(J)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1531
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "SD space not enough"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 1569
    .end local v26           #length:J
    :catch_0
    move-exception v18

    .line 1570
    .local v18, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_1
    const-string v3, "chenlu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encry cancel because FileNotFoundException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1571
    const/4 v3, 0x0

    .line 1588
    invoke-static/range {v22 .. v22}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 1589
    invoke-static/range {v21 .. v21}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 1590
    invoke-static/range {v29 .. v29}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 1591
    invoke-static/range {v28 .. v28}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    goto :goto_0

    .line 1533
    .end local v18           #e:Ljava/io/FileNotFoundException;
    .restart local v26       #length:J
    :cond_1
    :try_start_2
    new-instance v23, Ljava/io/FileInputStream;

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 1534
    .end local v22           #inStream:Ljava/io/FileInputStream;
    .local v23, inStream:Ljava/io/FileInputStream;
    :try_start_3
    new-instance v30, Ljava/io/FileOutputStream;

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 1535
    .end local v29           #outStream:Ljava/io/FileOutputStream;
    .local v30, outStream:Ljava/io/FileOutputStream;
    :try_start_4
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v21

    .line 1536
    invoke-virtual/range {v30 .. v30}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v28

    .line 1537
    const v3, 0xfa000

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 1538
    .local v13, buffer_in:Ljava/nio/ByteBuffer;
    const v3, 0xfa010

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 1539
    .local v14, buffer_out:Ljava/nio/ByteBuffer;
    const-wide/16 v16, 0x0

    .line 1540
    .local v16, cur:J
    const/16 v31, -0x1

    .line 1541
    .local v31, read:I
    const/16 v33, -0x1

    .line 1542
    .local v33, write:I
    const-string v3, "%.2f%%"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move/from16 v1, p0

    invoke-interface {v0, v1, v3, v4}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;->updatePDMsg(ILjava/lang/String;Ljava/lang/String;)V

    .line 1543
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->createRandomAESKey()[B

    move-result-object v12

    .line 1544
    .local v12, keyData:[B
    new-instance v25, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    move-object/from16 v0, v25

    invoke-direct {v0, v12, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 1545
    .local v25, keySpec:Ljavax/crypto/spec/SecretKeySpec;
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v15

    .line 1546
    .local v15, cip:Ljavax/crypto/Cipher;
    new-instance v24, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v3, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->IV:[B

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 1547
    .local v24, iv:Ljavax/crypto/spec/IvParameterSpec;
    const/4 v3, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v15, v3, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1548
    :goto_2
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v31

    const/4 v3, -0x1

    move/from16 v0, v31

    if-eq v0, v3, :cond_2

    .line 1549
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1550
    invoke-virtual {v15, v13, v14}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    .line 1551
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1552
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1553
    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v33

    .line 1554
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1555
    move/from16 v0, v31

    int-to-long v3, v0

    add-long v16, v16, v3

    .line 1556
    const-string v3, "chenlu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encry read:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " write"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    const-string v3, "%.2f%%"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-wide/16 v6, 0x64

    mul-long v6, v6, v16

    long-to-double v6, v6

    move-wide/from16 v0, v26

    long-to-double v8, v0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move/from16 v1, p0

    invoke-interface {v0, v1, v3, v4}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;->updatePDMsg(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1569
    .end local v12           #keyData:[B
    .end local v13           #buffer_in:Ljava/nio/ByteBuffer;
    .end local v14           #buffer_out:Ljava/nio/ByteBuffer;
    .end local v15           #cip:Ljavax/crypto/Cipher;
    .end local v16           #cur:J
    .end local v24           #iv:Ljavax/crypto/spec/IvParameterSpec;
    .end local v25           #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .end local v31           #read:I
    .end local v33           #write:I
    :catch_1
    move-exception v18

    move-object/from16 v29, v30

    .end local v30           #outStream:Ljava/io/FileOutputStream;
    .restart local v29       #outStream:Ljava/io/FileOutputStream;
    move-object/from16 v22, v23

    .end local v23           #inStream:Ljava/io/FileInputStream;
    .restart local v22       #inStream:Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 1559
    .end local v22           #inStream:Ljava/io/FileInputStream;
    .end local v29           #outStream:Ljava/io/FileOutputStream;
    .restart local v12       #keyData:[B
    .restart local v13       #buffer_in:Ljava/nio/ByteBuffer;
    .restart local v14       #buffer_out:Ljava/nio/ByteBuffer;
    .restart local v15       #cip:Ljavax/crypto/Cipher;
    .restart local v16       #cur:J
    .restart local v23       #inStream:Ljava/io/FileInputStream;
    .restart local v24       #iv:Ljavax/crypto/spec/IvParameterSpec;
    .restart local v25       #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v30       #outStream:Ljava/io/FileOutputStream;
    .restart local v31       #read:I
    .restart local v33       #write:I
    :cond_2
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v2

    .line 1560
    .local v2, localPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getFolderUuid()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x7

    move-object/from16 v4, p1

    invoke-virtual/range {v2 .. v12}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->insertRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;I[B)Z

    move-result v32

    .line 1563
    .local v32, ret:Z
    if-nez v32, :cond_4

    .line 1564
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "save to database error"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 1572
    .end local v2           #localPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
    .end local v12           #keyData:[B
    .end local v13           #buffer_in:Ljava/nio/ByteBuffer;
    .end local v14           #buffer_out:Ljava/nio/ByteBuffer;
    .end local v15           #cip:Ljavax/crypto/Cipher;
    .end local v16           #cur:J
    .end local v24           #iv:Ljavax/crypto/spec/IvParameterSpec;
    .end local v25           #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .end local v31           #read:I
    .end local v32           #ret:Z
    .end local v33           #write:I
    :catch_2
    move-exception v18

    move-object/from16 v29, v30

    .end local v30           #outStream:Ljava/io/FileOutputStream;
    .restart local v29       #outStream:Ljava/io/FileOutputStream;
    move-object/from16 v22, v23

    .line 1573
    .end local v23           #inStream:Ljava/io/FileInputStream;
    .end local v26           #length:J
    .local v18, e:Ljava/io/IOException;
    .restart local v22       #inStream:Ljava/io/FileInputStream;
    :goto_3
    :try_start_5
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ENOSPC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1574
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->showSDSpaceNotEnough()V

    .line 1576
    :cond_3
    const-string v3, "chenlu"

    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    const-string v3, "chenlu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encry cancel file is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    const-string v3, "chenlu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete encry_file is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1580
    const/4 v3, 0x0

    .line 1588
    invoke-static/range {v22 .. v22}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 1589
    invoke-static/range {v21 .. v21}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 1590
    invoke-static/range {v29 .. v29}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 1591
    invoke-static/range {v28 .. v28}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    goto/16 :goto_0

    .line 1566
    .end local v18           #e:Ljava/io/IOException;
    .end local v22           #inStream:Ljava/io/FileInputStream;
    .end local v29           #outStream:Ljava/io/FileOutputStream;
    .restart local v2       #localPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
    .restart local v12       #keyData:[B
    .restart local v13       #buffer_in:Ljava/nio/ByteBuffer;
    .restart local v14       #buffer_out:Ljava/nio/ByteBuffer;
    .restart local v15       #cip:Ljavax/crypto/Cipher;
    .restart local v16       #cur:J
    .restart local v23       #inStream:Ljava/io/FileInputStream;
    .restart local v24       #iv:Ljavax/crypto/spec/IvParameterSpec;
    .restart local v25       #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v26       #length:J
    .restart local v30       #outStream:Ljava/io/FileOutputStream;
    .restart local v31       #read:I
    .restart local v32       #ret:Z
    .restart local v33       #write:I
    :cond_4
    :try_start_6
    invoke-static/range {p1 .. p1}, Lcom/zte/filexplorer/FileHelper;->deleteTarget(Ljava/lang/String;)Z

    .line 1567
    const-string v3, "chenlu"

    const-string v4, "encry end"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 1568
    const/4 v3, 0x1

    .line 1588
    invoke-static/range {v23 .. v23}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 1589
    invoke-static/range {v21 .. v21}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 1590
    invoke-static/range {v30 .. v30}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 1591
    invoke-static/range {v28 .. v28}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    goto/16 :goto_0

    .line 1581
    .end local v2           #localPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
    .end local v12           #keyData:[B
    .end local v13           #buffer_in:Ljava/nio/ByteBuffer;
    .end local v14           #buffer_out:Ljava/nio/ByteBuffer;
    .end local v15           #cip:Ljavax/crypto/Cipher;
    .end local v16           #cur:J
    .end local v23           #inStream:Ljava/io/FileInputStream;
    .end local v24           #iv:Ljavax/crypto/spec/IvParameterSpec;
    .end local v25           #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .end local v26           #length:J
    .end local v30           #outStream:Ljava/io/FileOutputStream;
    .end local v31           #read:I
    .end local v32           #ret:Z
    .end local v33           #write:I
    .restart local v22       #inStream:Ljava/io/FileInputStream;
    .restart local v29       #outStream:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v18

    .line 1582
    .local v18, e:Ljava/lang/Exception;
    :goto_4
    :try_start_7
    const-string v3, "chenlu"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    const-string v3, "chenlu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encry cancel file is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    const-string v3, "chenlu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete encry_file is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1586
    const/4 v3, 0x0

    .line 1588
    invoke-static/range {v22 .. v22}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 1589
    invoke-static/range {v21 .. v21}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 1590
    invoke-static/range {v29 .. v29}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 1591
    invoke-static/range {v28 .. v28}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    goto/16 :goto_0

    .line 1588
    .end local v18           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :goto_5
    invoke-static/range {v22 .. v22}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 1589
    invoke-static/range {v21 .. v21}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 1590
    invoke-static/range {v29 .. v29}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 1591
    invoke-static/range {v28 .. v28}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    throw v3

    .line 1588
    .end local v22           #inStream:Ljava/io/FileInputStream;
    .restart local v23       #inStream:Ljava/io/FileInputStream;
    .restart local v26       #length:J
    :catchall_1
    move-exception v3

    move-object/from16 v22, v23

    .end local v23           #inStream:Ljava/io/FileInputStream;
    .restart local v22       #inStream:Ljava/io/FileInputStream;
    goto :goto_5

    .end local v22           #inStream:Ljava/io/FileInputStream;
    .end local v29           #outStream:Ljava/io/FileOutputStream;
    .restart local v23       #inStream:Ljava/io/FileInputStream;
    .restart local v30       #outStream:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v3

    move-object/from16 v29, v30

    .end local v30           #outStream:Ljava/io/FileOutputStream;
    .restart local v29       #outStream:Ljava/io/FileOutputStream;
    move-object/from16 v22, v23

    .end local v23           #inStream:Ljava/io/FileInputStream;
    .restart local v22       #inStream:Ljava/io/FileInputStream;
    goto :goto_5

    .line 1581
    .end local v22           #inStream:Ljava/io/FileInputStream;
    .restart local v23       #inStream:Ljava/io/FileInputStream;
    :catch_4
    move-exception v18

    move-object/from16 v22, v23

    .end local v23           #inStream:Ljava/io/FileInputStream;
    .restart local v22       #inStream:Ljava/io/FileInputStream;
    goto :goto_4

    .end local v22           #inStream:Ljava/io/FileInputStream;
    .end local v29           #outStream:Ljava/io/FileOutputStream;
    .restart local v23       #inStream:Ljava/io/FileInputStream;
    .restart local v30       #outStream:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v18

    move-object/from16 v29, v30

    .end local v30           #outStream:Ljava/io/FileOutputStream;
    .restart local v29       #outStream:Ljava/io/FileOutputStream;
    move-object/from16 v22, v23

    .end local v23           #inStream:Ljava/io/FileInputStream;
    .restart local v22       #inStream:Ljava/io/FileInputStream;
    goto :goto_4

    .line 1572
    .end local v26           #length:J
    :catch_6
    move-exception v18

    goto/16 :goto_3

    .end local v22           #inStream:Ljava/io/FileInputStream;
    .restart local v23       #inStream:Ljava/io/FileInputStream;
    .restart local v26       #length:J
    :catch_7
    move-exception v18

    move-object/from16 v22, v23

    .end local v23           #inStream:Ljava/io/FileInputStream;
    .restart local v22       #inStream:Ljava/io/FileInputStream;
    goto/16 :goto_3

    .line 1569
    .end local v22           #inStream:Ljava/io/FileInputStream;
    .restart local v23       #inStream:Ljava/io/FileInputStream;
    :catch_8
    move-exception v18

    move-object/from16 v22, v23

    .end local v23           #inStream:Ljava/io/FileInputStream;
    .restart local v22       #inStream:Ljava/io/FileInputStream;
    goto/16 :goto_1
.end method

.method private static encry_image_head_with_bitmap(ILjava/lang/String;Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;Landroid/graphics/Bitmap;)Z
    .locals 38
    .parameter "n"
    .parameter "path"
    .parameter "cb"
    .parameter "bitMap"

    .prologue
    .line 1214
    const-string v4, "chenlu"

    const-string v5, "encry begin"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1216
    .local v24, file:Ljava/io/File;
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getEncryFile()Ljava/io/File;

    move-result-object v23

    .line 1217
    .local v23, encry_file:Ljava/io/File;
    if-nez v23, :cond_0

    .line 1218
    const/4 v4, 0x0

    .line 1313
    :goto_0
    return v4

    .line 1221
    :cond_0
    const/16 v26, 0x0

    .line 1222
    .local v26, in:Ljava/nio/channels/FileChannel;
    const/16 v33, 0x0

    .line 1223
    .local v33, out:Ljava/nio/channels/FileChannel;
    const/16 v27, 0x0

    .line 1224
    .local v27, inStream:Ljava/io/FileInputStream;
    const/16 v34, 0x0

    .line 1226
    .local v34, outStream:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->length()J

    move-result-wide v31

    .line 1227
    .local v31, length:J
    invoke-static/range {v31 .. v32}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkIsSDSpaceNotEnoughAndShowToast(J)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1229
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "SD space not enough"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 1291
    .end local v31           #length:J
    :catch_0
    move-exception v22

    .line 1292
    .local v22, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_1
    const-string v4, "chenlu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encry cancel because FileNotFoundException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1293
    const/4 v4, 0x0

    .line 1310
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 1311
    invoke-static/range {v26 .. v26}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 1312
    invoke-static/range {v34 .. v34}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 1313
    invoke-static/range {v33 .. v33}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    goto :goto_0

    .line 1231
    .end local v22           #e:Ljava/io/FileNotFoundException;
    .restart local v31       #length:J
    :cond_1
    :try_start_2
    new-instance v28, Ljava/io/FileInputStream;

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 1232
    .end local v27           #inStream:Ljava/io/FileInputStream;
    .local v28, inStream:Ljava/io/FileInputStream;
    :try_start_3
    new-instance v35, Ljava/io/FileOutputStream;

    move-object/from16 v0, v35

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 1233
    .end local v34           #outStream:Ljava/io/FileOutputStream;
    .local v35, outStream:Ljava/io/FileOutputStream;
    :try_start_4
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v26

    .line 1234
    invoke-virtual/range {v35 .. v35}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v33

    .line 1235
    const/16 v4, 0x2800

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v17

    .line 1236
    .local v17, buffer_in_encry:Ljava/nio/ByteBuffer;
    const v4, 0xfa010

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v18

    .line 1237
    .local v18, buffer_out:Ljava/nio/ByteBuffer;
    const-wide/16 v20, 0x0

    .line 1238
    .local v20, cur:J
    const/16 v36, -0x1

    .line 1239
    .local v36, read:I
    const/16 v25, 0x0

    .line 1240
    .local v25, head_bitmap_size:I
    const-string v4, "%.2f%%"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move/from16 v1, p0

    invoke-interface {v0, v1, v4, v5}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;->updatePDMsg(ILjava/lang/String;Ljava/lang/String;)V

    .line 1241
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->createRandomAESKey()[B

    move-result-object v13

    .line 1242
    .local v13, keyData:[B
    new-instance v30, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    move-object/from16 v0, v30

    invoke-direct {v0, v13, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 1243
    .local v30, keySpec:Ljavax/crypto/spec/SecretKeySpec;
    const-string v4, "AES/CBC/PKCS5Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v19

    .line 1244
    .local v19, cip:Ljavax/crypto/Cipher;
    new-instance v29, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v4, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->IV:[B

    move-object/from16 v0, v29

    invoke-direct {v0, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 1245
    .local v29, iv:Ljavax/crypto/spec/IvParameterSpec;
    const/4 v4, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    invoke-virtual {v0, v4, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1246
    if-nez p3, :cond_2

    .line 1247
    const/4 v4, 0x3

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 1249
    :cond_2
    if-eqz p3, :cond_3

    .line 1250
    new-instance v16, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1251
    .local v16, baos:Ljava/io/ByteArrayOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1252
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    .line 1253
    .local v14, b:[B
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v15

    .line 1254
    .local v15, b_encry:[B
    array-length v0, v15

    move/from16 v25, v0

    .line 1255
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1256
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1257
    move-object/from16 v0, v33

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1258
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1260
    .end local v14           #b:[B
    .end local v15           #b_encry:[B
    .end local v16           #baos:Ljava/io/ByteArrayOutputStream;
    :cond_3
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v36

    .line 1261
    const/4 v4, -0x1

    move/from16 v0, v36

    if-eq v0, v4, :cond_7

    .line 1262
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1263
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    .line 1264
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1265
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1266
    move-object/from16 v0, v33

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1267
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1268
    move/from16 v0, v36

    int-to-long v4, v0

    add-long v20, v20, v4

    .line 1269
    const-string v4, "%.2f%%"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-wide/16 v7, 0x64

    mul-long v7, v7, v20

    long-to-double v7, v7

    move-wide/from16 v0, v31

    long-to-double v9, v0

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move/from16 v1, p0

    invoke-interface {v0, v1, v4, v5}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;->updatePDMsg(ILjava/lang/String;Ljava/lang/String;)V

    .line 1270
    :goto_2
    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v36

    const/4 v4, -0x1

    move/from16 v0, v36

    if-eq v0, v4, :cond_4

    .line 1271
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1272
    move-object/from16 v0, v33

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1273
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1274
    move/from16 v0, v36

    int-to-long v4, v0

    add-long v20, v20, v4

    .line 1275
    const-string v4, "%.2f%%"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-wide/16 v7, 0x64

    mul-long v7, v7, v20

    long-to-double v7, v7

    move-wide/from16 v0, v31

    long-to-double v9, v0

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move/from16 v1, p0

    invoke-interface {v0, v1, v4, v5}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;->updatePDMsg(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1291
    .end local v13           #keyData:[B
    .end local v17           #buffer_in_encry:Ljava/nio/ByteBuffer;
    .end local v18           #buffer_out:Ljava/nio/ByteBuffer;
    .end local v19           #cip:Ljavax/crypto/Cipher;
    .end local v20           #cur:J
    .end local v25           #head_bitmap_size:I
    .end local v29           #iv:Ljavax/crypto/spec/IvParameterSpec;
    .end local v30           #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .end local v36           #read:I
    :catch_1
    move-exception v22

    move-object/from16 v34, v35

    .end local v35           #outStream:Ljava/io/FileOutputStream;
    .restart local v34       #outStream:Ljava/io/FileOutputStream;
    move-object/from16 v27, v28

    .end local v28           #inStream:Ljava/io/FileInputStream;
    .restart local v27       #inStream:Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 1277
    .end local v27           #inStream:Ljava/io/FileInputStream;
    .end local v34           #outStream:Ljava/io/FileOutputStream;
    .restart local v13       #keyData:[B
    .restart local v17       #buffer_in_encry:Ljava/nio/ByteBuffer;
    .restart local v18       #buffer_out:Ljava/nio/ByteBuffer;
    .restart local v19       #cip:Ljavax/crypto/Cipher;
    .restart local v20       #cur:J
    .restart local v25       #head_bitmap_size:I
    .restart local v28       #inStream:Ljava/io/FileInputStream;
    .restart local v29       #iv:Ljavax/crypto/spec/IvParameterSpec;
    .restart local v30       #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v35       #outStream:Ljava/io/FileOutputStream;
    .restart local v36       #read:I
    :cond_4
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v3

    .line 1278
    .local v3, localPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    move/from16 v0, v25

    int-to-long v9, v0

    const-string v11, "2"

    const/4 v12, 0x3

    move-object/from16 v5, p1

    invoke-virtual/range {v3 .. v13}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->insertRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;I[B)Z

    move-result v37

    .line 1281
    .local v37, ret:Z
    if-nez v37, :cond_6

    .line 1282
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "save to database error"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1294
    .end local v3           #localPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
    .end local v13           #keyData:[B
    .end local v17           #buffer_in_encry:Ljava/nio/ByteBuffer;
    .end local v18           #buffer_out:Ljava/nio/ByteBuffer;
    .end local v19           #cip:Ljavax/crypto/Cipher;
    .end local v20           #cur:J
    .end local v25           #head_bitmap_size:I
    .end local v29           #iv:Ljavax/crypto/spec/IvParameterSpec;
    .end local v30           #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .end local v36           #read:I
    .end local v37           #ret:Z
    :catch_2
    move-exception v22

    move-object/from16 v34, v35

    .end local v35           #outStream:Ljava/io/FileOutputStream;
    .restart local v34       #outStream:Ljava/io/FileOutputStream;
    move-object/from16 v27, v28

    .line 1295
    .end local v28           #inStream:Ljava/io/FileInputStream;
    .end local v31           #length:J
    .local v22, e:Ljava/io/IOException;
    .restart local v27       #inStream:Ljava/io/FileInputStream;
    :goto_3
    :try_start_5
    invoke-virtual/range {v22 .. v22}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ENOSPC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1296
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->showSDSpaceNotEnough()V

    .line 1298
    :cond_5
    const-string v4, "chenlu"

    invoke-virtual/range {v22 .. v22}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    const-string v4, "chenlu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encry cancel file is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    const-string v4, "chenlu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete encry_file is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1302
    const/4 v4, 0x0

    .line 1310
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 1311
    invoke-static/range {v26 .. v26}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 1312
    invoke-static/range {v34 .. v34}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 1313
    invoke-static/range {v33 .. v33}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    goto/16 :goto_0

    .line 1284
    .end local v22           #e:Ljava/io/IOException;
    .end local v27           #inStream:Ljava/io/FileInputStream;
    .end local v34           #outStream:Ljava/io/FileOutputStream;
    .restart local v3       #localPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
    .restart local v13       #keyData:[B
    .restart local v17       #buffer_in_encry:Ljava/nio/ByteBuffer;
    .restart local v18       #buffer_out:Ljava/nio/ByteBuffer;
    .restart local v19       #cip:Ljavax/crypto/Cipher;
    .restart local v20       #cur:J
    .restart local v25       #head_bitmap_size:I
    .restart local v28       #inStream:Ljava/io/FileInputStream;
    .restart local v29       #iv:Ljavax/crypto/spec/IvParameterSpec;
    .restart local v30       #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v31       #length:J
    .restart local v35       #outStream:Ljava/io/FileOutputStream;
    .restart local v36       #read:I
    .restart local v37       #ret:Z
    :cond_6
    :try_start_6
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->delete()Z

    .line 1285
    invoke-static/range {p1 .. p1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->deleteImageAsync(Ljava/lang/String;)V

    .line 1286
    const-string v4, "chenlu"

    const-string v5, "encry end"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 1287
    const/4 v4, 0x1

    .line 1310
    invoke-static/range {v28 .. v28}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 1311
    invoke-static/range {v26 .. v26}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 1312
    invoke-static/range {v35 .. v35}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 1313
    invoke-static/range {v33 .. v33}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    goto/16 :goto_0

    .line 1289
    .end local v3           #localPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
    .end local v37           #ret:Z
    :cond_7
    :try_start_7
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "read head error"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 1303
    .end local v13           #keyData:[B
    .end local v17           #buffer_in_encry:Ljava/nio/ByteBuffer;
    .end local v18           #buffer_out:Ljava/nio/ByteBuffer;
    .end local v19           #cip:Ljavax/crypto/Cipher;
    .end local v20           #cur:J
    .end local v25           #head_bitmap_size:I
    .end local v29           #iv:Ljavax/crypto/spec/IvParameterSpec;
    .end local v30           #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .end local v36           #read:I
    :catch_3
    move-exception v22

    move-object/from16 v34, v35

    .end local v35           #outStream:Ljava/io/FileOutputStream;
    .restart local v34       #outStream:Ljava/io/FileOutputStream;
    move-object/from16 v27, v28

    .line 1304
    .end local v28           #inStream:Ljava/io/FileInputStream;
    .end local v31           #length:J
    .local v22, e:Ljava/lang/Exception;
    .restart local v27       #inStream:Ljava/io/FileInputStream;
    :goto_4
    :try_start_8
    const-string v4, "chenlu"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    const-string v4, "chenlu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encry cancel file is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    const-string v4, "chenlu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete encry_file is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1308
    const/4 v4, 0x0

    .line 1310
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 1311
    invoke-static/range {v26 .. v26}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 1312
    invoke-static/range {v34 .. v34}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 1313
    invoke-static/range {v33 .. v33}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    goto/16 :goto_0

    .line 1310
    .end local v22           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_5
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 1311
    invoke-static/range {v26 .. v26}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 1312
    invoke-static/range {v34 .. v34}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 1313
    invoke-static/range {v33 .. v33}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    throw v4

    .line 1310
    .end local v27           #inStream:Ljava/io/FileInputStream;
    .restart local v28       #inStream:Ljava/io/FileInputStream;
    .restart local v31       #length:J
    :catchall_1
    move-exception v4

    move-object/from16 v27, v28

    .end local v28           #inStream:Ljava/io/FileInputStream;
    .restart local v27       #inStream:Ljava/io/FileInputStream;
    goto :goto_5

    .end local v27           #inStream:Ljava/io/FileInputStream;
    .end local v34           #outStream:Ljava/io/FileOutputStream;
    .restart local v28       #inStream:Ljava/io/FileInputStream;
    .restart local v35       #outStream:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v4

    move-object/from16 v34, v35

    .end local v35           #outStream:Ljava/io/FileOutputStream;
    .restart local v34       #outStream:Ljava/io/FileOutputStream;
    move-object/from16 v27, v28

    .end local v28           #inStream:Ljava/io/FileInputStream;
    .restart local v27       #inStream:Ljava/io/FileInputStream;
    goto :goto_5

    .line 1303
    .end local v31           #length:J
    :catch_4
    move-exception v22

    goto :goto_4

    .end local v27           #inStream:Ljava/io/FileInputStream;
    .restart local v28       #inStream:Ljava/io/FileInputStream;
    .restart local v31       #length:J
    :catch_5
    move-exception v22

    move-object/from16 v27, v28

    .end local v28           #inStream:Ljava/io/FileInputStream;
    .restart local v27       #inStream:Ljava/io/FileInputStream;
    goto :goto_4

    .line 1294
    .end local v31           #length:J
    :catch_6
    move-exception v22

    goto/16 :goto_3

    .end local v27           #inStream:Ljava/io/FileInputStream;
    .restart local v28       #inStream:Ljava/io/FileInputStream;
    .restart local v31       #length:J
    :catch_7
    move-exception v22

    move-object/from16 v27, v28

    .end local v28           #inStream:Ljava/io/FileInputStream;
    .restart local v27       #inStream:Ljava/io/FileInputStream;
    goto/16 :goto_3

    .line 1291
    .end local v27           #inStream:Ljava/io/FileInputStream;
    .restart local v28       #inStream:Ljava/io/FileInputStream;
    :catch_8
    move-exception v22

    move-object/from16 v27, v28

    .end local v28           #inStream:Ljava/io/FileInputStream;
    .restart local v27       #inStream:Ljava/io/FileInputStream;
    goto/16 :goto_1
.end method

.method private static encry_image_with_bitmap(ILjava/lang/String;Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;Landroid/graphics/Bitmap;)Z
    .locals 39
    .parameter "n"
    .parameter "path"
    .parameter "cb"
    .parameter "bitMap"

    .prologue
    .line 1118
    const-string v4, "chenlu"

    const-string v5, "encry begin"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1120
    .local v24, file:Ljava/io/File;
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getEncryFile()Ljava/io/File;

    move-result-object v23

    .line 1121
    .local v23, encry_file:Ljava/io/File;
    if-nez v23, :cond_0

    .line 1122
    const/4 v4, 0x0

    .line 1209
    :goto_0
    return v4

    .line 1125
    :cond_0
    const/16 v26, 0x0

    .line 1126
    .local v26, in:Ljava/nio/channels/FileChannel;
    const/16 v33, 0x0

    .line 1127
    .local v33, out:Ljava/nio/channels/FileChannel;
    const/16 v27, 0x0

    .line 1128
    .local v27, inStream:Ljava/io/FileInputStream;
    const/16 v34, 0x0

    .line 1130
    .local v34, outStream:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->length()J

    move-result-wide v31

    .line 1131
    .local v31, length:J
    invoke-static/range {v31 .. v32}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkIsSDSpaceNotEnoughAndShowToast(J)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1133
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "SD space not enough"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 1187
    .end local v31           #length:J
    :catch_0
    move-exception v22

    .line 1188
    .local v22, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_1
    const-string v4, "chenlu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encry cancel because FileNotFoundException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1189
    const/4 v4, 0x0

    .line 1206
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 1207
    invoke-static/range {v26 .. v26}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 1208
    invoke-static/range {v34 .. v34}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 1209
    invoke-static/range {v33 .. v33}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    goto :goto_0

    .line 1135
    .end local v22           #e:Ljava/io/FileNotFoundException;
    .restart local v31       #length:J
    :cond_1
    :try_start_2
    new-instance v28, Ljava/io/FileInputStream;

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 1136
    .end local v27           #inStream:Ljava/io/FileInputStream;
    .local v28, inStream:Ljava/io/FileInputStream;
    :try_start_3
    new-instance v35, Ljava/io/FileOutputStream;

    move-object/from16 v0, v35

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 1137
    .end local v34           #outStream:Ljava/io/FileOutputStream;
    .local v35, outStream:Ljava/io/FileOutputStream;
    :try_start_4
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v26

    .line 1138
    invoke-virtual/range {v35 .. v35}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v33

    .line 1139
    const v4, 0xfa000

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v17

    .line 1140
    .local v17, buffer_in:Ljava/nio/ByteBuffer;
    const v4, 0xfa010

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v18

    .line 1141
    .local v18, buffer_out:Ljava/nio/ByteBuffer;
    const-wide/16 v20, 0x0

    .line 1142
    .local v20, cur:J
    const/16 v36, -0x1

    .line 1143
    .local v36, read:I
    const/16 v38, -0x1

    .line 1144
    .local v38, write:I
    const/16 v25, 0x0

    .line 1145
    .local v25, head_bitmap_size:I
    const-string v4, "%.2f%%"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move/from16 v1, p0

    invoke-interface {v0, v1, v4, v5}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;->updatePDMsg(ILjava/lang/String;Ljava/lang/String;)V

    .line 1146
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->createRandomAESKey()[B

    move-result-object v13

    .line 1147
    .local v13, keyData:[B
    new-instance v30, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    move-object/from16 v0, v30

    invoke-direct {v0, v13, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 1148
    .local v30, keySpec:Ljavax/crypto/spec/SecretKeySpec;
    const-string v4, "AES/CBC/PKCS5Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v19

    .line 1149
    .local v19, cip:Ljavax/crypto/Cipher;
    new-instance v29, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v4, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->IV:[B

    move-object/from16 v0, v29

    invoke-direct {v0, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 1150
    .local v29, iv:Ljavax/crypto/spec/IvParameterSpec;
    const/4 v4, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    invoke-virtual {v0, v4, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1151
    if-nez p3, :cond_2

    .line 1152
    const/4 v4, 0x3

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 1154
    :cond_2
    if-eqz p3, :cond_3

    .line 1155
    new-instance v16, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1156
    .local v16, baos:Ljava/io/ByteArrayOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1157
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    .line 1158
    .local v14, b:[B
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v15

    .line 1159
    .local v15, b_encry:[B
    array-length v0, v15

    move/from16 v25, v0

    .line 1160
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1161
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1162
    move-object/from16 v0, v33

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1163
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1165
    .end local v14           #b:[B
    .end local v15           #b_encry:[B
    .end local v16           #baos:Ljava/io/ByteArrayOutputStream;
    :cond_3
    :goto_2
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v36

    const/4 v4, -0x1

    move/from16 v0, v36

    if-eq v0, v4, :cond_4

    .line 1166
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1167
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    .line 1168
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1169
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1170
    move-object/from16 v0, v33

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v38

    .line 1171
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1172
    move/from16 v0, v36

    int-to-long v4, v0

    add-long v20, v20, v4

    .line 1173
    const-string v4, "chenlu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encry read:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " write"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    const-string v4, "%.2f%%"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-wide/16 v7, 0x64

    mul-long v7, v7, v20

    long-to-double v7, v7

    move-wide/from16 v0, v31

    long-to-double v9, v0

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move/from16 v1, p0

    invoke-interface {v0, v1, v4, v5}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;->updatePDMsg(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1187
    .end local v13           #keyData:[B
    .end local v17           #buffer_in:Ljava/nio/ByteBuffer;
    .end local v18           #buffer_out:Ljava/nio/ByteBuffer;
    .end local v19           #cip:Ljavax/crypto/Cipher;
    .end local v20           #cur:J
    .end local v25           #head_bitmap_size:I
    .end local v29           #iv:Ljavax/crypto/spec/IvParameterSpec;
    .end local v30           #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .end local v36           #read:I
    .end local v38           #write:I
    :catch_1
    move-exception v22

    move-object/from16 v34, v35

    .end local v35           #outStream:Ljava/io/FileOutputStream;
    .restart local v34       #outStream:Ljava/io/FileOutputStream;
    move-object/from16 v27, v28

    .end local v28           #inStream:Ljava/io/FileInputStream;
    .restart local v27       #inStream:Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 1176
    .end local v27           #inStream:Ljava/io/FileInputStream;
    .end local v34           #outStream:Ljava/io/FileOutputStream;
    .restart local v13       #keyData:[B
    .restart local v17       #buffer_in:Ljava/nio/ByteBuffer;
    .restart local v18       #buffer_out:Ljava/nio/ByteBuffer;
    .restart local v19       #cip:Ljavax/crypto/Cipher;
    .restart local v20       #cur:J
    .restart local v25       #head_bitmap_size:I
    .restart local v28       #inStream:Ljava/io/FileInputStream;
    .restart local v29       #iv:Ljavax/crypto/spec/IvParameterSpec;
    .restart local v30       #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v35       #outStream:Ljava/io/FileOutputStream;
    .restart local v36       #read:I
    .restart local v38       #write:I
    :cond_4
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v3

    .line 1177
    .local v3, localPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    move/from16 v0, v25

    int-to-long v9, v0

    const-string v11, "2"

    const/4 v12, 0x1

    move-object/from16 v5, p1

    invoke-virtual/range {v3 .. v13}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->insertRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;I[B)Z

    move-result v37

    .line 1180
    .local v37, ret:Z
    if-nez v37, :cond_6

    .line 1181
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "save to database error"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 1190
    .end local v3           #localPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
    .end local v13           #keyData:[B
    .end local v17           #buffer_in:Ljava/nio/ByteBuffer;
    .end local v18           #buffer_out:Ljava/nio/ByteBuffer;
    .end local v19           #cip:Ljavax/crypto/Cipher;
    .end local v20           #cur:J
    .end local v25           #head_bitmap_size:I
    .end local v29           #iv:Ljavax/crypto/spec/IvParameterSpec;
    .end local v30           #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .end local v36           #read:I
    .end local v37           #ret:Z
    .end local v38           #write:I
    :catch_2
    move-exception v22

    move-object/from16 v34, v35

    .end local v35           #outStream:Ljava/io/FileOutputStream;
    .restart local v34       #outStream:Ljava/io/FileOutputStream;
    move-object/from16 v27, v28

    .line 1191
    .end local v28           #inStream:Ljava/io/FileInputStream;
    .end local v31           #length:J
    .local v22, e:Ljava/io/IOException;
    .restart local v27       #inStream:Ljava/io/FileInputStream;
    :goto_3
    :try_start_5
    invoke-virtual/range {v22 .. v22}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ENOSPC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1192
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->showSDSpaceNotEnough()V

    .line 1194
    :cond_5
    const-string v4, "chenlu"

    invoke-virtual/range {v22 .. v22}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    const-string v4, "chenlu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encry cancel file is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    const-string v4, "chenlu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete encry_file is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1198
    const/4 v4, 0x0

    .line 1206
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 1207
    invoke-static/range {v26 .. v26}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 1208
    invoke-static/range {v34 .. v34}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 1209
    invoke-static/range {v33 .. v33}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    goto/16 :goto_0

    .line 1183
    .end local v22           #e:Ljava/io/IOException;
    .end local v27           #inStream:Ljava/io/FileInputStream;
    .end local v34           #outStream:Ljava/io/FileOutputStream;
    .restart local v3       #localPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
    .restart local v13       #keyData:[B
    .restart local v17       #buffer_in:Ljava/nio/ByteBuffer;
    .restart local v18       #buffer_out:Ljava/nio/ByteBuffer;
    .restart local v19       #cip:Ljavax/crypto/Cipher;
    .restart local v20       #cur:J
    .restart local v25       #head_bitmap_size:I
    .restart local v28       #inStream:Ljava/io/FileInputStream;
    .restart local v29       #iv:Ljavax/crypto/spec/IvParameterSpec;
    .restart local v30       #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v31       #length:J
    .restart local v35       #outStream:Ljava/io/FileOutputStream;
    .restart local v36       #read:I
    .restart local v37       #ret:Z
    .restart local v38       #write:I
    :cond_6
    :try_start_6
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->delete()Z

    .line 1184
    invoke-static/range {p1 .. p1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->deleteImageAsync(Ljava/lang/String;)V

    .line 1185
    const-string v4, "chenlu"

    const-string v5, "encry end"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 1186
    const/4 v4, 0x1

    .line 1206
    invoke-static/range {v28 .. v28}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 1207
    invoke-static/range {v26 .. v26}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 1208
    invoke-static/range {v35 .. v35}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 1209
    invoke-static/range {v33 .. v33}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    goto/16 :goto_0

    .line 1199
    .end local v3           #localPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
    .end local v13           #keyData:[B
    .end local v17           #buffer_in:Ljava/nio/ByteBuffer;
    .end local v18           #buffer_out:Ljava/nio/ByteBuffer;
    .end local v19           #cip:Ljavax/crypto/Cipher;
    .end local v20           #cur:J
    .end local v25           #head_bitmap_size:I
    .end local v28           #inStream:Ljava/io/FileInputStream;
    .end local v29           #iv:Ljavax/crypto/spec/IvParameterSpec;
    .end local v30           #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .end local v31           #length:J
    .end local v35           #outStream:Ljava/io/FileOutputStream;
    .end local v36           #read:I
    .end local v37           #ret:Z
    .end local v38           #write:I
    .restart local v27       #inStream:Ljava/io/FileInputStream;
    .restart local v34       #outStream:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v22

    .line 1200
    .local v22, e:Ljava/lang/Exception;
    :goto_4
    :try_start_7
    const-string v4, "chenlu"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    const-string v4, "chenlu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encry cancel file is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    const-string v4, "chenlu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete encry_file is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1204
    const/4 v4, 0x0

    .line 1206
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 1207
    invoke-static/range {v26 .. v26}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 1208
    invoke-static/range {v34 .. v34}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 1209
    invoke-static/range {v33 .. v33}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    goto/16 :goto_0

    .line 1206
    .end local v22           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_5
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 1207
    invoke-static/range {v26 .. v26}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 1208
    invoke-static/range {v34 .. v34}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 1209
    invoke-static/range {v33 .. v33}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    throw v4

    .line 1206
    .end local v27           #inStream:Ljava/io/FileInputStream;
    .restart local v28       #inStream:Ljava/io/FileInputStream;
    .restart local v31       #length:J
    :catchall_1
    move-exception v4

    move-object/from16 v27, v28

    .end local v28           #inStream:Ljava/io/FileInputStream;
    .restart local v27       #inStream:Ljava/io/FileInputStream;
    goto :goto_5

    .end local v27           #inStream:Ljava/io/FileInputStream;
    .end local v34           #outStream:Ljava/io/FileOutputStream;
    .restart local v28       #inStream:Ljava/io/FileInputStream;
    .restart local v35       #outStream:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v4

    move-object/from16 v34, v35

    .end local v35           #outStream:Ljava/io/FileOutputStream;
    .restart local v34       #outStream:Ljava/io/FileOutputStream;
    move-object/from16 v27, v28

    .end local v28           #inStream:Ljava/io/FileInputStream;
    .restart local v27       #inStream:Ljava/io/FileInputStream;
    goto :goto_5

    .line 1199
    .end local v27           #inStream:Ljava/io/FileInputStream;
    .restart local v28       #inStream:Ljava/io/FileInputStream;
    :catch_4
    move-exception v22

    move-object/from16 v27, v28

    .end local v28           #inStream:Ljava/io/FileInputStream;
    .restart local v27       #inStream:Ljava/io/FileInputStream;
    goto :goto_4

    .end local v27           #inStream:Ljava/io/FileInputStream;
    .end local v34           #outStream:Ljava/io/FileOutputStream;
    .restart local v28       #inStream:Ljava/io/FileInputStream;
    .restart local v35       #outStream:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v22

    move-object/from16 v34, v35

    .end local v35           #outStream:Ljava/io/FileOutputStream;
    .restart local v34       #outStream:Ljava/io/FileOutputStream;
    move-object/from16 v27, v28

    .end local v28           #inStream:Ljava/io/FileInputStream;
    .restart local v27       #inStream:Ljava/io/FileInputStream;
    goto :goto_4

    .line 1190
    .end local v31           #length:J
    :catch_6
    move-exception v22

    goto/16 :goto_3

    .end local v27           #inStream:Ljava/io/FileInputStream;
    .restart local v28       #inStream:Ljava/io/FileInputStream;
    .restart local v31       #length:J
    :catch_7
    move-exception v22

    move-object/from16 v27, v28

    .end local v28           #inStream:Ljava/io/FileInputStream;
    .restart local v27       #inStream:Ljava/io/FileInputStream;
    goto/16 :goto_3

    .line 1187
    .end local v27           #inStream:Ljava/io/FileInputStream;
    .restart local v28       #inStream:Ljava/io/FileInputStream;
    :catch_8
    move-exception v22

    move-object/from16 v27, v28

    .end local v28           #inStream:Ljava/io/FileInputStream;
    .restart local v27       #inStream:Ljava/io/FileInputStream;
    goto/16 :goto_1
.end method

.method private static encry_image_without_bitmap(ILjava/lang/String;Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;)Z
    .locals 34
    .parameter "n"
    .parameter "path"
    .parameter "cb"

    .prologue
    .line 958
    const-string v3, "chenlu"

    const-string v4, "encry begin"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 961
    .local v20, file:Ljava/io/File;
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getEncryFile()Ljava/io/File;

    move-result-object v19

    .line 962
    .local v19, encry_file:Ljava/io/File;
    if-nez v19, :cond_0

    .line 963
    const/4 v3, 0x0

    .line 1034
    :goto_0
    return v3

    .line 965
    :cond_0
    const/16 v21, 0x0

    .line 966
    .local v21, in:Ljava/nio/channels/FileChannel;
    const/16 v28, 0x0

    .line 967
    .local v28, out:Ljava/nio/channels/FileChannel;
    const/16 v22, 0x0

    .line 968
    .local v22, inStream:Ljava/io/FileInputStream;
    const/16 v29, 0x0

    .line 970
    .local v29, outStream:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->length()J

    move-result-wide v26

    .line 971
    .local v26, length:J
    invoke-static/range {v26 .. v27}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkIsSDSpaceNotEnoughAndShowToast(J)Z

    move-result v3

    if-nez v3, :cond_1

    .line 973
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "SD space not enough"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 1012
    .end local v26           #length:J
    :catch_0
    move-exception v18

    .line 1013
    .local v18, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_1
    const-string v3, "chenlu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encry cancel because FileNotFoundException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1014
    const/4 v3, 0x0

    .line 1031
    invoke-static/range {v22 .. v22}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 1032
    invoke-static/range {v21 .. v21}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 1033
    invoke-static/range {v29 .. v29}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 1034
    invoke-static/range {v28 .. v28}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    goto :goto_0

    .line 975
    .end local v18           #e:Ljava/io/FileNotFoundException;
    .restart local v26       #length:J
    :cond_1
    :try_start_2
    new-instance v23, Ljava/io/FileInputStream;

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 976
    .end local v22           #inStream:Ljava/io/FileInputStream;
    .local v23, inStream:Ljava/io/FileInputStream;
    :try_start_3
    new-instance v30, Ljava/io/FileOutputStream;

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 977
    .end local v29           #outStream:Ljava/io/FileOutputStream;
    .local v30, outStream:Ljava/io/FileOutputStream;
    :try_start_4
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v21

    .line 978
    invoke-virtual/range {v30 .. v30}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v28

    .line 979
    const v3, 0xfa000

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 980
    .local v13, buffer_in:Ljava/nio/ByteBuffer;
    const v3, 0xfa010

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 981
    .local v14, buffer_out:Ljava/nio/ByteBuffer;
    const-wide/16 v16, 0x0

    .line 982
    .local v16, cur:J
    const/16 v31, -0x1

    .line 983
    .local v31, read:I
    const/16 v33, -0x1

    .line 984
    .local v33, write:I
    const-string v3, "%.2f%%"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move/from16 v1, p0

    invoke-interface {v0, v1, v3, v4}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;->updatePDMsg(ILjava/lang/String;Ljava/lang/String;)V

    .line 985
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->createRandomAESKey()[B

    move-result-object v12

    .line 986
    .local v12, keyData:[B
    new-instance v25, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    move-object/from16 v0, v25

    invoke-direct {v0, v12, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 987
    .local v25, keySpec:Ljavax/crypto/spec/SecretKeySpec;
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v15

    .line 988
    .local v15, cip:Ljavax/crypto/Cipher;
    new-instance v24, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v3, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->IV:[B

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 989
    .local v24, iv:Ljavax/crypto/spec/IvParameterSpec;
    const/4 v3, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v15, v3, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 990
    :goto_2
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v31

    const/4 v3, -0x1

    move/from16 v0, v31

    if-eq v0, v3, :cond_2

    .line 991
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 992
    invoke-virtual {v15, v13, v14}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    .line 993
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 994
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 995
    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v33

    .line 996
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 997
    move/from16 v0, v31

    int-to-long v3, v0

    add-long v16, v16, v3

    .line 998
    const-string v3, "chenlu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encry read:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " write"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    const-string v3, "%.2f%%"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-wide/16 v6, 0x64

    mul-long v6, v6, v16

    long-to-double v6, v6

    move-wide/from16 v0, v26

    long-to-double v8, v0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move/from16 v1, p0

    invoke-interface {v0, v1, v3, v4}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;->updatePDMsg(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1012
    .end local v12           #keyData:[B
    .end local v13           #buffer_in:Ljava/nio/ByteBuffer;
    .end local v14           #buffer_out:Ljava/nio/ByteBuffer;
    .end local v15           #cip:Ljavax/crypto/Cipher;
    .end local v16           #cur:J
    .end local v24           #iv:Ljavax/crypto/spec/IvParameterSpec;
    .end local v25           #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .end local v31           #read:I
    .end local v33           #write:I
    :catch_1
    move-exception v18

    move-object/from16 v29, v30

    .end local v30           #outStream:Ljava/io/FileOutputStream;
    .restart local v29       #outStream:Ljava/io/FileOutputStream;
    move-object/from16 v22, v23

    .end local v23           #inStream:Ljava/io/FileInputStream;
    .restart local v22       #inStream:Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 1001
    .end local v22           #inStream:Ljava/io/FileInputStream;
    .end local v29           #outStream:Ljava/io/FileOutputStream;
    .restart local v12       #keyData:[B
    .restart local v13       #buffer_in:Ljava/nio/ByteBuffer;
    .restart local v14       #buffer_out:Ljava/nio/ByteBuffer;
    .restart local v15       #cip:Ljavax/crypto/Cipher;
    .restart local v16       #cur:J
    .restart local v23       #inStream:Ljava/io/FileInputStream;
    .restart local v24       #iv:Ljavax/crypto/spec/IvParameterSpec;
    .restart local v25       #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v30       #outStream:Ljava/io/FileOutputStream;
    .restart local v31       #read:I
    .restart local v33       #write:I
    :cond_2
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v2

    .line 1002
    .local v2, localPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    const-string v10, "2"

    const/4 v11, 0x2

    move-object/from16 v4, p1

    invoke-virtual/range {v2 .. v12}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->insertRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;I[B)Z

    move-result v32

    .line 1005
    .local v32, ret:Z
    if-nez v32, :cond_4

    .line 1006
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "save to database error"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 1015
    .end local v2           #localPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
    .end local v12           #keyData:[B
    .end local v13           #buffer_in:Ljava/nio/ByteBuffer;
    .end local v14           #buffer_out:Ljava/nio/ByteBuffer;
    .end local v15           #cip:Ljavax/crypto/Cipher;
    .end local v16           #cur:J
    .end local v24           #iv:Ljavax/crypto/spec/IvParameterSpec;
    .end local v25           #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .end local v31           #read:I
    .end local v32           #ret:Z
    .end local v33           #write:I
    :catch_2
    move-exception v18

    move-object/from16 v29, v30

    .end local v30           #outStream:Ljava/io/FileOutputStream;
    .restart local v29       #outStream:Ljava/io/FileOutputStream;
    move-object/from16 v22, v23

    .line 1016
    .end local v23           #inStream:Ljava/io/FileInputStream;
    .end local v26           #length:J
    .local v18, e:Ljava/io/IOException;
    .restart local v22       #inStream:Ljava/io/FileInputStream;
    :goto_3
    :try_start_5
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ENOSPC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1017
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->showSDSpaceNotEnough()V

    .line 1019
    :cond_3
    const-string v3, "chenlu"

    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    const-string v3, "chenlu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encry cancel file is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    const-string v3, "chenlu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete encry_file is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1023
    const/4 v3, 0x0

    .line 1031
    invoke-static/range {v22 .. v22}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 1032
    invoke-static/range {v21 .. v21}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 1033
    invoke-static/range {v29 .. v29}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 1034
    invoke-static/range {v28 .. v28}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    goto/16 :goto_0

    .line 1008
    .end local v18           #e:Ljava/io/IOException;
    .end local v22           #inStream:Ljava/io/FileInputStream;
    .end local v29           #outStream:Ljava/io/FileOutputStream;
    .restart local v2       #localPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
    .restart local v12       #keyData:[B
    .restart local v13       #buffer_in:Ljava/nio/ByteBuffer;
    .restart local v14       #buffer_out:Ljava/nio/ByteBuffer;
    .restart local v15       #cip:Ljavax/crypto/Cipher;
    .restart local v16       #cur:J
    .restart local v23       #inStream:Ljava/io/FileInputStream;
    .restart local v24       #iv:Ljavax/crypto/spec/IvParameterSpec;
    .restart local v25       #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v26       #length:J
    .restart local v30       #outStream:Ljava/io/FileOutputStream;
    .restart local v31       #read:I
    .restart local v32       #ret:Z
    .restart local v33       #write:I
    :cond_4
    :try_start_6
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->delete()Z

    .line 1009
    invoke-static/range {p1 .. p1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->deleteImageAsync(Ljava/lang/String;)V

    .line 1010
    const-string v3, "chenlu"

    const-string v4, "encry end"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 1011
    const/4 v3, 0x1

    .line 1031
    invoke-static/range {v23 .. v23}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 1032
    invoke-static/range {v21 .. v21}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 1033
    invoke-static/range {v30 .. v30}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 1034
    invoke-static/range {v28 .. v28}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    goto/16 :goto_0

    .line 1024
    .end local v2           #localPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
    .end local v12           #keyData:[B
    .end local v13           #buffer_in:Ljava/nio/ByteBuffer;
    .end local v14           #buffer_out:Ljava/nio/ByteBuffer;
    .end local v15           #cip:Ljavax/crypto/Cipher;
    .end local v16           #cur:J
    .end local v23           #inStream:Ljava/io/FileInputStream;
    .end local v24           #iv:Ljavax/crypto/spec/IvParameterSpec;
    .end local v25           #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .end local v26           #length:J
    .end local v30           #outStream:Ljava/io/FileOutputStream;
    .end local v31           #read:I
    .end local v32           #ret:Z
    .end local v33           #write:I
    .restart local v22       #inStream:Ljava/io/FileInputStream;
    .restart local v29       #outStream:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v18

    .line 1025
    .local v18, e:Ljava/lang/Exception;
    :goto_4
    :try_start_7
    const-string v3, "chenlu"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    const-string v3, "chenlu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encry cancel file is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    const-string v3, "chenlu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete encry_file is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1029
    const/4 v3, 0x0

    .line 1031
    invoke-static/range {v22 .. v22}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 1032
    invoke-static/range {v21 .. v21}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 1033
    invoke-static/range {v29 .. v29}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 1034
    invoke-static/range {v28 .. v28}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    goto/16 :goto_0

    .line 1031
    .end local v18           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :goto_5
    invoke-static/range {v22 .. v22}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 1032
    invoke-static/range {v21 .. v21}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 1033
    invoke-static/range {v29 .. v29}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 1034
    invoke-static/range {v28 .. v28}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    throw v3

    .line 1031
    .end local v22           #inStream:Ljava/io/FileInputStream;
    .restart local v23       #inStream:Ljava/io/FileInputStream;
    .restart local v26       #length:J
    :catchall_1
    move-exception v3

    move-object/from16 v22, v23

    .end local v23           #inStream:Ljava/io/FileInputStream;
    .restart local v22       #inStream:Ljava/io/FileInputStream;
    goto :goto_5

    .end local v22           #inStream:Ljava/io/FileInputStream;
    .end local v29           #outStream:Ljava/io/FileOutputStream;
    .restart local v23       #inStream:Ljava/io/FileInputStream;
    .restart local v30       #outStream:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v3

    move-object/from16 v29, v30

    .end local v30           #outStream:Ljava/io/FileOutputStream;
    .restart local v29       #outStream:Ljava/io/FileOutputStream;
    move-object/from16 v22, v23

    .end local v23           #inStream:Ljava/io/FileInputStream;
    .restart local v22       #inStream:Ljava/io/FileInputStream;
    goto :goto_5

    .line 1024
    .end local v22           #inStream:Ljava/io/FileInputStream;
    .restart local v23       #inStream:Ljava/io/FileInputStream;
    :catch_4
    move-exception v18

    move-object/from16 v22, v23

    .end local v23           #inStream:Ljava/io/FileInputStream;
    .restart local v22       #inStream:Ljava/io/FileInputStream;
    goto :goto_4

    .end local v22           #inStream:Ljava/io/FileInputStream;
    .end local v29           #outStream:Ljava/io/FileOutputStream;
    .restart local v23       #inStream:Ljava/io/FileInputStream;
    .restart local v30       #outStream:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v18

    move-object/from16 v29, v30

    .end local v30           #outStream:Ljava/io/FileOutputStream;
    .restart local v29       #outStream:Ljava/io/FileOutputStream;
    move-object/from16 v22, v23

    .end local v23           #inStream:Ljava/io/FileInputStream;
    .restart local v22       #inStream:Ljava/io/FileInputStream;
    goto :goto_4

    .line 1015
    .end local v26           #length:J
    :catch_6
    move-exception v18

    goto/16 :goto_3

    .end local v22           #inStream:Ljava/io/FileInputStream;
    .restart local v23       #inStream:Ljava/io/FileInputStream;
    .restart local v26       #length:J
    :catch_7
    move-exception v18

    move-object/from16 v22, v23

    .end local v23           #inStream:Ljava/io/FileInputStream;
    .restart local v22       #inStream:Ljava/io/FileInputStream;
    goto/16 :goto_3

    .line 1012
    .end local v22           #inStream:Ljava/io/FileInputStream;
    .restart local v23       #inStream:Ljava/io/FileInputStream;
    :catch_8
    move-exception v18

    move-object/from16 v22, v23

    .end local v23           #inStream:Ljava/io/FileInputStream;
    .restart local v22       #inStream:Ljava/io/FileInputStream;
    goto/16 :goto_1
.end method

.method private static encry_video_head_with_bitmap(ILjava/lang/String;Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;Landroid/graphics/Bitmap;)Z
    .locals 38
    .parameter "n"
    .parameter "path"
    .parameter "cb"
    .parameter "bitMap"

    .prologue
    .line 1412
    const-string v4, "chenlu"

    const-string v5, "encry begin"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1414
    .local v24, file:Ljava/io/File;
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getEncryFile()Ljava/io/File;

    move-result-object v23

    .line 1415
    .local v23, encry_file:Ljava/io/File;
    if-nez v23, :cond_0

    .line 1416
    const/4 v4, 0x0

    .line 1511
    :goto_0
    return v4

    .line 1419
    :cond_0
    const/16 v26, 0x0

    .line 1420
    .local v26, in:Ljava/nio/channels/FileChannel;
    const/16 v33, 0x0

    .line 1421
    .local v33, out:Ljava/nio/channels/FileChannel;
    const/16 v27, 0x0

    .line 1422
    .local v27, inStream:Ljava/io/FileInputStream;
    const/16 v34, 0x0

    .line 1424
    .local v34, outStream:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->length()J

    move-result-wide v31

    .line 1425
    .local v31, length:J
    invoke-static/range {v31 .. v32}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkIsSDSpaceNotEnoughAndShowToast(J)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1427
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "SD space not enough"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 1489
    .end local v31           #length:J
    :catch_0
    move-exception v22

    .line 1490
    .local v22, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_1
    const-string v4, "chenlu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encry cancel because FileNotFoundException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1491
    const/4 v4, 0x0

    .line 1508
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 1509
    invoke-static/range {v26 .. v26}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 1510
    invoke-static/range {v34 .. v34}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 1511
    invoke-static/range {v33 .. v33}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    goto :goto_0

    .line 1429
    .end local v22           #e:Ljava/io/FileNotFoundException;
    .restart local v31       #length:J
    :cond_1
    :try_start_2
    new-instance v28, Ljava/io/FileInputStream;

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 1430
    .end local v27           #inStream:Ljava/io/FileInputStream;
    .local v28, inStream:Ljava/io/FileInputStream;
    :try_start_3
    new-instance v35, Ljava/io/FileOutputStream;

    move-object/from16 v0, v35

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 1431
    .end local v34           #outStream:Ljava/io/FileOutputStream;
    .local v35, outStream:Ljava/io/FileOutputStream;
    :try_start_4
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v26

    .line 1432
    invoke-virtual/range {v35 .. v35}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v33

    .line 1433
    const/16 v4, 0x2800

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v17

    .line 1434
    .local v17, buffer_in_encry:Ljava/nio/ByteBuffer;
    const v4, 0xfa010

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v18

    .line 1435
    .local v18, buffer_out:Ljava/nio/ByteBuffer;
    const-wide/16 v20, 0x0

    .line 1436
    .local v20, cur:J
    const/16 v36, -0x1

    .line 1437
    .local v36, read:I
    const/16 v25, 0x0

    .line 1438
    .local v25, head_bitmap_size:I
    const-string v4, "%.2f%%"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move/from16 v1, p0

    invoke-interface {v0, v1, v4, v5}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;->updatePDMsg(ILjava/lang/String;Ljava/lang/String;)V

    .line 1439
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->createRandomAESKey()[B

    move-result-object v13

    .line 1440
    .local v13, keyData:[B
    new-instance v30, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    move-object/from16 v0, v30

    invoke-direct {v0, v13, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 1441
    .local v30, keySpec:Ljavax/crypto/spec/SecretKeySpec;
    const-string v4, "AES/CBC/PKCS5Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v19

    .line 1442
    .local v19, cip:Ljavax/crypto/Cipher;
    new-instance v29, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v4, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->IV:[B

    move-object/from16 v0, v29

    invoke-direct {v0, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 1443
    .local v29, iv:Ljavax/crypto/spec/IvParameterSpec;
    const/4 v4, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    invoke-virtual {v0, v4, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1444
    if-nez p3, :cond_2

    .line 1445
    const/4 v4, 0x3

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 1447
    :cond_2
    if-eqz p3, :cond_3

    .line 1448
    new-instance v16, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1449
    .local v16, baos:Ljava/io/ByteArrayOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1450
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    .line 1451
    .local v14, b:[B
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v15

    .line 1452
    .local v15, b_encry:[B
    array-length v0, v15

    move/from16 v25, v0

    .line 1453
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1454
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1455
    move-object/from16 v0, v33

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1456
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1458
    .end local v14           #b:[B
    .end local v15           #b_encry:[B
    .end local v16           #baos:Ljava/io/ByteArrayOutputStream;
    :cond_3
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v36

    .line 1459
    const/4 v4, -0x1

    move/from16 v0, v36

    if-eq v0, v4, :cond_7

    .line 1460
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1461
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    .line 1462
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1463
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1464
    move-object/from16 v0, v33

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1465
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1466
    move/from16 v0, v36

    int-to-long v4, v0

    add-long v20, v20, v4

    .line 1467
    const-string v4, "%.2f%%"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-wide/16 v7, 0x64

    mul-long v7, v7, v20

    long-to-double v7, v7

    move-wide/from16 v0, v31

    long-to-double v9, v0

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move/from16 v1, p0

    invoke-interface {v0, v1, v4, v5}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;->updatePDMsg(ILjava/lang/String;Ljava/lang/String;)V

    .line 1468
    :goto_2
    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v36

    const/4 v4, -0x1

    move/from16 v0, v36

    if-eq v0, v4, :cond_4

    .line 1469
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1470
    move-object/from16 v0, v33

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1471
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1472
    move/from16 v0, v36

    int-to-long v4, v0

    add-long v20, v20, v4

    .line 1473
    const-string v4, "%.2f%%"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-wide/16 v7, 0x64

    mul-long v7, v7, v20

    long-to-double v7, v7

    move-wide/from16 v0, v31

    long-to-double v9, v0

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move/from16 v1, p0

    invoke-interface {v0, v1, v4, v5}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;->updatePDMsg(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1489
    .end local v13           #keyData:[B
    .end local v17           #buffer_in_encry:Ljava/nio/ByteBuffer;
    .end local v18           #buffer_out:Ljava/nio/ByteBuffer;
    .end local v19           #cip:Ljavax/crypto/Cipher;
    .end local v20           #cur:J
    .end local v25           #head_bitmap_size:I
    .end local v29           #iv:Ljavax/crypto/spec/IvParameterSpec;
    .end local v30           #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .end local v36           #read:I
    :catch_1
    move-exception v22

    move-object/from16 v34, v35

    .end local v35           #outStream:Ljava/io/FileOutputStream;
    .restart local v34       #outStream:Ljava/io/FileOutputStream;
    move-object/from16 v27, v28

    .end local v28           #inStream:Ljava/io/FileInputStream;
    .restart local v27       #inStream:Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 1475
    .end local v27           #inStream:Ljava/io/FileInputStream;
    .end local v34           #outStream:Ljava/io/FileOutputStream;
    .restart local v13       #keyData:[B
    .restart local v17       #buffer_in_encry:Ljava/nio/ByteBuffer;
    .restart local v18       #buffer_out:Ljava/nio/ByteBuffer;
    .restart local v19       #cip:Ljavax/crypto/Cipher;
    .restart local v20       #cur:J
    .restart local v25       #head_bitmap_size:I
    .restart local v28       #inStream:Ljava/io/FileInputStream;
    .restart local v29       #iv:Ljavax/crypto/spec/IvParameterSpec;
    .restart local v30       #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v35       #outStream:Ljava/io/FileOutputStream;
    .restart local v36       #read:I
    :cond_4
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v3

    .line 1476
    .local v3, localPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    move/from16 v0, v25

    int-to-long v9, v0

    const-string v11, "2"

    const/4 v12, 0x6

    move-object/from16 v5, p1

    invoke-virtual/range {v3 .. v13}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->insertRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;I[B)Z

    move-result v37

    .line 1479
    .local v37, ret:Z
    if-nez v37, :cond_6

    .line 1480
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "save to database error"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1492
    .end local v3           #localPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
    .end local v13           #keyData:[B
    .end local v17           #buffer_in_encry:Ljava/nio/ByteBuffer;
    .end local v18           #buffer_out:Ljava/nio/ByteBuffer;
    .end local v19           #cip:Ljavax/crypto/Cipher;
    .end local v20           #cur:J
    .end local v25           #head_bitmap_size:I
    .end local v29           #iv:Ljavax/crypto/spec/IvParameterSpec;
    .end local v30           #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .end local v36           #read:I
    .end local v37           #ret:Z
    :catch_2
    move-exception v22

    move-object/from16 v34, v35

    .end local v35           #outStream:Ljava/io/FileOutputStream;
    .restart local v34       #outStream:Ljava/io/FileOutputStream;
    move-object/from16 v27, v28

    .line 1493
    .end local v28           #inStream:Ljava/io/FileInputStream;
    .end local v31           #length:J
    .local v22, e:Ljava/io/IOException;
    .restart local v27       #inStream:Ljava/io/FileInputStream;
    :goto_3
    :try_start_5
    invoke-virtual/range {v22 .. v22}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ENOSPC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1494
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->showSDSpaceNotEnough()V

    .line 1496
    :cond_5
    const-string v4, "chenlu"

    invoke-virtual/range {v22 .. v22}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    const-string v4, "chenlu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encry cancel file is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    const-string v4, "chenlu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete encry_file is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1500
    const/4 v4, 0x0

    .line 1508
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 1509
    invoke-static/range {v26 .. v26}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 1510
    invoke-static/range {v34 .. v34}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 1511
    invoke-static/range {v33 .. v33}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    goto/16 :goto_0

    .line 1482
    .end local v22           #e:Ljava/io/IOException;
    .end local v27           #inStream:Ljava/io/FileInputStream;
    .end local v34           #outStream:Ljava/io/FileOutputStream;
    .restart local v3       #localPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
    .restart local v13       #keyData:[B
    .restart local v17       #buffer_in_encry:Ljava/nio/ByteBuffer;
    .restart local v18       #buffer_out:Ljava/nio/ByteBuffer;
    .restart local v19       #cip:Ljavax/crypto/Cipher;
    .restart local v20       #cur:J
    .restart local v25       #head_bitmap_size:I
    .restart local v28       #inStream:Ljava/io/FileInputStream;
    .restart local v29       #iv:Ljavax/crypto/spec/IvParameterSpec;
    .restart local v30       #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v31       #length:J
    .restart local v35       #outStream:Ljava/io/FileOutputStream;
    .restart local v36       #read:I
    .restart local v37       #ret:Z
    :cond_6
    :try_start_6
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->delete()Z

    .line 1483
    invoke-static/range {p1 .. p1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->deleteVideoAsync(Ljava/lang/String;)V

    .line 1484
    const-string v4, "chenlu"

    const-string v5, "encry end"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 1485
    const/4 v4, 0x1

    .line 1508
    invoke-static/range {v28 .. v28}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 1509
    invoke-static/range {v26 .. v26}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 1510
    invoke-static/range {v35 .. v35}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 1511
    invoke-static/range {v33 .. v33}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    goto/16 :goto_0

    .line 1487
    .end local v3           #localPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
    .end local v37           #ret:Z
    :cond_7
    :try_start_7
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "read head error"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 1501
    .end local v13           #keyData:[B
    .end local v17           #buffer_in_encry:Ljava/nio/ByteBuffer;
    .end local v18           #buffer_out:Ljava/nio/ByteBuffer;
    .end local v19           #cip:Ljavax/crypto/Cipher;
    .end local v20           #cur:J
    .end local v25           #head_bitmap_size:I
    .end local v29           #iv:Ljavax/crypto/spec/IvParameterSpec;
    .end local v30           #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .end local v36           #read:I
    :catch_3
    move-exception v22

    move-object/from16 v34, v35

    .end local v35           #outStream:Ljava/io/FileOutputStream;
    .restart local v34       #outStream:Ljava/io/FileOutputStream;
    move-object/from16 v27, v28

    .line 1502
    .end local v28           #inStream:Ljava/io/FileInputStream;
    .end local v31           #length:J
    .local v22, e:Ljava/lang/Exception;
    .restart local v27       #inStream:Ljava/io/FileInputStream;
    :goto_4
    :try_start_8
    const-string v4, "chenlu"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    const-string v4, "chenlu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encry cancel file is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    const-string v4, "chenlu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete encry_file is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1506
    const/4 v4, 0x0

    .line 1508
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 1509
    invoke-static/range {v26 .. v26}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 1510
    invoke-static/range {v34 .. v34}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 1511
    invoke-static/range {v33 .. v33}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    goto/16 :goto_0

    .line 1508
    .end local v22           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_5
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 1509
    invoke-static/range {v26 .. v26}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 1510
    invoke-static/range {v34 .. v34}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 1511
    invoke-static/range {v33 .. v33}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    throw v4

    .line 1508
    .end local v27           #inStream:Ljava/io/FileInputStream;
    .restart local v28       #inStream:Ljava/io/FileInputStream;
    .restart local v31       #length:J
    :catchall_1
    move-exception v4

    move-object/from16 v27, v28

    .end local v28           #inStream:Ljava/io/FileInputStream;
    .restart local v27       #inStream:Ljava/io/FileInputStream;
    goto :goto_5

    .end local v27           #inStream:Ljava/io/FileInputStream;
    .end local v34           #outStream:Ljava/io/FileOutputStream;
    .restart local v28       #inStream:Ljava/io/FileInputStream;
    .restart local v35       #outStream:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v4

    move-object/from16 v34, v35

    .end local v35           #outStream:Ljava/io/FileOutputStream;
    .restart local v34       #outStream:Ljava/io/FileOutputStream;
    move-object/from16 v27, v28

    .end local v28           #inStream:Ljava/io/FileInputStream;
    .restart local v27       #inStream:Ljava/io/FileInputStream;
    goto :goto_5

    .line 1501
    .end local v31           #length:J
    :catch_4
    move-exception v22

    goto :goto_4

    .end local v27           #inStream:Ljava/io/FileInputStream;
    .restart local v28       #inStream:Ljava/io/FileInputStream;
    .restart local v31       #length:J
    :catch_5
    move-exception v22

    move-object/from16 v27, v28

    .end local v28           #inStream:Ljava/io/FileInputStream;
    .restart local v27       #inStream:Ljava/io/FileInputStream;
    goto :goto_4

    .line 1492
    .end local v31           #length:J
    :catch_6
    move-exception v22

    goto/16 :goto_3

    .end local v27           #inStream:Ljava/io/FileInputStream;
    .restart local v28       #inStream:Ljava/io/FileInputStream;
    .restart local v31       #length:J
    :catch_7
    move-exception v22

    move-object/from16 v27, v28

    .end local v28           #inStream:Ljava/io/FileInputStream;
    .restart local v27       #inStream:Ljava/io/FileInputStream;
    goto/16 :goto_3

    .line 1489
    .end local v27           #inStream:Ljava/io/FileInputStream;
    .restart local v28       #inStream:Ljava/io/FileInputStream;
    :catch_8
    move-exception v22

    move-object/from16 v27, v28

    .end local v28           #inStream:Ljava/io/FileInputStream;
    .restart local v27       #inStream:Ljava/io/FileInputStream;
    goto/16 :goto_1
.end method

.method private static encry_video_with_bitmap(ILjava/lang/String;Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;Landroid/graphics/Bitmap;)Z
    .locals 38
    .parameter "n"
    .parameter "path"
    .parameter "cb"
    .parameter "bitMap"

    .prologue
    .line 1318
    const-string v4, "chenlu"

    const-string v5, "encry begin"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1320
    .local v24, file:Ljava/io/File;
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getEncryFile()Ljava/io/File;

    move-result-object v23

    .line 1321
    .local v23, encry_file:Ljava/io/File;
    if-nez v23, :cond_0

    .line 1322
    const/4 v4, 0x0

    .line 1407
    :goto_0
    return v4

    .line 1325
    :cond_0
    const/16 v26, 0x0

    .line 1326
    .local v26, in:Ljava/nio/channels/FileChannel;
    const/16 v33, 0x0

    .line 1327
    .local v33, out:Ljava/nio/channels/FileChannel;
    const/16 v27, 0x0

    .line 1328
    .local v27, inStream:Ljava/io/FileInputStream;
    const/16 v34, 0x0

    .line 1330
    .local v34, outStream:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->length()J

    move-result-wide v31

    .line 1331
    .local v31, length:J
    invoke-static/range {v31 .. v32}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkIsSDSpaceNotEnoughAndShowToast(J)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1333
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "SD space not enough"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 1385
    .end local v31           #length:J
    :catch_0
    move-exception v22

    .line 1386
    .local v22, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_1
    const-string v4, "chenlu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encry cancel because FileNotFoundException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1387
    const/4 v4, 0x0

    .line 1404
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 1405
    invoke-static/range {v26 .. v26}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 1406
    invoke-static/range {v34 .. v34}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 1407
    invoke-static/range {v33 .. v33}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    goto :goto_0

    .line 1335
    .end local v22           #e:Ljava/io/FileNotFoundException;
    .restart local v31       #length:J
    :cond_1
    :try_start_2
    new-instance v28, Ljava/io/FileInputStream;

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 1336
    .end local v27           #inStream:Ljava/io/FileInputStream;
    .local v28, inStream:Ljava/io/FileInputStream;
    :try_start_3
    new-instance v35, Ljava/io/FileOutputStream;

    move-object/from16 v0, v35

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 1337
    .end local v34           #outStream:Ljava/io/FileOutputStream;
    .local v35, outStream:Ljava/io/FileOutputStream;
    :try_start_4
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v26

    .line 1338
    invoke-virtual/range {v35 .. v35}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v33

    .line 1339
    const v4, 0xfa000

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v17

    .line 1340
    .local v17, buffer_in:Ljava/nio/ByteBuffer;
    const v4, 0xfa010

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v18

    .line 1341
    .local v18, buffer_out:Ljava/nio/ByteBuffer;
    const-wide/16 v20, 0x0

    .line 1342
    .local v20, cur:J
    const/16 v36, -0x1

    .line 1343
    .local v36, read:I
    const/16 v25, 0x0

    .line 1344
    .local v25, head_bitmap_size:I
    const-string v4, "%.2f%%"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move/from16 v1, p0

    invoke-interface {v0, v1, v4, v5}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;->updatePDMsg(ILjava/lang/String;Ljava/lang/String;)V

    .line 1345
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->createRandomAESKey()[B

    move-result-object v13

    .line 1346
    .local v13, keyData:[B
    new-instance v30, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    move-object/from16 v0, v30

    invoke-direct {v0, v13, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 1347
    .local v30, keySpec:Ljavax/crypto/spec/SecretKeySpec;
    const-string v4, "AES/CBC/PKCS5Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v19

    .line 1348
    .local v19, cip:Ljavax/crypto/Cipher;
    new-instance v29, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v4, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->IV:[B

    move-object/from16 v0, v29

    invoke-direct {v0, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 1349
    .local v29, iv:Ljavax/crypto/spec/IvParameterSpec;
    const/4 v4, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    invoke-virtual {v0, v4, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1350
    if-nez p3, :cond_2

    .line 1351
    const/4 v4, 0x3

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 1353
    :cond_2
    if-eqz p3, :cond_3

    .line 1354
    new-instance v16, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1355
    .local v16, baos:Ljava/io/ByteArrayOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1356
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    .line 1357
    .local v14, b:[B
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v15

    .line 1358
    .local v15, b_encry:[B
    array-length v0, v15

    move/from16 v25, v0

    .line 1359
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1360
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1361
    move-object/from16 v0, v33

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1362
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1364
    .end local v14           #b:[B
    .end local v15           #b_encry:[B
    .end local v16           #baos:Ljava/io/ByteArrayOutputStream;
    :cond_3
    :goto_2
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v36

    const/4 v4, -0x1

    move/from16 v0, v36

    if-eq v0, v4, :cond_4

    .line 1365
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1366
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    .line 1367
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1368
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1369
    move-object/from16 v0, v33

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1370
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1371
    move/from16 v0, v36

    int-to-long v4, v0

    add-long v20, v20, v4

    .line 1372
    const-string v4, "%.2f%%"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-wide/16 v7, 0x64

    mul-long v7, v7, v20

    long-to-double v7, v7

    move-wide/from16 v0, v31

    long-to-double v9, v0

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move/from16 v1, p0

    invoke-interface {v0, v1, v4, v5}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;->updatePDMsg(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1385
    .end local v13           #keyData:[B
    .end local v17           #buffer_in:Ljava/nio/ByteBuffer;
    .end local v18           #buffer_out:Ljava/nio/ByteBuffer;
    .end local v19           #cip:Ljavax/crypto/Cipher;
    .end local v20           #cur:J
    .end local v25           #head_bitmap_size:I
    .end local v29           #iv:Ljavax/crypto/spec/IvParameterSpec;
    .end local v30           #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .end local v36           #read:I
    :catch_1
    move-exception v22

    move-object/from16 v34, v35

    .end local v35           #outStream:Ljava/io/FileOutputStream;
    .restart local v34       #outStream:Ljava/io/FileOutputStream;
    move-object/from16 v27, v28

    .end local v28           #inStream:Ljava/io/FileInputStream;
    .restart local v27       #inStream:Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 1374
    .end local v27           #inStream:Ljava/io/FileInputStream;
    .end local v34           #outStream:Ljava/io/FileOutputStream;
    .restart local v13       #keyData:[B
    .restart local v17       #buffer_in:Ljava/nio/ByteBuffer;
    .restart local v18       #buffer_out:Ljava/nio/ByteBuffer;
    .restart local v19       #cip:Ljavax/crypto/Cipher;
    .restart local v20       #cur:J
    .restart local v25       #head_bitmap_size:I
    .restart local v28       #inStream:Ljava/io/FileInputStream;
    .restart local v29       #iv:Ljavax/crypto/spec/IvParameterSpec;
    .restart local v30       #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v35       #outStream:Ljava/io/FileOutputStream;
    .restart local v36       #read:I
    :cond_4
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v3

    .line 1375
    .local v3, localPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    move/from16 v0, v25

    int-to-long v9, v0

    const-string v11, "2"

    const/4 v12, 0x4

    move-object/from16 v5, p1

    invoke-virtual/range {v3 .. v13}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->insertRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;I[B)Z

    move-result v37

    .line 1378
    .local v37, ret:Z
    if-nez v37, :cond_6

    .line 1379
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "save to database error"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 1388
    .end local v3           #localPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
    .end local v13           #keyData:[B
    .end local v17           #buffer_in:Ljava/nio/ByteBuffer;
    .end local v18           #buffer_out:Ljava/nio/ByteBuffer;
    .end local v19           #cip:Ljavax/crypto/Cipher;
    .end local v20           #cur:J
    .end local v25           #head_bitmap_size:I
    .end local v29           #iv:Ljavax/crypto/spec/IvParameterSpec;
    .end local v30           #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .end local v36           #read:I
    .end local v37           #ret:Z
    :catch_2
    move-exception v22

    move-object/from16 v34, v35

    .end local v35           #outStream:Ljava/io/FileOutputStream;
    .restart local v34       #outStream:Ljava/io/FileOutputStream;
    move-object/from16 v27, v28

    .line 1389
    .end local v28           #inStream:Ljava/io/FileInputStream;
    .end local v31           #length:J
    .local v22, e:Ljava/io/IOException;
    .restart local v27       #inStream:Ljava/io/FileInputStream;
    :goto_3
    :try_start_5
    invoke-virtual/range {v22 .. v22}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ENOSPC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1390
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->showSDSpaceNotEnough()V

    .line 1392
    :cond_5
    const-string v4, "chenlu"

    invoke-virtual/range {v22 .. v22}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    const-string v4, "chenlu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encry cancel file is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    const-string v4, "chenlu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete encry_file is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1396
    const/4 v4, 0x0

    .line 1404
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 1405
    invoke-static/range {v26 .. v26}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 1406
    invoke-static/range {v34 .. v34}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 1407
    invoke-static/range {v33 .. v33}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    goto/16 :goto_0

    .line 1381
    .end local v22           #e:Ljava/io/IOException;
    .end local v27           #inStream:Ljava/io/FileInputStream;
    .end local v34           #outStream:Ljava/io/FileOutputStream;
    .restart local v3       #localPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
    .restart local v13       #keyData:[B
    .restart local v17       #buffer_in:Ljava/nio/ByteBuffer;
    .restart local v18       #buffer_out:Ljava/nio/ByteBuffer;
    .restart local v19       #cip:Ljavax/crypto/Cipher;
    .restart local v20       #cur:J
    .restart local v25       #head_bitmap_size:I
    .restart local v28       #inStream:Ljava/io/FileInputStream;
    .restart local v29       #iv:Ljavax/crypto/spec/IvParameterSpec;
    .restart local v30       #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v31       #length:J
    .restart local v35       #outStream:Ljava/io/FileOutputStream;
    .restart local v36       #read:I
    .restart local v37       #ret:Z
    :cond_6
    :try_start_6
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->delete()Z

    .line 1382
    invoke-static/range {p1 .. p1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->deleteVideoAsync(Ljava/lang/String;)V

    .line 1383
    const-string v4, "chenlu"

    const-string v5, "encry end"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 1384
    const/4 v4, 0x1

    .line 1404
    invoke-static/range {v28 .. v28}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 1405
    invoke-static/range {v26 .. v26}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 1406
    invoke-static/range {v35 .. v35}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 1407
    invoke-static/range {v33 .. v33}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    goto/16 :goto_0

    .line 1397
    .end local v3           #localPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
    .end local v13           #keyData:[B
    .end local v17           #buffer_in:Ljava/nio/ByteBuffer;
    .end local v18           #buffer_out:Ljava/nio/ByteBuffer;
    .end local v19           #cip:Ljavax/crypto/Cipher;
    .end local v20           #cur:J
    .end local v25           #head_bitmap_size:I
    .end local v28           #inStream:Ljava/io/FileInputStream;
    .end local v29           #iv:Ljavax/crypto/spec/IvParameterSpec;
    .end local v30           #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .end local v31           #length:J
    .end local v35           #outStream:Ljava/io/FileOutputStream;
    .end local v36           #read:I
    .end local v37           #ret:Z
    .restart local v27       #inStream:Ljava/io/FileInputStream;
    .restart local v34       #outStream:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v22

    .line 1398
    .local v22, e:Ljava/lang/Exception;
    :goto_4
    :try_start_7
    const-string v4, "chenlu"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    const-string v4, "chenlu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encry cancel file is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    const-string v4, "chenlu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete encry_file is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1402
    const/4 v4, 0x0

    .line 1404
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 1405
    invoke-static/range {v26 .. v26}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 1406
    invoke-static/range {v34 .. v34}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 1407
    invoke-static/range {v33 .. v33}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    goto/16 :goto_0

    .line 1404
    .end local v22           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_5
    invoke-static/range {v27 .. v27}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 1405
    invoke-static/range {v26 .. v26}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 1406
    invoke-static/range {v34 .. v34}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 1407
    invoke-static/range {v33 .. v33}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    throw v4

    .line 1404
    .end local v27           #inStream:Ljava/io/FileInputStream;
    .restart local v28       #inStream:Ljava/io/FileInputStream;
    .restart local v31       #length:J
    :catchall_1
    move-exception v4

    move-object/from16 v27, v28

    .end local v28           #inStream:Ljava/io/FileInputStream;
    .restart local v27       #inStream:Ljava/io/FileInputStream;
    goto :goto_5

    .end local v27           #inStream:Ljava/io/FileInputStream;
    .end local v34           #outStream:Ljava/io/FileOutputStream;
    .restart local v28       #inStream:Ljava/io/FileInputStream;
    .restart local v35       #outStream:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v4

    move-object/from16 v34, v35

    .end local v35           #outStream:Ljava/io/FileOutputStream;
    .restart local v34       #outStream:Ljava/io/FileOutputStream;
    move-object/from16 v27, v28

    .end local v28           #inStream:Ljava/io/FileInputStream;
    .restart local v27       #inStream:Ljava/io/FileInputStream;
    goto :goto_5

    .line 1397
    .end local v27           #inStream:Ljava/io/FileInputStream;
    .restart local v28       #inStream:Ljava/io/FileInputStream;
    :catch_4
    move-exception v22

    move-object/from16 v27, v28

    .end local v28           #inStream:Ljava/io/FileInputStream;
    .restart local v27       #inStream:Ljava/io/FileInputStream;
    goto :goto_4

    .end local v27           #inStream:Ljava/io/FileInputStream;
    .end local v34           #outStream:Ljava/io/FileOutputStream;
    .restart local v28       #inStream:Ljava/io/FileInputStream;
    .restart local v35       #outStream:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v22

    move-object/from16 v34, v35

    .end local v35           #outStream:Ljava/io/FileOutputStream;
    .restart local v34       #outStream:Ljava/io/FileOutputStream;
    move-object/from16 v27, v28

    .end local v28           #inStream:Ljava/io/FileInputStream;
    .restart local v27       #inStream:Ljava/io/FileInputStream;
    goto :goto_4

    .line 1388
    .end local v31           #length:J
    :catch_6
    move-exception v22

    goto/16 :goto_3

    .end local v27           #inStream:Ljava/io/FileInputStream;
    .restart local v28       #inStream:Ljava/io/FileInputStream;
    .restart local v31       #length:J
    :catch_7
    move-exception v22

    move-object/from16 v27, v28

    .end local v28           #inStream:Ljava/io/FileInputStream;
    .restart local v27       #inStream:Ljava/io/FileInputStream;
    goto/16 :goto_3

    .line 1385
    .end local v27           #inStream:Ljava/io/FileInputStream;
    .restart local v28       #inStream:Ljava/io/FileInputStream;
    :catch_8
    move-exception v22

    move-object/from16 v27, v28

    .end local v28           #inStream:Ljava/io/FileInputStream;
    .restart local v27       #inStream:Ljava/io/FileInputStream;
    goto/16 :goto_1
.end method

.method private static encry_video_without_bitmap(ILjava/lang/String;Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;)Z
    .locals 33
    .parameter "n"
    .parameter "path"
    .parameter "cb"

    .prologue
    .line 1039
    const-string v3, "chenlu"

    const-string v4, "encry begin"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1041
    .local v20, file:Ljava/io/File;
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getEncryFile()Ljava/io/File;

    move-result-object v19

    .line 1042
    .local v19, encry_file:Ljava/io/File;
    if-nez v19, :cond_0

    .line 1043
    const/4 v3, 0x0

    .line 1113
    :goto_0
    return v3

    .line 1046
    :cond_0
    const/16 v21, 0x0

    .line 1047
    .local v21, in:Ljava/nio/channels/FileChannel;
    const/16 v28, 0x0

    .line 1048
    .local v28, out:Ljava/nio/channels/FileChannel;
    const/16 v22, 0x0

    .line 1049
    .local v22, inStream:Ljava/io/FileInputStream;
    const/16 v29, 0x0

    .line 1051
    .local v29, outStream:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->length()J

    move-result-wide v26

    .line 1052
    .local v26, length:J
    invoke-static/range {v26 .. v27}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkIsSDSpaceNotEnoughAndShowToast(J)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1054
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "SD space not enough"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 1091
    .end local v26           #length:J
    :catch_0
    move-exception v18

    .line 1092
    .local v18, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_1
    const-string v3, "chenlu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encry cancel because FileNotFoundException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1093
    const/4 v3, 0x0

    .line 1110
    invoke-static/range {v22 .. v22}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 1111
    invoke-static/range {v21 .. v21}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 1112
    invoke-static/range {v29 .. v29}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 1113
    invoke-static/range {v28 .. v28}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    goto :goto_0

    .line 1056
    .end local v18           #e:Ljava/io/FileNotFoundException;
    .restart local v26       #length:J
    :cond_1
    :try_start_2
    new-instance v23, Ljava/io/FileInputStream;

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 1057
    .end local v22           #inStream:Ljava/io/FileInputStream;
    .local v23, inStream:Ljava/io/FileInputStream;
    :try_start_3
    new-instance v30, Ljava/io/FileOutputStream;

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 1058
    .end local v29           #outStream:Ljava/io/FileOutputStream;
    .local v30, outStream:Ljava/io/FileOutputStream;
    :try_start_4
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v21

    .line 1059
    invoke-virtual/range {v30 .. v30}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v28

    .line 1060
    const v3, 0xfa000

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 1061
    .local v13, buffer_in:Ljava/nio/ByteBuffer;
    const v3, 0xfa010

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 1062
    .local v14, buffer_out:Ljava/nio/ByteBuffer;
    const-wide/16 v16, 0x0

    .line 1063
    .local v16, cur:J
    const/16 v31, -0x1

    .line 1064
    .local v31, read:I
    const-string v3, "%.2f%%"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move/from16 v1, p0

    invoke-interface {v0, v1, v3, v4}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;->updatePDMsg(ILjava/lang/String;Ljava/lang/String;)V

    .line 1065
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->createRandomAESKey()[B

    move-result-object v12

    .line 1066
    .local v12, keyData:[B
    new-instance v25, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    move-object/from16 v0, v25

    invoke-direct {v0, v12, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 1067
    .local v25, keySpec:Ljavax/crypto/spec/SecretKeySpec;
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v15

    .line 1068
    .local v15, cip:Ljavax/crypto/Cipher;
    new-instance v24, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v3, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->IV:[B

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 1069
    .local v24, iv:Ljavax/crypto/spec/IvParameterSpec;
    const/4 v3, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v15, v3, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1070
    :goto_2
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v31

    const/4 v3, -0x1

    move/from16 v0, v31

    if-eq v0, v3, :cond_2

    .line 1071
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1072
    invoke-virtual {v15, v13, v14}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    .line 1073
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1074
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1075
    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1076
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1077
    move/from16 v0, v31

    int-to-long v3, v0

    add-long v16, v16, v3

    .line 1078
    const-string v3, "%.2f%%"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-wide/16 v6, 0x64

    mul-long v6, v6, v16

    long-to-double v6, v6

    move-wide/from16 v0, v26

    long-to-double v8, v0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move/from16 v1, p0

    invoke-interface {v0, v1, v3, v4}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;->updatePDMsg(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1091
    .end local v12           #keyData:[B
    .end local v13           #buffer_in:Ljava/nio/ByteBuffer;
    .end local v14           #buffer_out:Ljava/nio/ByteBuffer;
    .end local v15           #cip:Ljavax/crypto/Cipher;
    .end local v16           #cur:J
    .end local v24           #iv:Ljavax/crypto/spec/IvParameterSpec;
    .end local v25           #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .end local v31           #read:I
    :catch_1
    move-exception v18

    move-object/from16 v29, v30

    .end local v30           #outStream:Ljava/io/FileOutputStream;
    .restart local v29       #outStream:Ljava/io/FileOutputStream;
    move-object/from16 v22, v23

    .end local v23           #inStream:Ljava/io/FileInputStream;
    .restart local v22       #inStream:Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 1080
    .end local v22           #inStream:Ljava/io/FileInputStream;
    .end local v29           #outStream:Ljava/io/FileOutputStream;
    .restart local v12       #keyData:[B
    .restart local v13       #buffer_in:Ljava/nio/ByteBuffer;
    .restart local v14       #buffer_out:Ljava/nio/ByteBuffer;
    .restart local v15       #cip:Ljavax/crypto/Cipher;
    .restart local v16       #cur:J
    .restart local v23       #inStream:Ljava/io/FileInputStream;
    .restart local v24       #iv:Ljavax/crypto/spec/IvParameterSpec;
    .restart local v25       #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v30       #outStream:Ljava/io/FileOutputStream;
    .restart local v31       #read:I
    :cond_2
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v2

    .line 1081
    .local v2, localPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    const-string v10, "2"

    const/4 v11, 0x5

    move-object/from16 v4, p1

    invoke-virtual/range {v2 .. v12}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->insertRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;I[B)Z

    move-result v32

    .line 1084
    .local v32, ret:Z
    if-nez v32, :cond_4

    .line 1085
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "save to database error"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 1094
    .end local v2           #localPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
    .end local v12           #keyData:[B
    .end local v13           #buffer_in:Ljava/nio/ByteBuffer;
    .end local v14           #buffer_out:Ljava/nio/ByteBuffer;
    .end local v15           #cip:Ljavax/crypto/Cipher;
    .end local v16           #cur:J
    .end local v24           #iv:Ljavax/crypto/spec/IvParameterSpec;
    .end local v25           #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .end local v31           #read:I
    .end local v32           #ret:Z
    :catch_2
    move-exception v18

    move-object/from16 v29, v30

    .end local v30           #outStream:Ljava/io/FileOutputStream;
    .restart local v29       #outStream:Ljava/io/FileOutputStream;
    move-object/from16 v22, v23

    .line 1095
    .end local v23           #inStream:Ljava/io/FileInputStream;
    .end local v26           #length:J
    .local v18, e:Ljava/io/IOException;
    .restart local v22       #inStream:Ljava/io/FileInputStream;
    :goto_3
    :try_start_5
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ENOSPC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1096
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->showSDSpaceNotEnough()V

    .line 1098
    :cond_3
    const-string v3, "chenlu"

    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    const-string v3, "chenlu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encry cancel file is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    const-string v3, "chenlu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete encry_file is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1102
    const/4 v3, 0x0

    .line 1110
    invoke-static/range {v22 .. v22}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 1111
    invoke-static/range {v21 .. v21}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 1112
    invoke-static/range {v29 .. v29}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 1113
    invoke-static/range {v28 .. v28}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    goto/16 :goto_0

    .line 1087
    .end local v18           #e:Ljava/io/IOException;
    .end local v22           #inStream:Ljava/io/FileInputStream;
    .end local v29           #outStream:Ljava/io/FileOutputStream;
    .restart local v2       #localPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
    .restart local v12       #keyData:[B
    .restart local v13       #buffer_in:Ljava/nio/ByteBuffer;
    .restart local v14       #buffer_out:Ljava/nio/ByteBuffer;
    .restart local v15       #cip:Ljavax/crypto/Cipher;
    .restart local v16       #cur:J
    .restart local v23       #inStream:Ljava/io/FileInputStream;
    .restart local v24       #iv:Ljavax/crypto/spec/IvParameterSpec;
    .restart local v25       #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v26       #length:J
    .restart local v30       #outStream:Ljava/io/FileOutputStream;
    .restart local v31       #read:I
    .restart local v32       #ret:Z
    :cond_4
    :try_start_6
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->delete()Z

    .line 1088
    invoke-static/range {p1 .. p1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->deleteVideoAsync(Ljava/lang/String;)V

    .line 1089
    const-string v3, "chenlu"

    const-string v4, "encry end"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 1090
    const/4 v3, 0x1

    .line 1110
    invoke-static/range {v23 .. v23}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 1111
    invoke-static/range {v21 .. v21}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 1112
    invoke-static/range {v30 .. v30}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 1113
    invoke-static/range {v28 .. v28}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    goto/16 :goto_0

    .line 1103
    .end local v2           #localPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
    .end local v12           #keyData:[B
    .end local v13           #buffer_in:Ljava/nio/ByteBuffer;
    .end local v14           #buffer_out:Ljava/nio/ByteBuffer;
    .end local v15           #cip:Ljavax/crypto/Cipher;
    .end local v16           #cur:J
    .end local v23           #inStream:Ljava/io/FileInputStream;
    .end local v24           #iv:Ljavax/crypto/spec/IvParameterSpec;
    .end local v25           #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .end local v26           #length:J
    .end local v30           #outStream:Ljava/io/FileOutputStream;
    .end local v31           #read:I
    .end local v32           #ret:Z
    .restart local v22       #inStream:Ljava/io/FileInputStream;
    .restart local v29       #outStream:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v18

    .line 1104
    .local v18, e:Ljava/lang/Exception;
    :goto_4
    :try_start_7
    const-string v3, "chenlu"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    const-string v3, "chenlu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encry cancel file is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    const-string v3, "chenlu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete encry_file is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1108
    const/4 v3, 0x0

    .line 1110
    invoke-static/range {v22 .. v22}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 1111
    invoke-static/range {v21 .. v21}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 1112
    invoke-static/range {v29 .. v29}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 1113
    invoke-static/range {v28 .. v28}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    goto/16 :goto_0

    .line 1110
    .end local v18           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :goto_5
    invoke-static/range {v22 .. v22}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 1111
    invoke-static/range {v21 .. v21}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    .line 1112
    invoke-static/range {v29 .. v29}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileOutputStream;)V

    .line 1113
    invoke-static/range {v28 .. v28}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    throw v3

    .line 1110
    .end local v22           #inStream:Ljava/io/FileInputStream;
    .restart local v23       #inStream:Ljava/io/FileInputStream;
    .restart local v26       #length:J
    :catchall_1
    move-exception v3

    move-object/from16 v22, v23

    .end local v23           #inStream:Ljava/io/FileInputStream;
    .restart local v22       #inStream:Ljava/io/FileInputStream;
    goto :goto_5

    .end local v22           #inStream:Ljava/io/FileInputStream;
    .end local v29           #outStream:Ljava/io/FileOutputStream;
    .restart local v23       #inStream:Ljava/io/FileInputStream;
    .restart local v30       #outStream:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v3

    move-object/from16 v29, v30

    .end local v30           #outStream:Ljava/io/FileOutputStream;
    .restart local v29       #outStream:Ljava/io/FileOutputStream;
    move-object/from16 v22, v23

    .end local v23           #inStream:Ljava/io/FileInputStream;
    .restart local v22       #inStream:Ljava/io/FileInputStream;
    goto :goto_5

    .line 1103
    .end local v22           #inStream:Ljava/io/FileInputStream;
    .restart local v23       #inStream:Ljava/io/FileInputStream;
    :catch_4
    move-exception v18

    move-object/from16 v22, v23

    .end local v23           #inStream:Ljava/io/FileInputStream;
    .restart local v22       #inStream:Ljava/io/FileInputStream;
    goto :goto_4

    .end local v22           #inStream:Ljava/io/FileInputStream;
    .end local v29           #outStream:Ljava/io/FileOutputStream;
    .restart local v23       #inStream:Ljava/io/FileInputStream;
    .restart local v30       #outStream:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v18

    move-object/from16 v29, v30

    .end local v30           #outStream:Ljava/io/FileOutputStream;
    .restart local v29       #outStream:Ljava/io/FileOutputStream;
    move-object/from16 v22, v23

    .end local v23           #inStream:Ljava/io/FileInputStream;
    .restart local v22       #inStream:Ljava/io/FileInputStream;
    goto :goto_4

    .line 1094
    .end local v26           #length:J
    :catch_6
    move-exception v18

    goto/16 :goto_3

    .end local v22           #inStream:Ljava/io/FileInputStream;
    .restart local v23       #inStream:Ljava/io/FileInputStream;
    .restart local v26       #length:J
    :catch_7
    move-exception v18

    move-object/from16 v22, v23

    .end local v23           #inStream:Ljava/io/FileInputStream;
    .restart local v22       #inStream:Ljava/io/FileInputStream;
    goto/16 :goto_3

    .line 1091
    .end local v22           #inStream:Ljava/io/FileInputStream;
    .restart local v23       #inStream:Ljava/io/FileInputStream;
    :catch_8
    move-exception v18

    move-object/from16 v22, v23

    .end local v23           #inStream:Ljava/io/FileInputStream;
    .restart local v22       #inStream:Ljava/io/FileInputStream;
    goto/16 :goto_1
.end method

.method public static enforceAuthPermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5313
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->auth()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5314
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5315
    .local v0, uid:I
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not have authorities \'com.zte.heartyservice;com.zte.heartyservice.intercept\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5317
    .end local v0           #uid:I
    :cond_0
    return-void
.end method

.method public static fileCopy(Ljava/io/File;Ljava/io/File;)Z
    .locals 13
    .parameter "src"
    .parameter "des"

    .prologue
    const/4 v10, 0x0

    .line 5534
    const/4 v4, 0x0

    .line 5535
    .local v4, in:Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 5537
    .local v7, out:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b

    move-result v11

    if-eqz v11, :cond_3

    .line 5576
    :cond_0
    if-eqz v4, :cond_1

    .line 5577
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5582
    :cond_1
    :goto_0
    if-eqz v7, :cond_2

    .line 5583
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 5589
    :cond_2
    :goto_1
    return v10

    .line 5578
    :catch_0
    move-exception v3

    .line 5579
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 5584
    .end local v3           #e:Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 5585
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 5541
    .end local v3           #e:Ljava/io/IOException;
    :cond_3
    :try_start_3
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 5542
    .local v2, desDir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_b

    move-result v11

    if-nez v11, :cond_6

    .line 5576
    :cond_4
    if-eqz v4, :cond_5

    .line 5577
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 5582
    :cond_5
    :goto_2
    if-eqz v7, :cond_2

    .line 5583
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 5584
    :catch_2
    move-exception v3

    .line 5585
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 5578
    .end local v3           #e:Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 5579
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 5545
    .end local v3           #e:Ljava/io/IOException;
    :cond_6
    :try_start_6
    new-instance v9, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "copy_tmp"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v2, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5546
    .local v9, tmpFile:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b

    move-result v11

    if-nez v11, :cond_8

    .line 5576
    if-eqz v4, :cond_7

    .line 5577
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 5582
    :cond_7
    :goto_3
    if-eqz v7, :cond_2

    .line 5583
    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_1

    .line 5584
    :catch_4
    move-exception v3

    .line 5585
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 5578
    .end local v3           #e:Ljava/io/IOException;
    :catch_5
    move-exception v3

    .line 5579
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 5549
    .end local v3           #e:Ljava/io/IOException;
    :cond_8
    :try_start_9
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_b

    .line 5550
    .end local v4           #in:Ljava/io/FileInputStream;
    .local v5, in:Ljava/io/FileInputStream;
    :try_start_a
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_10

    .line 5551
    .end local v7           #out:Ljava/io/FileOutputStream;
    .local v8, out:Ljava/io/FileOutputStream;
    const/16 v11, 0x400

    :try_start_b
    new-array v0, v11, [B

    .line 5553
    .local v0, buf:[B
    const/4 v1, 0x1

    .line 5554
    .local v1, copyright:Z
    :goto_4
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_11

    move-result v6

    .local v6, len:I
    if-lez v6, :cond_9

    .line 5556
    const/4 v11, 0x0

    :try_start_c
    invoke-virtual {v8, v0, v11, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_11

    goto :goto_4

    .line 5557
    :catch_6
    move-exception v3

    .line 5558
    .restart local v3       #e:Ljava/io/IOException;
    const/4 v1, 0x0

    .line 5563
    .end local v3           #e:Ljava/io/IOException;
    :cond_9
    :try_start_d
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_11

    .line 5564
    const/4 v7, 0x0

    .line 5566
    .end local v8           #out:Ljava/io/FileOutputStream;
    .restart local v7       #out:Ljava/io/FileOutputStream;
    if-eqz v1, :cond_c

    .line 5567
    :try_start_e
    invoke-virtual {v9, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_10

    .line 5568
    const/4 v10, 0x1

    .line 5576
    if-eqz v5, :cond_a

    .line 5577
    :try_start_f
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7

    .line 5582
    :cond_a
    :goto_5
    if-eqz v7, :cond_b

    .line 5583
    :try_start_10
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8

    :cond_b
    :goto_6
    move-object v4, v5

    .line 5586
    .end local v5           #in:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 5578
    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v5       #in:Ljava/io/FileInputStream;
    :catch_7
    move-exception v3

    .line 5579
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 5584
    .end local v3           #e:Ljava/io/IOException;
    :catch_8
    move-exception v3

    .line 5585
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 5570
    .end local v3           #e:Ljava/io/IOException;
    :cond_c
    :try_start_11
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_10

    .line 5576
    if-eqz v5, :cond_d

    .line 5577
    :try_start_12
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_9

    .line 5582
    :cond_d
    :goto_7
    if-eqz v7, :cond_e

    .line 5583
    :try_start_13
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_a

    :cond_e
    move-object v4, v5

    .line 5586
    .end local v5           #in:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 5578
    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v5       #in:Ljava/io/FileInputStream;
    :catch_9
    move-exception v3

    .line 5579
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 5584
    .end local v3           #e:Ljava/io/IOException;
    :catch_a
    move-exception v3

    .line 5585
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 5587
    .end local v5           #in:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 5572
    .end local v0           #buf:[B
    .end local v1           #copyright:Z
    .end local v2           #desDir:Ljava/io/File;
    .end local v3           #e:Ljava/io/IOException;
    .end local v6           #len:I
    .end local v9           #tmpFile:Ljava/io/File;
    :catch_b
    move-exception v3

    .line 5573
    .local v3, e:Ljava/lang/Exception;
    :goto_8
    :try_start_14
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 5576
    if-eqz v4, :cond_f

    .line 5577
    :try_start_15
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_d

    .line 5582
    .end local v3           #e:Ljava/lang/Exception;
    :cond_f
    :goto_9
    if-eqz v7, :cond_2

    .line 5583
    :try_start_16
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_c

    goto/16 :goto_1

    .line 5584
    :catch_c
    move-exception v3

    .line 5585
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 5578
    .local v3, e:Ljava/lang/Exception;
    :catch_d
    move-exception v3

    .line 5579
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 5575
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 5576
    :goto_a
    if-eqz v4, :cond_10

    .line 5577
    :try_start_17
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_e

    .line 5582
    :cond_10
    :goto_b
    if-eqz v7, :cond_11

    .line 5583
    :try_start_18
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_f

    .line 5586
    :cond_11
    :goto_c
    throw v10

    .line 5578
    :catch_e
    move-exception v3

    .line 5579
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 5584
    .end local v3           #e:Ljava/io/IOException;
    :catch_f
    move-exception v3

    .line 5585
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 5575
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v2       #desDir:Ljava/io/File;
    .restart local v5       #in:Ljava/io/FileInputStream;
    .restart local v9       #tmpFile:Ljava/io/File;
    :catchall_1
    move-exception v10

    move-object v4, v5

    .end local v5           #in:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    goto :goto_a

    .end local v4           #in:Ljava/io/FileInputStream;
    .end local v7           #out:Ljava/io/FileOutputStream;
    .restart local v5       #in:Ljava/io/FileInputStream;
    .restart local v8       #out:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v10

    move-object v7, v8

    .end local v8           #out:Ljava/io/FileOutputStream;
    .restart local v7       #out:Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5           #in:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    goto :goto_a

    .line 5572
    .end local v4           #in:Ljava/io/FileInputStream;
    .restart local v5       #in:Ljava/io/FileInputStream;
    :catch_10
    move-exception v3

    move-object v4, v5

    .end local v5           #in:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    goto :goto_8

    .end local v4           #in:Ljava/io/FileInputStream;
    .end local v7           #out:Ljava/io/FileOutputStream;
    .restart local v5       #in:Ljava/io/FileInputStream;
    .restart local v8       #out:Ljava/io/FileOutputStream;
    :catch_11
    move-exception v3

    move-object v7, v8

    .end local v8           #out:Ljava/io/FileOutputStream;
    .restart local v7       #out:Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5           #in:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    goto :goto_8
.end method

.method public static forwardSms(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4
    .parameter "activity"
    .parameter "sms"

    .prologue
    .line 2286
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2287
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2288
    const-string v2, "com.android.mms"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2289
    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2290
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2293
    :try_start_0
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->setOutIntent(Landroid/content/Intent;)V

    .line 2294
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2299
    :goto_0
    return-void

    .line 2295
    :catch_0
    move-exception v0

    .line 2296
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "forwardSms"

    const-string v3, "forwardSms failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2297
    invoke-static {p0, p1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->shareSms(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getAllLockedPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5180
    sget-object v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->appLockWatchDog:Lcom/zte/heartyservice/privacy/AppLockWatchDog;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/AppLockWatchDog;->getAllLockedPackages()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getAppMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "packageName"

    .prologue
    .line 5490
    const/4 v1, 0x0

    .line 5492
    .local v1, md5:Ljava/lang/String;
    :try_start_0
    sget-object v4, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->packageManager:Landroid/content/pm/PackageManager;

    const/16 v5, 0x40

    invoke-virtual {v4, p0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v2, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 5493
    .local v2, signatures:[Landroid/content/pm/Signature;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 5494
    aget-object v4, v2, v0

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v3

    .line 5495
    .local v3, str2:Ljava/lang/String;
    aget-object v4, v2, v0

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Lcom/zte/heartyservice/common/utils/MD5Util;->getMD5([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 5496
    const-string v4, "info"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "packageName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   md5=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5493
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5498
    .end local v0           #i:I
    .end local v2           #signatures:[Landroid/content/pm/Signature;
    .end local v3           #str2:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 5501
    :cond_0
    return-object v1
.end method

.method public static getBackupStatus()J
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 5272
    const-wide/16 v4, -0x2

    .line 5274
    .local v4, ret:J
    :try_start_0
    sget-object v6, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    const-string v7, "com.zte.backup.mmi"

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Lcom/zte/heartyservice/main/HeartyServiceApp;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 5276
    .local v0, context:Landroid/content/Context;
    const-string v6, "BACKUPAPP"

    const/4 v7, 0x4

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "BACKUPTIME"

    const-wide/16 v8, 0x0

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 5278
    .local v2, lastBackupTime:J
    cmp-long v6, v2, v10

    if-lez v6, :cond_2

    .line 5279
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    const-wide v8, 0x134fd9000L

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 5280
    const-wide/16 v4, 0x0

    .line 5296
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #lastBackupTime:J
    :cond_0
    :goto_0
    return-wide v4

    .line 5282
    .restart local v0       #context:Landroid/content/Context;
    .restart local v2       #lastBackupTime:J
    :cond_1
    move-wide v4, v2

    goto :goto_0

    .line 5286
    :cond_2
    :try_start_1
    sget-object v6, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->packageManager:Landroid/content/pm/PackageManager;

    const-string v7, "com.zte.backup.mmi"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v7, 0xca

    if-lt v6, v7, :cond_0

    .line 5287
    const-wide/16 v4, -0x1

    goto :goto_0

    .line 5293
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #lastBackupTime:J
    :catch_0
    move-exception v1

    .line 5294
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "StandardInterfaceUtils"

    const-string v7, "not support query backup time"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5289
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #context:Landroid/content/Context;
    .restart local v2       #lastBackupTime:J
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method public static getBitMapWhenHeadWithBitmap(Ljava/lang/String;I[B)Landroid/graphics/Bitmap;
    .locals 15
    .parameter "nn"
    .parameter "hs"
    .parameter "keyData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1826
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getPDPath()Ljava/lang/String;

    move-result-object v1

    .line 1827
    .local v1, PDPath:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1828
    new-instance v13, Ljava/lang/Exception;

    const-string v14, "PDPath = null"

    invoke-direct {v13, v14}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1830
    :cond_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1831
    .local v6, file:Ljava/io/File;
    const/4 v7, 0x0

    .line 1832
    .local v7, in:Ljava/nio/channels/FileChannel;
    const/4 v8, 0x0

    .line 1834
    .local v8, inStream:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1835
    .end local v8           #inStream:Ljava/io/FileInputStream;
    .local v9, inStream:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v9}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    .line 1836
    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 1837
    .local v3, buffer_in:Ljava/nio/ByteBuffer;
    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1838
    .local v4, buffer_out:Ljava/nio/ByteBuffer;
    const/4 v12, -0x1

    .line 1839
    .local v12, read:I
    const-string v13, "AES/CBC/PKCS5Padding"

    invoke-static {v13}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 1840
    .local v5, cip:Ljavax/crypto/Cipher;
    new-instance v10, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v13, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->IV:[B

    invoke-direct {v10, v13}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 1841
    .local v10, iv:Ljavax/crypto/spec/IvParameterSpec;
    new-instance v11, Ljavax/crypto/spec/SecretKeySpec;

    const-string v13, "AES"

    move-object/from16 v0, p2

    invoke-direct {v11, v0, v13}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 1842
    .local v11, keySpec:Ljavax/crypto/spec/SecretKeySpec;
    const/4 v13, 0x2

    invoke-virtual {v5, v13, v11, v10}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1843
    invoke-virtual {v7, v3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v12

    .line 1844
    const/4 v13, -0x1

    if-eq v12, v13, :cond_1

    .line 1845
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1846
    invoke-virtual {v5, v3, v4}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    .line 1847
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1848
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1849
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v13

    new-array v2, v13, [B

    .line 1850
    .local v2, b:[B
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1851
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1852
    const/4 v13, 0x0

    array-length v14, v2

    invoke-static {v2, v13, v14}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v13

    .line 1857
    invoke-static {v9}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 1858
    invoke-static {v7}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    return-object v13

    .line 1854
    .end local v2           #b:[B
    :cond_1
    :try_start_2
    new-instance v13, Ljava/lang/Exception;

    const-string v14, "read head error"

    invoke-direct {v13, v14}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1857
    .end local v3           #buffer_in:Ljava/nio/ByteBuffer;
    .end local v4           #buffer_out:Ljava/nio/ByteBuffer;
    .end local v5           #cip:Ljavax/crypto/Cipher;
    .end local v10           #iv:Ljavax/crypto/spec/IvParameterSpec;
    .end local v11           #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .end local v12           #read:I
    :catchall_0
    move-exception v13

    move-object v8, v9

    .end local v9           #inStream:Ljava/io/FileInputStream;
    .restart local v8       #inStream:Ljava/io/FileInputStream;
    :goto_0
    invoke-static {v8}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 1858
    invoke-static {v7}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    throw v13

    .line 1857
    :catchall_1
    move-exception v13

    goto :goto_0
.end method

.method public static getBitMapWhenWithoutBitmap(Ljava/lang/String;[B)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "nn"
    .parameter "keyData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1790
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getPDPath()Ljava/lang/String;

    move-result-object v0

    .line 1791
    .local v0, PDPath:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1792
    new-instance v12, Ljava/lang/Exception;

    const-string v13, "PDPath = null"

    invoke-direct {v12, v13}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1794
    :cond_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1795
    .local v5, file:Ljava/io/File;
    const/4 v6, 0x0

    .line 1796
    .local v6, in:Ljava/nio/channels/FileChannel;
    const/4 v7, 0x0

    .line 1798
    .local v7, inStream:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1799
    .end local v7           #inStream:Ljava/io/FileInputStream;
    .local v8, inStream:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v8}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 1800
    const v12, 0xfa000

    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1801
    .local v2, buffer_in:Ljava/nio/ByteBuffer;
    const v12, 0xfa000

    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 1802
    .local v3, buffer_out:Ljava/nio/ByteBuffer;
    const/4 v11, -0x1

    .line 1803
    .local v11, read:I
    const-string v12, "AES/CBC/PKCS5Padding"

    invoke-static {v12}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    .line 1804
    .local v4, cip:Ljavax/crypto/Cipher;
    new-instance v9, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v12, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->IV:[B

    invoke-direct {v9, v12}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 1805
    .local v9, iv:Ljavax/crypto/spec/IvParameterSpec;
    new-instance v10, Ljavax/crypto/spec/SecretKeySpec;

    const-string v12, "AES"

    invoke-direct {v10, p1, v12}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 1806
    .local v10, keySpec:Ljavax/crypto/spec/SecretKeySpec;
    const/4 v12, 0x2

    invoke-virtual {v4, v12, v10, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1807
    invoke-virtual {v6, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_1

    .line 1808
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1809
    invoke-virtual {v4, v2, v3}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    .line 1810
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1811
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1812
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v12

    new-array v1, v12, [B

    .line 1813
    .local v1, b:[B
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1814
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1815
    const/4 v12, 0x0

    array-length v13, v1

    invoke-static {v1, v12, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v12

    .line 1820
    invoke-static {v8}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 1821
    invoke-static {v6}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    return-object v12

    .line 1817
    .end local v1           #b:[B
    :cond_1
    :try_start_2
    new-instance v12, Ljava/lang/Exception;

    const-string v13, "read file error"

    invoke-direct {v12, v13}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1820
    .end local v2           #buffer_in:Ljava/nio/ByteBuffer;
    .end local v3           #buffer_out:Ljava/nio/ByteBuffer;
    .end local v4           #cip:Ljavax/crypto/Cipher;
    .end local v9           #iv:Ljavax/crypto/spec/IvParameterSpec;
    .end local v10           #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .end local v11           #read:I
    :catchall_0
    move-exception v12

    move-object v7, v8

    .end local v8           #inStream:Ljava/io/FileInputStream;
    .restart local v7       #inStream:Ljava/io/FileInputStream;
    :goto_0
    invoke-static {v7}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/io/FileInputStream;)V

    .line 1821
    invoke-static {v6}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->close(Ljava/nio/channels/FileChannel;)V

    throw v12

    .line 1820
    :catchall_1
    move-exception v12

    goto :goto_0
.end method

.method public static getBody(Ljava/util/List;)Ljava/lang/String;
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/AppDownloadInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 4497
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppDownloadInfo;>;"
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 4498
    .local v7, main:Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 4500
    .local v1, array_d:Lorg/json/JSONArray;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zte/heartyservice/common/datatype/AppDownloadInfo;

    .line 4501
    .local v5, info:Lcom/zte/heartyservice/common/datatype/AppDownloadInfo;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 4503
    .local v6, json:Lorg/json/JSONObject;
    :try_start_0
    const-string v10, "p"

    iget-object v11, v5, Lcom/zte/heartyservice/common/datatype/AppDownloadInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4504
    const-string v10, "a"

    iget-object v11, v5, Lcom/zte/heartyservice/common/datatype/AppDownloadInfo;->appName:Ljava/lang/String;

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4505
    const-string v10, "v"

    iget-object v11, v5, Lcom/zte/heartyservice/common/datatype/AppDownloadInfo;->versionCode:Ljava/lang/String;

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4506
    const-string v10, "d"

    iget-object v11, v5, Lcom/zte/heartyservice/common/datatype/AppDownloadInfo;->downloadType:Ljava/lang/String;

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4507
    const-string v10, "t"

    iget-wide v11, v5, Lcom/zte/heartyservice/common/datatype/AppDownloadInfo;->time:J

    invoke-virtual {v6, v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 4508
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4509
    :catch_0
    move-exception v10

    goto :goto_0

    .line 4514
    .end local v5           #info:Lcom/zte/heartyservice/common/datatype/AppDownloadInfo;
    .end local v6           #json:Lorg/json/JSONObject;
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lez v10, :cond_1

    .line 4516
    :try_start_1
    const-string v10, "d"

    invoke-virtual {v7, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 4522
    :cond_1
    :goto_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 4523
    .local v2, array_p:Lorg/json/JSONArray;
    sget-object v10, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->packageManager:Landroid/content/pm/PackageManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 4524
    .local v0, appListInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 4525
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 4526
    .local v5, info:Landroid/content/pm/PackageInfo;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 4528
    .restart local v6       #json:Lorg/json/JSONObject;
    :try_start_2
    const-string v10, "p"

    iget-object v11, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4529
    const-string v10, "a"

    sget-object v11, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v12, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4530
    const-string v10, "v"

    iget v11, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4531
    const-string v10, "m"

    iget-object v11, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v11}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->calcAppMask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4532
    const-wide/16 v8, 0x0

    .line 4533
    .local v8, t:J
    iget-object v10, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v10}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getT(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 4534
    .local v3, bundle:Landroid/os/Bundle;
    const-string v10, "t"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 4535
    const-string v10, "t"

    invoke-virtual {v6, v10, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 4536
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 4537
    .end local v3           #bundle:Landroid/os/Bundle;
    .end local v8           #t:J
    :catch_1
    move-exception v10

    goto :goto_2

    .line 4543
    .end local v5           #info:Landroid/content/pm/PackageInfo;
    .end local v6           #json:Lorg/json/JSONObject;
    :cond_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lez v10, :cond_3

    .line 4545
    :try_start_3
    const-string v10, "p"

    invoke-virtual {v7, v10, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 4551
    :cond_3
    :goto_3
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 4546
    :catch_2
    move-exception v10

    goto :goto_3

    .line 4517
    .end local v0           #appListInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v2           #array_p:Lorg/json/JSONArray;
    :catch_3
    move-exception v10

    goto :goto_1
.end method

.method public static getCallLogNumInPrivacy()I
    .locals 1

    .prologue
    .line 3621
    invoke-static {}, Lcom/zte/heartyservice/privacy/PrivacySetting;->isEnableNotification()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3622
    const/4 v0, 0x0

    .line 3624
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getCallLogNumInPrivacy()I

    move-result v0

    goto :goto_0
.end method

.method public static getCurrentVirusDBEngine()Lcom/zte/heartyservice/porting/All/VirusDBEngine;
    .locals 1

    .prologue
    .line 278
    sget-object v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->virusDBEngine:Lcom/zte/heartyservice/porting/All/VirusDBEngine;

    return-object v0
.end method

.method public static getDB(Landroid/content/Context;Ljava/lang/String;II)Landroid/database/sqlite/SQLiteDatabase;
    .locals 20
    .parameter "context"
    .parameter "dbName"
    .parameter "version_id"
    .parameter "db_id"

    .prologue
    .line 4950
    const/4 v6, 0x0

    .line 4951
    .local v6, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v10, 0x0

    .line 4952
    .local v10, in:Ljava/io/InputStream;
    const/4 v13, 0x0

    .line 4953
    .local v13, out:Ljava/io/FileOutputStream;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    .line 4955
    .local v12, new_version:I
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 4956
    .local v7, dbf:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    .line 4958
    .local v15, path:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result v17

    if-eqz v17, :cond_0

    .line 4960
    const/16 v17, 0x0

    const/16 v18, 0x1

    :try_start_1
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v15, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 4962
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v16

    .line 4963
    .local v16, version:I
    move/from16 v0, v16

    if-ge v0, v12, :cond_5

    .line 4964
    const-string v17, "StandardInterfaceUtils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "cur version "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " < new version "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4965
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 4966
    const/4 v6, 0x0

    .line 4967
    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 4982
    .end local v16           #version:I
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_d

    .line 4983
    const-string v17, "StandardInterfaceUtils"

    const-string v18, "copy db"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4984
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "_tmp"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 4985
    .local v8, dbfTmp:Ljava/io/File;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "_tmp1"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 4987
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v10

    .line 4988
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 4989
    .end local v13           #out:Ljava/io/FileOutputStream;
    .local v14, out:Ljava/io/FileOutputStream;
    const/16 v17, 0x400

    :try_start_3
    move/from16 v0, v17

    new-array v4, v0, [B

    .line 4991
    .local v4, buf:[B
    const/4 v5, 0x1

    .line 4993
    .local v5, copyright:Z
    :goto_1
    invoke-virtual {v10, v4}, Ljava/io/InputStream;->read([B)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_d

    move-result v11

    .local v11, len:I
    if-lez v11, :cond_1

    .line 4995
    const/16 v17, 0x0

    :try_start_4
    move/from16 v0, v17

    invoke-virtual {v14, v4, v0, v11}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_d

    goto :goto_1

    .line 4996
    :catch_0
    move-exception v9

    .line 4997
    .local v9, e:Ljava/io/IOException;
    const/4 v5, 0x0

    .line 5002
    .end local v9           #e:Ljava/io/IOException;
    :cond_1
    :try_start_5
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_d

    .line 5003
    const/4 v13, 0x0

    .line 5005
    .end local v14           #out:Ljava/io/FileOutputStream;
    .restart local v13       #out:Ljava/io/FileOutputStream;
    if-eqz v5, :cond_c

    .line 5006
    :try_start_6
    invoke-virtual {v8, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 5007
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v15, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 5009
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v16

    .line 5010
    .restart local v16       #version:I
    move/from16 v0, v16

    if-ge v0, v12, :cond_2

    .line 5011
    const-string v17, "StandardInterfaceUtils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "db version "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " set new version "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5012
    invoke-virtual {v6, v12}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 5030
    :cond_2
    if-eqz v10, :cond_3

    .line 5031
    :try_start_7
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 5036
    :cond_3
    :goto_2
    if-eqz v13, :cond_4

    .line 5037
    :try_start_8
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :cond_4
    :goto_3
    move-object/from16 v17, v6

    .line 5042
    .end local v4           #buf:[B
    .end local v5           #copyright:Z
    .end local v7           #dbf:Ljava/io/File;
    .end local v8           #dbfTmp:Ljava/io/File;
    .end local v11           #len:I
    .end local v15           #path:Ljava/lang/String;
    .end local v16           #version:I
    :goto_4
    return-object v17

    .line 5030
    .restart local v7       #dbf:Ljava/io/File;
    .restart local v15       #path:Ljava/lang/String;
    .restart local v16       #version:I
    :cond_5
    if-eqz v10, :cond_6

    .line 5031
    :try_start_9
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 5036
    :cond_6
    :goto_5
    if-eqz v13, :cond_7

    .line 5037
    :try_start_a
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    :cond_7
    :goto_6
    move-object/from16 v17, v6

    .line 5040
    goto :goto_4

    .line 5032
    :catch_1
    move-exception v9

    .line 5033
    .restart local v9       #e:Ljava/io/IOException;
    const-string v17, "StandardInterfaceUtils"

    const-string v18, "IOException"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 5038
    .end local v9           #e:Ljava/io/IOException;
    :catch_2
    move-exception v9

    .line 5039
    .restart local v9       #e:Ljava/io/IOException;
    const-string v17, "StandardInterfaceUtils"

    const-string v18, "IOException"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 4971
    .end local v9           #e:Ljava/io/IOException;
    .end local v16           #version:I
    :catch_3
    move-exception v9

    .line 4972
    .local v9, e:Ljava/lang/Exception;
    :try_start_b
    const-string v17, "StandardInterfaceUtils"

    const-string v18, "db file error"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4973
    if-eqz v6, :cond_8

    .line 4975
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 4976
    const/4 v6, 0x0

    .line 4978
    :cond_8
    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_0

    .line 5021
    .end local v7           #dbf:Ljava/io/File;
    .end local v9           #e:Ljava/lang/Exception;
    .end local v15           #path:Ljava/lang/String;
    :catch_4
    move-exception v9

    .line 5022
    .restart local v9       #e:Ljava/lang/Exception;
    :goto_7
    :try_start_c
    const-string v17, "StandardInterfaceUtils"

    const-string v18, "Exception"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5023
    if-eqz v6, :cond_9

    .line 5025
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 5026
    const/4 v6, 0x0

    .line 5030
    :cond_9
    if-eqz v10, :cond_a

    .line 5031
    :try_start_d
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 5036
    .end local v9           #e:Ljava/lang/Exception;
    :cond_a
    :goto_8
    if-eqz v13, :cond_b

    .line 5037
    :try_start_e
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    .line 5042
    :cond_b
    :goto_9
    const/16 v17, 0x0

    goto :goto_4

    .line 5032
    .restart local v4       #buf:[B
    .restart local v5       #copyright:Z
    .restart local v7       #dbf:Ljava/io/File;
    .restart local v8       #dbfTmp:Ljava/io/File;
    .restart local v11       #len:I
    .restart local v15       #path:Ljava/lang/String;
    .restart local v16       #version:I
    :catch_5
    move-exception v9

    .line 5033
    .local v9, e:Ljava/io/IOException;
    const-string v17, "StandardInterfaceUtils"

    const-string v18, "IOException"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 5038
    .end local v9           #e:Ljava/io/IOException;
    :catch_6
    move-exception v9

    .line 5039
    .restart local v9       #e:Ljava/io/IOException;
    const-string v17, "StandardInterfaceUtils"

    const-string v18, "IOException"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 5017
    .end local v9           #e:Ljava/io/IOException;
    .end local v16           #version:I
    :cond_c
    :try_start_f
    const-string v17, "StandardInterfaceUtils"

    const-string v18, "copy db exception"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5018
    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    .line 5030
    .end local v4           #buf:[B
    .end local v5           #copyright:Z
    .end local v8           #dbfTmp:Ljava/io/File;
    .end local v11           #len:I
    :cond_d
    if-eqz v10, :cond_e

    .line 5031
    :try_start_10
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8

    .line 5036
    :cond_e
    :goto_a
    if-eqz v13, :cond_b

    .line 5037
    :try_start_11
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7

    goto :goto_9

    .line 5038
    :catch_7
    move-exception v9

    .line 5039
    .restart local v9       #e:Ljava/io/IOException;
    const-string v17, "StandardInterfaceUtils"

    const-string v18, "IOException"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 5032
    .end local v9           #e:Ljava/io/IOException;
    :catch_8
    move-exception v9

    .line 5033
    .restart local v9       #e:Ljava/io/IOException;
    const-string v17, "StandardInterfaceUtils"

    const-string v18, "IOException"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 5032
    .end local v7           #dbf:Ljava/io/File;
    .end local v15           #path:Ljava/lang/String;
    .local v9, e:Ljava/lang/Exception;
    :catch_9
    move-exception v9

    .line 5033
    .local v9, e:Ljava/io/IOException;
    const-string v17, "StandardInterfaceUtils"

    const-string v18, "IOException"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 5038
    .end local v9           #e:Ljava/io/IOException;
    :catch_a
    move-exception v9

    .line 5039
    .restart local v9       #e:Ljava/io/IOException;
    const-string v17, "StandardInterfaceUtils"

    const-string v18, "IOException"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 5029
    .end local v9           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v17

    .line 5030
    :goto_b
    if-eqz v10, :cond_f

    .line 5031
    :try_start_12
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b

    .line 5036
    :cond_f
    :goto_c
    if-eqz v13, :cond_10

    .line 5037
    :try_start_13
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c

    .line 5040
    :cond_10
    :goto_d
    throw v17

    .line 5032
    :catch_b
    move-exception v9

    .line 5033
    .restart local v9       #e:Ljava/io/IOException;
    const-string v18, "StandardInterfaceUtils"

    const-string v19, "IOException"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 5038
    .end local v9           #e:Ljava/io/IOException;
    :catch_c
    move-exception v9

    .line 5039
    .restart local v9       #e:Ljava/io/IOException;
    const-string v18, "StandardInterfaceUtils"

    const-string v19, "IOException"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 5029
    .end local v9           #e:Ljava/io/IOException;
    .end local v13           #out:Ljava/io/FileOutputStream;
    .restart local v7       #dbf:Ljava/io/File;
    .restart local v8       #dbfTmp:Ljava/io/File;
    .restart local v14       #out:Ljava/io/FileOutputStream;
    .restart local v15       #path:Ljava/lang/String;
    :catchall_1
    move-exception v17

    move-object v13, v14

    .end local v14           #out:Ljava/io/FileOutputStream;
    .restart local v13       #out:Ljava/io/FileOutputStream;
    goto :goto_b

    .line 5021
    .end local v13           #out:Ljava/io/FileOutputStream;
    .restart local v14       #out:Ljava/io/FileOutputStream;
    :catch_d
    move-exception v9

    move-object v13, v14

    .end local v14           #out:Ljava/io/FileOutputStream;
    .restart local v13       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_7
.end method

.method public static getDBColumnIndex(Landroid/database/Cursor;[Ljava/lang/String;)I
    .locals 6
    .parameter "cur"
    .parameter "columnNames"

    .prologue
    .line 3939
    const/4 v3, -0x1

    .line 3940
    .local v3, index:I
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v0, v2

    .line 3941
    .local v1, columnName:Ljava/lang/String;
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 3942
    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    .line 3947
    .end local v1           #columnName:Ljava/lang/String;
    :cond_0
    return v3

    .line 3940
    .restart local v1       #columnName:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getDetectedNotSecurityAppList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/VirusScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 547
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isPresetCTVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 548
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 555
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    return-object v1

    .line 551
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    :try_start_0
    sget-object v1, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->virusDBEngine:Lcom/zte/heartyservice/porting/All/VirusDBEngine;

    invoke-virtual {v1}, Lcom/zte/heartyservice/porting/All/VirusDBEngine;->SIUgetDetectedNotSecurityAppList()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 552
    :catch_0
    move-exception v0

    .line 553
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "StandardInterfaceUtils"

    const-string v2, "getDetectedNotSecurityAppList error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 555
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getEncryFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 948
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getPDPath()Ljava/lang/String;

    move-result-object v0

    .line 949
    .local v0, privacyDataPath:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 950
    const-string v1, "chenlu"

    const-string v2, "privacyDataPath = null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    const/4 v1, 0x0

    .line 954
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getExaminationOptimizableResult()Lcom/zte/heartyservice/common/datatype/ExaminationOptimizableResult;
    .locals 3

    .prologue
    .line 757
    new-instance v0, Lcom/zte/heartyservice/common/datatype/ExaminationOptimizableResult;

    invoke-direct {v0}, Lcom/zte/heartyservice/common/datatype/ExaminationOptimizableResult;-><init>()V

    .line 758
    .local v0, result:Lcom/zte/heartyservice/common/datatype/ExaminationOptimizableResult;
    sget-object v1, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getAutoRunAppNum()I

    move-result v1

    iput v1, v0, Lcom/zte/heartyservice/common/datatype/ExaminationOptimizableResult;->auto_run_app_num:I

    .line 759
    sget-object v1, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getExistCacheAppNum()I

    move-result v1

    iput v1, v0, Lcom/zte/heartyservice/common/datatype/ExaminationOptimizableResult;->exist_cache_app_num:I

    .line 760
    sget-object v1, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getAppCache()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/zte/heartyservice/common/datatype/ExaminationOptimizableResult;->appcache:J

    .line 761
    return-object v0
.end method

.method public static getInterceptedPhoneAndMsgList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/InterceptResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 742
    :try_start_0
    sget-object v1, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->virusDBEngine:Lcom/zte/heartyservice/porting/All/VirusDBEngine;

    invoke-virtual {v1}, Lcom/zte/heartyservice/porting/All/VirusDBEngine;->SIUgetInterceptedPhoneAndMsgList()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 746
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    return-object v1

    .line 743
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 744
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "StandardInterfaceUtils"

    const-string v2, "getInterceptedPhoneAndMsgList error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 746
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getKeyByte(Ljava/lang/String;)[B
    .locals 6
    .parameter "keyString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x20

    const/4 v4, 0x0

    .line 3122
    new-array v0, v5, [B

    .line 3123
    .local v0, dst:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 3124
    const/16 v3, 0x61

    aput-byte v3, v0, v1

    .line 3123
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3126
    :cond_0
    const-string v3, "ASCII"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 3127
    .local v2, src:[B
    array-length v3, v2

    if-le v3, v5, :cond_1

    .line 3128
    invoke-static {v2, v4, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3132
    :goto_1
    return-object v0

    .line 3130
    :cond_1
    array-length v3, v2

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method

.method public static getLastBackupTime()J
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 5301
    :try_start_0
    sget-object v4, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    const-string v5, "com.zte.backup.mmi"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Lcom/zte/heartyservice/main/HeartyServiceApp;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 5303
    .local v0, context:Landroid/content/Context;
    const-string v4, "BACKUPAPP"

    const/4 v5, 0x4

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "BACKUPTIME"

    const-wide/16 v6, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 5309
    :goto_0
    return-wide v2

    .line 5306
    :catch_0
    move-exception v1

    .line 5307
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "StandardInterfaceUtils"

    const-string v5, "not support query backup time"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getMask()J
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 4022
    const-wide/16 v0, 0x0

    .line 4023
    .local v0, mask:J
    new-instance v2, Ljava/lang/String;

    const-string v3, "Y29tLnFpaG9vMzYwLm1vYmlsZXNhZmU="

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v4}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getPInfo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4025
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 4027
    :cond_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "Y29tLnRlbmNlbnQucXFwaW1zZWN1cmU="

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v4}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getPInfo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4029
    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    .line 4031
    :cond_1
    return-wide v0
.end method

.method public static getMsgNumInPrivacy()I
    .locals 1

    .prologue
    .line 3614
    invoke-static {}, Lcom/zte/heartyservice/privacy/PrivacySetting;->isEnableNotification()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3615
    const/4 v0, 0x0

    .line 3617
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getMsgNumInPrivacy()I

    move-result v0

    goto :goto_0
.end method

.method public static getN(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "p"

    .prologue
    .line 5593
    sget-object v1, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5594
    .local v0, n:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 5595
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/zte/heartyservice/common/utils/MD5Util;->getMD5([B)Ljava/lang/String;

    move-result-object v0

    .line 5597
    :cond_0
    return-object v0
.end method

.method public static getNetScanResult()Lcom/zte/heartyservice/common/datatype/NetScanResult;
    .locals 12

    .prologue
    .line 399
    sget-object v10, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-static {v10}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficUtils;

    move-result-object v4

    .line 400
    .local v4, netUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;
    invoke-virtual {v4}, Lcom/zte/heartyservice/net/NetTrafficUtils;->isOverTodayLimit()Z

    move-result v6

    .line 401
    .local v6, overTodayLimit:Z
    invoke-virtual {v4}, Lcom/zte/heartyservice/net/NetTrafficUtils;->isOverMonthLimit()Z

    move-result v5

    .line 402
    .local v5, overMonthLimit:Z
    invoke-virtual {v4}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficMonthThreshold()J

    move-result-wide v0

    .line 403
    .local v0, monthThrehold:J
    invoke-virtual {v4}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficTodayUsed()D

    move-result-wide v8

    .line 404
    .local v8, todayUsed:D
    invoke-virtual {v4}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficMonthUsed()D

    move-result-wide v2

    .line 406
    .local v2, monthUsed:D
    new-instance v7, Lcom/zte/heartyservice/common/datatype/NetScanResult;

    invoke-direct {v7}, Lcom/zte/heartyservice/common/datatype/NetScanResult;-><init>()V

    .line 407
    .local v7, result:Lcom/zte/heartyservice/common/datatype/NetScanResult;
    iput-wide v8, v7, Lcom/zte/heartyservice/common/datatype/NetScanResult;->today_network_traffic:D

    .line 408
    long-to-double v10, v0

    sub-double/2addr v10, v2

    iput-wide v10, v7, Lcom/zte/heartyservice/common/datatype/NetScanResult;->this_month_remainder_network_traffic:D

    .line 409
    iput-wide v0, v7, Lcom/zte/heartyservice/common/datatype/NetScanResult;->this_month_total_network_traffic:J

    .line 410
    iput-boolean v6, v7, Lcom/zte/heartyservice/common/datatype/NetScanResult;->over_today_network_traffic_limit:Z

    .line 411
    iput-boolean v5, v7, Lcom/zte/heartyservice/common/datatype/NetScanResult;->over_this_month_network_traffic_limit:Z

    .line 413
    return-object v7
.end method

.method public static getNetScanResult(I)Lcom/zte/heartyservice/common/datatype/NetScanResult;
    .locals 12
    .parameter "subscription"

    .prologue
    .line 419
    sget-object v10, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-static {v10}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficUtils;

    move-result-object v4

    .line 420
    .local v4, netUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;
    invoke-virtual {v4, p0}, Lcom/zte/heartyservice/net/NetTrafficUtils;->isOverTodayLimit(I)Z

    move-result v6

    .line 421
    .local v6, overTodayLimit:Z
    invoke-virtual {v4, p0}, Lcom/zte/heartyservice/net/NetTrafficUtils;->isOverMonthLimit(I)Z

    move-result v5

    .line 426
    .local v5, overMonthLimit:Z
    invoke-virtual {v4, p0}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getIdleHoursOpen(I)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v4, p0}, Lcom/zte/heartyservice/net/NetTrafficUtils;->isNowInIdleHour(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 427
    invoke-virtual {v4, p0}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficMonthIdleHoursThreshold(I)J

    move-result-wide v0

    .line 428
    .local v0, monthThrehold:J
    invoke-virtual {v4, p0}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficTodayIdleHoursUsed(I)D

    move-result-wide v8

    .line 429
    .local v8, todayUsed:D
    invoke-virtual {v4, p0}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficMonthIdleHoursUsed(I)D

    move-result-wide v2

    .line 437
    .local v2, monthUsed:D
    :goto_0
    new-instance v7, Lcom/zte/heartyservice/common/datatype/NetScanResult;

    invoke-direct {v7}, Lcom/zte/heartyservice/common/datatype/NetScanResult;-><init>()V

    .line 438
    .local v7, result:Lcom/zte/heartyservice/common/datatype/NetScanResult;
    iput-wide v8, v7, Lcom/zte/heartyservice/common/datatype/NetScanResult;->today_network_traffic:D

    .line 439
    long-to-double v10, v0

    sub-double/2addr v10, v2

    iput-wide v10, v7, Lcom/zte/heartyservice/common/datatype/NetScanResult;->this_month_remainder_network_traffic:D

    .line 440
    iput-wide v0, v7, Lcom/zte/heartyservice/common/datatype/NetScanResult;->this_month_total_network_traffic:J

    .line 441
    iput-boolean v6, v7, Lcom/zte/heartyservice/common/datatype/NetScanResult;->over_today_network_traffic_limit:Z

    .line 442
    iput-boolean v5, v7, Lcom/zte/heartyservice/common/datatype/NetScanResult;->over_this_month_network_traffic_limit:Z

    .line 444
    return-object v7

    .line 432
    .end local v0           #monthThrehold:J
    .end local v2           #monthUsed:D
    .end local v7           #result:Lcom/zte/heartyservice/common/datatype/NetScanResult;
    .end local v8           #todayUsed:D
    :cond_0
    invoke-virtual {v4, p0}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficMonthThreshold(I)J

    move-result-wide v0

    .line 433
    .restart local v0       #monthThrehold:J
    invoke-virtual {v4, p0}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficTodayUsed(I)D

    move-result-wide v8

    .line 434
    .restart local v8       #todayUsed:D
    invoke-virtual {v4, p0}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficMonthUsed(I)D

    move-result-wide v2

    .restart local v2       #monthUsed:D
    goto :goto_0
.end method

.method public static getNetworkTrafficMonitorStatus()I
    .locals 1

    .prologue
    .line 455
    const/4 v0, 0x1

    return v0
.end method

.method public static getNumberFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "number"

    .prologue
    .line 3975
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3976
    const/4 p0, 0x0

    .line 3983
    :cond_0
    :goto_0
    return-object p0

    .line 3979
    :cond_1
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 3980
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    .line 3981
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getNumberName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "num"

    .prologue
    const/4 v8, 0x0

    .line 5046
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v8

    .line 5068
    :cond_0
    :goto_0
    return-object v0

    .line 5049
    :cond_1
    const/4 v6, 0x0

    .line 5051
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-virtual {v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.android.contacts/phone_lookup/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5055
    if-eqz v6, :cond_2

    .line 5056
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5057
    const-string v0, "display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 5064
    if-eqz v6, :cond_0

    .line 5065
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 5064
    :cond_2
    if-eqz v6, :cond_3

    .line 5065
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    move-object v0, v8

    .line 5068
    goto :goto_0

    .line 5061
    :catch_0
    move-exception v7

    .line 5062
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5064
    if-eqz v6, :cond_3

    .line 5065
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 5064
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 5065
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static getOpenCloudScan(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 660
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isCMVersion()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isForeignVersion()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 662
    :cond_0
    const/4 v1, 0x0

    .line 669
    :goto_0
    return v1

    .line 665
    :cond_1
    :try_start_0
    sget-object v1, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->virusDBEngine:Lcom/zte/heartyservice/porting/All/VirusDBEngine;

    invoke-virtual {v1, p0}, Lcom/zte/heartyservice/porting/All/VirusDBEngine;->SIUgetOpenCloudScan(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 666
    :catch_0
    move-exception v0

    .line 667
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "StandardInterfaceUtils"

    const-string v2, "cloudVinusScan error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 669
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static getPInfo(Ljava/lang/String;)Z
    .locals 4
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 3996
    :try_start_0
    sget-object v2, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->packageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4000
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 3997
    :catch_0
    move-exception v0

    .line 3998
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static getPermissionMonitorStatus()I
    .locals 1

    .prologue
    .line 476
    const/4 v0, 0x1

    return v0
.end method

.method public static getPermissionNumber(Ljava/lang/String;)I
    .locals 2
    .parameter "packageName"

    .prologue
    .line 509
    const-string v1, "com.zte.retrieve"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 510
    const/4 v1, 0x0

    .line 513
    :goto_0
    return v1

    .line 512
    :cond_0
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v0

    .line 513
    .local v0, permUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;
    invoke-virtual {v0, p0}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getPackagePermissionNum(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static getPermissionScanResult()Lcom/zte/heartyservice/common/datatype/PermissionScanResult;
    .locals 2

    .prologue
    .line 493
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v0

    .line 494
    .local v0, permUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;
    invoke-virtual {v0}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getLastPermissionScanResults()Lcom/zte/heartyservice/common/datatype/PermissionScanResult;

    move-result-object v1

    .line 495
    .local v1, result:Lcom/zte/heartyservice/common/datatype/PermissionScanResult;
    return-object v1
.end method

.method public static getPhonesFromData(ILandroid/content/Intent;)Ljava/util/ArrayList;
    .locals 16
    .parameter "resultCode"
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$ContactItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5412
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 5413
    .local v13, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$ContactItem;>;"
    if-eqz p1, :cond_2

    .line 5414
    const-string v1, "numbers_array"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5415
    const-string v1, "com.android.contacts.extra.PHONE_URIS"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 5417
    .local v15, numbers:[Ljava/lang/String;
    if-eqz v15, :cond_2

    array-length v1, v15

    if-lez v1, :cond_2

    .line 5418
    move-object v7, v15

    .local v7, arr$:[Ljava/lang/String;
    array-length v12, v7

    .local v12, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_0
    if-ge v10, v12, :cond_2

    aget-object v14, v7, v10

    .line 5419
    .local v14, num:Ljava/lang/String;
    new-instance v11, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$ContactItem;

    invoke-static {v14}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getNumberName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v11, v14, v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$ContactItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5420
    .local v11, item:Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$ContactItem;
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5418
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 5424
    .end local v7           #arr$:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v11           #item:Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$ContactItem;
    .end local v12           #len$:I
    .end local v14           #num:Ljava/lang/String;
    .end local v15           #numbers:[Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 5425
    .local v2, uri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 5427
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-virtual {v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 5429
    if-eqz v8, :cond_1

    .line 5430
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5431
    new-instance v11, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$ContactItem;

    const-string v1, "data1"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "display_name"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v11, v1, v3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$ContactItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5436
    .restart local v11       #item:Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$ContactItem;
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5442
    .end local v11           #item:Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$ContactItem;
    :cond_1
    if-eqz v8, :cond_2

    .line 5443
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 5449
    .end local v2           #uri:Landroid/net/Uri;
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_2
    :goto_1
    return-object v13

    .line 5439
    .restart local v2       #uri:Landroid/net/Uri;
    .restart local v8       #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 5440
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5442
    if-eqz v8, :cond_2

    .line 5443
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 5442
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_3

    .line 5443
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method public static getRetrieveStatus()I
    .locals 8

    .prologue
    .line 5245
    const/4 v7, -0x1

    .line 5246
    .local v7, ret:I
    const/4 v6, 0x0

    .line 5249
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-virtual {v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5250
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const-string v2, "content://com.zte.retrieve.provider/open"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 5251
    .local v1, uri:Landroid/net/Uri;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5253
    if-eqz v6, :cond_0

    .line 5254
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5255
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 5260
    :cond_0
    if-eqz v6, :cond_1

    .line 5261
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5265
    .end local v0           #contentResolver:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    :cond_1
    :goto_0
    return v7

    .line 5257
    :catch_0
    move-exception v2

    .line 5260
    if-eqz v6, :cond_1

    .line 5261
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 5260
    :catchall_0
    move-exception v2

    if-eqz v6, :cond_2

    .line 5261
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method public static getSaveElectricityProtectorStatus()I
    .locals 1

    .prologue
    .line 525
    const/4 v0, 0x1

    return v0
.end method

.method public static getSecurityExtentionVersion()I
    .locals 1

    .prologue
    .line 5796
    sget v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->securityExtentionVersion:I

    return v0
.end method

.method public static getT(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .parameter "n"

    .prologue
    .line 5786
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getAppLockSettingsAdapter()Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;->getT(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static getVirusDBEngineName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isForeignVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    const-string v0, "NetQin"

    .line 264
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Tencent"

    goto :goto_0
.end method

.method public static hasSystemPermission()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5469
    sget-object v1, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->sHasSystemPermission:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 5470
    sget-object v1, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->sHasSystemPermission:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 5486
    .local v0, mHSSignaturePkg:Landroid/content/pm/PackageInfo;
    :goto_0
    return v1

    .line 5472
    .end local v0           #mHSSignaturePkg:Landroid/content/pm/PackageInfo;
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->sHasSystemPermission:Ljava/lang/Boolean;

    .line 5473
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isSystemApp()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5474
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->sHasSystemPermission:Ljava/lang/Boolean;

    .line 5486
    .restart local v0       #mHSSignaturePkg:Landroid/content/pm/PackageInfo;
    :cond_1
    :goto_1
    sget-object v1, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->sHasSystemPermission:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    .line 5477
    .end local v0           #mHSSignaturePkg:Landroid/content/pm/PackageInfo;
    :cond_2
    :try_start_0
    sget-object v1, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->packageManager:Landroid/content/pm/PackageManager;

    const-string v2, "com.zte.hs.service"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 5479
    .restart local v0       #mHSSignaturePkg:Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_1

    .line 5480
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->sHasSystemPermission:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 5482
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static importFromCallRecords()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/CommonListItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2490
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2495
    .local v11, localCallRecordListItemList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/CommonListItem;>;"
    sget-object v12, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-virtual {v12}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id in (SELECT _id FROM calls WHERE ((length(number)>0)  AND (type != \'4\')) group by (number) ORDER BY date DESC)"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2501
    .local v9, cur:Landroid/database/Cursor;
    if-eqz v9, :cond_2

    .line 2502
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v12

    if-lez v12, :cond_1

    .line 2503
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 2504
    const-string v12, "_id"

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 2505
    .local v1, _id:I
    const-string v12, "number"

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2506
    .local v3, number:Ljava/lang/String;
    const-string v12, "name"

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2507
    .local v2, name:Ljava/lang/String;
    const-string v12, "duration"

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 2508
    .local v4, duration:I
    const-string v12, "date"

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 2509
    .local v5, date:J
    const-string v12, "type"

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 2510
    .local v7, type:I
    const/4 v8, 0x1

    .line 2511
    .local v8, mode_id:I
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isMsim()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 2518
    :try_start_0
    sget-object v12, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->CALL_LOG_MODE_NAME:[Ljava/lang/String;

    invoke-static {v9, v12}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getDBColumnIndex(Landroid/database/Cursor;[Ljava/lang/String;)I

    move-result v12

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 2523
    :cond_0
    :goto_1
    new-instance v0, Lcom/zte/heartyservice/privacy/CallRecordListItem;

    invoke-direct/range {v0 .. v8}, Lcom/zte/heartyservice/privacy/CallRecordListItem;-><init>(ILjava/lang/String;Ljava/lang/String;IJII)V

    .line 2525
    .local v0, localCallRecordListItem:Lcom/zte/heartyservice/privacy/CallRecordListItem;
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2519
    .end local v0           #localCallRecordListItem:Lcom/zte/heartyservice/privacy/CallRecordListItem;
    :catch_0
    move-exception v10

    .line 2520
    .local v10, e:Ljava/lang/Exception;
    const-string v12, "StandardInterfaceUtils"

    const-string v13, "get mode id failed"

    invoke-static {v12, v13, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2528
    .end local v1           #_id:I
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #number:Ljava/lang/String;
    .end local v4           #duration:I
    .end local v5           #date:J
    .end local v7           #type:I
    .end local v8           #mode_id:I
    .end local v10           #e:Ljava/lang/Exception;
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2530
    :cond_2
    return-object v11
.end method

.method public static importFromContacts()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/CommonListItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 2324
    const-string v0, "content://com.android.contacts/data/phones"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2325
    .local v1, localUri:Landroid/net/Uri;
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v12

    const/4 v0, 0x1

    const-string v3, "data1"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "display_name"

    aput-object v3, v2, v0

    .line 2326
    .local v2, arrayOfString:[Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2328
    .local v9, localContactListItemList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/CommonListItem;>;"
    sget-object v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-virtual {v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "data1 is not null"

    const/4 v4, 0x0

    const-string v5, "display_name COLLATE LOCALIZED asc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2330
    .local v7, cur:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 2331
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2332
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2333
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 2334
    .local v6, _id:I
    const-string v0, "display_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2335
    .local v10, name:Ljava/lang/String;
    const-string v0, "data1"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2336
    .local v11, number:Ljava/lang/String;
    new-instance v8, Lcom/zte/heartyservice/privacy/ContactListItem;

    invoke-direct {v8, v6, v10, v11, v12}, Lcom/zte/heartyservice/privacy/ContactListItem;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 2337
    .local v8, localContactListItem:Lcom/zte/heartyservice/privacy/ContactListItem;
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2340
    .end local v6           #_id:I
    .end local v8           #localContactListItem:Lcom/zte/heartyservice/privacy/ContactListItem;
    .end local v10           #name:Ljava/lang/String;
    .end local v11           #number:Ljava/lang/String;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2392
    :cond_1
    return-object v9
.end method

.method public static importFromSmsRecords()Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/CommonListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2406
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 2407
    .local v17, localSmsRecordListItemList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/CommonListItem;>;"
    sget-object v2, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-virtual {v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "length(address)>0) group by (thread_id"

    const/4 v5, 0x0

    const-string v6, "date DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 2409
    .local v12, cur:Landroid/database/Cursor;
    if-eqz v12, :cond_4

    .line 2410
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 2411
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2412
    const-string v2, "_id"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 2413
    .local v10, _id:I
    const/16 v18, 0x0

    .line 2414
    .local v18, name:Ljava/lang/String;
    const-string v2, "address"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 2415
    .local v19, number:Ljava/lang/String;
    const-string v2, "body"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2416
    .local v11, body:Ljava/lang/String;
    const-string v2, "date"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 2417
    .local v14, date:J
    const-string v2, "type"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 2418
    .local v8, type:I
    const/4 v9, 0x0

    .line 2419
    .local v9, sub_id:I
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isMsim()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2427
    :try_start_0
    sget-object v2, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->SMS_MODE_NAME:[Ljava/lang/String;

    invoke-static {v12, v2}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getDBColumnIndex(Landroid/database/Cursor;[Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 2432
    :cond_0
    :goto_1
    const-string v2, "person"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 2433
    .local v20, person:I
    const/4 v2, 0x6

    if-eq v8, v2, :cond_1

    .line 2434
    const/4 v13, 0x0

    .line 2436
    .local v13, cur2:Landroid/database/Cursor;
    :try_start_1
    sget-object v2, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-virtual {v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://contacts/people/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "name"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 2439
    if-eqz v13, :cond_9

    .line 2440
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_8

    .line 2441
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2442
    const-string v2, "name"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 2444
    .end local v18           #name:Ljava/lang/String;
    .local v3, name:Ljava/lang/String;
    :goto_2
    :try_start_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2445
    const/4 v13, 0x0

    .line 2450
    :goto_3
    if-eqz v13, :cond_7

    .line 2451
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 2452
    const/4 v13, 0x0

    move-object/from16 v18, v3

    .line 2457
    .end local v3           #name:Ljava/lang/String;
    .end local v13           #cur2:Landroid/database/Cursor;
    .restart local v18       #name:Ljava/lang/String;
    :cond_1
    :goto_4
    if-nez v18, :cond_6

    .line 2458
    sget-object v2, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-virtual {v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://com.android.contacts/phone_lookup/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "display_name"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 2461
    .restart local v13       #cur2:Landroid/database/Cursor;
    if-eqz v13, :cond_6

    .line 2462
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_5

    .line 2463
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2464
    const-string v2, "display_name"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2466
    .end local v18           #name:Ljava/lang/String;
    .restart local v3       #name:Ljava/lang/String;
    :goto_5
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 2469
    .end local v13           #cur2:Landroid/database/Cursor;
    :goto_6
    new-instance v1, Lcom/zte/heartyservice/privacy/SmsRecordListItem;

    move v2, v10

    move-object/from16 v4, v19

    move-object v5, v11

    move-wide v6, v14

    invoke-direct/range {v1 .. v9}, Lcom/zte/heartyservice/privacy/SmsRecordListItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)V

    .line 2471
    .local v1, localSmsRecordListItem:Lcom/zte/heartyservice/privacy/SmsRecordListItem;
    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2428
    .end local v1           #localSmsRecordListItem:Lcom/zte/heartyservice/privacy/SmsRecordListItem;
    .end local v3           #name:Ljava/lang/String;
    .end local v20           #person:I
    .restart local v18       #name:Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 2429
    .local v16, e:Ljava/lang/Exception;
    const-string v2, "StandardInterfaceUtils"

    const-string v4, "get mode id failed"

    move-object/from16 v0, v16

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 2447
    .end local v16           #e:Ljava/lang/Exception;
    .restart local v13       #cur2:Landroid/database/Cursor;
    .restart local v20       #person:I
    :catch_1
    move-exception v16

    move-object/from16 v3, v18

    .line 2448
    .end local v18           #name:Ljava/lang/String;
    .restart local v3       #name:Ljava/lang/String;
    .restart local v16       #e:Ljava/lang/Exception;
    :goto_7
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2450
    if-eqz v13, :cond_7

    .line 2451
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 2452
    const/4 v13, 0x0

    move-object/from16 v18, v3

    .end local v3           #name:Ljava/lang/String;
    .restart local v18       #name:Ljava/lang/String;
    goto :goto_4

    .line 2450
    .end local v16           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    move-object/from16 v3, v18

    .end local v18           #name:Ljava/lang/String;
    .restart local v3       #name:Ljava/lang/String;
    :goto_8
    if-eqz v13, :cond_2

    .line 2451
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 2452
    const/4 v13, 0x0

    :cond_2
    throw v2

    .line 2474
    .end local v3           #name:Ljava/lang/String;
    .end local v8           #type:I
    .end local v9           #sub_id:I
    .end local v10           #_id:I
    .end local v11           #body:Ljava/lang/String;
    .end local v13           #cur2:Landroid/database/Cursor;
    .end local v14           #date:J
    .end local v19           #number:Ljava/lang/String;
    .end local v20           #person:I
    :cond_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2476
    :cond_4
    return-object v17

    .line 2450
    .restart local v3       #name:Ljava/lang/String;
    .restart local v8       #type:I
    .restart local v9       #sub_id:I
    .restart local v10       #_id:I
    .restart local v11       #body:Ljava/lang/String;
    .restart local v13       #cur2:Landroid/database/Cursor;
    .restart local v14       #date:J
    .restart local v19       #number:Ljava/lang/String;
    .restart local v20       #person:I
    :catchall_1
    move-exception v2

    goto :goto_8

    .line 2447
    :catch_2
    move-exception v16

    goto :goto_7

    .end local v3           #name:Ljava/lang/String;
    .restart local v18       #name:Ljava/lang/String;
    :cond_5
    move-object/from16 v3, v18

    .end local v18           #name:Ljava/lang/String;
    .restart local v3       #name:Ljava/lang/String;
    goto :goto_5

    .end local v3           #name:Ljava/lang/String;
    .end local v13           #cur2:Landroid/database/Cursor;
    .restart local v18       #name:Ljava/lang/String;
    :cond_6
    move-object/from16 v3, v18

    .end local v18           #name:Ljava/lang/String;
    .restart local v3       #name:Ljava/lang/String;
    goto :goto_6

    .restart local v13       #cur2:Landroid/database/Cursor;
    :cond_7
    move-object/from16 v18, v3

    .end local v3           #name:Ljava/lang/String;
    .restart local v18       #name:Ljava/lang/String;
    goto/16 :goto_4

    :cond_8
    move-object/from16 v3, v18

    .end local v18           #name:Ljava/lang/String;
    .restart local v3       #name:Ljava/lang/String;
    goto/16 :goto_2

    .end local v3           #name:Ljava/lang/String;
    .restart local v18       #name:Ljava/lang/String;
    :cond_9
    move-object/from16 v3, v18

    .end local v18           #name:Ljava/lang/String;
    .restart local v3       #name:Ljava/lang/String;
    goto/16 :goto_3
.end method

.method public static includePhoneFindBack()Z
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x1

    return v0
.end method

.method public static init()V
    .locals 2

    .prologue
    .line 282
    sget-object v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    if-nez v0, :cond_0

    .line 283
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    .line 284
    sget-object v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    sput-object v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->activityManager:Landroid/app/ActivityManager;

    .line 285
    sget-object v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-virtual {v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->packageManager:Landroid/content/pm/PackageManager;

    .line 286
    sget-object v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    sput-object v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 287
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sput-object v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->windowManager:Landroid/view/WindowManager;

    .line 288
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkSecurityExtentionEnabled()V

    .line 290
    :cond_0
    return-void
.end method

.method public static initAntivirusEngine()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 570
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isPresetCTVersion()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 578
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    return v1

    .line 574
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    :try_start_0
    sget-object v2, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->virusDBEngine:Lcom/zte/heartyservice/porting/All/VirusDBEngine;

    invoke-virtual {v2}, Lcom/zte/heartyservice/porting/All/VirusDBEngine;->SIUinitAntivirusEngine()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 575
    :catch_0
    move-exception v0

    .line 576
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "StandardInterfaceUtils"

    const-string v3, "initAntivirusEngine error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static isAntieavesdropEnable()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 5130
    sget v2, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->securityExtentionVersion:I

    if-le v2, v0, :cond_2

    .line 5131
    sget-object v2, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->sPrivacyManager:Lcom/zte/privacy/ZTEPrivacyManager;

    invoke-virtual {v2}, Lcom/zte/privacy/ZTEPrivacyManager;->getAntiPhoneRecordingSetting()I

    move-result v2

    if-nez v2, :cond_1

    .line 5133
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 5131
    goto :goto_0

    .line 5133
    :cond_2
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getAntiPhoneRecordingSetting()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static isBackup()Z
    .locals 15

    .prologue
    .line 5348
    const/4 v7, 0x0

    .line 5349
    .local v7, info:Landroid/content/pm/PackageInfo;
    const/4 v8, 0x0

    .line 5352
    .local v8, isBackup:Z
    :try_start_0
    sget-object v12, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->packageManager:Landroid/content/pm/PackageManager;

    const-string v13, "com.zte.backup.mmi"

    const/16 v14, 0x40

    invoke-virtual {v12, v13, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 5354
    const/4 v5, 0x0

    .line 5356
    .local v5, encoded:[B
    if-eqz v7, :cond_0

    .line 5357
    iget-object v0, v7, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v0, arr$:[Landroid/content/pm/Signature;
    array-length v9, v0

    .local v9, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    if-ge v6, v9, :cond_0

    aget-object v11, v0, v6

    .line 5358
    .local v11, s:Landroid/content/pm/Signature;
    const-string v12, "X.509"

    invoke-static {v12}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v4

    .line 5359
    .local v4, certFactory:Ljava/security/cert/CertificateFactory;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v11}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v12

    invoke-direct {v2, v12}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 5360
    .local v2, bais:Ljava/io/ByteArrayInputStream;
    invoke-virtual {v4, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    .line 5361
    .local v3, cert:Ljava/security/cert/Certificate;
    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v10

    .line 5362
    .local v10, pk:Ljava/security/PublicKey;
    invoke-interface {v10}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v5

    .line 5367
    .end local v0           #arr$:[Landroid/content/pm/Signature;
    .end local v2           #bais:Ljava/io/ByteArrayInputStream;
    .end local v3           #cert:Ljava/security/cert/Certificate;
    .end local v4           #certFactory:Ljava/security/cert/CertificateFactory;
    .end local v6           #i$:I
    .end local v9           #len$:I
    .end local v10           #pk:Ljava/security/PublicKey;
    .end local v11           #s:Landroid/content/pm/Signature;
    :cond_0
    const/16 v12, 0x126

    new-array v1, v12, [B

    fill-array-data v1, :array_0

    .line 5369
    .local v1, backupPublicKeyEncoded:[B
    const/4 v12, 0x1

    invoke-static {v5, v1}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    if-ne v12, v13, :cond_1

    .line 5370
    const/4 v8, 0x1

    .line 5376
    .end local v1           #backupPublicKeyEncoded:[B
    .end local v5           #encoded:[B
    :cond_1
    :goto_0
    return v8

    .line 5372
    :catch_0
    move-exception v12

    goto :goto_0

    .line 5367
    :array_0
    .array-data 0x1
        0x30t
        0x82t
        0x1t
        0x22t
        0x30t
        0xdt
        0x6t
        0x9t
        0x2at
        0x86t
        0x48t
        0x86t
        0xf7t
        0xdt
        0x1t
        0x1t
        0x1t
        0x5t
        0x0t
        0x3t
        0x82t
        0x1t
        0xft
        0x0t
        0x30t
        0x82t
        0x1t
        0xat
        0x2t
        0x82t
        0x1t
        0x1t
        0x0t
        0x97t
        0x19t
        0xd1t
        0x66t
        0x78t
        0x35t
        0x39t
        0x68t
        0x6t
        0x67t
        0xbct
        0x17t
        0x25t
        0x1t
        0x83t
        0xe0t
        0xd1t
        0x52t
        0xeat
        0x73t
        0x10t
        0x55t
        0xfft
        0xaet
        0x89t
        0xb9t
        0x16t
        0xa5t
        0xddt
        0x5et
        0x96t
        0xa9t
        0x87t
        0x39t
        0x52t
        0x1t
        0xf9t
        0x1ct
        0x5et
        0x50t
        0x6ct
        0xet
        0x1et
        0xfct
        0x80t
        0x5t
        0x47t
        0x61t
        0x93t
        0x94t
        0x9at
        0xf4t
        0x99t
        0x7bt
        0xaet
        0x90t
        0x12t
        0x9at
        0x6bt
        0x3dt
        0x7at
        0x1dt
        0x7at
        0x29t
        0xc3t
        0x72t
        0x55t
        0xf7t
        0x67t
        0xe8t
        0x3t
        0xct
        0x55t
        0xe0t
        0x60t
        0x33t
        0x3at
        0xc5t
        0x90t
        0xfet
        0x1ft
        0x37t
        0x5et
        0x33t
        0x2et
        0xa2t
        0xb9t
        0xb1t
        0x0t
        0x2ct
        0xb2t
        0x99t
        0x1t
        0xa1t
        0xe0t
        0xd3t
        0x21t
        0x3t
        0x99t
        0x76t
        0x61t
        0x89t
        0x7bt
        0xb9t
        0x5dt
        0x8t
        0x6at
        0xa6t
        0x8ft
        0x76t
        0x7at
        0x87t
        0x10t
        0x33t
        0x4t
        0xcft
        0x66t
        0x8t
        0x95t
        0x41t
        0x62t
        0x2t
        0xc5t
        0x2bt
        0x89t
        0x47t
        0xft
        0x91t
        0x6ft
        0x13t
        0x53t
        0x3dt
        0x62t
        0xa5t
        0x0t
        0xb7t
        0x23t
        0x67t
        0x73t
        0x50t
        0xfft
        0x84t
        0xe0t
        0xf5t
        0x83t
        0x66t
        0x50t
        0xe5t
        0x43t
        0x4ft
        0x52t
        0x58t
        0x36t
        0x3bt
        0x13t
        0xe9t
        0x96t
        0xa4t
        0xf1t
        0x68t
        0x8t
        0x5t
        0xc9t
        0x91t
        0x27t
        0x2at
        0xa5t
        0x35t
        0x2et
        0xb5t
        0x2bt
        0xd4t
        0x6ft
        0xe5t
        0x6t
        0x5t
        0x49t
        0x8t
        0xddt
        0x9at
        0xaet
        0x70t
        0x1et
        0xb7t
        0x60t
        0x9ct
        0xa7t
        0xeat
        0x24t
        0x55t
        0x43t
        0x63t
        0x1at
        0xe5t
        0x73t
        0x41t
        0xd7t
        0x80t
        0x3dt
        0x6ct
        0x1ft
        0xb7t
        0xbdt
        0x41t
        0x7at
        0x95t
        0x25t
        0x84t
        0xabt
        0x57t
        0xb6t
        0xcat
        0xd9t
        0xe2t
        0x87t
        0x34t
        0x87t
        0xc6t
        0xc1t
        0x16t
        0x64t
        0xebt
        0xf9t
        0x54t
        0xd9t
        0x26t
        0x22t
        0xb8t
        0x1at
        0x67t
        0xdat
        0x51t
        0x7bt
        0x1et
        0x98t
        0xfet
        0x3et
        0xc6t
        0xe9t
        0xd9t
        0xa6t
        0xe6t
        0x6ft
        0x35t
        0x6ct
        0xa8t
        0x4et
        0xe1t
        0xc3t
        0xeft
        0x72t
        0x6ft
        0xe1t
        0x94t
        0xb6t
        0x1dt
        0x2t
        0x3t
        0x1t
        0x0t
        0x1t
    .end array-data
.end method

.method public static isBroadcastReceiver(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"
    .parameter "componentName"

    .prologue
    .line 4014
    :try_start_0
    sget-object v2, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    const/4 v3, 0x3

    invoke-virtual {v2, p0, v3}, Lcom/zte/heartyservice/main/HeartyServiceApp;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 4015
    .local v0, component:Ljava/lang/Class;
    const-class v2, Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 4017
    .end local v0           #component:Ljava/lang/Class;
    :goto_0
    return v2

    .line 4016
    :catch_0
    move-exception v1

    .line 4017
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isComponentExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"
    .parameter "componentName"

    .prologue
    .line 4005
    :try_start_0
    sget-object v1, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    const/4 v2, 0x3

    invoke-virtual {v1, p0, v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4009
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 4006
    :catch_0
    move-exception v0

    .line 4007
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMultiSimEnabled()Z
    .locals 4

    .prologue
    .line 3450
    :try_start_0
    const-string v0, "android.telephony.TelephonyManager"

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    const-string v2, "isMultiSimEnabled"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->Load(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3455
    :goto_0
    return v0

    .line 3452
    :catch_0
    move-exception v0

    .line 3455
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPackageLocked(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 5790
    if-nez p0, :cond_0

    .line 5791
    const/4 v0, 0x0

    .line 5792
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getAppLockSettingsAdapter()Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;->isPackageLocked(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isSystemPkg(Ljava/lang/String;)Z
    .locals 4
    .parameter "pkg"

    .prologue
    const/4 v1, 0x0

    .line 5338
    const/4 v0, 0x0

    .line 5340
    .local v0, pkgFlags:I
    :try_start_0
    sget-object v2, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->packageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v0, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5344
    :goto_0
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 5341
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static isWidgetOnScreen()Ljava/lang/String;
    .locals 5

    .prologue
    .line 5522
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v3

    const-class v4, Lcom/zte/heartyservice/appwidget/SpeedupWidgetProvider;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 5526
    .local v0, widgetIds:[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 5527
    const-string v1, "1"

    .line 5529
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "0"

    goto :goto_0
.end method

.method public static killBackgroundProcesses(Ljava/lang/String;)V
    .locals 6
    .parameter "packageName"

    .prologue
    const/4 v5, 0x1

    .line 3793
    :try_start_0
    sget-object v3, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    .line 3794
    .local v2, setting:I
    const/4 v1, 0x1

    .line 3795
    .local v1, reverse:I
    packed-switch v2, :pswitch_data_0

    .line 3801
    const/4 v1, 0x1

    .line 3803
    :goto_0
    sget-object v3, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->packageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x1

    invoke-virtual {v3, p0, v1, v4}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 3804
    sget-object v3, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->packageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v2, v4}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3812
    invoke-static {p0, v5}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->setPackageStoppedState(Ljava/lang/String;Z)V

    .line 3814
    .end local v1           #reverse:I
    .end local v2           #setting:I
    :goto_1
    return-void

    .line 3798
    .restart local v1       #reverse:I
    .restart local v2       #setting:I
    :pswitch_0
    const/4 v1, 0x2

    .line 3799
    goto :goto_0

    .line 3805
    .end local v1           #reverse:I
    .end local v2           #setting:I
    :catch_0
    move-exception v0

    .line 3807
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v3, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->activityManager:Landroid/app/ActivityManager;

    invoke-virtual {v3, p0}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3812
    :goto_2
    invoke-static {p0, v5}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->setPackageStoppedState(Ljava/lang/String;Z)V

    goto :goto_1

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-static {p0, v5}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->setPackageStoppedState(Ljava/lang/String;Z)V

    throw v3

    .line 3808
    .restart local v0       #e:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_2

    .line 3795
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static moveCallLog2PrivatySpace(Ljava/util/HashSet;ZILcom/zte/heartyservice/common/utils/StandardInterfaceUtils$MoveTaskUpdateCB;)Z
    .locals 24
    .parameter "acHashSet"
    .parameter "scanAll"
    .parameter "lastHandledCalllogId"
    .parameter "cb"

    .prologue
    .line 2830
    const/16 v22, 0x1

    .line 2831
    .local v22, ret:Z
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/util/HashSet;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move/from16 v23, v22

    .line 2920
    .end local v22           #ret:Z
    .local v23, ret:I
    :goto_0
    return v23

    .line 2834
    .end local v23           #ret:I
    .restart local v22       #ret:Z
    :cond_1
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 2835
    .local v18, localStringBuilder:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 2836
    .local v5, selection:Ljava/lang/String;
    if-nez p1, :cond_2

    .line 2837
    const-string v2, " _id>"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2839
    :cond_2
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2840
    sget-object v2, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-virtual {v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v7, "date asc"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 2842
    .local v16, cur:Landroid/database/Cursor;
    if-eqz v16, :cond_7

    .line 2843
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v19

    .line 2844
    .local v19, max:I
    if-lez v19, :cond_6

    .line 2845
    const/16 v20, 0x0

    .line 2846
    .local v20, n:I
    const/16 v21, 0x0

    .line 2847
    .local v21, num_of_deal:I
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_3

    .line 2848
    const v2, 0x7f0a0350

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1, v2}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$MoveTaskUpdateCB;->showPD(II)V

    .line 2850
    :cond_3
    :goto_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2851
    const-string v2, "date"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 2852
    .local v8, date:J
    sget-object v2, Lcom/zte/heartyservice/main/HeartyServiceApp;->mDonotHandleCall:Ljava/util/HashSet;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2854
    sget-object v2, Lcom/zte/heartyservice/main/HeartyServiceApp;->mDonotHandleCall:Ljava/util/HashSet;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2855
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_3

    .line 2856
    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$MoveTaskUpdateCB;->updatePD(I)V

    goto :goto_1

    .line 2860
    :cond_4
    const-string v2, "number"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2861
    .local v7, number:Ljava/lang/String;
    invoke-static {v7}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->convertNumberToAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2862
    .local v15, ac:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2864
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_3

    .line 2865
    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$MoveTaskUpdateCB;->updatePD(I)V

    goto :goto_1

    .line 2869
    :cond_5
    const-string v2, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 2870
    .local v14, _id:I
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkIsDataSpaceNotEnoughAndShowToast()Z

    move-result v2

    if-nez v2, :cond_9

    .line 2872
    const/16 v22, 0x0

    .line 2915
    .end local v7           #number:Ljava/lang/String;
    .end local v8           #date:J
    .end local v14           #_id:I
    .end local v15           #ac:Ljava/lang/String;
    .end local v20           #n:I
    .end local v21           #num_of_deal:I
    :cond_6
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 2917
    .end local v19           #max:I
    :cond_7
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_8

    .line 2918
    invoke-interface/range {p3 .. p3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$MoveTaskUpdateCB;->dissmissPD()V

    :cond_8
    move/from16 v23, v22

    .line 2920
    .restart local v23       #ret:I
    goto/16 :goto_0

    .line 2876
    .end local v23           #ret:I
    .restart local v7       #number:Ljava/lang/String;
    .restart local v8       #date:J
    .restart local v14       #_id:I
    .restart local v15       #ac:Ljava/lang/String;
    .restart local v19       #max:I
    .restart local v20       #n:I
    .restart local v21       #num_of_deal:I
    :cond_9
    const-string v2, "duration"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 2877
    .local v10, duration:I
    const-string v2, "type"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 2878
    .local v11, type:I
    const-string v2, "new"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 2879
    .local v12, is_new:I
    const/4 v13, 0x1

    .line 2880
    .local v13, mode_id:I
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isMsim()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2888
    :try_start_0
    sget-object v2, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->CALL_LOG_MODE_NAME:[Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getDBColumnIndex(Landroid/database/Cursor;[Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 2894
    :cond_a
    :goto_2
    const/4 v2, 0x1

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v6

    invoke-virtual/range {v6 .. v13}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->insertCall(Ljava/lang/String;JIIII)Z

    move-result v3

    if-ne v2, v3, :cond_b

    .line 2896
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2902
    :cond_b
    if-nez p1, :cond_c

    const/4 v2, 0x3

    if-ne v11, v2, :cond_c

    .line 2904
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->cancelMissedCallsNotification()V

    .line 2906
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->refreshPrivacyNotification()V

    .line 2907
    const-string v2, "chenlu"

    const-string v3, "ACTION_REFRESH_NOTIFICATION  EXTRA_NOTIFICATION_FROM_PRIVACY CallLog add"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2909
    :cond_c
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_3

    .line 2910
    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$MoveTaskUpdateCB;->updatePD(I)V

    .line 2911
    add-int/lit8 v21, v21, 0x1

    const v2, 0x7f0a0350

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1, v2}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$MoveTaskUpdateCB;->updatePDMsg(II)V

    goto/16 :goto_1

    .line 2889
    :catch_0
    move-exception v17

    .line 2890
    .local v17, e:Ljava/lang/Exception;
    const-string v2, "StandardInterfaceUtils"

    const-string v3, "get mode id failed"

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static moveSms2PrivatySpace(Ljava/util/HashSet;ZILcom/zte/heartyservice/common/utils/StandardInterfaceUtils$MoveTaskUpdateCB;)Z
    .locals 34
    .parameter "acHashSet"
    .parameter "scanAll"
    .parameter "lastHandledSmsId"
    .parameter "cb"

    .prologue
    .line 2613
    const/16 v31, 0x1

    .line 2614
    .local v31, ret:Z
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/util/HashSet;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move/from16 v32, v31

    .line 2775
    .end local v31           #ret:Z
    .local v32, ret:I
    :goto_0
    return v32

    .line 2617
    .end local v32           #ret:I
    .restart local v31       #ret:Z
    :cond_1
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    .line 2618
    .local v27, localStringBuilder:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 2619
    .local v5, selection:Ljava/lang/String;
    if-nez p1, :cond_2

    .line 2620
    const-string v2, " _id>"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2622
    :cond_2
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2623
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v7, "date asc"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 2625
    .local v22, cur:Landroid/database/Cursor;
    if-eqz v22, :cond_a

    .line 2626
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v28

    .line 2627
    .local v28, max:I
    if-lez v28, :cond_9

    .line 2628
    const/16 v29, 0x0

    .line 2629
    .local v29, n:I
    const/16 v30, 0x0

    .line 2630
    .local v30, num_of_deal:I
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_3

    .line 2631
    const v2, 0x7f0a034f

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-interface {v0, v1, v2}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$MoveTaskUpdateCB;->showPD(II)V

    .line 2633
    :cond_3
    :goto_1
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2634
    const-string v2, "date"

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 2635
    .local v12, date:J
    sget-object v2, Lcom/zte/heartyservice/main/HeartyServiceApp;->mDonotHandleSms:Ljava/util/HashSet;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2637
    sget-object v2, Lcom/zte/heartyservice/main/HeartyServiceApp;->mDonotHandleSms:Ljava/util/HashSet;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2638
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_4

    .line 2641
    :cond_4
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_3

    .line 2642
    add-int/lit8 v29, v29, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$MoveTaskUpdateCB;->updatePD(I)V

    goto :goto_1

    .line 2646
    :cond_5
    const-string v2, "address"

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 2647
    .local v21, address:Ljava/lang/String;
    const-string v2, "_id"

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 2648
    .local v19, _id:I
    if-nez v21, :cond_6

    .line 2654
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id in (select recipient_ids from threads where _id in (select thread_id from sms where _id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "))"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2656
    .local v9, selection2:Ljava/lang/String;
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v2, "content://sms/threadID/chenlu"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "address"

    aput-object v3, v8, v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 2661
    .local v23, cur2:Landroid/database/Cursor;
    if-eqz v23, :cond_18

    .line 2662
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_17

    .line 2663
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2664
    const-string v2, "address"

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2666
    .end local v21           #address:Ljava/lang/String;
    .local v11, address:Ljava/lang/String;
    :goto_2
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 2668
    :goto_3
    if-nez v11, :cond_7

    .line 2670
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_3

    .line 2671
    add-int/lit8 v29, v29, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$MoveTaskUpdateCB;->updatePD(I)V

    goto/16 :goto_1

    .end local v9           #selection2:Ljava/lang/String;
    .end local v11           #address:Ljava/lang/String;
    .end local v23           #cur2:Landroid/database/Cursor;
    .restart local v21       #address:Ljava/lang/String;
    :cond_6
    move-object/from16 v11, v21

    .line 2677
    .end local v21           #address:Ljava/lang/String;
    .restart local v11       #address:Ljava/lang/String;
    :cond_7
    invoke-static {v11}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->convertNumberToAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2678
    .local v20, ac:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 2680
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_3

    .line 2681
    add-int/lit8 v29, v29, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$MoveTaskUpdateCB;->updatePD(I)V

    goto/16 :goto_1

    .line 2685
    :cond_8
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkIsDataSpaceNotEnoughAndShowToast()Z

    move-result v2

    if-nez v2, :cond_c

    .line 2687
    const/16 v31, 0x0

    .line 2770
    .end local v11           #address:Ljava/lang/String;
    .end local v12           #date:J
    .end local v19           #_id:I
    .end local v20           #ac:Ljava/lang/String;
    .end local v29           #n:I
    .end local v30           #num_of_deal:I
    :cond_9
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 2772
    .end local v28           #max:I
    :cond_a
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_b

    if-nez v31, :cond_b

    .line 2773
    invoke-interface/range {p3 .. p3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$MoveTaskUpdateCB;->dissmissPD()V

    :cond_b
    move/from16 v32, v31

    .line 2775
    .restart local v32       #ret:I
    goto/16 :goto_0

    .line 2691
    .end local v32           #ret:I
    .restart local v11       #address:Ljava/lang/String;
    .restart local v12       #date:J
    .restart local v19       #_id:I
    .restart local v20       #ac:Ljava/lang/String;
    .restart local v28       #max:I
    .restart local v29       #n:I
    .restart local v30       #num_of_deal:I
    :cond_c
    const/16 v25, 0x0

    .line 2692
    .local v25, handle_sent:Z
    const-string v2, "read"

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 2693
    .local v14, read:I
    const-string v2, "type"

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    .line 2694
    .local v33, type:I
    const/4 v15, 0x2

    .line 2695
    .local v15, insertType:I
    const/4 v2, 0x1

    move/from16 v0, v33

    if-eq v0, v2, :cond_d

    const/4 v2, 0x7

    move/from16 v0, v33

    if-eq v0, v2, :cond_d

    const/16 v2, 0x8

    move/from16 v0, v33

    if-ne v0, v2, :cond_14

    .line 2698
    :cond_d
    move/from16 v15, v33

    .line 2703
    :cond_e
    :goto_4
    const-string v2, "subject"

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 2704
    .local v16, subject:Ljava/lang/String;
    const-string v2, "body"

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 2705
    .local v17, body:Ljava/lang/String;
    const/16 v18, -0x1

    .line 2706
    .local v18, sub_id:I
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isMsim()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2714
    :try_start_0
    sget-object v2, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->SMS_MODE_NAME:[Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-static {v0, v2}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getDBColumnIndex(Landroid/database/Cursor;[Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    .line 2719
    :cond_f
    :goto_5
    const/4 v2, 0x1

    move/from16 v0, v25

    if-ne v0, v2, :cond_15

    .line 2729
    const/4 v2, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v11, v0, v12, v13, v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->sendSms(Ljava/lang/String;Ljava/lang/String;JI)Z

    move-result v3

    if-ne v2, v3, :cond_10

    .line 2730
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://sms/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2749
    :cond_10
    :goto_6
    if-nez p1, :cond_13

    const/4 v2, 0x1

    move/from16 v0, v33

    if-eq v0, v2, :cond_11

    const/4 v2, 0x7

    move/from16 v0, v33

    if-eq v0, v2, :cond_11

    const/16 v2, 0x8

    move/from16 v0, v33

    if-ne v0, v2, :cond_13

    .line 2753
    :cond_11
    new-instance v26, Landroid/content/Intent;

    sget-object v2, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->INBOX_SMS_INTERCEPT:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2754
    .local v26, intent:Landroid/content/Intent;
    const-string v2, "ac"

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2755
    const-string v2, "date"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2756
    sget-object v2, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 2758
    if-nez v14, :cond_12

    invoke-static {}, Lcom/zte/heartyservice/privacy/PrivacySetting;->isEnableNotification()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2759
    const/4 v2, 0x1

    sput-boolean v2, Lcom/zte/heartyservice/indicator/Notifier;->needSound:Z

    .line 2761
    :cond_12
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->refreshPrivacyNotification()V

    .line 2762
    const-string v2, "chenlu"

    const-string v3, "ACTION_REFRESH_NOTIFICATION  EXTRA_NOTIFICATION_FROM_PRIVACY Msg add 2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2764
    .end local v26           #intent:Landroid/content/Intent;
    :cond_13
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_3

    .line 2765
    add-int/lit8 v29, v29, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$MoveTaskUpdateCB;->updatePD(I)V

    .line 2766
    add-int/lit8 v30, v30, 0x1

    const v2, 0x7f0a034f

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1, v2}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$MoveTaskUpdateCB;->updatePDMsg(II)V

    goto/16 :goto_1

    .line 2699
    .end local v16           #subject:Ljava/lang/String;
    .end local v17           #body:Ljava/lang/String;
    .end local v18           #sub_id:I
    :cond_14
    const/4 v2, 0x6

    move/from16 v0, v33

    if-ne v0, v2, :cond_e

    if-nez p1, :cond_e

    .line 2701
    const/16 v25, 0x1

    goto/16 :goto_4

    .line 2715
    .restart local v16       #subject:Ljava/lang/String;
    .restart local v17       #body:Ljava/lang/String;
    .restart local v18       #sub_id:I
    :catch_0
    move-exception v24

    .line 2716
    .local v24, e:Ljava/lang/Exception;
    const-string v2, "StandardInterfaceUtils"

    const-string v3, "get mode id failed"

    move-object/from16 v0, v24

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 2737
    .end local v24           #e:Ljava/lang/Exception;
    :cond_15
    const/4 v2, -0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_16

    .line 2738
    const/16 v18, 0x0

    .line 2740
    :cond_16
    const/4 v2, 0x1

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v10

    invoke-virtual/range {v10 .. v18}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->insertSms(Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-ne v2, v3, :cond_10

    .line 2742
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://sms/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_6

    .end local v11           #address:Ljava/lang/String;
    .end local v14           #read:I
    .end local v15           #insertType:I
    .end local v16           #subject:Ljava/lang/String;
    .end local v17           #body:Ljava/lang/String;
    .end local v18           #sub_id:I
    .end local v20           #ac:Ljava/lang/String;
    .end local v25           #handle_sent:Z
    .end local v33           #type:I
    .restart local v9       #selection2:Ljava/lang/String;
    .restart local v21       #address:Ljava/lang/String;
    .restart local v23       #cur2:Landroid/database/Cursor;
    :cond_17
    move-object/from16 v11, v21

    .end local v21           #address:Ljava/lang/String;
    .restart local v11       #address:Ljava/lang/String;
    goto/16 :goto_2

    .end local v11           #address:Ljava/lang/String;
    .restart local v21       #address:Ljava/lang/String;
    :cond_18
    move-object/from16 v11, v21

    .end local v21           #address:Ljava/lang/String;
    .restart local v11       #address:Ljava/lang/String;
    goto/16 :goto_3
.end method

.method public static p2HS()V
    .locals 2

    .prologue
    .line 4035
    sget-object v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->staThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 4493
    :goto_0
    return-void

    .line 4038
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$2;

    invoke-direct {v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$2;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->staThread:Ljava/lang/Thread;

    .line 4421
    sget-object v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->staThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static p2ZB()V
    .locals 3

    .prologue
    .line 4712
    sget-object v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->zbThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 4786
    :cond_0
    :goto_0
    return-void

    .line 4715
    :cond_1
    new-instance v0, Ljava/lang/String;

    const-string v1, "Y29tLnp0ZS5icm93c2Vy"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getPInfo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4718
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$3;

    invoke-direct {v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$3;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->zbThread:Ljava/lang/Thread;

    .line 4785
    sget-object v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->zbThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static pauseWatch()V
    .locals 1

    .prologue
    .line 5104
    sget-object v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->appLockWatchDog:Lcom/zte/heartyservice/privacy/AppLockWatchDog;

    if-eqz v0, :cond_0

    .line 5105
    sget-object v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->appLockWatchDog:Lcom/zte/heartyservice/privacy/AppLockWatchDog;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/AppLockWatchDog;->pauseWatch()V

    .line 5107
    :cond_0
    return-void
.end method

.method public static phoneIsInUse()Z
    .locals 3

    .prologue
    .line 5138
    const/4 v1, 0x0

    .line 5140
    .local v1, phoneInUse:Z
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 5141
    .local v0, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_0

    .line 5142
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 5147
    .end local v0           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v1

    .line 5142
    .restart local v0       #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 5144
    .end local v0           #phone:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static readKey4Str(Ljava/lang/String;Ljava/lang/String;I)Ljava/security/Key;
    .locals 11
    .parameter "str"
    .parameter "password"
    .parameter "type"

    .prologue
    .line 3227
    const/4 v3, 0x0

    .line 3229
    .local v3, encodedKey:[B
    :try_start_0
    invoke-static {p1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getKeyByte(Ljava/lang/String;)[B

    move-result-object v6

    .line 3230
    .local v6, keyByte:[B
    new-instance v9, Ljavax/crypto/spec/SecretKeySpec;

    const-string v10, "AES"

    invoke-direct {v9, v6, v10}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 3231
    .local v9, skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    const-string v10, "AES/CBC/PKCS5Padding"

    invoke-static {v10}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 3232
    .local v1, cip:Ljavax/crypto/Cipher;
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v10, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->IV:[B

    invoke-direct {v4, v10}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 3233
    .local v4, iv:Ljavax/crypto/spec/IvParameterSpec;
    const/4 v10, 0x2

    invoke-virtual {v1, v10, v9, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 3234
    const/4 v10, 0x2

    invoke-static {p0, v10}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v10

    invoke-virtual {v1, v10}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 3236
    const/4 v5, 0x0

    .line 3237
    .local v5, key:Ljava/security/Key;
    const-string v10, "RSA"

    invoke-static {v10}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v7

    .line 3238
    .local v7, keyFactory:Ljava/security/KeyFactory;
    if-nez p2, :cond_1

    .line 3239
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, v3}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 3241
    .local v0, bobPubKeySpec:Ljava/security/spec/X509EncodedKeySpec;
    invoke-virtual {v7, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v5

    .line 3251
    .end local v0           #bobPubKeySpec:Ljava/security/spec/X509EncodedKeySpec;
    .end local v1           #cip:Ljavax/crypto/Cipher;
    .end local v4           #iv:Ljavax/crypto/spec/IvParameterSpec;
    .end local v5           #key:Ljava/security/Key;
    .end local v6           #keyByte:[B
    .end local v7           #keyFactory:Ljava/security/KeyFactory;
    .end local v9           #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    :cond_0
    :goto_0
    return-object v5

    .line 3242
    .restart local v1       #cip:Ljavax/crypto/Cipher;
    .restart local v4       #iv:Ljavax/crypto/spec/IvParameterSpec;
    .restart local v5       #key:Ljava/security/Key;
    .restart local v6       #keyByte:[B
    .restart local v7       #keyFactory:Ljava/security/KeyFactory;
    .restart local v9       #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    :cond_1
    const/4 v10, 0x1

    if-ne p2, v10, :cond_0

    .line 3243
    new-instance v8, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v8, v3}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 3245
    .local v8, priPKCS8:Ljava/security/spec/PKCS8EncodedKeySpec;
    invoke-virtual {v7, v8}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 3248
    .end local v1           #cip:Ljavax/crypto/Cipher;
    .end local v4           #iv:Ljavax/crypto/spec/IvParameterSpec;
    .end local v5           #key:Ljava/security/Key;
    .end local v6           #keyByte:[B
    .end local v7           #keyFactory:Ljava/security/KeyFactory;
    .end local v8           #priPKCS8:Ljava/security/spec/PKCS8EncodedKeySpec;
    .end local v9           #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    :catch_0
    move-exception v2

    .line 3249
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 3251
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static readKey4Str(Ljava/lang/String;ZI)Ljava/security/Key;
    .locals 12
    .parameter "str"
    .parameter "isEncrypt"
    .parameter "type"

    .prologue
    const/4 v11, 0x1

    .line 3188
    const/4 v3, 0x0

    .line 3189
    .local v3, encodedKey:[B
    if-ne p1, v11, :cond_1

    .line 3193
    :try_start_0
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPassword()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getKeyByte(Ljava/lang/String;)[B

    move-result-object v6

    .line 3194
    .local v6, keyByte:[B
    new-instance v9, Ljavax/crypto/spec/SecretKeySpec;

    const-string v10, "AES"

    invoke-direct {v9, v6, v10}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 3195
    .local v9, skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    const-string v10, "AES/CBC/PKCS5Padding"

    invoke-static {v10}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 3196
    .local v1, cip:Ljavax/crypto/Cipher;
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v10, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->IV:[B

    invoke-direct {v4, v10}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 3197
    .local v4, iv:Ljavax/crypto/spec/IvParameterSpec;
    const/4 v10, 0x2

    invoke-virtual {v1, v10, v9, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 3198
    const/4 v10, 0x2

    invoke-static {p0, v10}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v10

    invoke-virtual {v1, v10}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 3206
    .end local v1           #cip:Ljavax/crypto/Cipher;
    .end local v4           #iv:Ljavax/crypto/spec/IvParameterSpec;
    .end local v6           #keyByte:[B
    .end local v9           #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    const/4 v5, 0x0

    .line 3207
    .local v5, key:Ljava/security/Key;
    const-string v10, "RSA"

    invoke-static {v10}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v7

    .line 3208
    .local v7, keyFactory:Ljava/security/KeyFactory;
    if-nez p2, :cond_2

    .line 3209
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, v3}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 3210
    .local v0, bobPubKeySpec:Ljava/security/spec/X509EncodedKeySpec;
    invoke-virtual {v7, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v5

    .line 3221
    .end local v0           #bobPubKeySpec:Ljava/security/spec/X509EncodedKeySpec;
    .end local v5           #key:Ljava/security/Key;
    .end local v7           #keyFactory:Ljava/security/KeyFactory;
    :cond_0
    :goto_1
    return-object v5

    .line 3201
    :cond_1
    const/4 v10, 0x2

    invoke-static {p0, v10}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    goto :goto_0

    .line 3211
    .restart local v5       #key:Ljava/security/Key;
    .restart local v7       #keyFactory:Ljava/security/KeyFactory;
    :cond_2
    if-ne p2, v11, :cond_0

    .line 3212
    new-instance v8, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v8, v3}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 3213
    .local v8, priPKCS8:Ljava/security/spec/PKCS8EncodedKeySpec;
    invoke-virtual {v7, v8}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_1

    .line 3218
    .end local v5           #key:Ljava/security/Key;
    .end local v7           #keyFactory:Ljava/security/KeyFactory;
    .end local v8           #priPKCS8:Ljava/security/spec/PKCS8EncodedKeySpec;
    :catch_0
    move-exception v2

    .line 3219
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 3221
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static recoverCallById(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 2924
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->recoverCallById(I)Z

    .line 2925
    return-void
.end method

.method public static recoverCallById([I)V
    .locals 3
    .parameter "ids"

    .prologue
    .line 2928
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 2929
    aget v1, p0, v0

    .line 2930
    .local v1, id:I
    invoke-static {v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->recoverCallById(I)V

    .line 2928
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2932
    .end local v1           #id:I
    :cond_0
    return-void
.end method

.method public static recoverSmsById(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 2779
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->recoverSmsById(I)Z

    .line 2780
    return-void
.end method

.method public static recoverSmsById([I)V
    .locals 3
    .parameter "ids"

    .prologue
    .line 2783
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 2784
    aget v1, p0, v0

    .line 2785
    .local v1, id:I
    invoke-static {v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->recoverSmsById(I)V

    .line 2783
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2787
    .end local v1           #id:I
    :cond_0
    return-void
.end method

.method public static refreshPrivacyNotification()V
    .locals 3

    .prologue
    .line 3628
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3629
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.zte.heartyservice.intent.action.REFRESH_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3630
    const-string v1, "from"

    const-string v2, "privacy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3632
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 3633
    return-void
.end method

.method public static removeLockedPackage(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 5170
    sget-object v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->appLockWatchDog:Lcom/zte/heartyservice/privacy/AppLockWatchDog;

    invoke-virtual {v0, p0}, Lcom/zte/heartyservice/privacy/AppLockWatchDog;->removeLockedPackage(Ljava/lang/String;)V

    .line 5171
    const/4 v0, 0x1

    return v0
.end method

.method public static removeNotSecurityApp(Lcom/zte/heartyservice/common/datatype/VirusScanResult;)Z
    .locals 8
    .parameter "item"

    .prologue
    .line 679
    const/4 v2, 0x0

    .line 680
    .local v2, result:Z
    if-nez p0, :cond_0

    move v3, v2

    .line 715
    .end local v2           #result:Z
    .local v3, result:I
    :goto_0
    return v3

    .line 688
    .end local v3           #result:I
    .restart local v2       #result:Z
    :cond_0
    :try_start_0
    iget v4, p0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->apkType:I

    packed-switch v4, :pswitch_data_0

    .line 698
    sget-object v4, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->pkgName:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 701
    const/4 v2, 0x1

    .line 707
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 708
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 709
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/VirusScanResult;>;"
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 710
    sget-object v4, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-static {v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->deleteNotSecurityAppFromTable(Ljava/util/List;)V

    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/VirusScanResult;>;"
    :cond_2
    :goto_2
    move v3, v2

    .line 715
    .restart local v3       #result:I
    goto :goto_0

    .line 690
    .end local v3           #result:I
    :pswitch_0
    iget-object v4, p0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->path:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 691
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->path:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 692
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_1

    .line 693
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_1

    .line 712
    .end local v0           #file:Ljava/io/File;
    :catch_0
    move-exception v4

    goto :goto_2

    .line 688
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static removePresetCTShortCut()V
    .locals 3

    .prologue
    .line 3927
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3928
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings.SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3929
    const-string v1, "com.zte.heartyservice"

    const-string v2, "com.zte.heartyservice.main.HeartServiceActivityShortcut"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3931
    const/high16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3932
    sget-object v1, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    const v2, 0x7f0a0007

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->removeShortCut(Landroid/content/Intent;Ljava/lang/String;)V

    .line 3934
    sget-object v1, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    const v2, 0x7f0a0008

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->removeShortCut(Landroid/content/Intent;Ljava/lang/String;)V

    .line 3936
    return-void
.end method

.method public static removeShortCut(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2
    .parameter "shortcutIntent"
    .parameter "title"

    .prologue
    .line 3908
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3910
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3911
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3912
    sget-object v1, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-virtual {v1, v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 3913
    return-void
.end method

.method public static resumeWatch()V
    .locals 1

    .prologue
    .line 5098
    sget-object v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->appLockWatchDog:Lcom/zte/heartyservice/privacy/AppLockWatchDog;

    if-eqz v0, :cond_0

    .line 5099
    sget-object v0, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->appLockWatchDog:Lcom/zte/heartyservice/privacy/AppLockWatchDog;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/AppLockWatchDog;->resumeWatch()V

    .line 5101
    :cond_0
    return-void
.end method

.method public static scanApkPathForVinus(Ljava/lang/String;)Lcom/zte/heartyservice/common/datatype/VirusScanResult;
    .locals 3
    .parameter "apkPath"

    .prologue
    .line 636
    :try_start_0
    sget-object v1, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->virusDBEngine:Lcom/zte/heartyservice/porting/All/VirusDBEngine;

    invoke-virtual {v1, p0}, Lcom/zte/heartyservice/porting/All/VirusDBEngine;->SIUscanApkPathForVinus(Ljava/lang/String;)Lcom/zte/heartyservice/common/datatype/VirusScanResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 640
    :goto_0
    return-object v1

    .line 637
    :catch_0
    move-exception v0

    .line 638
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "StandardInterfaceUtils"

    const-string v2, "scanAppForVinus error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 640
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static scanAppForVinus(Ljava/lang/String;)Lcom/zte/heartyservice/common/datatype/VirusScanResult;
    .locals 3
    .parameter "apkPath"

    .prologue
    .line 615
    :try_start_0
    sget-object v1, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->virusDBEngine:Lcom/zte/heartyservice/porting/All/VirusDBEngine;

    invoke-virtual {v1, p0}, Lcom/zte/heartyservice/porting/All/VirusDBEngine;->SIUscanAppForVinus(Ljava/lang/String;)Lcom/zte/heartyservice/common/datatype/VirusScanResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 619
    :goto_0
    return-object v1

    .line 616
    :catch_0
    move-exception v0

    .line 617
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "StandardInterfaceUtils"

    const-string v2, "scanAppForVinus error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 619
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static scanAppForVinus(Ljava/util/List;Lcom/zte/heartyservice/common/utils/CallBack;)V
    .locals 3
    .parameter
    .parameter "cb"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/zte/heartyservice/common/utils/CallBack;",
            ")V"
        }
    .end annotation

    .prologue
    .line 591
    .local p0, pkgNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    sget-object v1, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->virusDBEngine:Lcom/zte/heartyservice/porting/All/VirusDBEngine;

    invoke-virtual {v1, p0, p1}, Lcom/zte/heartyservice/porting/All/VirusDBEngine;->SIUscanAppForVinus(Ljava/util/List;Lcom/zte/heartyservice/common/utils/CallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    :goto_0
    return-void

    .line 592
    :catch_0
    move-exception v0

    .line 593
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "StandardInterfaceUtils"

    const-string v2, "scanAppsForVinus error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static scanFileAsync(Ljava/lang/String;)V
    .locals 4
    .parameter "filePath"

    .prologue
    .line 2190
    new-instance v0, Lcom/zte/heartyservice/privacy/MediaScanner;

    sget-object v1, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/privacy/MediaScanner;-><init>(Landroid/content/Context;)V

    .line 2191
    .local v0, localMediaScanner:Lcom/zte/heartyservice/privacy/MediaScanner;
    const-string v1, "chenlu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scan start file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2192
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/zte/heartyservice/privacy/MediaScanner;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2193
    const-string v1, "chenlu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scan end file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    return-void
.end method

.method public static scanSdCard()V
    .locals 6

    .prologue
    .line 2316
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getExternalSD()Ljava/io/File;

    move-result-object v0

    .line 2317
    .local v0, externalSD:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 2318
    sget-object v1, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 2321
    :cond_0
    return-void
.end method

.method public static selectPhoneFromContact(Landroid/app/Activity;I)V
    .locals 3
    .parameter "activity"
    .parameter "requestCode"

    .prologue
    .line 5401
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5402
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 5404
    :try_start_0
    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5408
    :goto_0
    return-void

    .line 5405
    :catch_0
    move-exception v0

    .line 5406
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static selectPhonesFromContact(Landroid/app/Activity;I)V
    .locals 3
    .parameter "activity"
    .parameter "requestCode"

    .prologue
    .line 5391
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.contacts.action.GET_MULTIPLE_PHONES_SINGLE_LIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5394
    .local v1, intent:Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5398
    :goto_0
    return-void

    .line 5395
    :catch_0
    move-exception v0

    .line 5396
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-static {p0, p1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->selectPhoneFromContact(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method public static sendExitPrivacyImageVideoFileBroadcast()V
    .locals 2

    .prologue
    .line 3561
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->EXIT_PRICACYIMAGEVIDEOFILE_BROADCAST:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3562
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-virtual {v1, v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 3563
    return-void
.end method

.method public static sendExitPrivacySpaceBroadcast()V
    .locals 2

    .prologue
    .line 3556
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->EXIT_PRICACYSPACE_BROADCAST:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3557
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-virtual {v1, v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 3558
    return-void
.end method

.method public static sendSms(Ljava/lang/String;Ljava/lang/String;JI)Z
    .locals 33
    .parameter "phoneNumber"
    .parameter "message"
    .parameter "date"
    .parameter "subscription"

    .prologue
    .line 3328
    const-wide/16 v4, -0x1

    cmp-long v4, p2, v4

    if-nez v4, :cond_0

    .line 3329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    .line 3331
    :cond_0
    move/from16 v15, p4

    .line 3332
    .local v15, slotid:I
    invoke-static {}, Lcom/zte/heartyservice/msim/SimManager;->getInstance()Lcom/zte/heartyservice/msim/SimManager;

    move-result-object v31

    .line 3333
    .local v31, simManager:Lcom/zte/heartyservice/msim/SimManager;
    invoke-virtual/range {v31 .. v31}, Lcom/zte/heartyservice/msim/SimManager;->isMultiSim()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3334
    const/4 v4, -0x1

    if-eq v15, v4, :cond_2

    .line 3336
    const/4 v4, 0x2

    :try_start_0
    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v25, v0

    .line 3337
    .local v25, args:[Ljava/lang/Object;
    const/4 v4, 0x0

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v5

    aput-object v5, v25, v4

    .line 3338
    const/4 v4, 0x1

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v25, v4

    .line 3339
    const-string v4, "android.provider.Telephony$SIMInfo"

    const-string v5, "getSlotById"

    move-object/from16 v0, v25

    invoke-static {v4, v5, v0}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    .line 3343
    .end local v25           #args:[Ljava/lang/Object;
    :goto_0
    const/4 v4, 0x1

    if-gt v15, v4, :cond_1

    const/4 v4, -0x1

    if-ge v15, v4, :cond_2

    .line 3344
    :cond_1
    const/4 v15, -0x1

    .line 3352
    :cond_2
    :goto_1
    new-instance v30, Landroid/content/Intent;

    sget-object v4, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->SENT_SMS_ACTION:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "com.zte.heartyservice.privacy/"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    sget-object v9, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    const-class v10, Lcom/zte/heartyservice/privacy/SmsReceiver;

    move-object/from16 v0, v30

    invoke-direct {v0, v4, v5, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 3354
    .local v30, sentIntent:Landroid/content/Intent;
    new-instance v29, Landroid/os/Bundle;

    invoke-direct/range {v29 .. v29}, Landroid/os/Bundle;-><init>()V

    .line 3355
    .local v29, sentBundle:Landroid/os/Bundle;
    const-string v4, "number"

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3356
    const-string v4, "message"

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3357
    const-string v4, "date"

    move-object/from16 v0, v29

    move-wide/from16 v1, p2

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3358
    const-string v4, "info"

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3359
    sget-object v4, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v30

    invoke-static {v4, v5, v0, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 3361
    .local v13, sentPI:Landroid/app/PendingIntent;
    new-instance v27, Landroid/content/Intent;

    sget-object v4, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->DELIVERED_SMS_ACTION:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "com.zte.heartyservice.privacy/"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    sget-object v9, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    const-class v10, Lcom/zte/heartyservice/privacy/DeliverReceiver;

    move-object/from16 v0, v27

    invoke-direct {v0, v4, v5, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 3363
    .local v27, deliverIntent:Landroid/content/Intent;
    new-instance v26, Landroid/os/Bundle;

    invoke-direct/range {v26 .. v26}, Landroid/os/Bundle;-><init>()V

    .line 3364
    .local v26, deliverBundle:Landroid/os/Bundle;
    const-string v4, "number"

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3365
    const-string v4, "message"

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3366
    const-string v4, "date"

    move-object/from16 v0, v26

    move-wide/from16 v1, p2

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3367
    const-string v4, "info"

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3368
    sget-object v4, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v27

    invoke-static {v4, v5, v0, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    .line 3371
    .local v14, deliverPI:Landroid/app/PendingIntent;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x46

    if-le v4, v5, :cond_6

    const/4 v4, -0x1

    if-ne v15, v4, :cond_6

    .line 3372
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v3

    .line 3373
    .local v3, sms:Landroid/telephony/SmsManager;
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 3374
    .local v6, msgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v32

    .line 3375
    .local v32, size:I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3376
    .local v7, sentPIs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3377
    .local v8, deliverPIs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/16 v28, 0x0

    .local v28, i:I
    :goto_2
    add-int/lit8 v4, v32, -0x1

    move/from16 v0, v28

    if-ge v0, v4, :cond_4

    .line 3378
    const/4 v4, 0x0

    move/from16 v0, v28

    invoke-virtual {v7, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3379
    const/4 v4, 0x0

    move/from16 v0, v28

    invoke-virtual {v8, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3377
    add-int/lit8 v28, v28, 0x1

    goto :goto_2

    .line 3349
    .end local v3           #sms:Landroid/telephony/SmsManager;
    .end local v6           #msgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #sentPIs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .end local v8           #deliverPIs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .end local v13           #sentPI:Landroid/app/PendingIntent;
    .end local v14           #deliverPI:Landroid/app/PendingIntent;
    .end local v26           #deliverBundle:Landroid/os/Bundle;
    .end local v27           #deliverIntent:Landroid/content/Intent;
    .end local v28           #i:I
    .end local v29           #sentBundle:Landroid/os/Bundle;
    .end local v30           #sentIntent:Landroid/content/Intent;
    .end local v32           #size:I
    :cond_3
    const/4 v15, -0x1

    goto/16 :goto_1

    .line 3381
    .restart local v3       #sms:Landroid/telephony/SmsManager;
    .restart local v6       #msgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7       #sentPIs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .restart local v8       #deliverPIs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .restart local v13       #sentPI:Landroid/app/PendingIntent;
    .restart local v14       #deliverPI:Landroid/app/PendingIntent;
    .restart local v26       #deliverBundle:Landroid/os/Bundle;
    .restart local v27       #deliverIntent:Landroid/content/Intent;
    .restart local v28       #i:I
    .restart local v29       #sentBundle:Landroid/os/Bundle;
    .restart local v30       #sentIntent:Landroid/content/Intent;
    .restart local v32       #size:I
    :cond_4
    add-int/lit8 v4, v32, -0x1

    invoke-virtual {v7, v4, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3382
    add-int/lit8 v4, v32, -0x1

    invoke-virtual {v8, v4, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3383
    const/4 v5, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v3 .. v8}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 3389
    .end local v3           #sms:Landroid/telephony/SmsManager;
    .end local v6           #msgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #sentPIs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .end local v8           #deliverPIs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .end local v28           #i:I
    .end local v32           #size:I
    :goto_3
    const/4 v4, -0x1

    move/from16 v0, p4

    if-ne v0, v4, :cond_5

    .line 3390
    const/16 p4, 0x0

    .line 3393
    :cond_5
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v16

    const/16 v20, 0x1

    const/16 v21, 0x2

    const/16 v22, 0x0

    move-object/from16 v17, p0

    move-wide/from16 v18, p2

    move-object/from16 v23, p1

    move/from16 v24, p4

    invoke-virtual/range {v16 .. v24}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->insertSms(Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    return v4

    .line 3386
    :cond_6
    invoke-static {}, Lcom/zte/heartyservice/msim/SimManager;->getInstance()Lcom/zte/heartyservice/msim/SimManager;

    move-result-object v9

    const/4 v11, 0x0

    move-object/from16 v10, p0

    move-object/from16 v12, p1

    invoke-virtual/range {v9 .. v15}, Lcom/zte/heartyservice/msim/SimManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)Z

    goto :goto_3

    .line 3340
    .end local v13           #sentPI:Landroid/app/PendingIntent;
    .end local v14           #deliverPI:Landroid/app/PendingIntent;
    .end local v26           #deliverBundle:Landroid/os/Bundle;
    .end local v27           #deliverIntent:Landroid/content/Intent;
    .end local v29           #sentBundle:Landroid/os/Bundle;
    .end local v30           #sentIntent:Landroid/content/Intent;
    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method

.method public static setNetworkTrafficMonitorStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 466
    return-void
.end method

.method public static setPackageStoppedState(Ljava/lang/String;Z)V
    .locals 4
    .parameter "packageName"
    .parameter "stopped"

    .prologue
    .line 3869
    const-string v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 3873
    .local v1, mPm:Landroid/content/pm/IPackageManager;
    const/4 v2, 0x3

    :try_start_0
    new-array v0, v2, [Ljava/lang/Object;

    .line 3874
    .local v0, args:[Ljava/lang/Object;
    const/4 v2, 0x0

    aput-object p0, v0, v2

    .line 3875
    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v2

    .line 3876
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 3878
    const-string v2, "android.content.pm.IPackageManager"

    const-string v3, "setPackageStoppedState"

    invoke-static {v2, v1, v3, v0}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->Load(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3885
    .end local v0           #args:[Ljava/lang/Object;
    :goto_0
    const/4 v2, 0x2

    :try_start_1
    new-array v0, v2, [Ljava/lang/Object;

    .line 3886
    .restart local v0       #args:[Ljava/lang/Object;
    const/4 v2, 0x0

    aput-object p0, v0, v2

    .line 3887
    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v2

    .line 3889
    const-string v2, "android.content.pm.IPackageManager"

    const-string v3, "setPackageStoppedState"

    invoke-static {v2, v1, v3, v0}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->Load(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3893
    .end local v0           #args:[Ljava/lang/Object;
    :goto_1
    return-void

    .line 3890
    :catch_0
    move-exception v2

    goto :goto_1

    .line 3879
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public static setPermissionMonitorStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 486
    return-void
.end method

.method public static setSaveElectricityProtectorStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 535
    return-void
.end method

.method public static shareSms(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4
    .parameter "activity"
    .parameter "sms"

    .prologue
    .line 2302
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2303
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2304
    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2305
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2308
    :try_start_0
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->setOutIntent(Landroid/content/Intent;)V

    .line 2309
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2313
    :goto_0
    return-void

    .line 2310
    :catch_0
    move-exception v0

    .line 2311
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "shareSms"

    const-string v3, "shareSms failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static showAntiEavesdropTip()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x2

    .line 4816
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->isAntieavesdropEnable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4895
    .local v0, child:Landroid/view/View;
    .local v1, windowSize:Landroid/graphics/Point;
    .local v2, wmParams:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 4819
    .end local v0           #child:Landroid/view/View;
    .end local v1           #windowSize:Landroid/graphics/Point;
    .end local v2           #wmParams:Landroid/view/WindowManager$LayoutParams;
    :cond_1
    sget-object v3, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->antiEavesdropTip:Lcom/zte/heartyservice/common/ui/FloatFrame;

    if-nez v3, :cond_0

    .line 4820
    new-instance v3, Lcom/zte/heartyservice/common/ui/FloatFrame;

    sget-object v4, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    const-string v5, "AntiEavesdropTip"

    invoke-direct {v3, v4, v5, v7}, Lcom/zte/heartyservice/common/ui/FloatFrame;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/GestureDetector$OnGestureListener;)V

    sput-object v3, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->antiEavesdropTip:Lcom/zte/heartyservice/common/ui/FloatFrame;

    .line 4825
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 4826
    .restart local v1       #windowSize:Landroid/graphics/Point;
    sget-object v3, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 4829
    sget-object v3, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    const-string v4, "AntiEavesdropTip"

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getWmParams(Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 4834
    .restart local v2       #wmParams:Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x7d5

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4835
    const/4 v3, 0x1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 4838
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4853
    const/16 v3, 0x31

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 4855
    const-string v3, "StandardInterfaceUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SimManager.getInstance().isMultiSim()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/zte/heartyservice/msim/SimManager;->getInstance()Lcom/zte/heartyservice/msim/SimManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zte/heartyservice/msim/SimManager;->isMultiSim()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4856
    invoke-static {}, Lcom/zte/heartyservice/msim/SimManager;->getInstance()Lcom/zte/heartyservice/msim/SimManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/heartyservice/msim/SimManager;->isMultiSim()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4858
    iget v3, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v3, v3, 0x28

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 4861
    new-instance v3, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$4;

    invoke-direct {v3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$4;-><init>()V

    invoke-virtual {v3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$4;->start()V

    .line 4883
    :goto_1
    const/high16 v3, 0x3f80

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 4886
    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 4887
    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 4889
    sget-object v3, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->heartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    const v4, 0x7f03000b

    invoke-static {v3, v4, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 4890
    .restart local v0       #child:Landroid/view/View;
    sget-object v3, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->antiEavesdropTip:Lcom/zte/heartyservice/common/ui/FloatFrame;

    invoke-virtual {v3, v0}, Lcom/zte/heartyservice/common/ui/FloatFrame;->addView(Landroid/view/View;)V

    .line 4891
    sget-object v3, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->windowManager:Landroid/view/WindowManager;

    sget-object v4, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->antiEavesdropTip:Lcom/zte/heartyservice/common/ui/FloatFrame;

    invoke-interface {v3, v4, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4892
    sget-object v3, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->antiEavesdropWatchDog:Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;

    if-eqz v3, :cond_0

    .line 4893
    sget-object v3, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->antiEavesdropWatchDog:Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;

    invoke-virtual {v3}, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;->resumeWatch()V

    goto/16 :goto_0

    .line 4880
    .end local v0           #child:Landroid/view/View;
    :cond_2
    iget v3, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v3, v3, 0x28

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 4881
    iget v3, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v3, v3, 0x3

    mul-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_1
.end method

.method public static showImage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "name"

    .prologue
    .line 2227
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2228
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2230
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "image/*"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2232
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->setOutIntent(Landroid/content/Intent;)V

    .line 2234
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2238
    :goto_0
    return-void

    .line 2235
    :catch_0
    move-exception v0

    .line 2236
    .local v0, e:Ljava/lang/Exception;
    const v2, 0x7f0a066d

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static showVideo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "name"

    .prologue
    .line 2241
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2242
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2244
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "video/*"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2246
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->setOutIntent(Landroid/content/Intent;)V

    .line 2248
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2252
    :goto_0
    return-void

    .line 2249
    :catch_0
    move-exception v0

    .line 2250
    .local v0, e:Ljava/lang/Exception;
    const v2, 0x7f0a066d

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static startActivitySafe(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3960
    if-nez p1, :cond_0

    .line 3972
    :goto_0
    return-void

    .line 3963
    :cond_0
    if-nez p0, :cond_1

    .line 3964
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object p0

    .line 3965
    const/high16 v1, 0x1000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3968
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3969
    :catch_0
    move-exception v0

    .line 3970
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static stopService(Landroid/content/ComponentName;)V
    .locals 4
    .parameter "cn"

    .prologue
    .line 3774
    :try_start_0
    sget-object v2, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    .line 3775
    .local v1, setting:I
    const/4 v0, 0x1

    .line 3776
    .local v0, reverse:I
    packed-switch v1, :pswitch_data_0

    .line 3782
    const/4 v0, 0x1

    .line 3784
    :goto_0
    sget-object v2, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->packageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v0, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 3785
    sget-object v2, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->packageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v1, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3789
    .end local v0           #reverse:I
    .end local v1           #setting:I
    :goto_1
    return-void

    .line 3779
    .restart local v0       #reverse:I
    .restart local v1       #setting:I
    :pswitch_0
    const/4 v0, 0x2

    .line 3780
    goto :goto_0

    .line 3786
    .end local v0           #reverse:I
    .end local v1           #setting:I
    :catch_0
    move-exception v2

    goto :goto_1

    .line 3776
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static unzip(Ljava/io/File;Ljava/lang/String;J)V
    .locals 11
    .parameter "zipFile"
    .parameter "outputDirectory"
    .parameter "ot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const v10, 0xfa000

    const/4 v9, 0x0

    .line 1707
    new-instance v2, Ljava/util/zip/ZipInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v7}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1711
    .local v2, in:Ljava/util/zip/ZipInputStream;
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v6

    .line 1712
    .local v6, z:Ljava/util/zip/ZipEntry;
    :goto_0
    if-eqz v6, :cond_2

    .line 1713
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1714
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 1715
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1716
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1717
    .local v3, name:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1718
    new-instance v1, Ljava/io/File;

    .end local v1           #f:Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1719
    .restart local v1       #f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 1720
    invoke-virtual {v1, p2, p3}, Ljava/io/File;->setLastModified(J)Z

    .line 1735
    .end local v3           #name:Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v6

    .line 1736
    goto :goto_0

    .line 1722
    :cond_0
    new-instance v1, Ljava/io/File;

    .end local v1           #f:Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1723
    .restart local v1       #f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 1724
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1725
    .local v4, out:Ljava/io/FileOutputStream;
    new-array v0, v10, [B

    .line 1726
    .local v0, buffer:[B
    const/4 v5, -0x1

    .line 1727
    .local v5, read:I
    :goto_2
    invoke-virtual {v2, v0, v9, v10}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_1

    .line 1728
    invoke-virtual {v4, v0, v9, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_2

    .line 1730
    :cond_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 1731
    invoke-virtual {v1, p2, p3}, Ljava/io/File;->setLastModified(J)Z

    .line 1732
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->scanFileAsync(Ljava/lang/String;)V

    goto :goto_1

    .line 1737
    .end local v0           #buffer:[B
    .end local v1           #f:Ljava/io/File;
    .end local v4           #out:Ljava/io/FileOutputStream;
    .end local v5           #read:I
    :cond_2
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V

    .line 1738
    return-void
.end method

.method public static updateMaxHandledCallId()V
    .locals 9

    .prologue
    .line 2956
    sget-object v8, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->waitUpdateMaxHandledCallId:Ljava/lang/Object;

    monitor-enter v8

    .line 2957
    :try_start_0
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_id desc limit 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2959
    .local v7, cur:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 2960
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 2961
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2962
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 2963
    .local v6, _id:I
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->setMaxHandledCalllogId(I)V

    .line 2970
    .end local v6           #_id:I
    :cond_0
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2972
    :cond_1
    monitor-exit v8

    .line 2973
    return-void

    .line 2967
    :cond_2
    const/4 v6, -0x1

    .line 2968
    .restart local v6       #_id:I
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->setMaxHandledCalllogId(I)V

    goto :goto_0

    .line 2972
    .end local v6           #_id:I
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static updateMaxHandledSmsId()V
    .locals 9

    .prologue
    .line 2935
    sget-object v8, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->waitUpdateMaxHandledSmsId:Ljava/lang/Object;

    monitor-enter v8

    .line 2937
    :try_start_0
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_id desc limit 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2939
    .local v7, cur:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 2940
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 2941
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2942
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 2943
    .local v6, _id:I
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->setMaxHandledSmsId(I)V

    .line 2950
    .end local v6           #_id:I
    :cond_0
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2952
    :cond_1
    monitor-exit v8

    .line 2953
    return-void

    .line 2947
    :cond_2
    const/4 v6, -0x1

    .line 2948
    .restart local v6       #_id:I
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->setMaxHandledSmsId(I)V

    goto :goto_0

    .line 2952
    .end local v6           #_id:I
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static updatePrivateKeyStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "str"

    .prologue
    .line 3163
    const/4 v3, 0x0

    .line 3164
    .local v3, encodedKey:[B
    :try_start_0
    const-string v9, "AES"

    invoke-static {v9}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v7

    .line 3165
    .local v7, kgen:Ljavax/crypto/KeyGenerator;
    const/16 v9, 0x100

    new-instance v10, Ljava/security/SecureRandom;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPassword()Ljava/lang/String;

    move-result-object v11

    const-string v12, "ASCII"

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/security/SecureRandom;-><init>([B)V

    invoke-virtual {v7, v9, v10}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 3166
    invoke-virtual {v7}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v8

    .line 3167
    .local v8, skeySpec:Ljavax/crypto/SecretKey;
    const-string v9, "AES/CBC/PKCS5Padding"

    invoke-static {v9}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 3168
    .local v0, cip:Ljavax/crypto/Cipher;
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v9, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->IV:[B

    invoke-direct {v4, v9}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 3169
    .local v4, iv:Ljavax/crypto/spec/IvParameterSpec;
    const/4 v9, 0x2

    invoke-virtual {v0, v9, v8, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 3170
    const/4 v9, 0x2

    invoke-static {p0, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v9

    invoke-virtual {v0, v9}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 3171
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPassword()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getKeyByte(Ljava/lang/String;)[B

    move-result-object v5

    .line 3172
    .local v5, keyByte:[B
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string v9, "AES"

    invoke-direct {v6, v5, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 3173
    .local v6, keySpec:Ljavax/crypto/spec/SecretKeySpec;
    const-string v9, "AES/CBC/PKCS5Padding"

    invoke-static {v9}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 3174
    .local v1, cip2:Ljavax/crypto/Cipher;
    const/4 v9, 0x1

    invoke-virtual {v1, v9, v6, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 3175
    invoke-virtual {v1, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v9

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 3180
    .end local v0           #cip:Ljavax/crypto/Cipher;
    .end local v1           #cip2:Ljavax/crypto/Cipher;
    .end local v4           #iv:Ljavax/crypto/spec/IvParameterSpec;
    .end local v5           #keyByte:[B
    .end local v6           #keySpec:Ljavax/crypto/spec/SecretKeySpec;
    .end local v7           #kgen:Ljavax/crypto/KeyGenerator;
    .end local v8           #skeySpec:Ljavax/crypto/SecretKey;
    :goto_0
    return-object v9

    .line 3176
    :catch_0
    move-exception v2

    .line 3177
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 3180
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public static viewFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "name"

    .prologue
    const v8, 0x7f0a02b5

    const/4 v7, 0x0

    .line 2255
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2256
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2257
    const v5, 0x7f0a0425

    invoke-static {p0, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 2283
    :goto_0
    return-void

    .line 2262
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2263
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2264
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 2265
    .local v4, uri:Landroid/net/Uri;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v5

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2267
    .local v3, type:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2268
    invoke-static {p0, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2271
    :cond_1
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2273
    invoke-static {v2}, Lcom/zte/heartyservice/privacy/PasswordSetting;->setOutIntent(Landroid/content/Intent;)V

    .line 2275
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2276
    :catch_0
    move-exception v0

    .line 2278
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v2}, Lcom/zte/heartyservice/privacy/PasswordSetting;->setOutIntent(Landroid/content/Intent;)V

    .line 2279
    invoke-static {p0, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static writeKey2Str(Ljava/security/Key;Z)Ljava/lang/String;
    .locals 8
    .parameter "key"
    .parameter "needEncrypt"

    .prologue
    const/4 v6, 0x1

    .line 3137
    :try_start_0
    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    .line 3142
    .local v2, encodedKey:[B
    if-ne p1, v6, :cond_0

    .line 3146
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPassword()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getKeyByte(Ljava/lang/String;)[B

    move-result-object v4

    .line 3147
    .local v4, keyByte:[B
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string v6, "AES"

    invoke-direct {v5, v4, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 3148
    .local v5, skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    const-string v6, "AES/CBC/PKCS5Padding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 3149
    .local v0, cip:Ljavax/crypto/Cipher;
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v6, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->IV:[B

    invoke-direct {v3, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 3150
    .local v3, iv:Ljavax/crypto/spec/IvParameterSpec;
    const/4 v6, 0x1

    invoke-virtual {v0, v6, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 3151
    invoke-virtual {v0, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    .line 3158
    .end local v0           #cip:Ljavax/crypto/Cipher;
    .end local v2           #encodedKey:[B
    .end local v3           #iv:Ljavax/crypto/spec/IvParameterSpec;
    .end local v4           #keyByte:[B
    .end local v5           #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v6

    .line 3153
    .restart local v2       #encodedKey:[B
    :cond_0
    const/4 v6, 0x2

    invoke-static {v2, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 3155
    .end local v2           #encodedKey:[B
    :catch_0
    move-exception v1

    .line 3156
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "StandardInterfaceUtils"

    const-string v7, "writeKey2Str"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3158
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private static writeKey2Str(Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "key"
    .parameter "newPassword"

    .prologue
    .line 3302
    :try_start_0
    invoke-interface {p0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v1

    .line 3311
    .local v1, encodedKey:[B
    invoke-static {p1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getKeyByte(Ljava/lang/String;)[B

    move-result-object v3

    .line 3312
    .local v3, keyByte:[B
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "AES"

    invoke-direct {v4, v3, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 3313
    .local v4, skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    const-string v5, "AES/CBC/PKCS5Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 3314
    .local v0, cip:Ljavax/crypto/Cipher;
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v5, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->IV:[B

    invoke-direct {v2, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 3315
    .local v2, iv:Ljavax/crypto/spec/IvParameterSpec;
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 3316
    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 3321
    .end local v0           #cip:Ljavax/crypto/Cipher;
    .end local v1           #encodedKey:[B
    .end local v2           #iv:Ljavax/crypto/spec/IvParameterSpec;
    .end local v3           #keyByte:[B
    .end local v4           #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v5

    .line 3318
    :catch_0
    move-exception v5

    .line 3321
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private static zip(Ljava/io/File;Ljava/io/File;)V
    .locals 2
    .parameter "zipFile"
    .parameter "inputFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1681
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1682
    .local v0, out:Ljava/util/zip/ZipOutputStream;
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->zip(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)V

    .line 1683
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 1684
    return-void
.end method

.method private static zip(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)V
    .locals 8
    .parameter "out"
    .parameter "f"
    .parameter "base"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const v7, 0xfa000

    const/4 v6, 0x0

    .line 1687
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1688
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 1689
    .local v1, fl:[Ljava/io/File;
    new-instance v5, Ljava/util/zip/ZipEntry;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 1690
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    const-string p2, ""

    .line 1691
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v5, v1

    if-ge v2, v5, :cond_3

    .line 1692
    aget-object v5, v1, v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v2

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->zip(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)V

    .line 1691
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1690
    .end local v2           #i:I
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 1695
    .end local v1           #fl:[Ljava/io/File;
    :cond_1
    new-instance v5, Ljava/util/zip/ZipEntry;

    invoke-direct {v5, p2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 1696
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1697
    .local v3, in:Ljava/io/FileInputStream;
    new-array v0, v7, [B

    .line 1698
    .local v0, buffer:[B
    const/4 v4, -0x1

    .line 1699
    .local v4, read:I
    :goto_2
    invoke-virtual {v3, v0, v6, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 1700
    invoke-virtual {p0, v0, v6, v4}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_2

    .line 1702
    :cond_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 1704
    .end local v0           #buffer:[B
    .end local v3           #in:Ljava/io/FileInputStream;
    .end local v4           #read:I
    :cond_3
    return-void
.end method
