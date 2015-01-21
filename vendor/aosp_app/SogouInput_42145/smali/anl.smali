.class public Lanl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/Notification$Builder;

.field private a:Landroid/app/Notification;

.field private a:Landroid/app/NotificationManager;

.field private a:Landroid/content/Context;

.field private a:Landroid/content/Intent;

.field private a:Ljava/lang/String;

.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lanl;->a:Z

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lanl;->a:Landroid/app/Notification$Builder;

    .line 42
    iput-object p1, p0, Lanl;->a:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lanl;->a:Ljava/lang/String;

    .line 44
    return-void
.end method

.method private a(IIILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    int-to-long v0, p2

    int-to-long v2, p3

    invoke-static {v0, v1, v2, v3}, Lcom/sohu/inputmethod/internet/NotifyProgressService;->b(JJ)Ljava/lang/String;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lanl;->a:Landroid/app/Notification$Builder;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, p3, v2}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 111
    iget-object v1, p0, Lanl;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 112
    iget-object v0, p0, Lanl;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 113
    iget-object v0, p0, Lanl;->a:Landroid/app/Notification$Builder;

    invoke-virtual {p0, p2, p3}, Lanl;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 114
    iget-object v0, p0, Lanl;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lanl;->a:Landroid/app/Notification;

    .line 115
    iget-object v0, p0, Lanl;->a:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lanl;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lanl;->a:Landroid/app/NotificationManager;

    .line 117
    :cond_0
    iget-object v0, p0, Lanl;->a:Landroid/app/NotificationManager;

    iget-object v1, p0, Lanl;->a:Landroid/app/Notification;

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 118
    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 121
    iget-object v0, p0, Lanl;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lanl;->a:Landroid/app/NotificationManager;

    .line 122
    iget-object v0, p0, Lanl;->a:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 123
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lanl;->a:Landroid/content/Context;

    const-class v2, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lanl;->a:Landroid/content/Intent;

    .line 124
    iget-object v0, p0, Lanl;->a:Landroid/content/Intent;

    iget-object v1, p0, Lanl;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    iget-object v0, p0, Lanl;->a:Landroid/content/Context;

    iget-object v1, p0, Lanl;->a:Landroid/content/Intent;

    const/high16 v2, 0x800

    invoke-static {v0, v3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 126
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lanl;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lanl;->a:Landroid/app/Notification$Builder;

    .line 127
    iget-object v1, p0, Lanl;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v3, v4}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f02005c

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 136
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    return-void
.end method

.method private b(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v8, 0x7f02005c

    const/4 v2, 0x0

    const/4 v7, -0x1

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[[updateNotifyStatusBar]] update status bar = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static {v3, v4, v5, v6}, Lcom/sohu/inputmethod/internet/NotifyProgressService;->b(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lanl;->a(Ljava/lang/String;)V

    .line 76
    if-ne p2, v7, :cond_0

    .line 77
    new-instance v0, Landroid/app/Notification;

    const v1, 0x7f02009c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, p4, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    move-object v1, v0

    .line 80
    :goto_0
    iput v8, v1, Landroid/app/Notification;->icon:I

    .line 82
    iget v0, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 85
    new-instance v3, Landroid/widget/RemoteViews;

    const-string v0, "com.sohu.inputmethod.sogou"

    const v4, 0x7f03005a

    invoke-direct {v3, v0, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 86
    const v0, 0x7f0700e7

    invoke-virtual {v3, v0, p5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 87
    const v4, 0x7f0701dd

    if-ne p2, v7, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v3, v4, p2, p3, v0}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 88
    int-to-long v4, p2

    int-to-long v6, p3

    invoke-static {v4, v5, v6, v7}, Lcom/sohu/inputmethod/internet/NotifyProgressService;->b(JJ)Ljava/lang/String;

    move-result-object v0

    .line 89
    const v4, 0x7f0701db

    invoke-virtual {v3, v4, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 90
    const v4, 0x7f0701da

    invoke-virtual {v3, v4, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 92
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lanl;->a:Landroid/content/Context;

    const-class v6, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    iget-object v5, p0, Lanl;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string v5, "downloadprogress"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string v0, "notificationid"

    invoke-virtual {v4, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    const-string v0, "totalsize"

    invoke-virtual {v4, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 97
    const-string v0, "downloadsize"

    invoke-virtual {v4, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    iget-object v0, p0, Lanl;->a:Landroid/content/Context;

    const/high16 v5, 0x800

    invoke-static {v0, v2, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 100
    iput-object v3, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 101
    iget-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x7f0701dc

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 103
    iget-object v0, p0, Lanl;->a:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 104
    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 106
    return-void

    .line 79
    :cond_0
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    move-object v1, v0

    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 87
    goto :goto_1
.end method


# virtual methods
.method public a(II)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 139
    const-string v0, ""

    .line 140
    const/high16 v1, 0x4980

    .line 141
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "#0.0"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 142
    int-to-float v3, p2

    div-float/2addr v3, v1

    float-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    .line 143
    int-to-float v4, p1

    div-float v1, v4, v1

    float-to-double v4, v1

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 144
    if-lez p1, :cond_0

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "M"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "M"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    :cond_0
    return-object v0
.end method

.method public a(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 51
    invoke-static {}, Lazh;->a()I

    move-result v0

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lanl;->a:Z

    if-nez v0, :cond_2

    .line 53
    :cond_0
    :try_start_0
    iget-object v0, p0, Lanl;->a:Landroid/app/Notification$Builder;

    if-nez v0, :cond_1

    .line 54
    invoke-direct {p0, p1, p4, p5}, Lanl;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_1
    invoke-direct {p0, p1, p2, p3, p5}, Lanl;->a(IIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2

    .line 70
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    iput-boolean v2, p0, Lanl;->a:Z

    .line 58
    invoke-direct/range {p0 .. p5}, Lanl;->b(IIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :catch_1
    move-exception v0

    .line 61
    iput-boolean v2, p0, Lanl;->a:Z

    .line 62
    invoke-direct/range {p0 .. p5}, Lanl;->b(IIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :catch_2
    move-exception v0

    .line 64
    iput-boolean v2, p0, Lanl;->a:Z

    .line 65
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lanl;->b(IIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_2
    invoke-direct/range {p0 .. p5}, Lanl;->b(IIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
