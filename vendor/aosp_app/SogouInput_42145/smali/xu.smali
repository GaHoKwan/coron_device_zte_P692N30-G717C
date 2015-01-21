.class public Lxu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private a:Landroid/content/Context;

.field private final a:Ljava/lang/String;

.field private a:Lri;

.field private a:Lwl;

.field private a:Lxv;

.field private a:Lxw;

.field private final a:Z

.field private b:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "PlatformApkFileDownloader"

    iput-object v0, p0, Lxu;->a:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lxu;->a:Z

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lxu;->b:I

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILxw;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "PlatformApkFileDownloader"

    iput-object v0, p0, Lxu;->a:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lxu;->a:Z

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lxu;->b:I

    .line 72
    iput-object p1, p0, Lxu;->b:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Lxu;->c:Ljava/lang/String;

    .line 74
    new-instance v0, Lri;

    invoke-direct {v0, p3}, Lri;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lxu;->a:Lri;

    .line 75
    iput-object p3, p0, Lxu;->a:Landroid/content/Context;

    .line 76
    iput-object p4, p0, Lxu;->d:Ljava/lang/String;

    .line 77
    iput-object p5, p0, Lxu;->e:Ljava/lang/String;

    .line 78
    iput p6, p0, Lxu;->a:I

    .line 79
    new-instance v0, Lwl;

    invoke-direct {v0, p3}, Lwl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lxu;->a:Lwl;

    .line 80
    iput-object p7, p0, Lxu;->a:Lxw;

    .line 81
    return-void
.end method

.method static synthetic a(Lxu;)I
    .locals 1
    .parameter

    .prologue
    .line 28
    iget v0, p0, Lxu;->a:I

    return v0
.end method

.method static synthetic a(Lxu;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lxu;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lxu;)Lri;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lxu;->a:Lri;

    return-object v0
.end method

.method static synthetic a(Lxu;)Lwl;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lxu;->a:Lwl;

    return-object v0
.end method

.method static synthetic a(Lxu;)Lxw;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lxu;->a:Lxw;

    return-object v0
.end method

.method private a(II)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const v7, 0x7f0b0430

    const v6, 0x7f02009a

    .line 373
    iget-object v0, p0, Lxu;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 374
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lxu;->a:Landroid/content/Context;

    const-class v3, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 375
    const-string v2, "sogou.action.closenotify"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    const-string v2, "sogou.notify.id"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 377
    iget-object v2, p0, Lxu;->a:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x800

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 379
    const/16 v1, 0x26

    if-ne p2, v1, :cond_0

    .line 380
    new-instance v1, Landroid/app/Notification;

    iget-object v3, p0, Lxu;->a:Landroid/content/Context;

    const v4, 0x7f0b0215

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v6, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 381
    iget-object v3, p0, Lxu;->a:Landroid/content/Context;

    iget-object v4, p0, Lxu;->d:Ljava/lang/String;

    iget-object v5, p0, Lxu;->a:Landroid/content/Context;

    const v6, 0x7f0b021c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 386
    :goto_0
    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 387
    return-void

    .line 383
    :cond_0
    new-instance v1, Landroid/app/Notification;

    iget-object v3, p0, Lxu;->a:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v6, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 384
    iget-object v3, p0, Lxu;->a:Landroid/content/Context;

    iget-object v4, p0, Lxu;->d:Ljava/lang/String;

    iget-object v5, p0, Lxu;->a:Landroid/content/Context;

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

    .line 329
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 330
    iput v9, v2, Landroid/app/Notification;->icon:I

    .line 332
    iget v0, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v2, Landroid/app/Notification;->flags:I

    .line 335
    new-instance v3, Landroid/widget/RemoteViews;

    const-string v0, "com.sohu.inputmethod.sogou"

    const v4, 0x7f03005a

    invoke-direct {v3, v0, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 336
    const v0, 0x7f0700e7

    iget-object v4, p0, Lxu;->d:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 337
    const v4, 0x7f0701dd

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v4, p2, p3, v0}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 338
    const v0, 0x7f0701db

    iget-object v4, p0, Lxu;->a:Landroid/content/Context;

    invoke-static {v4}, Lxx;->a(Landroid/content/Context;)Lxx;

    move-result-object v4

    int-to-long v5, p2

    int-to-long v7, p3

    invoke-virtual {v4, v5, v6, v7, v8}, Lxx;->a(JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 339
    const v0, 0x7f0701da

    invoke-virtual {v3, v0, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 341
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lxu;->a:Landroid/content/Context;

    const-class v5, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 343
    const-string v4, "sogou.action.appmanager"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    iget-object v4, p0, Lxu;->a:Landroid/content/Context;

    const/high16 v5, 0x800

    invoke-static {v4, v1, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 346
    iput-object v3, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 347
    iget-object v0, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v1, 0x7f0701dc

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 348
    const-wide/16 v0, 0x0

    iput-wide v0, v2, Landroid/app/Notification;->when:J

    .line 349
    iget-object v0, p0, Lxu;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 350
    invoke-virtual {v0, p1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 352
    return-void

    :cond_0
    move v0, v1

    .line 337
    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 403
    return-void
.end method

.method static synthetic a(Lxu;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lxu;->b(I)V

    return-void
.end method

.method static synthetic a(Lxu;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lxu;->a(II)V

    return-void
.end method

.method static synthetic a(Lxu;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lxu;->a(III)V

    return-void
.end method

.method static synthetic a(Lxu;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lxu;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lxu;)I
    .locals 1
    .parameter

    .prologue
    .line 28
    iget v0, p0, Lxu;->b:I

    return v0
.end method

.method static synthetic b(Lxu;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lxu;->b:Ljava/lang/String;

    return-object v0
.end method

.method private b(I)V
    .locals 3
    .parameter

    .prologue
    .line 356
    iget-object v0, p0, Lxu;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 357
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lxu;->a:Landroid/content/Context;

    const-class v2, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 359
    const-string v1, "sogou.action.recommend.installapk"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    const-string v1, "apkLocalPath"

    iget-object v2, p0, Lxu;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    const-string v1, "sogou.notify.id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apk local path is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lxu;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lxu;->a(Ljava/lang/String;)V

    .line 368
    iget-object v1, p0, Lxu;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 370
    return-void
.end method

.method static synthetic c(Lxu;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lxu;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lxu;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 92
    iget-object v0, p0, Lxu;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 93
    iget v0, p0, Lxu;->b:I

    if-ne v0, v1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iput v1, p0, Lxu;->b:I

    .line 97
    new-instance v0, Lxv;

    invoke-direct {v0, p0}, Lxv;-><init>(Lxu;)V

    iput-object v0, p0, Lxu;->a:Lxv;

    .line 98
    iget-object v0, p0, Lxu;->a:Lxv;

    invoke-virtual {v0}, Lxv;->start()V

    goto :goto_0
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 390
    iget-object v0, p0, Lxu;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 391
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 392
    return-void
.end method

.method public a(Lxw;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lxu;->a:Lxw;

    .line 85
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 88
    iget v0, p0, Lxu;->b:I

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
    .line 125
    iget-object v0, p0, Lxu;->a:Lwl;

    invoke-virtual {v0, p1}, Lwl;->a(Ljava/lang/String;)Z

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
    .line 103
    iget-object v0, p0, Lxu;->a:Lxv;

    invoke-virtual {v0}, Lxv;->interrupt()V

    .line 104
    iget-object v0, p0, Lxu;->a:Lri;

    invoke-virtual {v0}, Lri;->a()V

    .line 105
    iget-object v0, p0, Lxu;->a:Lwl;

    invoke-virtual {v0}, Lwl;->a()V

    .line 106
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x3

    iput v0, p0, Lxu;->b:I

    .line 110
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x4

    iput v0, p0, Lxu;->b:I

    .line 114
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x1

    iput v0, p0, Lxu;->b:I

    .line 118
    return-void
.end method
