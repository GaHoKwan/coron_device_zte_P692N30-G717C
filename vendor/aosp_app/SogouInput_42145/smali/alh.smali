.class public Lalh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsl;


# instance fields
.field private a:D

.field private a:I

.field private a:J

.field public a:Lalm;

.field private a:Landroid/app/AlertDialog;

.field private a:Landroid/app/Notification$Builder;

.field private a:Landroid/app/Notification;

.field private a:Landroid/app/NotificationManager;

.field private a:Landroid/content/BroadcastReceiver;

.field private a:Landroid/content/Context;

.field private a:Landroid/widget/RemoteViews;

.field private a:Ljava/lang/String;

.field private a:Lrj;

.field private a:Lrr;

.field private a:Lru;

.field private a:Lsg;

.field private a:Z

.field private b:I

.field private b:Z

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-boolean v3, p0, Lalh;->a:Z

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lalh;->a:Ljava/lang/String;

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lalh;->a:J

    .line 69
    iput-object v2, p0, Lalh;->a:Landroid/app/AlertDialog;

    .line 70
    iput-object v2, p0, Lalh;->a:Landroid/content/BroadcastReceiver;

    .line 78
    iput v3, p0, Lalh;->d:I

    .line 83
    iput-object v2, p0, Lalh;->a:Landroid/app/Notification$Builder;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lalh;->b:Z

    .line 101
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouAppApplication;->a:Landroid/content/Context;

    iput-object v0, p0, Lalh;->a:Landroid/content/Context;

    .line 102
    new-instance v0, Lrr;

    iget-object v1, p0, Lalh;->a:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laox;->V:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laox;->W:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lrr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lalh;->a:Lrr;

    .line 103
    iget-object v0, p0, Lalh;->a:Landroid/content/Context;

    invoke-static {v0}, Lsa;->a(Landroid/content/Context;)Lsa;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lsa;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lalh;->c:I

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laox;->X:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sgim_bigram.bin.temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lalh;->a:Ljava/lang/String;

    .line 105
    invoke-direct {p0}, Lalh;->f()V

    .line 106
    return-void
.end method

.method static synthetic a(Lalh;)D
    .locals 2
    .parameter

    .prologue
    .line 42
    iget-wide v0, p0, Lalh;->a:D

    return-wide v0
.end method

.method static synthetic a(Lalh;D)D
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-wide p1, p0, Lalh;->a:D

    return-wide p1
.end method

.method static synthetic a(Lalh;)I
    .locals 1
    .parameter

    .prologue
    .line 42
    iget v0, p0, Lalh;->c:I

    return v0
.end method

.method static synthetic a(Lalh;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput p1, p0, Lalh;->b:I

    return p1
.end method

.method static synthetic a(Lalh;)J
    .locals 2
    .parameter

    .prologue
    .line 42
    iget-wide v0, p0, Lalh;->a:J

    return-wide v0
.end method

.method static synthetic a(Lalh;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-wide p1, p0, Lalh;->a:J

    return-wide p1
.end method

.method static synthetic a(Lalh;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lalh;->a:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic a(Lalh;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lalh;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 139
    iget-object v1, p0, Lalh;->a:Lrr;

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lalh;->a:Lrr;

    invoke-virtual {v1}, Lrr;->o()I

    move-result v1

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resultCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lalh;->c(Ljava/lang/String;)V

    .line 142
    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    .line 143
    iget-object v1, p0, Lalh;->a:Lalm;

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lalh;->a:Lalm;

    invoke-interface {v1}, Lalm;->c()V

    .line 154
    :cond_0
    :goto_0
    return-object v0

    .line 147
    :cond_1
    iget-object v1, p0, Lalh;->a:Landroid/content/Context;

    invoke-static {v1}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lafp;->h(J)V

    .line 148
    iget-object v1, p0, Lalh;->a:Lrr;

    invoke-virtual {v1}, Lrr;->a()Lru;

    move-result-object v1

    iput-object v1, p0, Lalh;->a:Lru;

    .line 149
    iget-object v1, p0, Lalh;->a:Lru;

    if-eqz v1, :cond_0

    .line 150
    iget-object v0, p0, Lalh;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    iget-object v1, p0, Lalh;->a:Lru;

    iget v1, v1, Lru;->a:F

    invoke-virtual {v0, v1}, Lafp;->a(F)V

    .line 151
    iget-object v0, p0, Lalh;->a:Lru;

    iget-object v0, v0, Lru;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Lalh;)Lsg;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lalh;->a:Lsg;

    return-object v0
.end method

.method static synthetic a(Lalh;Lsg;)Lsg;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lalh;->a:Lsg;

    return-object p1
.end method

.method private a(I)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 514
    const-string v0, "showCancelDualisticDictDownloadDialog"

    invoke-direct {p0, v0}, Lalh;->c(Ljava/lang/String;)V

    .line 515
    const-string v0, ""

    .line 516
    iget-object v0, p0, Lalh;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 517
    iget-object v0, p0, Lalh;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lalh;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 519
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lalh;->a:Landroid/app/AlertDialog;

    .line 521
    :cond_1
    iget-object v0, p0, Lalh;->a:Lalm;

    if-eqz v0, :cond_2

    .line 522
    iget-object v0, p0, Lalh;->a:Lalm;

    invoke-interface {v0}, Lalm;->f()V

    .line 523
    :cond_2
    invoke-virtual {p0}, Lalh;->b()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lalh;->c()I

    move-result v0

    invoke-virtual {p0}, Lalh;->b()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 577
    :cond_3
    :goto_0
    return-void

    .line 525
    :cond_4
    iget-object v0, p0, Lalh;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->a()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lalh;->a:Landroid/app/AlertDialog;

    .line 526
    const v0, 0x7f0b03d8

    .line 527
    iget v1, p0, Lalh;->d:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    .line 528
    const v0, 0x7f0b0462

    .line 529
    :cond_5
    iget-object v1, p0, Lalh;->a:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lalh;->b()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0}, Lalh;->c()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v3, v4, v5, v6}, Lcom/sohu/inputmethod/internet/NotifyProgressService;->b(JJ)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 531
    invoke-virtual {p0}, Lalh;->c()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {p0}, Lalh;->b()I

    move-result v2

    div-int/2addr v1, v2

    if-nez v1, :cond_6

    .line 532
    iget-object v0, p0, Lalh;->a:Landroid/content/Context;

    const v1, 0x7f0b0463

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 534
    :cond_6
    iget-object v1, p0, Lalh;->a:Landroid/app/AlertDialog;

    if-eqz v1, :cond_3

    .line 536
    iget-object v1, p0, Lalh;->a:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    iget-object v3, p0, Lalh;->a:Landroid/content/Context;

    const v4, 0x7f0b03db

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lalk;

    invoke-direct {v4, p0, p1}, Lalk;-><init>(Lalh;I)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 564
    iget-object v1, p0, Lalh;->a:Landroid/app/AlertDialog;

    const/4 v2, -0x2

    iget-object v3, p0, Lalh;->a:Landroid/content/Context;

    const v4, 0x7f0b03dc

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lall;

    invoke-direct {v4, p0}, Lall;-><init>(Lalh;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 571
    iget-object v1, p0, Lalh;->a:Landroid/app/AlertDialog;

    iget-object v2, p0, Lalh;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b044c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 572
    iget-object v1, p0, Lalh;->a:Landroid/app/AlertDialog;

    const v2, 0x7f020099

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 573
    iget-object v1, p0, Lalh;->a:Landroid/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 574
    iget-object v0, p0, Lalh;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 575
    iget-object v0, p0, Lalh;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 576
    iget-object v0, p0, Lalh;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method private a(IIILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 580
    invoke-static {}, Lazh;->a()I

    move-result v0

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lalh;->b:Z

    if-nez v0, :cond_2

    .line 582
    :cond_0
    :try_start_0
    iget-object v0, p0, Lalh;->a:Landroid/app/Notification$Builder;

    if-nez v0, :cond_1

    .line 583
    invoke-direct {p0, p1}, Lalh;->b(I)V

    .line 584
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lalh;->c(IIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2

    .line 599
    :goto_0
    return-void

    .line 585
    :catch_0
    move-exception v0

    .line 586
    iput-boolean v2, p0, Lalh;->b:Z

    .line 587
    invoke-direct {p0, p1, p2, p3, p4}, Lalh;->b(IIILjava/lang/String;)V

    goto :goto_0

    .line 588
    :catch_1
    move-exception v0

    .line 590
    iput-boolean v2, p0, Lalh;->b:Z

    .line 591
    invoke-direct {p0, p1, p2, p3, p4}, Lalh;->b(IIILjava/lang/String;)V

    goto :goto_0

    .line 592
    :catch_2
    move-exception v0

    .line 593
    iput-boolean v2, p0, Lalh;->b:Z

    .line 594
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p4}, Lalh;->b(IIILjava/lang/String;)V

    goto :goto_0

    .line 597
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lalh;->b(IIILjava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lalh;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lalh;->c(I)V

    return-void
.end method

.method static synthetic a(Lalh;IIILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lalh;->a(IIILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lalh;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lalh;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 458
    const-string v0, "showEnableSuccessNotification"

    invoke-direct {p0, v0}, Lalh;->c(Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lalh;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 460
    iget v1, p0, Lalh;->c:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 462
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lalh;->a:Landroid/content/Context;

    const-class v3, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 463
    const-string v2, "sogou.dualistic.dict.tips"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    iget-object v2, p0, Lalh;->a:Landroid/content/Context;

    invoke-static {v2, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 465
    new-instance v2, Landroid/app/Notification;

    const v3, 0x7f02009c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v3, p1, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 466
    iget-object v3, p0, Lalh;->a:Landroid/content/Context;

    iget-object v4, p0, Lalh;->a:Landroid/content/Context;

    const v5, 0x7f0b0448

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p1, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 467
    iget v1, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v2, Landroid/app/Notification;->flags:I

    .line 468
    iget v1, p0, Lalh;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 469
    return-void
.end method

.method static synthetic b(Lalh;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput p1, p0, Lalh;->a:I

    return p1
.end method

.method private b(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 649
    iget-object v0, p0, Lalh;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lalh;->a:Landroid/app/NotificationManager;

    .line 650
    iget-object v0, p0, Lalh;->a:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 651
    new-instance v0, Landroid/content/Intent;

    const-string v1, "sogou.action.dualisticdict.download.cancel"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 653
    const-string v1, "NOTIFICATIONID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 654
    iget-object v1, p0, Lalh;->a:Landroid/content/Context;

    const/high16 v2, 0x800

    invoke-static {v1, v3, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 655
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lalh;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lalh;->a:Landroid/app/Notification$Builder;

    .line 656
    iget-object v1, p0, Lalh;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f02005c

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lalh;->a:Landroid/content/Context;

    const v2, 0x7f0b0453

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lalh;->a:Landroid/content/Context;

    const v2, 0x7f0b0450

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 664
    return-void
.end method

.method private b(IIILjava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v5, 0x7f02005c

    const/4 v1, 0x0

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "======notifyId=,  totalBytes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",   currentBytes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lalh;->c(Ljava/lang/String;)V

    .line 604
    iget-object v0, p0, Lalh;->a:Landroid/app/Notification;

    if-nez v0, :cond_0

    .line 605
    new-instance v0, Landroid/app/Notification;

    iget-object v2, p0, Lalh;->a:Landroid/content/Context;

    const v3, 0x7f0b0450

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v5, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v0, p0, Lalh;->a:Landroid/app/Notification;

    .line 607
    :cond_0
    iget-object v0, p0, Lalh;->a:Landroid/widget/RemoteViews;

    if-nez v0, :cond_1

    .line 608
    new-instance v0, Landroid/widget/RemoteViews;

    const-string v2, "com.sohu.inputmethod.sogou"

    const v3, 0x7f030044

    invoke-direct {v0, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lalh;->a:Landroid/widget/RemoteViews;

    .line 610
    :cond_1
    iget-object v0, p0, Lalh;->a:Landroid/app/Notification;

    iput v5, v0, Landroid/app/Notification;->icon:I

    .line 612
    iget-object v0, p0, Lalh;->a:Landroid/app/Notification;

    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 616
    iget-object v0, p0, Lalh;->a:Landroid/widget/RemoteViews;

    const v2, 0x7f070166

    invoke-virtual {v0, v2, p4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 617
    iget-object v2, p0, Lalh;->a:Landroid/widget/RemoteViews;

    const v3, 0x7f070168

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, p2, p3, v0}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 618
    iget-object v0, p0, Lalh;->a:Landroid/widget/RemoteViews;

    const v2, 0x7f070167

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static {v3, v4, v5, v6}, Lcom/sohu/inputmethod/internet/NotifyProgressService;->b(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 619
    iget-object v0, p0, Lalh;->a:Landroid/widget/RemoteViews;

    const v2, 0x7f070164

    const v3, 0x7f0200ec

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 621
    iget-object v0, p0, Lalh;->a:Landroid/widget/RemoteViews;

    const v2, 0x7f070165

    const v3, 0x7f0200f5

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 623
    new-instance v0, Landroid/content/Intent;

    const-string v2, "sogou.action.dualisticdict.download.cancel"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 626
    const-string v2, "NOTIFICATIONID"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 627
    const-string v2, "totalsize"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 628
    const-string v2, "downloadsize"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 629
    iget-object v2, p0, Lalh;->a:Landroid/app/Notification;

    iget-object v3, p0, Lalh;->a:Landroid/content/Context;

    const/high16 v4, 0x800

    invoke-static {v3, v1, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 631
    iget-object v0, p0, Lalh;->a:Landroid/app/Notification;

    iget-object v1, p0, Lalh;->a:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 632
    iget-object v0, p0, Lalh;->a:Landroid/app/Notification;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    .line 633
    iget-object v0, p0, Lalh;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lalh;->a:Landroid/app/NotificationManager;

    .line 634
    iget-object v0, p0, Lalh;->a:Landroid/app/NotificationManager;

    iget-object v1, p0, Lalh;->a:Landroid/app/Notification;

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 636
    return-void

    :cond_2
    move v0, v1

    .line 617
    goto :goto_0
.end method

.method static synthetic b(Lalh;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lalh;->e()V

    return-void
.end method

.method static synthetic b(Lalh;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lalh;->a(I)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    .line 472
    iget-object v0, p0, Lalh;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 473
    iget v1, p0, Lalh;->c:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 474
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lalh;->a:Landroid/content/Context;

    const-class v3, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 475
    const-string v2, "sogou.action.dualistic.dict.download.error"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    const-string v2, "NOTIFICATIONID"

    iget v3, p0, Lalh;->c:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 477
    iget-object v2, p0, Lalh;->a:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x800

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 479
    iget-object v2, p0, Lalh;->a:Landroid/content/Context;

    const v3, 0x7f0b0448

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 480
    new-instance v3, Landroid/app/Notification;

    const v4, 0x7f02009a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v3, v4, p1, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 481
    iget-object v4, p0, Lalh;->a:Landroid/content/Context;

    invoke-virtual {v3, v4, v2, p1, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 482
    iget v1, p0, Lalh;->c:I

    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 483
    return-void
.end method

.method static synthetic c(Lalh;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput p1, p0, Lalh;->d:I

    return p1
.end method

.method private c(I)V
    .locals 2
    .parameter

    .prologue
    .line 667
    const-string v0, "clearNofity"

    invoke-direct {p0, v0}, Lalh;->c(Ljava/lang/String;)V

    .line 668
    iget-object v0, p0, Lalh;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 669
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 670
    return-void
.end method

.method private c(IIILjava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 639
    iget-object v0, p0, Lalh;->a:Landroid/app/Notification$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 640
    iget-object v0, p0, Lalh;->a:Landroid/app/Notification$Builder;

    int-to-long v1, p2

    int-to-long v3, p3

    invoke-static {v1, v2, v3, v4}, Lcom/sohu/inputmethod/internet/NotifyProgressService;->b(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 641
    iget-object v0, p0, Lalh;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 642
    iget-object v0, p0, Lalh;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lalh;->a:Landroid/app/Notification;

    .line 643
    iget-object v0, p0, Lalh;->a:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 644
    iget-object v0, p0, Lalh;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lalh;->a:Landroid/app/NotificationManager;

    .line 645
    :cond_0
    iget-object v0, p0, Lalh;->a:Landroid/app/NotificationManager;

    iget-object v1, p0, Lalh;->a:Landroid/app/Notification;

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 646
    return-void
.end method

.method static synthetic c(Lalh;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lalh;->g()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 686
    return-void
.end method

.method private d()I
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 317
    const-string v1, "downloadFile"

    invoke-direct {p0, v1}, Lalh;->c(Ljava/lang/String;)V

    .line 318
    invoke-direct {p0}, Lalh;->d()V

    .line 319
    iget-object v1, p0, Lalh;->a:Lrr;

    iget-object v2, p0, Lalh;->a:Lrj;

    invoke-virtual {v1, v2}, Lrr;->a(Lrj;)V

    .line 321
    iget-object v1, p0, Lalh;->a:Lalm;

    if-eqz v1, :cond_0

    .line 322
    iget-object v1, p0, Lalh;->a:Lalm;

    invoke-interface {v1}, Lalm;->a()V

    .line 323
    :cond_0
    invoke-direct {p0}, Lalh;->a()Ljava/lang/String;

    move-result-object v2

    .line 324
    if-nez v2, :cond_1

    .line 343
    :goto_0
    return v0

    .line 326
    :cond_1
    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lalh;->a:Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-ne v0, v4, :cond_2

    .line 328
    iget-object v0, p0, Lalh;->a:Lrr;

    invoke-virtual {v0, v4}, Lrr;->a(Z)V

    .line 329
    const/4 v1, 0x0

    .line 331
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :try_start_1
    iget-object v1, p0, Lalh;->a:Lrr;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v3

    invoke-virtual {v1, v3}, Lrr;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 336
    :goto_1
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 339
    :cond_2
    const-string v0, "start breakDownloadFile"

    invoke-direct {p0, v0}, Lalh;->c(Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lalh;->a:Lrr;

    iget-object v1, p0, Lalh;->a:Ljava/lang/String;

    iget-object v3, p0, Lalh;->a:Lsg;

    invoke-virtual {v0, v2, v1, v3}, Lrr;->a(Ljava/lang/String;Ljava/lang/String;Lsg;)I

    move-result v0

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lalh;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 333
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 334
    :goto_2
    :try_start_2
    iget-object v1, p0, Lalh;->a:Lrr;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lrr;->a(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 336
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_3
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 333
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private d()V
    .locals 1

    .prologue
    .line 171
    new-instance v0, Lali;

    invoke-direct {v0, p0}, Lali;-><init>(Lalh;)V

    iput-object v0, p0, Lalh;->a:Lrj;

    .line 261
    return-void
.end method

.method private e()V
    .locals 6

    .prologue
    const v5, 0x7f0b0456

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laox;->X:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "sgim_bigram.bin.temp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Laox;->Y:Ljava/lang/String;

    invoke-static {v0, v3}, Layw;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 410
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=========rename="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lalh;->c(Ljava/lang/String;)V

    .line 411
    if-eqz v0, :cond_5

    .line 412
    const-string v0, "loadDualisticDict"

    invoke-direct {p0, v0}, Lalh;->c(Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lalh;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->getInstance(Landroid/content/Context;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    .line 414
    invoke-virtual {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->loadBigramDict()V

    .line 416
    iget-object v0, p0, Lalh;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->getInstance(Landroid/content/Context;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    .line 417
    const/16 v3, 0x12

    invoke-virtual {v0, v3, v1}, Lcom/sohu/inputmethod/engine/IMEInterface;->setParameter(II)I

    move-result v0

    .line 418
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lalh;->c(Ljava/lang/String;)V

    .line 419
    if-eqz v0, :cond_3

    .line 420
    iget-object v0, p0, Lalh;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, v2}, Lafp;->t(Z)V

    .line 421
    iget-object v0, p0, Lalh;->a:Landroid/content/Context;

    const v3, 0x7f0b0454

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lalh;->a(Ljava/lang/String;)V

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBigramFileDownloadListener != null ? ="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lalh;->a:Lalm;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lalh;->c(Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lalh;->a:Lalm;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lalh;->a:Lalm;

    invoke-interface {v0}, Lalm;->e()V

    .line 427
    :cond_0
    iget-object v0, p0, Lalh;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, v1}, Lafp;->u(Z)V

    .line 428
    iget-object v0, p0, Lalh;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    iget-object v3, p0, Lalh;->a:Lru;

    iget v3, v3, Lru;->a:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v3}, Lafp;->a(Ljava/lang/Float;)V

    .line 429
    iget-object v0, p0, Lalh;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, v2}, Lafp;->v(Z)V

    .line 430
    iget-object v0, p0, Lalh;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, v2}, Lafp;->t(Z)V

    .line 431
    iget-object v0, p0, Lalh;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, v1}, Lafp;->s(Z)V

    .line 433
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sohu.inputmethod.settings.CellDictManagerTab.BigramInstallStatus"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 434
    iget-object v1, p0, Lalh;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 455
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 422
    goto :goto_0

    .line 436
    :cond_3
    iget-object v0, p0, Lalh;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, v1}, Lafp;->t(Z)V

    .line 437
    iget-object v0, p0, Lalh;->a:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lalh;->b(Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lalh;->a:Lalm;

    if-eqz v0, :cond_4

    .line 439
    iget-object v0, p0, Lalh;->a:Lalm;

    invoke-interface {v0}, Lalm;->d()V

    .line 441
    :cond_4
    new-instance v0, Ljava/io/File;

    sget-object v1, Laox;->Y:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 442
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 443
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 448
    :cond_5
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laox;->X:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "sgim_bigram.bin.temp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 449
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 450
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 452
    :cond_6
    iget-object v0, p0, Lalh;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, v1}, Lafp;->t(Z)V

    .line 453
    iget-object v0, p0, Lalh;->a:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lalh;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private f()V
    .locals 3

    .prologue
    .line 486
    const-string v0, "registerDialogReceiver"

    invoke-direct {p0, v0}, Lalh;->c(Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lalh;->a:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 488
    new-instance v0, Lalj;

    invoke-direct {v0, p0}, Lalj;-><init>(Lalh;)V

    iput-object v0, p0, Lalh;->a:Landroid/content/BroadcastReceiver;

    .line 500
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 501
    const-string v1, "sogou.action.dualisticdict.download.cancel"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 502
    iget-object v1, p0, Lalh;->a:Landroid/content/Context;

    iget-object v2, p0, Lalh;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 503
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 506
    const-string v0, "unRegisterDailogReceiver"

    invoke-direct {p0, v0}, Lalh;->c(Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lalh;->a:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lalh;->a:Landroid/content/Context;

    iget-object v1, p0, Lalh;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 510
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lalh;->a:Landroid/content/BroadcastReceiver;

    .line 511
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lalh;->d:I

    return v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 298
    const-string v0, "cancelDownload"

    invoke-direct {p0, v0}, Lalh;->c(Ljava/lang/String;)V

    .line 299
    iget v0, p0, Lalh;->b:I

    iget v1, p0, Lalh;->a:I

    if-ne v0, v1, :cond_1

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    iget-object v0, p0, Lalh;->a:Lsg;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lalh;->a:Lsg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsg;->a(I)V

    goto :goto_0
.end method

.method public a(Lalh;)V
    .locals 7
    .parameter

    .prologue
    const/16 v0, 0x17

    const/4 v1, 0x0

    .line 264
    iget-object v2, p0, Lalh;->a:Landroid/content/Context;

    invoke-static {v2}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v0, v3}, Lqy;->a(II)I

    .line 265
    const/4 v6, 0x0

    move-object v2, v1

    move-object v3, v1

    move-object v4, p1

    move-object v5, v1

    invoke-static/range {v0 .. v6}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Lsj;Z)Lsg;

    move-result-object v0

    iput-object v0, p0, Lalh;->a:Lsg;

    .line 266
    iget-object v0, p0, Lalh;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    invoke-virtual {v0}, Lqy;->a()I

    move-result v0

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Lalh;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    iget-object v1, p0, Lalh;->a:Lsg;

    invoke-virtual {v0, v1}, Lqy;->a(Lsg;)I

    .line 268
    :cond_0
    return-void
.end method

.method public a(Lalm;)V
    .locals 2
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lalh;->a:Lalm;

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDownloadListener   mBigramFileDownloadListener != null="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lalh;->a:Lalm;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lalh;->c(Ljava/lang/String;)V

    .line 164
    return-void

    .line 163
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lalv;)V
    .locals 0
    .parameter

    .prologue
    .line 367
    return-void
.end method

.method public a(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 272
    iput-object p2, p0, Lalh;->a:Lsg;

    .line 274
    return-void
.end method

.method public a(Lsg;)V
    .locals 0
    .parameter

    .prologue
    .line 358
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 348
    iget-boolean v0, p0, Lalh;->a:Z

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Lalh;->a:I

    return v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 306
    const-string v0, "pauseDownload"

    invoke-direct {p0, v0}, Lalh;->c(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lalh;->a:Lsg;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lalh;->a:Lsg;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lsg;->a(I)V

    .line 309
    :cond_0
    return-void
.end method

.method public b(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 278
    invoke-direct {p0}, Lalh;->d()I

    move-result v0

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on work   result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",  mStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lalh;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lalh;->c(Ljava/lang/String;)V

    .line 280
    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 281
    :cond_0
    iget-object v0, p0, Lalh;->a:Lalm;

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lalh;->a:Lalm;

    iget v1, p0, Lalh;->b:I

    iget v2, p0, Lalh;->a:I

    invoke-interface {v0, v1, v2}, Lalm;->d(II)V

    .line 284
    :cond_1
    return-void
.end method

.method public b(Lsg;)V
    .locals 0
    .parameter

    .prologue
    .line 362
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 386
    iget v0, p0, Lalh;->b:I

    return v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lalh;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 674
    iget-object v0, p0, Lalh;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lalh;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 676
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lalh;->a:Landroid/app/AlertDialog;

    .line 678
    :cond_1
    return-void
.end method

.method public c(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 288
    iget v0, p0, Lalh;->d:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 289
    invoke-direct {p0}, Lalh;->g()V

    .line 290
    :cond_0
    return-void
.end method

.method public d(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 294
    invoke-direct {p0}, Lalh;->g()V

    .line 295
    return-void
.end method

.method public e(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 313
    invoke-direct {p0}, Lalh;->g()V

    .line 314
    return-void
.end method
