.class public Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor$LocListener;
    }
.end annotation


# static fields
.field public static final EGETING_LOCATION:S = 0x5s

.field public static final ETaskDone:S = 0x0s

.field public static final ETaskFail:S = 0x1s

.field public static final TAG:Ljava/lang/String; = "AntitheftCommandExecutor"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private tJ:Ltmsdk/bg/module/antitheft/IAntitheftCommandExecutorObserver;

.field private tK:Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor$LocListener;

.field private tL:Ltmsdk/bg/module/antitheft/AntitheftLocator;

.field private tM:Ltmsdk/common/module/antitheft/AntitheftCommand;


# direct methods
.method public constructor <init>(Ltmsdk/bg/module/antitheft/IAntitheftCommandExecutorObserver;Landroid/content/Context;)V
    .locals 2
    .parameter "observer"
    .parameter "context"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->mHandler:Landroid/os/Handler;

    .line 66
    iput-object p1, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->tJ:Ltmsdk/bg/module/antitheft/IAntitheftCommandExecutorObserver;

    .line 67
    iput-object p2, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->mContext:Landroid/content/Context;

    .line 68
    new-instance v0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor$1;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor$1;-><init>(Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;Landroid/os/Looper;)V

    iput-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->mHandler:Landroid/os/Handler;

    .line 80
    return-void
.end method

.method static synthetic a(Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->ej()V

    return-void
.end method

.method static synthetic a(Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;Ltmsdk/common/module/antitheft/AntitheftCommand;SDDD)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 38
    invoke-direct/range {p0 .. p8}, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->a(Ltmsdk/common/module/antitheft/AntitheftCommand;SDDD)V

    return-void
.end method

.method private a(Ltmsdk/common/module/antitheft/AntitheftCommand;SDDD)V
    .locals 3
    .parameter "action"
    .parameter "result"
    .parameter "aLongtitute"
    .parameter "aLatitute"
    .parameter "accuracy"

    .prologue
    .line 247
    new-instance v0, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter$AntitheftCommandReporterArgs;

    invoke-direct {v0}, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter$AntitheftCommandReporterArgs;-><init>()V

    .line 248
    .local v0, args:Ltmsdk/bg/module/antitheft/AntitheftCommandReporter$AntitheftCommandReporterArgs;
    iput-object p1, v0, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter$AntitheftCommandReporterArgs;->mAction:Ltmsdk/common/module/antitheft/AntitheftCommand;

    .line 249
    iget-object v2, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->tJ:Ltmsdk/bg/module/antitheft/IAntitheftCommandExecutorObserver;

    invoke-interface {v2}, Ltmsdk/bg/module/antitheft/IAntitheftCommandExecutorObserver;->isReleaseVersion()Z

    move-result v2

    iput-boolean v2, v0, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter$AntitheftCommandReporterArgs;->mIsReleaseVersion:Z

    .line 250
    iput-short p2, v0, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter$AntitheftCommandReporterArgs;->mResult:S

    .line 251
    iput-wide p5, v0, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter$AntitheftCommandReporterArgs;->aLatitute:D

    .line 252
    iput-wide p3, v0, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter$AntitheftCommandReporterArgs;->mLongtitute:D

    .line 253
    iput-wide p7, v0, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter$AntitheftCommandReporterArgs;->accuracy:D

    .line 254
    new-instance v1, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter;

    iget-object v2, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter;-><init>(Ltmsdk/bg/module/antitheft/AntitheftCommandReporter$AntitheftCommandReporterArgs;Landroid/content/Context;)V

    .line 255
    .local v1, reporter:Ltmsdk/bg/module/antitheft/AntitheftCommandReporter;
    invoke-virtual {v1}, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter;->replyServer()V

    .line 256
    return-void
.end method

.method private static a(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 7
    .parameter
    .parameter "candidate"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 341
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 342
    .local v5, temp:Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 343
    const/4 v4, 0x1

    .line 359
    .end local v5           #temp:Ljava/lang/String;
    :goto_0
    return v4

    .line 345
    .restart local v5       #temp:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    .line 347
    .local v4, isMatch:Z
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, cannonicalPath1:Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, cannonicalPath2:Ljava/lang/String;
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 350
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 355
    .end local v0           #cannonicalPath1:Ljava/lang/String;
    .end local v1           #cannonicalPath2:Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz v4, :cond_0

    goto :goto_0

    .line 352
    :catch_0
    move-exception v2

    .line 353
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 359
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #isMatch:Z
    .end local v5           #temp:Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method static synthetic b(Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private bg(I)V
    .locals 2
    .parameter "cmd"

    .prologue
    .line 186
    iget-object v1, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 187
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 188
    return-void
.end method

.method static synthetic c(Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;)Ltmsdk/common/module/antitheft/AntitheftCommand;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->tM:Ltmsdk/common/module/antitheft/AntitheftCommand;

    return-object v0
.end method

.method public static checkCard()I
    .locals 1

    .prologue
    .line 368
    invoke-static {}, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->hasStorageCard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    const/4 v0, 0x1

    .line 374
    :goto_0
    return v0

    .line 371
    :cond_0
    invoke-static {}, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->hasStorageCardReadWritePermission()Z

    move-result v0

    if-nez v0, :cond_1

    .line 372
    const/4 v0, 0x2

    goto :goto_0

    .line 374
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;)Ltmsdk/bg/module/antitheft/IAntitheftCommandExecutorObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->tJ:Ltmsdk/bg/module/antitheft/IAntitheftCommandExecutorObserver;

    return-object v0
.end method

.method private eh()V
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->tM:Ltmsdk/common/module/antitheft/AntitheftCommand;

    iget-boolean v0, v0, Ltmsdk/common/module/antitheft/AntitheftCommand;->mIsFromWebServer:Z

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->tM:Ltmsdk/common/module/antitheft/AntitheftCommand;

    iget-object v0, v0, Ltmsdk/common/module/antitheft/AntitheftCommand;->mRemotePhoneNum:Ljava/lang/String;

    iget-object v1, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->tJ:Ltmsdk/bg/module/antitheft/IAntitheftCommandExecutorObserver;

    invoke-interface {v1}, Ltmsdk/bg/module/antitheft/IAntitheftCommandExecutorObserver;->tips4DeletingData()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Ltmsdk/common/utils/SMSUtil;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor$2;

    invoke-direct {v1, p0}, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor$2;-><init>(Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 170
    return-void
.end method

.method private ei()V
    .locals 9

    .prologue
    const-wide/16 v3, 0x0

    .line 177
    iget-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->tJ:Ltmsdk/bg/module/antitheft/IAntitheftCommandExecutorObserver;

    invoke-interface {v0}, Ltmsdk/bg/module/antitheft/IAntitheftCommandExecutorObserver;->LockPhoneScreen()Z

    .line 179
    iget-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->tM:Ltmsdk/common/module/antitheft/AntitheftCommand;

    iget-boolean v0, v0, Ltmsdk/common/module/antitheft/AntitheftCommand;->mIsFromWebServer:Z

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->tM:Ltmsdk/common/module/antitheft/AntitheftCommand;

    iget-object v0, v0, Ltmsdk/common/module/antitheft/AntitheftCommand;->mRemotePhoneNum:Ljava/lang/String;

    iget-object v1, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->tJ:Ltmsdk/bg/module/antitheft/IAntitheftCommandExecutorObserver;

    invoke-interface {v1}, Ltmsdk/bg/module/antitheft/IAntitheftCommandExecutorObserver;->tips4LockPhoneSuccess()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Ltmsdk/common/utils/SMSUtil;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 183
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v1, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->tM:Ltmsdk/common/module/antitheft/AntitheftCommand;

    const/4 v2, 0x0

    move-object v0, p0

    move-wide v5, v3

    move-wide v7, v3

    invoke-direct/range {v0 .. v8}, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->a(Ltmsdk/common/module/antitheft/AntitheftCommand;SDDD)V

    goto :goto_0
.end method

.method private ej()V
    .locals 3

    .prologue
    .line 195
    const-string v0, "AntitheftCommandExecutor"

    const-string v1, "start getLocate"

    invoke-static {v0, v1}, Ltmsdk/common/utils/Log;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    invoke-direct {p0}, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->ek()Z

    .line 197
    invoke-direct {p0}, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->el()Z

    .line 198
    iget-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->tK:Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor$LocListener;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor$LocListener;

    invoke-direct {v0, p0}, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor$LocListener;-><init>(Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;)V

    iput-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->tK:Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor$LocListener;

    .line 201
    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->tL:Ltmsdk/bg/module/antitheft/AntitheftLocator;

    if-nez v0, :cond_1

    .line 202
    new-instance v0, Ltmsdk/bg/module/antitheft/AntitheftLocator;

    iget-object v1, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->tK:Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor$LocListener;

    iget-object v2, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Ltmsdk/bg/module/antitheft/AntitheftLocator;-><init>(Ltmsdk/bg/module/antitheft/AntitheftLocatorObserver;Landroid/content/Context;)V

    iput-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->tL:Ltmsdk/bg/module/antitheft/AntitheftLocator;

    .line 205
    :cond_1
    iget-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->tL:Ltmsdk/bg/module/antitheft/AntitheftLocator;

    const-wide/high16 v1, 0x403e

    invoke-virtual {v0, v1, v2}, Ltmsdk/bg/module/antitheft/AntitheftLocator;->startAccurateLocate(D)V

    .line 206
    return-void
.end method

.method private ek()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 209
    iget-object v5, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "location_providers_allowed"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, str:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v5, "gps"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 223
    :goto_0
    return v3

    .line 213
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 214
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "com.android.settings"

    const-string v6, "com.android.settings.widget.SettingsAppWidgetProvider"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    const-string v5, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    const-string v5, "custom:3"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 218
    :try_start_0
    iget-object v5, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, e:Landroid/app/PendingIntent$CanceledException;
    const-string v3, "AntitheftCommandExecutor"

    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Ltmsdk/common/utils/Log;->f(Ljava/lang/String;Ljava/lang/Object;)V

    move v3, v4

    .line 221
    goto :goto_0
.end method

.method private el()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 228
    const-class v2, Ltmsdk/common/module/netsetting/NetSettingManager;

    invoke-static {v2}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v1

    check-cast v1, Ltmsdk/common/module/netsetting/NetSettingManager;

    .line 229
    .local v1, networkManager:Ltmsdk/common/module/netsetting/NetSettingManager;
    const/4 v0, 0x1

    .line 230
    .local v0, flag:Z
    invoke-virtual {v1}, Ltmsdk/common/module/netsetting/NetSettingManager;->getMobileDataConnectivity()Z

    move-result v2

    if-nez v2, :cond_0

    .line 231
    invoke-virtual {v1, v3}, Ltmsdk/common/module/netsetting/NetSettingManager;->setMobileDataConnectivity(Z)Z

    move-result v2

    or-int/2addr v0, v2

    .line 233
    :cond_0
    invoke-virtual {v1}, Ltmsdk/common/module/netsetting/NetSettingManager;->isWifiActive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 234
    invoke-virtual {v1, v3}, Ltmsdk/common/module/netsetting/NetSettingManager;->setWifiEnabled(Z)Z

    move-result v2

    or-int/2addr v0, v2

    .line 236
    :cond_1
    return v0
.end method

.method public static getStorageDirectories()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 421
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 422
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->checkCard()I

    move-result v7

    if-nez v7, :cond_0

    .line 423
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 424
    .local v5, sd:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 425
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    .end local v5           #sd:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 430
    .local v0, bufReader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    const-string v8, "/proc/mounts"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 432
    .end local v0           #bufReader:Ljava/io/BufferedReader;
    .local v1, bufReader:Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, line:Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 433
    const-string v7, "vfat"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "exfat"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "/mnt"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "fuse"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 435
    :cond_2
    const-string v7, "\\s+"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 436
    .local v6, seg:[Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 437
    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-static {v4, v7}, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->a(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 438
    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 451
    .end local v3           #line:Ljava/lang/String;
    .end local v6           #seg:[Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 452
    .end local v1           #bufReader:Ljava/io/BufferedReader;
    .restart local v0       #bufReader:Ljava/io/BufferedReader;
    .local v2, e:Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 454
    if-eqz v0, :cond_3

    .line 456
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 462
    .end local v2           #e:Ljava/lang/Exception;
    :cond_3
    :goto_2
    return-object v4

    .line 440
    .end local v0           #bufReader:Ljava/io/BufferedReader;
    .restart local v1       #bufReader:Ljava/io/BufferedReader;
    .restart local v3       #line:Ljava/lang/String;
    .restart local v6       #seg:[Ljava/lang/String;
    :cond_4
    :try_start_4
    const-string v7, "/dev/block/vold"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 441
    const-string v7, "/mnt/secure"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "/mnt/asec"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "/mnt/obb"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "/dev/mapper"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "tmpfs"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 442
    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-static {v4, v7}, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->a(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 443
    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 454
    .end local v3           #line:Ljava/lang/String;
    .end local v6           #seg:[Ljava/lang/String;
    :catchall_0
    move-exception v7

    move-object v0, v1

    .end local v1           #bufReader:Ljava/io/BufferedReader;
    .restart local v0       #bufReader:Ljava/io/BufferedReader;
    :goto_3
    if-eqz v0, :cond_5

    .line 456
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 459
    :cond_5
    :goto_4
    throw v7

    .line 449
    .end local v0           #bufReader:Ljava/io/BufferedReader;
    .restart local v1       #bufReader:Ljava/io/BufferedReader;
    .restart local v3       #line:Ljava/lang/String;
    :cond_6
    :try_start_6
    invoke-static {v4}, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->r(Ljava/util/ArrayList;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 454
    if-eqz v1, :cond_7

    .line 456
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_7
    :goto_5
    move-object v0, v1

    .line 459
    .end local v1           #bufReader:Ljava/io/BufferedReader;
    .restart local v0       #bufReader:Ljava/io/BufferedReader;
    goto :goto_2

    .line 457
    .end local v0           #bufReader:Ljava/io/BufferedReader;
    .restart local v1       #bufReader:Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    .line 458
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 457
    .end local v1           #bufReader:Ljava/io/BufferedReader;
    .end local v3           #line:Ljava/lang/String;
    .restart local v0       #bufReader:Ljava/io/BufferedReader;
    .local v2, e:Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 458
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 457
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 458
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 454
    .end local v2           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v7

    goto :goto_3

    .line 451
    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method public static hasStorageCard()Z
    .locals 2

    .prologue
    .line 382
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static hasStorageCardReadWritePermission()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 392
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/DCIM"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 393
    .local v1, directoryName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 394
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_1

    .line 395
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_1

    .line 411
    :cond_0
    :goto_0
    return v4

    .line 399
    :cond_1
    new-instance v3, Ljava/io/File;

    const-string v5, ".probe"

    invoke-direct {v3, v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    .local v3, f:Ljava/io/File;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 403
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 405
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 408
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    const/4 v4, 0x1

    goto :goto_0

    .line 410
    :catch_0
    move-exception v2

    .line 411
    .local v2, ex:Ljava/io/IOException;
    goto :goto_0
.end method

.method private static r(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 514
    .local p0, mountPoints:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 526
    :cond_0
    return-void

    .line 517
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 519
    :goto_1
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 520
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 517
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public exeAntitheftCommand(Ltmsdk/common/module/antitheft/AntitheftCommand;)V
    .locals 4
    .parameter "command"

    .prologue
    const/4 v3, 0x1

    .line 83
    const-string v0, "AntitheftCommandExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeCommand:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Ltmsdk/common/module/antitheft/AntitheftCommand;->mTaskType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltmsdk/common/utils/Log;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    iput-object p1, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->tM:Ltmsdk/common/module/antitheft/AntitheftCommand;

    .line 85
    iget-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->tM:Ltmsdk/common/module/antitheft/AntitheftCommand;

    iget v0, v0, Ltmsdk/common/module/antitheft/AntitheftCommand;->mTaskType:I

    packed-switch v0, :pswitch_data_0

    .line 116
    :goto_0
    return-void

    .line 87
    :pswitch_0
    invoke-direct {p0}, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->eh()V

    .line 89
    const v0, 0x1d4ca

    invoke-static {v0, v3}, Ltmsdkobf/im;->a(II)V

    goto :goto_0

    .line 93
    :pswitch_1
    const v0, 0x1d4cb

    invoke-static {v0, v3}, Ltmsdkobf/im;->a(II)V

    .line 94
    invoke-direct {p0}, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->ei()V

    goto :goto_0

    .line 101
    :pswitch_2
    iget-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->tM:Ltmsdk/common/module/antitheft/AntitheftCommand;

    iget v0, v0, Ltmsdk/common/module/antitheft/AntitheftCommand;->mTaskType:I

    invoke-direct {p0, v0}, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->bg(I)V

    goto :goto_0

    .line 104
    :pswitch_3
    iget-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->tM:Ltmsdk/common/module/antitheft/AntitheftCommand;

    iget-object v0, v0, Ltmsdk/common/module/antitheft/AntitheftCommand;->mRemotePhoneNum:Ljava/lang/String;

    iget-object v1, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->tJ:Ltmsdk/bg/module/antitheft/IAntitheftCommandExecutorObserver;

    invoke-interface {v1}, Ltmsdk/bg/module/antitheft/IAntitheftCommandExecutorObserver;->tips4GetPasswordSuccess()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Ltmsdk/common/utils/SMSUtil;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 107
    :pswitch_4
    iget-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->tM:Ltmsdk/common/module/antitheft/AntitheftCommand;

    iget-object v0, v0, Ltmsdk/common/module/antitheft/AntitheftCommand;->mRemotePhoneNum:Ljava/lang/String;

    iget-object v1, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->tJ:Ltmsdk/bg/module/antitheft/IAntitheftCommandExecutorObserver;

    invoke-interface {v1}, Ltmsdk/bg/module/antitheft/IAntitheftCommandExecutorObserver;->tips4PasswordError()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Ltmsdk/common/utils/SMSUtil;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 110
    :pswitch_5
    iget-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->tM:Ltmsdk/common/module/antitheft/AntitheftCommand;

    iget-object v0, v0, Ltmsdk/common/module/antitheft/AntitheftCommand;->mRemotePhoneNum:Ljava/lang/String;

    iget-object v1, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->tJ:Ltmsdk/bg/module/antitheft/IAntitheftCommandExecutorObserver;

    invoke-interface {v1}, Ltmsdk/bg/module/antitheft/IAntitheftCommandExecutorObserver;->tips4GetPasswordFailed()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Ltmsdk/common/utils/SMSUtil;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 113
    :pswitch_6
    invoke-virtual {p0, p1}, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->reportSIMChangeToServer(Ltmsdk/common/module/antitheft/AntitheftCommand;)V

    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public reportSIMChangeToServer(Ltmsdk/common/module/antitheft/AntitheftCommand;)V
    .locals 5
    .parameter "command"

    .prologue
    const-wide/16 v3, 0x0

    .line 263
    new-instance v0, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter$AntitheftCommandReporterArgs;

    invoke-direct {v0}, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter$AntitheftCommandReporterArgs;-><init>()V

    .line 264
    .local v0, args:Ltmsdk/bg/module/antitheft/AntitheftCommandReporter$AntitheftCommandReporterArgs;
    iput-object p1, v0, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter$AntitheftCommandReporterArgs;->mAction:Ltmsdk/common/module/antitheft/AntitheftCommand;

    .line 265
    iget-object v2, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->tJ:Ltmsdk/bg/module/antitheft/IAntitheftCommandExecutorObserver;

    invoke-interface {v2}, Ltmsdk/bg/module/antitheft/IAntitheftCommandExecutorObserver;->isReleaseVersion()Z

    move-result v2

    iput-boolean v2, v0, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter$AntitheftCommandReporterArgs;->mIsReleaseVersion:Z

    .line 266
    const/4 v2, 0x0

    iput-short v2, v0, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter$AntitheftCommandReporterArgs;->mResult:S

    .line 267
    iput-wide v3, v0, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter$AntitheftCommandReporterArgs;->aLatitute:D

    .line 268
    iput-wide v3, v0, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter$AntitheftCommandReporterArgs;->mLongtitute:D

    .line 269
    iput-wide v3, v0, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter$AntitheftCommandReporterArgs;->accuracy:D

    .line 270
    new-instance v1, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter;

    iget-object v2, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter;-><init>(Ltmsdk/bg/module/antitheft/AntitheftCommandReporter$AntitheftCommandReporterArgs;Landroid/content/Context;)V

    .line 271
    .local v1, reporter:Ltmsdk/bg/module/antitheft/AntitheftCommandReporter;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ltmsdk/bg/module/antitheft/AntitheftCommandReporter;->replyServer(Z)V

    .line 272
    return-void
.end method
