.class public Lko;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I

.field public static b:I

.field private static f:I


# instance fields
.field private a:Landroid/content/Context;

.field private a:Landroid/os/Handler;

.field private a:Ljava/lang/Object;

.field private final a:Ljava/lang/String;

.field private a:Lkp;

.field private a:Lkq;

.field private a:Lkr;

.field private a:Lks;

.field private a:Lku;

.field private a:Lri;

.field private final a:Z

.field private b:Ljava/lang/String;

.field private c:I

.field private c:Ljava/lang/String;

.field private d:I

.field private d:Ljava/lang/String;

.field private e:I

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput v0, Lko;->a:I

    .line 68
    const/4 v0, 0x1

    sput v0, Lko;->b:I

    .line 69
    const/4 v0, 0x2

    sput v0, Lko;->f:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "QrAPKDownloadController"

    iput-object v0, p0, Lko;->a:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lko;->a:Z

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lko;->d:I

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lko;->a:Ljava/lang/Object;

    .line 66
    sget v0, Lko;->b:I

    iput v0, p0, Lko;->e:I

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lku;Lkq;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "QrAPKDownloadController"

    iput-object v0, p0, Lko;->a:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lko;->a:Z

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lko;->d:I

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lko;->a:Ljava/lang/Object;

    .line 66
    sget v0, Lko;->b:I

    iput v0, p0, Lko;->e:I

    .line 104
    iget-object v0, p3, Lku;->e:Ljava/lang/String;

    iput-object v0, p0, Lko;->b:Ljava/lang/String;

    .line 105
    iput-object p1, p0, Lko;->c:Ljava/lang/String;

    .line 107
    iput-object p2, p0, Lko;->a:Landroid/content/Context;

    .line 108
    iget-object v0, p3, Lku;->a:Ljava/lang/String;

    iput-object v0, p0, Lko;->d:Ljava/lang/String;

    .line 109
    iget-object v0, p3, Lku;->b:Ljava/lang/String;

    iput-object v0, p0, Lko;->e:Ljava/lang/String;

    .line 110
    iget v0, p3, Lku;->a:I

    iput v0, p0, Lko;->c:I

    .line 111
    iput-object p5, p0, Lko;->a:Landroid/os/Handler;

    .line 112
    iput-object p3, p0, Lko;->a:Lku;

    .line 113
    new-instance v0, Lks;

    invoke-direct {v0, p2}, Lks;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lko;->a:Lks;

    .line 114
    iput-object p4, p0, Lko;->a:Lkq;

    .line 115
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouAppApplication;->a:Landroid/content/Context;

    invoke-static {v0}, Lkr;->a(Landroid/content/Context;)Lkr;

    move-result-object v0

    iput-object v0, p0, Lko;->a:Lkr;

    .line 116
    return-void
.end method

.method static synthetic a(Lko;)I
    .locals 1
    .parameter

    .prologue
    .line 33
    iget v0, p0, Lko;->d:I

    return v0
.end method

.method static synthetic a(Lko;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lko;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lko;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lko;->a:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lko;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lko;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lko;)Lkq;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lko;->a:Lkq;

    return-object v0
.end method

.method static synthetic a(Lko;)Lks;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lko;->a:Lks;

    return-object v0
.end method

.method static synthetic a(Lko;)Lku;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lko;->a:Lku;

    return-object v0
.end method

.method static synthetic a(Lko;)Lri;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lko;->a:Lri;

    return-object v0
.end method

.method static synthetic a(Lko;Lri;)Lri;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lko;->a:Lri;

    return-object p1
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 542
    iget-object v0, p0, Lko;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 543
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 544
    return-void
.end method

.method private a(II)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const v8, 0x7f0b03f3

    .line 486
    const-string v0, "====================updateDownloadError==========errorCode==========="

    invoke-direct {p0, v0}, Lko;->a(Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lko;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 488
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lko;->a:Landroid/content/Context;

    const-class v3, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 489
    const-string v2, "sogou.action.qrcode.apkdownload.suspend"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    const-string v2, "NOTIFICATIONID"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 491
    iget-object v2, p0, Lko;->a:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x800

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 494
    iget-object v1, p0, Lko;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lko;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lko;->d:Ljava/lang/String;

    const-string v3, "null"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 495
    :cond_0
    iget-object v1, p0, Lko;->a:Landroid/content/Context;

    const v3, 0x7f0b03d5

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 499
    :goto_0
    new-instance v3, Landroid/app/Notification;

    const v4, 0x7f02009a

    iget-object v5, p0, Lko;->a:Landroid/content/Context;

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 500
    iget-object v4, p0, Lko;->a:Landroid/content/Context;

    iget-object v5, p0, Lko;->a:Landroid/content/Context;

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v1, v5, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 501
    invoke-virtual {v0, p1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 502
    return-void

    .line 497
    :cond_1
    iget-object v1, p0, Lko;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(III)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const v6, 0x7f0b03da

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "======notifyId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",  totalBytes="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",   currentBytes="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lko;->a(Ljava/lang/String;)V

    .line 435
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    .line 436
    const v0, 0x7f02005c

    iput v0, v3, Landroid/app/Notification;->icon:I

    .line 438
    iget v0, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v3, Landroid/app/Notification;->flags:I

    .line 440
    iget-object v0, p0, Lko;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lko;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lko;->d:Ljava/lang/String;

    const-string v4, "null"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 441
    :cond_0
    iget v0, p0, Lko;->d:I

    if-ne v0, v5, :cond_1

    .line 442
    iget-object v0, p0, Lko;->a:Landroid/content/Context;

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, ""

    aput-object v5, v4, v2

    invoke-virtual {v0, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 455
    :goto_0
    new-instance v4, Landroid/widget/RemoteViews;

    const-string v5, "com.sohu.inputmethod.sogou"

    const v6, 0x7f030044

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 456
    const v5, 0x7f070166

    invoke-virtual {v4, v5, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 457
    const v5, 0x7f070168

    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v4, v5, p2, p3, v0}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 458
    const v0, 0x7f070167

    int-to-long v5, p2

    int-to-long v7, p3

    invoke-static {v5, v6, v7, v8}, Lcom/sohu/inputmethod/internet/NotifyProgressService;->a(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 459
    const v0, 0x7f070164

    const v1, 0x7f0200ec

    invoke-virtual {v4, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 461
    const v0, 0x7f070165

    const v1, 0x7f0200f5

    invoke-virtual {v4, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 463
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lko;->a:Landroid/content/Context;

    const-class v5, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {v0, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sogou.action.qrcode.apkdownload.cancel"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 466
    const-string v1, "NOTIFICATIONID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 467
    const-string v1, "totalsize"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 468
    const-string v1, "downloadsize"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 469
    iget-object v1, p0, Lko;->a:Landroid/content/Context;

    const/high16 v5, 0x800

    invoke-static {v1, v2, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 471
    iput-object v4, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 472
    const-wide/16 v0, 0x0

    iput-wide v0, v3, Landroid/app/Notification;->when:J

    .line 473
    iget-object v0, p0, Lko;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 474
    invoke-virtual {v0, p1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 476
    return-void

    .line 444
    :cond_1
    iget-object v0, p0, Lko;->a:Landroid/content/Context;

    const v4, 0x7f0b03d0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 447
    :cond_2
    iget v0, p0, Lko;->d:I

    if-ne v0, v5, :cond_3

    .line 448
    iget-object v0, p0, Lko;->a:Landroid/content/Context;

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lko;->d:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-virtual {v0, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 450
    :cond_3
    iget-object v0, p0, Lko;->d:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 457
    goto/16 :goto_1
.end method

.method private a(ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 480
    iget-object v0, p0, Lko;->a:Landroid/content/Context;

    invoke-static {v0, p2}, Layu;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 481
    invoke-direct {p0, p1}, Lko;->a(I)V

    .line 482
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 552
    return-void
.end method

.method static synthetic a(Lko;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lko;->a(I)V

    return-void
.end method

.method static synthetic a(Lko;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lko;->a(II)V

    return-void
.end method

.method static synthetic a(Lko;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lko;->a(III)V

    return-void
.end method

.method static synthetic a(Lko;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lko;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lko;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lko;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lko;)I
    .locals 1
    .parameter

    .prologue
    .line 33
    iget v0, p0, Lko;->e:I

    return v0
.end method

.method static synthetic b(Lko;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lko;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lko;->d:I

    return v0
.end method

.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 127
    iget-object v0, p0, Lko;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 128
    iget v0, p0, Lko;->d:I

    if-ne v0, v1, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iput v1, p0, Lko;->d:I

    .line 132
    iget-object v0, p0, Lko;->a:Lkp;

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lko;->a:Lkp;

    invoke-virtual {v0}, Lkp;->interrupt()V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lko;->a:Lkp;

    .line 137
    :cond_2
    new-instance v0, Lkp;

    invoke-direct {v0, p0}, Lkp;-><init>(Lko;)V

    iput-object v0, p0, Lko;->a:Lkp;

    .line 138
    iget-object v0, p0, Lko;->a:Lkp;

    invoke-virtual {v0}, Lkp;->start()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 556
    const-string v0, "=========onPrepareDownload==============="

    invoke-direct {p0, v0}, Lko;->a(Ljava/lang/String;)V

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lko;->a(Ljava/lang/String;)V

    .line 558
    return-void
.end method

.method public a(Ljava/lang/String;IILri;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 587
    const-string v0, "=========onCancelDownload==============="

    invoke-direct {p0, v0}, Lko;->a(Ljava/lang/String;)V

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lko;->a(Ljava/lang/String;)V

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentBytes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " totalBytes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lko;->a(Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Lko;->a:Lkr;

    invoke-virtual {v0, p1}, Lkr;->a(Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Lko;->a:Lkr;

    invoke-virtual {v0, p1}, Lkr;->c(Ljava/lang/String;)V

    .line 592
    if-eqz p4, :cond_0

    .line 593
    invoke-virtual {p4}, Lri;->b()V

    .line 595
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;ILri;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 612
    const-string v0, "============onDownloadError================"

    invoke-direct {p0, v0}, Lko;->a(Ljava/lang/String;)V

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lko;->a(Ljava/lang/String;)V

    .line 614
    iget-object v0, p0, Lko;->a:Lkr;

    invoke-virtual {v0, p1}, Lkr;->a(Ljava/lang/String;)V

    .line 615
    iget-object v0, p0, Lko;->a:Lkr;

    invoke-virtual {v0, p1}, Lkr;->b(Ljava/lang/String;)V

    .line 616
    iget-object v0, p0, Lko;->a:Lkr;

    invoke-virtual {v0, p1}, Lkr;->c(Ljava/lang/String;)V

    .line 617
    if-eqz p3, :cond_0

    .line 618
    invoke-virtual {p3}, Lri;->b()V

    .line 620
    :cond_0
    return-void
.end method

.method public a(Lkq;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lko;->a:Lkq;

    .line 120
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, Lko;->a:Lks;

    invoke-virtual {v0, p1}, Lks;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 623
    iget v0, p0, Lko;->e:I

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x3

    iput v0, p0, Lko;->d:I

    .line 160
    return-void
.end method

.method public b(Ljava/lang/String;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 563
    const-string v0, "=========onStartDownload==============="

    invoke-direct {p0, v0}, Lko;->a(Ljava/lang/String;)V

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lko;->a(Ljava/lang/String;)V

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentBytes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " totalBytes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lko;->a(Ljava/lang/String;)V

    .line 566
    return-void
.end method

.method public b(Ljava/lang/String;IILri;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 600
    const-string v0, "=========onFinishDownload==============="

    invoke-direct {p0, v0}, Lko;->a(Ljava/lang/String;)V

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lko;->a(Ljava/lang/String;)V

    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentBytes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " totalBytes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lko;->a(Ljava/lang/String;)V

    .line 603
    iget-object v0, p0, Lko;->a:Lkr;

    invoke-virtual {v0, p1}, Lkr;->a(Ljava/lang/String;)V

    .line 604
    iget-object v0, p0, Lko;->a:Lkr;

    invoke-virtual {v0, p1}, Lkr;->c(Ljava/lang/String;)V

    .line 605
    if-eqz p4, :cond_0

    .line 606
    invoke-virtual {p4}, Lri;->b()V

    .line 608
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x4

    iput v0, p0, Lko;->d:I

    .line 164
    return-void
.end method

.method public c(Ljava/lang/String;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 572
    iget-object v0, p0, Lko;->a:Lkr;

    invoke-virtual {v0, p1}, Lkr;->b(Ljava/lang/String;)V

    .line 573
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x1

    iput v0, p0, Lko;->d:I

    .line 168
    return-void
.end method

.method public d(Ljava/lang/String;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 578
    const-string v0, "=========onPauseDownload==============="

    invoke-direct {p0, v0}, Lko;->a(Ljava/lang/String;)V

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lko;->a(Ljava/lang/String;)V

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentBytes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " totalBytes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lko;->a(Ljava/lang/String;)V

    .line 582
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 175
    const/4 v0, 0x4

    iput v0, p0, Lko;->d:I

    .line 176
    iget-object v0, p0, Lko;->a:Lks;

    iget-object v1, p0, Lko;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lks;->a(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lko;->a:Lkq;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lko;->a:Lkq;

    iget-object v1, p0, Lko;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v2}, Lkq;->e(Ljava/lang/String;II)V

    .line 180
    :cond_0
    iget-object v0, p0, Lko;->b:Ljava/lang/String;

    iget-object v1, p0, Lko;->a:Lri;

    invoke-virtual {p0, v0, v2, v2, v1}, Lko;->a(Ljava/lang/String;IILri;)V

    .line 181
    iget-object v0, p0, Lko;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-direct {p0, v0}, Lko;->a(I)V

    .line 182
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 630
    iget-object v1, p0, Lko;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 631
    :try_start_0
    sget v0, Lko;->a:I

    iput v0, p0, Lko;->e:I

    .line 632
    monitor-exit v1

    .line 633
    return-void

    .line 632
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 639
    iget-object v1, p0, Lko;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 640
    :try_start_0
    sget v0, Lko;->b:I

    iput v0, p0, Lko;->e:I

    .line 641
    iget-object v0, p0, Lko;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 642
    monitor-exit v1

    .line 643
    return-void

    .line 642
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
