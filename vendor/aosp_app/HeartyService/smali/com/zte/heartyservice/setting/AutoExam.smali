.class public Lcom/zte/heartyservice/setting/AutoExam;
.super Ljava/lang/Object;
.source "AutoExam.java"


# static fields
.field private static final COUNT_ALL:I = 0x8

.field private static mInstance:Lcom/zte/heartyservice/setting/AutoExam;


# instance fields
.field private appCache:I

.field private autoRun:I

.field private backup:I

.field private callBackCount:I

.field private isExamming:Z

.field private mCallBack:Lcom/zte/heartyservice/common/utils/CallBack;

.field private mContext:Landroid/content/Context;

.field private mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

.field private mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private resCount:I

.field private retrieve:I

.field private runningProcess:I

.field private update:I

.field private virus:I

.field private virusCloud:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-boolean v0, p0, Lcom/zte/heartyservice/setting/AutoExam;->isExamming:Z

    .line 54
    iput v0, p0, Lcom/zte/heartyservice/setting/AutoExam;->update:I

    .line 55
    iput v0, p0, Lcom/zte/heartyservice/setting/AutoExam;->retrieve:I

    .line 56
    iput v0, p0, Lcom/zte/heartyservice/setting/AutoExam;->backup:I

    .line 58
    iput v0, p0, Lcom/zte/heartyservice/setting/AutoExam;->runningProcess:I

    .line 59
    iput v0, p0, Lcom/zte/heartyservice/setting/AutoExam;->autoRun:I

    .line 60
    iput v0, p0, Lcom/zte/heartyservice/setting/AutoExam;->appCache:I

    .line 63
    iput v0, p0, Lcom/zte/heartyservice/setting/AutoExam;->virus:I

    .line 64
    iput v0, p0, Lcom/zte/heartyservice/setting/AutoExam;->virusCloud:I

    .line 68
    iput v0, p0, Lcom/zte/heartyservice/setting/AutoExam;->callBackCount:I

    .line 69
    iput v0, p0, Lcom/zte/heartyservice/setting/AutoExam;->resCount:I

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/setting/AutoExam;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    .line 74
    new-instance v0, Lcom/zte/heartyservice/setting/AutoExam$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/setting/AutoExam$1;-><init>(Lcom/zte/heartyservice/setting/AutoExam;)V

    iput-object v0, p0, Lcom/zte/heartyservice/setting/AutoExam;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    .line 136
    new-instance v0, Lcom/zte/heartyservice/setting/AutoExam$2;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/setting/AutoExam$2;-><init>(Lcom/zte/heartyservice/setting/AutoExam;)V

    iput-object v0, p0, Lcom/zte/heartyservice/setting/AutoExam;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 262
    new-instance v0, Lcom/zte/heartyservice/setting/AutoExam$3;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/setting/AutoExam$3;-><init>(Lcom/zte/heartyservice/setting/AutoExam;)V

    iput-object v0, p0, Lcom/zte/heartyservice/setting/AutoExam;->mCallBack:Lcom/zte/heartyservice/common/utils/CallBack;

    .line 170
    iput-object p1, p0, Lcom/zte/heartyservice/setting/AutoExam;->mContext:Landroid/content/Context;

    .line 171
    iget-object v0, p0, Lcom/zte/heartyservice/setting/AutoExam;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/zte/heartyservice/setting/AutoExam;->mNotificationManager:Landroid/app/NotificationManager;

    .line 172
    iget-object v0, p0, Lcom/zte/heartyservice/setting/AutoExam;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/setting/AutoExam;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 173
    return-void
.end method

.method private CheckResults(Ljava/lang/String;)V
    .locals 4
    .parameter "process"

    .prologue
    .line 299
    iget v1, p0, Lcom/zte/heartyservice/setting/AutoExam;->resCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/zte/heartyservice/setting/AutoExam;->resCount:I

    .line 300
    const/16 v0, 0x8

    .line 301
    .local v0, count:I
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AutoExam;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getOpenCloudScan(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 302
    add-int/lit8 v0, v0, -0x1

    .line 304
    :cond_0
    iget v1, p0, Lcom/zte/heartyservice/setting/AutoExam;->resCount:I

    if-lt v1, v0, :cond_1

    .line 305
    invoke-direct {p0}, Lcom/zte/heartyservice/setting/AutoExam;->stopExam()V

    .line 306
    const-string v1, "AutoExam"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "liuji debug AutoExam 111 process:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-direct {p0}, Lcom/zte/heartyservice/setting/AutoExam;->notifyCheckScore()V

    .line 310
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/setting/AutoExam;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/zte/heartyservice/setting/AutoExam;->runningProcess:I

    return v0
.end method

.method static synthetic access$002(Lcom/zte/heartyservice/setting/AutoExam;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/zte/heartyservice/setting/AutoExam;->runningProcess:I

    return p1
.end method

.method static synthetic access$008(Lcom/zte/heartyservice/setting/AutoExam;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/zte/heartyservice/setting/AutoExam;->runningProcess:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/zte/heartyservice/setting/AutoExam;->runningProcess:I

    return v0
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/setting/AutoExam;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/zte/heartyservice/setting/AutoExam;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/setting/AutoExam;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/setting/AutoExam;->CheckResults(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/setting/AutoExam;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/zte/heartyservice/setting/AutoExam;->autoRun:I

    return v0
.end method

.method static synthetic access$302(Lcom/zte/heartyservice/setting/AutoExam;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/zte/heartyservice/setting/AutoExam;->autoRun:I

    return p1
.end method

.method static synthetic access$312(Lcom/zte/heartyservice/setting/AutoExam;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iget v0, p0, Lcom/zte/heartyservice/setting/AutoExam;->autoRun:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/zte/heartyservice/setting/AutoExam;->autoRun:I

    return v0
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/setting/AutoExam;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/zte/heartyservice/setting/AutoExam;->appCache:I

    return v0
.end method

.method static synthetic access$402(Lcom/zte/heartyservice/setting/AutoExam;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/zte/heartyservice/setting/AutoExam;->appCache:I

    return p1
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/setting/AutoExam;)Lcom/zte/heartyservice/speedup/ISpeedUpService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/zte/heartyservice/setting/AutoExam;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    return-object v0
.end method

.method static synthetic access$502(Lcom/zte/heartyservice/setting/AutoExam;Lcom/zte/heartyservice/speedup/ISpeedUpService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/zte/heartyservice/setting/AutoExam;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    return-object p1
.end method

.method static synthetic access$600(Lcom/zte/heartyservice/setting/AutoExam;)Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/zte/heartyservice/setting/AutoExam;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    return-object v0
.end method

.method static synthetic access$708(Lcom/zte/heartyservice/setting/AutoExam;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/zte/heartyservice/setting/AutoExam;->virus:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/zte/heartyservice/setting/AutoExam;->virus:I

    return v0
.end method

.method static synthetic access$800(Lcom/zte/heartyservice/setting/AutoExam;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/zte/heartyservice/setting/AutoExam;->callBackCount:I

    return v0
.end method

.method static synthetic access$810(Lcom/zte/heartyservice/setting/AutoExam;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/zte/heartyservice/setting/AutoExam;->callBackCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/zte/heartyservice/setting/AutoExam;->callBackCount:I

    return v0
.end method

.method private checkBackup()V
    .locals 4

    .prologue
    .line 227
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isForeignVersion()Z

    move-result v2

    if-nez v2, :cond_0

    .line 228
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getBackupStatus()J

    move-result-wide v0

    .line 229
    .local v0, time:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 230
    const/4 v2, 0x3

    iput v2, p0, Lcom/zte/heartyservice/setting/AutoExam;->backup:I

    .line 233
    .end local v0           #time:J
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/zte/heartyservice/setting/AutoExam;->CheckResults(Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method private checkRetrieve()V
    .locals 2

    .prologue
    .line 217
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->includePhoneFindBack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getRetrieveStatus()I

    move-result v0

    .line 219
    .local v0, ret:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-gtz v0, :cond_0

    .line 220
    const/4 v1, 0x3

    iput v1, p0, Lcom/zte/heartyservice/setting/AutoExam;->retrieve:I

    .line 223
    .end local v0           #ret:I
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/zte/heartyservice/setting/AutoExam;->CheckResults(Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method private checkUpdate()V
    .locals 1

    .prologue
    .line 212
    const-string v0, "hs_auto_update"

    invoke-static {v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isOptionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/zte/heartyservice/setting/AutoExam;->update:I

    .line 213
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zte/heartyservice/setting/AutoExam;->CheckResults(Ljava/lang/String;)V

    .line 214
    return-void

    .line 212
    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private cleanData()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 283
    iput v0, p0, Lcom/zte/heartyservice/setting/AutoExam;->update:I

    .line 284
    iput v0, p0, Lcom/zte/heartyservice/setting/AutoExam;->retrieve:I

    .line 285
    iput v0, p0, Lcom/zte/heartyservice/setting/AutoExam;->runningProcess:I

    .line 286
    iput v0, p0, Lcom/zte/heartyservice/setting/AutoExam;->autoRun:I

    .line 287
    iput v0, p0, Lcom/zte/heartyservice/setting/AutoExam;->appCache:I

    .line 290
    iput v0, p0, Lcom/zte/heartyservice/setting/AutoExam;->virus:I

    .line 291
    iput v0, p0, Lcom/zte/heartyservice/setting/AutoExam;->virusCloud:I

    .line 292
    iput v0, p0, Lcom/zte/heartyservice/setting/AutoExam;->backup:I

    .line 294
    iput v0, p0, Lcom/zte/heartyservice/setting/AutoExam;->callBackCount:I

    .line 295
    iput v0, p0, Lcom/zte/heartyservice/setting/AutoExam;->resCount:I

    .line 296
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/setting/AutoExam;
    .locals 1
    .parameter "context"

    .prologue
    .line 163
    sget-object v0, Lcom/zte/heartyservice/setting/AutoExam;->mInstance:Lcom/zte/heartyservice/setting/AutoExam;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Lcom/zte/heartyservice/setting/AutoExam;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/setting/AutoExam;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/heartyservice/setting/AutoExam;->mInstance:Lcom/zte/heartyservice/setting/AutoExam;

    .line 166
    :cond_0
    sget-object v0, Lcom/zte/heartyservice/setting/AutoExam;->mInstance:Lcom/zte/heartyservice/setting/AutoExam;

    return-object v0
.end method

.method private notifyCheckScore()V
    .locals 15

    .prologue
    const-wide/32 v13, 0xa00000

    const-wide/32 v11, 0x500000

    .line 313
    iget v7, p0, Lcom/zte/heartyservice/setting/AutoExam;->update:I

    rsub-int/lit8 v7, v7, 0x64

    iget v8, p0, Lcom/zte/heartyservice/setting/AutoExam;->retrieve:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/zte/heartyservice/setting/AutoExam;->backup:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/zte/heartyservice/setting/AutoExam;->runningProcess:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/zte/heartyservice/setting/AutoExam;->autoRun:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/zte/heartyservice/setting/AutoExam;->appCache:I

    sub-int v5, v7, v8

    .line 318
    .local v5, score:I
    iget v7, p0, Lcom/zte/heartyservice/setting/AutoExam;->virus:I

    iget v8, p0, Lcom/zte/heartyservice/setting/AutoExam;->virusCloud:I

    add-int/2addr v7, v8

    if-lez v7, :cond_0

    .line 319
    add-int/lit8 v5, v5, -0x1e

    .line 322
    :cond_0
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SysInfo;->getAvailableInternalMemorySize()J

    move-result-wide v0

    .line 323
    .local v0, available:J
    const-wide/16 v7, 0x64

    mul-long/2addr v7, v0

    invoke-static {}, Lcom/zte/heartyservice/common/utils/SysInfo;->getTotalInternalMemorySize()J

    move-result-wide v9

    div-long v2, v7, v9

    .line 325
    .local v2, availablePercent:J
    const/4 v6, 0x0

    .line 326
    .local v6, subtractStar:I
    const-wide/32 v7, 0x3200000

    cmp-long v7, v0, v7

    if-gez v7, :cond_3

    cmp-long v7, v0, v13

    if-ltz v7, :cond_3

    .line 327
    const/4 v6, 0x1

    .line 334
    :cond_1
    :goto_0
    mul-int/lit8 v7, v6, 0x14

    sub-int/2addr v5, v7

    .line 335
    if-gez v5, :cond_2

    .line 336
    const/4 v5, 0x0

    .line 339
    :cond_2
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.zte.heartyservice.intent.action.notice_autocheck_score"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 340
    .local v4, intent:Landroid/content/Intent;
    const-string v7, "autocheck_score"

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 341
    iget-object v7, p0, Lcom/zte/heartyservice/setting/AutoExam;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 342
    return-void

    .line 328
    .end local v4           #intent:Landroid/content/Intent;
    :cond_3
    cmp-long v7, v0, v13

    if-gez v7, :cond_4

    cmp-long v7, v0, v11

    if-ltz v7, :cond_4

    .line 329
    const/4 v6, 0x2

    goto :goto_0

    .line 330
    :cond_4
    cmp-long v7, v0, v11

    if-gez v7, :cond_1

    .line 331
    const/4 v6, 0x5

    goto :goto_0
.end method

.method private notifyResults(Ljava/lang/String;Z)V
    .locals 12
    .parameter "process"
    .parameter "completed"

    .prologue
    const v11, 0x7f0e01f5

    const v10, 0x7f0e01f4

    const v9, 0x7f0a055d

    const v7, 0x7f0a0559

    const v8, 0x7f0e01f6

    .line 345
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 346
    .local v2, notification:Landroid/app/Notification;
    new-instance v3, Landroid/widget/RemoteViews;

    iget-object v5, p0, Lcom/zte/heartyservice/setting/AutoExam;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f030093

    invoke-direct {v3, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 349
    .local v3, remoteViews:Landroid/widget/RemoteViews;
    const v0, 0x7f0e020b

    .line 350
    .local v0, id:I
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.zte.heartyservice.action.CLICK_NOTIFICATION"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 351
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "click_notification_id_key"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 353
    iput-object v3, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 354
    iget-object v5, p0, Lcom/zte/heartyservice/setting/AutoExam;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 355
    const v5, 0x7f0200ff

    iput v5, v2, Landroid/app/Notification;->icon:I

    .line 356
    iget v5, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v2, Landroid/app/Notification;->flags:I

    .line 358
    if-eqz p2, :cond_1

    .line 359
    iget v5, p0, Lcom/zte/heartyservice/setting/AutoExam;->runningProcess:I

    iget v6, p0, Lcom/zte/heartyservice/setting/AutoExam;->autoRun:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/zte/heartyservice/setting/AutoExam;->appCache:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/zte/heartyservice/setting/AutoExam;->virus:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/zte/heartyservice/setting/AutoExam;->virusCloud:I

    add-int v4, v5, v6

    .line 360
    .local v4, res:I
    if-gtz v4, :cond_0

    .line 361
    const-string v5, "start_exam"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 362
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/zte/heartyservice/setting/AutoExam;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/zte/heartyservice/setting/AutoExam;->mContext:Landroid/content/Context;

    const v7, 0x7f0a055a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v8, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 374
    :goto_0
    iget-object v5, p0, Lcom/zte/heartyservice/setting/AutoExam;->mContext:Landroid/content/Context;

    const v6, 0x7f0a055c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v11, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 384
    .end local v4           #res:I
    :goto_1
    iget-object v5, p0, Lcom/zte/heartyservice/setting/AutoExam;->mContext:Landroid/content/Context;

    const/high16 v6, 0x800

    invoke-static {v5, v10, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v3, v10, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 386
    iget-object v5, p0, Lcom/zte/heartyservice/setting/AutoExam;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v5, v0, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 387
    return-void

    .line 368
    .restart local v4       #res:I
    :cond_0
    const-string v5, "start_exam"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 369
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/zte/heartyservice/setting/AutoExam;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/zte/heartyservice/setting/AutoExam;->mContext:Landroid/content/Context;

    const v7, 0x7f0a055b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v8, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 378
    .end local v4           #res:I
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/zte/heartyservice/setting/AutoExam;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0558

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v8, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 380
    iget-object v5, p0, Lcom/zte/heartyservice/setting/AutoExam;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v11, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private scanVirus()V
    .locals 8

    .prologue
    .line 237
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isPresetCTVersion()Z

    move-result v5

    if-nez v5, :cond_3

    .line 238
    const/4 v5, 0x1

    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->initAntivirusEngine()Z

    move-result v6

    if-ne v5, v6, :cond_2

    .line 239
    iget-object v5, p0, Lcom/zte/heartyservice/setting/AutoExam;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 240
    .local v0, appListInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 242
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 243
    .local v2, info:Landroid/content/pm/PackageInfo;
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    .line 244
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 247
    .end local v2           #info:Landroid/content/pm/PackageInfo;
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    iput v5, p0, Lcom/zte/heartyservice/setting/AutoExam;->callBackCount:I

    .line 248
    const-string v5, "AutoExam"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "liuji debug AutoExam callBackCount:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/zte/heartyservice/setting/AutoExam;->callBackCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v5, p0, Lcom/zte/heartyservice/setting/AutoExam;->mCallBack:Lcom/zte/heartyservice/common/utils/CallBack;

    invoke-static {v3, v5}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->scanAppForVinus(Ljava/util/List;Lcom/zte/heartyservice/common/utils/CallBack;)V

    .line 253
    .end local v0           #appListInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    iget-object v5, p0, Lcom/zte/heartyservice/setting/AutoExam;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getOpenCloudScan(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 254
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->cloudVinusScan()Ljava/util/List;

    move-result-object v4

    .line 255
    .local v4, resultList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/VirusScanResult;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    iput v5, p0, Lcom/zte/heartyservice/setting/AutoExam;->virusCloud:I

    .line 256
    const-string v5, "AutoExam"

    const-string v6, "liuji debug CheckResults virusCloud"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v5, p0, Lcom/zte/heartyservice/setting/AutoExam;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0563

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/zte/heartyservice/setting/AutoExam;->CheckResults(Ljava/lang/String;)V

    .line 260
    .end local v4           #resultList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/VirusScanResult;>;"
    :cond_3
    return-void
.end method

.method private stopExam()V
    .locals 2

    .prologue
    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/heartyservice/setting/AutoExam;->isExamming:Z

    .line 177
    iget-object v0, p0, Lcom/zte/heartyservice/setting/AutoExam;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    if-eqz v0, :cond_0

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/zte/heartyservice/setting/AutoExam;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;

    iget-object v1, p0, Lcom/zte/heartyservice/setting/AutoExam;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    invoke-interface {v0, v1}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->unregisterCallBack(Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;)V

    .line 180
    iget-object v0, p0, Lcom/zte/heartyservice/setting/AutoExam;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zte/heartyservice/setting/AutoExam;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public startExam()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 187
    iget-boolean v1, p0, Lcom/zte/heartyservice/setting/AutoExam;->isExamming:Z

    if-eqz v1, :cond_0

    .line 188
    const-string v1, "AutoExam"

    const-string v2, "liuji debug AutoExam return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :goto_0
    return-void

    .line 191
    :cond_0
    iput-boolean v3, p0, Lcom/zte/heartyservice/setting/AutoExam;->isExamming:Z

    .line 192
    invoke-direct {p0}, Lcom/zte/heartyservice/setting/AutoExam;->cleanData()V

    .line 194
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zte.heartyservice.intent.action.startService.SPEEDUPSERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 195
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AutoExam;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/heartyservice/setting/AutoExam;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 197
    invoke-direct {p0}, Lcom/zte/heartyservice/setting/AutoExam;->checkUpdate()V

    .line 198
    invoke-direct {p0}, Lcom/zte/heartyservice/setting/AutoExam;->checkRetrieve()V

    .line 199
    invoke-direct {p0}, Lcom/zte/heartyservice/setting/AutoExam;->checkBackup()V

    .line 200
    invoke-direct {p0}, Lcom/zte/heartyservice/setting/AutoExam;->scanVirus()V

    goto :goto_0
.end method
