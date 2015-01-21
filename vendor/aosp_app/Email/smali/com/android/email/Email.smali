.class public Lcom/android/email/Email;
.super Landroid/app/Application;
.source "Email.java"


# static fields
.field public static final ATTACHMENT_MAX_NUMBER:I = 0x64

.field public static DEBUG:Z = false

.field public static DEBUG_EXCHANGE:Z = false

.field public static DEBUG_EXCHANGE_FILE:Z = false

.field public static DEBUG_EXCHANGE_VERBOSE:Z = false

.field public static final EDITVIEW_MAX_LENGTH_1:I = 0x100

.field public static final EDITVIEW_MAX_LENGTH_2:I = 0x3e8

.field public static final EDITVIEW_MAX_LENGTH_3:I = 0x3a98

.field public static final EDITVIEW_MAX_LENGTH_4:I = 0x2710

.field public static final RECIPIENT_MAX_NUMBER:I = 0xfa

.field public static final TAG:Ljava/lang/String; = "SpendTime"

.field public static final VISIBLE_LIMIT_DEFAULT:I = 0x19

.field public static final VISIBLE_LIMIT_INCREMENT:I = 0x19

.field private static sAccountsChangedNotification:Z

.field public static sDebugInhibitGraphicsAcceleration:Z

.field private static sMessageComposeInstanceCount:I

.field private static sMessageDecodeErrorString:Ljava/lang/String;

.field private static sUiThread:Ljava/lang/Thread;


# instance fields
.field private mTriedSetEncryption:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    sput-boolean v0, Lcom/android/email/Email;->sDebugInhibitGraphicsAcceleration:Z

    .line 86
    sput-boolean v0, Lcom/android/email/Email;->sAccountsChangedNotification:Z

    .line 90
    sput v0, Lcom/android/email/Email;->sMessageComposeInstanceCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/Email;->mTriedSetEncryption:Z

    return-void
.end method

.method public static addMessageComposeInstance()V
    .locals 1

    .prologue
    .line 147
    sget v0, Lcom/android/email/Email;->sMessageComposeInstanceCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/email/Email;->sMessageComposeInstanceCount:I

    .line 148
    return-void
.end method

.method public static enableStrictMode(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 378
    invoke-static {p0}, Lcom/android/emailcommon/utility/Utility;->enableStrictMode(Z)V

    .line 379
    return-void
.end method

.method public static getMessageDecodeErrorString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    sget-object v0, Lcom/android/email/Email;->sMessageDecodeErrorString:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/email/Email;->sMessageDecodeErrorString:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static declared-synchronized getNotifyUiAccountsChanged()Z
    .locals 2

    .prologue
    .line 360
    const-class v0, Lcom/android/email/Email;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/email/Email;->sAccountsChangedNotification:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 343
    const-string v0, "Email"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    return-void
.end method

.method public static removeMessageComposeInstance()V
    .locals 1

    .prologue
    .line 155
    sget v0, Lcom/android/email/Email;->sMessageComposeInstanceCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/email/Email;->sMessageComposeInstanceCount:I

    .line 156
    sget v0, Lcom/android/email/Email;->sMessageComposeInstanceCount:I

    if-nez v0, :cond_0

    .line 157
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/email/Email;->setNotifyUiAccountsChanged(Z)V

    .line 159
    :cond_0
    return-void
.end method

.method private setLoggingSwitches()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 393
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    .line 397
    .local v0, prefs:Lcom/android/email/Preferences;
    invoke-virtual {v0}, Lcom/android/email/Preferences;->getEnableDebugLogging()Z

    move-result v1

    sput-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    .line 398
    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    sput-boolean v1, Lcom/android/emailcommon/Logging;->DEBUG:Z

    .line 400
    invoke-virtual {v0}, Lcom/android/email/Preferences;->getEnableDebugLogging()Z

    move-result v1

    sput-boolean v1, Lcom/android/email/Email;->DEBUG_EXCHANGE:Z

    .line 401
    invoke-virtual {v0}, Lcom/android/email/Preferences;->getEnableExchangeLogging()Z

    move-result v1

    sput-boolean v1, Lcom/android/email/Email;->DEBUG_EXCHANGE_VERBOSE:Z

    .line 402
    invoke-virtual {v0}, Lcom/android/email/Preferences;->getEnableExchangeFileLogging()Z

    move-result v1

    sput-boolean v1, Lcom/android/email/Email;->DEBUG_EXCHANGE_FILE:Z

    .line 403
    invoke-virtual {v0}, Lcom/android/email/Preferences;->getInhibitGraphicsAcceleration()Z

    move-result v1

    sput-boolean v1, Lcom/android/email/Email;->sDebugInhibitGraphicsAcceleration:Z

    .line 404
    invoke-virtual {v0}, Lcom/android/email/Preferences;->getEnableStrictMode()Z

    move-result v1

    invoke-static {v1}, Lcom/android/email/Email;->enableStrictMode(Z)V

    .line 407
    invoke-virtual {v0}, Lcom/android/email/Preferences;->getEnableVerboseLogging()Z

    move-result v1

    sput-boolean v1, Lcom/android/emailcommon/Logging;->LOGD:Z

    .line 408
    invoke-virtual {v0}, Lcom/android/email/Preferences;->getEnablePerformanceLogging()Z

    move-result v1

    sput-boolean v1, Lcom/android/emailcommon/Logging;->LOG_PERFORMANCE:Z

    .line 409
    invoke-virtual {v0}, Lcom/android/email/Preferences;->getEnableServiceProxyLogging()Z

    move-result v1

    sput-boolean v1, Lcom/android/emailcommon/Logging;->LOG_SERVICEPROXY:Z

    .line 410
    invoke-virtual {v0}, Lcom/android/email/Preferences;->getEnableLifecycleLogging()Z

    move-result v1

    sput-boolean v1, Lcom/android/emailcommon/Logging;->LOG_LIFECYCLE:Z

    .line 411
    invoke-virtual {v0}, Lcom/android/email/Preferences;->getEnableRefreshLogging()Z

    move-result v1

    sput-boolean v1, Lcom/android/emailcommon/Logging;->LOG_REFRESH:Z

    .line 412
    invoke-virtual {v0}, Lcom/android/email/Preferences;->getEnableFragmentLogging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    invoke-static {v2}, Landroid/app/FragmentManager;->enableDebugLogging(Z)V

    .line 414
    sput-boolean v2, Lcom/android/emailcommon/Logging;->LOG_FRAGMENT:Z

    .line 417
    :cond_0
    return-void
.end method

.method public static declared-synchronized setNotifyUiAccountsChanged(Z)V
    .locals 2
    .parameter "setFlag"

    .prologue
    .line 352
    const-class v0, Lcom/android/email/Email;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/android/email/Email;->sAccountsChangedNotification:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    monitor-exit v0

    return-void

    .line 352
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static setServicesEnabled(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "enabled"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 189
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 190
    .local v0, pm:Landroid/content/pm/PackageManager;
    if-nez p1, :cond_0

    new-instance v1, Landroid/content/ComponentName;

    const-class v4, Lcom/android/email/service/MailService;

    invoke-direct {v1, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 197
    invoke-static {p0}, Lcom/android/email/service/MailService;->actionReschedule(Landroid/content/Context;)V

    .line 199
    invoke-static {p0}, Lcom/android/email/service/MailService;->actionCancelClearOldAttachment(Landroid/content/Context;)V

    .line 202
    :cond_0
    new-instance v4, Landroid/content/ComponentName;

    const-class v1, Lcom/android/email/activity/ShortcutPicker;

    invoke-direct {v4, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {v0, v4, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 207
    new-instance v4, Landroid/content/ComponentName;

    const-class v1, Lcom/android/email/service/MailService;

    invoke-direct {v4, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {v0, v4, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 212
    new-instance v1, Landroid/content/ComponentName;

    const-class v4, Lcom/android/email/service/AttachmentDownloadService;

    invoke-direct {v1, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_1

    move v3, v2

    :cond_1
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 217
    if-eqz p1, :cond_2

    new-instance v1, Landroid/content/ComponentName;

    const-class v3, Lcom/android/email/service/MailService;

    invoke-direct {v1, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 224
    invoke-static {p0}, Lcom/android/email/service/MailService;->actionReschedule(Landroid/content/Context;)V

    .line 226
    invoke-static {p0}, Lcom/android/email/service/MailService;->actionRescheduleClearOldAttachment(Landroid/content/Context;)V

    .line 233
    :cond_2
    new-instance v1, Landroid/content/ComponentName;

    const-class v3, Lcom/android/email/widget/WidgetConfiguration;

    invoke-direct {v1, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 239
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/email/service/AttachmentDownloadService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, p0, v1}, Lcom/android/email/Email;->startOrStopService(ZLandroid/content/Context;Landroid/content/Intent;)V

    .line 240
    invoke-static {p0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/email/NotificationController;->watchForMessages(Z)V

    .line 241
    return-void

    :cond_3
    move v1, v3

    .line 202
    goto :goto_0

    :cond_4
    move v1, v3

    .line 207
    goto :goto_1
.end method

.method public static setServicesEnabledAsync(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 123
    new-instance v0, Lcom/android/email/Email$1;

    invoke-direct {v0, p0}, Lcom/android/email/Email$1;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 131
    return-void
.end method

.method public static setServicesEnabledSync(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    .line 172
    const/4 v6, 0x0

    .line 174
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Account;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 178
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v7, 0x1

    .line 179
    .local v7, enable:Z
    :goto_0
    invoke-static {p0, v7}, Lcom/android/email/Email;->setServicesEnabled(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    if-eqz v6, :cond_0

    .line 183
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    return v7

    .line 178
    .end local v7           #enable:Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 182
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 183
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private static startOrStopService(ZLandroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "enabled"
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 270
    if-eqz p0, :cond_0

    .line 271
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 275
    :goto_0
    return-void

    .line 273
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static updateLoggingFlags(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    .line 321
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v6

    .line 322
    .local v6, prefs:Lcom/android/email/Preferences;
    invoke-virtual {v6}, Lcom/android/email/Preferences;->getEnableDebugLogging()Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v1, 0x1

    .line 323
    .local v1, debugLogging:I
    :goto_0
    invoke-virtual {v6}, Lcom/android/email/Preferences;->getEnableExchangeLogging()Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v4, 0x2

    .line 325
    .local v4, parserLogging:I
    :goto_1
    invoke-virtual {v6}, Lcom/android/email/Preferences;->getEnableExchangeFileLogging()Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v3, 0x4

    .line 327
    .local v3, fileLogging:I
    :goto_2
    invoke-virtual {v6}, Lcom/android/email/Preferences;->getEnableStrictMode()Z

    move-result v9

    if-eqz v9, :cond_3

    const/16 v2, 0x8

    .line 329
    .local v2, enableStrictMode:I
    :goto_3
    invoke-virtual {v6}, Lcom/android/email/Preferences;->getEnableVerboseLogging()Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v7, 0x10

    .line 331
    .local v7, verboseLogging:I
    :goto_4
    invoke-virtual {v6}, Lcom/android/email/Preferences;->getEnablePerformanceLogging()Z

    move-result v9

    if-eqz v9, :cond_5

    const/16 v5, 0x20

    .line 333
    .local v5, performanceLogging:I
    :goto_5
    or-int v8, v1, v4

    or-int/2addr v8, v3

    or-int/2addr v8, v2

    or-int/2addr v8, v7

    or-int v0, v8, v5

    .line 335
    .local v0, debugBits:I
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/android/email/Controller;->serviceLogging(I)V

    .line 336
    return-void

    .end local v0           #debugBits:I
    .end local v1           #debugLogging:I
    .end local v2           #enableStrictMode:I
    .end local v3           #fileLogging:I
    .end local v4           #parserLogging:I
    .end local v5           #performanceLogging:I
    .end local v7           #verboseLogging:I
    :cond_0
    move v1, v8

    .line 322
    goto :goto_0

    .restart local v1       #debugLogging:I
    :cond_1
    move v4, v8

    .line 323
    goto :goto_1

    .restart local v4       #parserLogging:I
    :cond_2
    move v3, v8

    .line 325
    goto :goto_2

    .restart local v3       #fileLogging:I
    :cond_3
    move v2, v8

    .line 327
    goto :goto_3

    .restart local v2       #enableStrictMode:I
    :cond_4
    move v7, v8

    .line 329
    goto :goto_4

    .restart local v7       #verboseLogging:I
    :cond_5
    move v5, v8

    .line 331
    goto :goto_5
.end method

.method private updateUnreadMail(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 249
    new-instance v0, Lcom/android/email/Email$2;

    invoke-direct {v0, p0, p1}, Lcom/android/email/Email$2;-><init>(Lcom/android/email/Email;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 261
    return-void
.end method

.method public static warnIfUiThread()V
    .locals 4

    .prologue
    .line 364
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/android/email/Email;->sUiThread:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    const-string v0, "Email"

    const-string v1, "Method called on the UI thread"

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "STACK TRACE"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 367
    :cond_0
    return-void
.end method


# virtual methods
.method public isTriedSetEncryption()Z
    .locals 1

    .prologue
    .line 382
    iget-boolean v0, p0, Lcom/android/email/Email;->mTriedSetEncryption:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 139
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 140
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/email/extension/OPExtensionFactory;->resetAllPluginObject(Landroid/content/Context;)V

    .line 141
    return-void
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 279
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 280
    .local v0, startTime:J
    const-string v2, "SpendTime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EmailApp onCreate() start time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 282
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    sput-object v2, Lcom/android/email/Email;->sUiThread:Ljava/lang/Thread;

    .line 285
    invoke-direct {p0}, Lcom/android/email/Email;->setLoggingSwitches()V

    .line 287
    invoke-static {p0}, Lcom/android/emailcommon/TempDirectory;->setTempDirectory(Landroid/content/Context;)V

    .line 290
    invoke-static {p0}, Lcom/android/email/RefreshManager;->getInstance(Landroid/content/Context;)Lcom/android/email/RefreshManager;

    .line 292
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/Controller;->resetVisibleLimits()V

    .line 295
    invoke-static {p0}, Lcom/android/email/Email;->updateLoggingFlags(Landroid/content/Context;)V

    .line 298
    const v2, 0x7f080112

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/email/Email;->sMessageDecodeErrorString:Ljava/lang/String;

    .line 302
    invoke-static {p0}, Lcom/android/email/Email;->setServicesEnabledAsync(Landroid/content/Context;)V

    .line 304
    const-string v2, "updateAllEmailWidgets"

    invoke-static {v2}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 305
    invoke-static {}, Lcom/android/email/widget/WidgetManager;->getInstance()Lcom/android/email/widget/WidgetManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/email/widget/WidgetManager;->updateAllEmailWidgets(Landroid/content/Context;)V

    .line 308
    invoke-direct {p0, p0}, Lcom/android/email/Email;->updateUnreadMail(Landroid/content/Context;)V

    .line 310
    invoke-static {p0}, Lcom/mediatek/email/emailvip/VipMemberCache;->init(Landroid/content/Context;)V

    .line 312
    const-string v2, "SpendTime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EmailApp onCreate() end time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v2, "SpendTime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EmailApp onCreate() spend time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method public setTriedSetEncryptionFlag(Z)V
    .locals 0
    .parameter "triedSetEncryption"

    .prologue
    .line 386
    iput-boolean p1, p0, Lcom/android/email/Email;->mTriedSetEncryption:Z

    .line 387
    return-void
.end method
