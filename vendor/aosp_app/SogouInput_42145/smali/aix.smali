.class public Laix;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private a:Laho;

.field private a:Laiy;

.field private a:Laiz;

.field private a:Landroid/content/Context;

.field private final a:Ljava/lang/String;

.field private a:Lri;

.field private final a:Z

.field private b:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "RecommendApkFileDownloader"

    iput-object v0, p0, Laix;->a:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Laix;->a:Z

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Laix;->b:I

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Laiz;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "RecommendApkFileDownloader"

    iput-object v0, p0, Laix;->a:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Laix;->a:Z

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Laix;->b:I

    .line 71
    iput-object p1, p0, Laix;->b:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Laix;->c:Ljava/lang/String;

    .line 73
    new-instance v0, Lri;

    invoke-direct {v0, p3}, Lri;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Laix;->a:Lri;

    .line 74
    iput-object p3, p0, Laix;->a:Landroid/content/Context;

    .line 75
    iput-object p4, p0, Laix;->d:Ljava/lang/String;

    .line 76
    iput-object p5, p0, Laix;->e:Ljava/lang/String;

    .line 77
    iput p6, p0, Laix;->a:I

    .line 78
    iput-object p7, p0, Laix;->f:Ljava/lang/String;

    .line 79
    new-instance v0, Laho;

    invoke-direct {v0, p3}, Laho;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Laix;->a:Laho;

    .line 80
    iput-object p8, p0, Laix;->a:Laiz;

    .line 81
    return-void
.end method

.method static synthetic a(Laix;)I
    .locals 1
    .parameter

    .prologue
    .line 29
    iget v0, p0, Laix;->a:I

    return v0
.end method

.method static synthetic a(Laix;)Laho;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Laix;->a:Laho;

    return-object v0
.end method

.method static synthetic a(Laix;)Laiz;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Laix;->a:Laiz;

    return-object v0
.end method

.method static synthetic a(Laix;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Laix;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Laix;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Laix;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Laix;)Lri;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Laix;->a:Lri;

    return-object v0
.end method

.method private a(I)V
    .locals 3
    .parameter

    .prologue
    .line 378
    iget-object v0, p0, Laix;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 379
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Laix;->a:Landroid/content/Context;

    const-class v2, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 381
    const-string v1, "sogou.action.recommend.installapk"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    const-string v1, "apkLocalPath"

    iget-object v2, p0, Laix;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    const-string v1, "sogou.notify.id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apk local path is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Laix;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Laix;->b(Ljava/lang/String;)V

    .line 390
    iget-object v1, p0, Laix;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 391
    return-void
.end method

.method private a(II)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const v7, 0x7f0b03f3

    const v6, 0x7f02009a

    .line 401
    iget-object v0, p0, Laix;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 402
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Laix;->a:Landroid/content/Context;

    const-class v3, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 403
    const-string v2, "sogou.action.closenotify"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    const-string v2, "sogou.notify.id"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 405
    iget-object v2, p0, Laix;->a:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x800

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 407
    const/16 v1, 0x26

    if-ne p2, v1, :cond_0

    .line 408
    new-instance v1, Landroid/app/Notification;

    iget-object v3, p0, Laix;->a:Landroid/content/Context;

    const v4, 0x7f0b0215

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v6, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 409
    iget-object v3, p0, Laix;->a:Landroid/content/Context;

    iget-object v4, p0, Laix;->d:Ljava/lang/String;

    iget-object v5, p0, Laix;->a:Landroid/content/Context;

    const v6, 0x7f0b021c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 414
    :goto_0
    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 415
    return-void

    .line 411
    :cond_0
    new-instance v1, Landroid/app/Notification;

    iget-object v3, p0, Laix;->a:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v6, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 412
    iget-object v3, p0, Laix;->a:Landroid/content/Context;

    iget-object v4, p0, Laix;->d:Ljava/lang/String;

    iget-object v5, p0, Laix;->a:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private a(III)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const v9, 0x7f02005c

    const/4 v1, 0x0

    .line 352
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 353
    iput v9, v2, Landroid/app/Notification;->icon:I

    .line 355
    iget v0, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v2, Landroid/app/Notification;->flags:I

    .line 358
    new-instance v3, Landroid/widget/RemoteViews;

    const-string v0, "com.sohu.inputmethod.sogou"

    const v4, 0x7f03005a

    invoke-direct {v3, v0, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 359
    const v0, 0x7f0700e7

    iget-object v4, p0, Laix;->d:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 360
    const v4, 0x7f0701dd

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v4, p2, p3, v0}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 361
    const v0, 0x7f0701db

    iget-object v4, p0, Laix;->a:Landroid/content/Context;

    invoke-static {v4}, Laja;->a(Landroid/content/Context;)Laja;

    move-result-object v4

    int-to-long v5, p2

    int-to-long v7, p3

    invoke-virtual {v4, v5, v6, v7, v8}, Laja;->a(JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 362
    const v0, 0x7f0701da

    invoke-virtual {v3, v0, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 364
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Laix;->a:Landroid/content/Context;

    const-class v5, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 366
    const-string v4, "sogou.action.nothing"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    iget-object v4, p0, Laix;->a:Landroid/content/Context;

    invoke-static {v4, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 369
    iput-object v3, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 370
    iget-object v0, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v1, 0x7f0701dc

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 371
    const-wide/16 v0, 0x0

    iput-wide v0, v2, Landroid/app/Notification;->when:J

    .line 372
    iget-object v0, p0, Laix;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 373
    invoke-virtual {v0, p1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 375
    return-void

    :cond_0
    move v0, v1

    .line 360
    goto :goto_0
.end method

.method static synthetic a(Laix;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Laix;->d()V

    return-void
.end method

.method static synthetic a(Laix;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Laix;->b(I)V

    return-void
.end method

.method static synthetic a(Laix;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Laix;->a(II)V

    return-void
.end method

.method static synthetic a(Laix;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Laix;->a(III)V

    return-void
.end method

.method static synthetic a(Laix;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Laix;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 394
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Laix;->a:Landroid/content/Context;

    const-class v2, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 395
    const-string v1, "sogou.action.send.papaya.click"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    const-string v1, "downloadUrl"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    iget-object v1, p0, Laix;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 398
    return-void
.end method

.method static synthetic b(Laix;)I
    .locals 1
    .parameter

    .prologue
    .line 29
    iget v0, p0, Laix;->b:I

    return v0
.end method

.method static synthetic b(Laix;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Laix;->b:Ljava/lang/String;

    return-object v0
.end method

.method private b(I)V
    .locals 2
    .parameter

    .prologue
    .line 418
    iget-object v0, p0, Laix;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 419
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 420
    return-void
.end method

.method static synthetic b(Laix;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Laix;->a(I)V

    return-void
.end method

.method static synthetic b(Laix;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Laix;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 428
    return-void
.end method

.method static synthetic c(Laix;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Laix;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Laix;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Laix;->f:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Laix;->a:Landroid/content/Context;

    invoke-static {v0}, Laja;->a(Landroid/content/Context;)Laja;

    move-result-object v0

    iget-object v1, p0, Laix;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laja;->a(Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Laix;->a:Landroid/content/Context;

    invoke-static {v0}, Laja;->a(Landroid/content/Context;)Laja;

    move-result-object v0

    iget-object v1, p0, Laix;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laja;->c(Ljava/lang/String;)V

    .line 348
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x3

    iput v0, p0, Laix;->b:I

    .line 112
    return-void
.end method

.method public a(Laiz;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Laix;->a:Laiz;

    .line 85
    return-void
.end method

.method public a(Ljava/util/concurrent/ExecutorService;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x2

    .line 92
    iget-object v0, p0, Laix;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 93
    iget v0, p0, Laix;->b:I

    if-ne v0, v1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iput v1, p0, Laix;->b:I

    .line 98
    new-instance v0, Laiy;

    invoke-direct {v0, p0}, Laiy;-><init>(Laix;)V

    iput-object v0, p0, Laix;->a:Laiy;

    .line 99
    iget-object v0, p0, Laix;->a:Laiy;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 88
    iget v0, p0, Laix;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Laix;->a:Laho;

    invoke-virtual {v0, p1}, Laho;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x4

    iput v0, p0, Laix;->b:I

    .line 116
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x1

    iput v0, p0, Laix;->b:I

    .line 120
    return-void
.end method
