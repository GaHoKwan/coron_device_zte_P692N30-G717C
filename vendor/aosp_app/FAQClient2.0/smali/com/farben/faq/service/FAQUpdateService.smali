.class public Lcom/farben/faq/service/FAQUpdateService;
.super Landroid/app/Service;


# static fields
.field public static a:Landroid/app/NotificationManager;

.field public static b:Lcom/farben/faq/service/b;

.field public static c:I

.field public static d:I

.field public static e:F

.field public static f:Z

.field public static g:Landroid/os/Handler;

.field private static final h:Ljava/lang/String;

.field private static k:Ljava/text/DecimalFormat;


# instance fields
.field private i:Lcom/farben/faq/b/h;

.field private j:Lcom/farben/faq/e/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/farben/faq/service/FAQUpdateService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/farben/faq/service/FAQUpdateService;->h:Ljava/lang/String;

    sput-object v1, Lcom/farben/faq/service/FAQUpdateService;->a:Landroid/app/NotificationManager;

    sput-object v1, Lcom/farben/faq/service/FAQUpdateService;->b:Lcom/farben/faq/service/b;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/farben/faq/service/FAQUpdateService;->f:Z

    sput-object v1, Lcom/farben/faq/service/FAQUpdateService;->g:Landroid/os/Handler;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/farben/faq/service/FAQUpdateService;->k:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-object v0, p0, Lcom/farben/faq/service/FAQUpdateService;->i:Lcom/farben/faq/b/h;

    iput-object v0, p0, Lcom/farben/faq/service/FAQUpdateService;->j:Lcom/farben/faq/e/a;

    return-void
.end method

.method static synthetic a(Lcom/farben/faq/service/FAQUpdateService;)Lcom/farben/faq/b/h;
    .locals 1

    iget-object v0, p0, Lcom/farben/faq/service/FAQUpdateService;->i:Lcom/farben/faq/b/h;

    return-object v0
.end method

.method private a(IIF)V
    .locals 8

    const/4 v1, 0x0

    sput p1, Lcom/farben/faq/service/FAQUpdateService;->c:I

    sput p2, Lcom/farben/faq/service/FAQUpdateService;->d:I

    sput p3, Lcom/farben/faq/service/FAQUpdateService;->e:F

    const-string v0, "update_find"

    invoke-static {v0}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/farben/faq/DownloadInfoAct;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {p0, v1, v2, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v3, Landroid/app/Notification;

    const v4, 0x1080081

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v3, v4, v0, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget v0, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v3, Landroid/app/Notification;->flags:I

    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/farben/faq/service/FAQUpdateService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v5, 0x7f030017

    invoke-direct {v4, v0, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v0, 0x7f080085

    const-string v5, "faqclient.apk"

    invoke-virtual {v4, v0, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    if-nez p2, :cond_0

    move v0, v1

    :goto_0
    const-string v5, "download size:"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v5, 0x7f080086

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v5, 0x7f080087

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v0, v1}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    const v0, 0x7f080088

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/farben/faq/service/FAQUpdateService;->k:Ljava/text/DecimalFormat;

    float-to-double v6, p3

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "kb/s"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    int-to-long v0, p1

    invoke-static {p0, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    int-to-long v5, p2

    invoke-static {p0, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    const v5, 0x7f080089

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iput-object v4, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iput-object v2, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    sget-object v0, Lcom/farben/faq/service/FAQUpdateService;->a:Landroid/app/NotificationManager;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :cond_0
    int-to-float v0, p1

    int-to-float v5, p2

    div-float/2addr v0, v5

    const/high16 v5, 0x42c8

    mul-float/2addr v0, v5

    float-to-int v0, v0

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/farben/faq/service/FAQUpdateService;IIF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/farben/faq/service/FAQUpdateService;->a(IIF)V

    return-void
.end method

.method static synthetic a(Lcom/farben/faq/service/FAQUpdateService;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/farben/faq/service/FAQUpdateService;->j:Lcom/farben/faq/e/a;

    invoke-virtual {v0}, Lcom/farben/faq/e/a;->a()V

    invoke-static {p1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xbb8

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic b(Lcom/farben/faq/service/FAQUpdateService;)Lcom/farben/faq/e/a;
    .locals 1

    iget-object v0, p0, Lcom/farben/faq/service/FAQUpdateService;->j:Lcom/farben/faq/e/a;

    return-object v0
.end method

.method static synthetic b(Lcom/farben/faq/service/FAQUpdateService;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "\u5b89\u88c5\u8def\u5f84"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/farben/faq/service/FAQUpdateService;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/farben/faq/service/FAQUpdateService;->stopSelf()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/farben/faq/service/FAQUpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, Lcom/farben/faq/service/FAQUpdateService;->a:Landroid/app/NotificationManager;

    new-instance v0, Lcom/farben/faq/service/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/farben/faq/service/b;-><init>(Lcom/farben/faq/service/FAQUpdateService;B)V

    sput-object v0, Lcom/farben/faq/service/FAQUpdateService;->b:Lcom/farben/faq/service/b;

    sget-object v0, Lcom/farben/faq/service/FAQUpdateService;->b:Lcom/farben/faq/service/b;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.farben.faq.service.FAQ_BROADCAST"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/farben/faq/service/FAQUpdateService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcom/farben/faq/service/a;

    invoke-direct {v0, p0}, Lcom/farben/faq/service/a;-><init>(Lcom/farben/faq/service/FAQUpdateService;)V

    sput-object v0, Lcom/farben/faq/service/FAQUpdateService;->g:Landroid/os/Handler;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    sget-object v0, Lcom/farben/faq/service/FAQUpdateService;->a:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/farben/faq/service/FAQUpdateService;->a:Landroid/app/NotificationManager;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    iget-object v0, p0, Lcom/farben/faq/service/FAQUpdateService;->j:Lcom/farben/faq/e/a;

    invoke-virtual {v0}, Lcom/farben/faq/e/a;->a()V

    sget-object v0, Lcom/farben/faq/service/FAQUpdateService;->b:Lcom/farben/faq/service/b;

    invoke-virtual {p0, v0}, Lcom/farben/faq/service/FAQUpdateService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string v0, "FAQUpdateService"

    const-string v1, "\u66f4\u65b0\u670d\u52a1\u9500\u6bc1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    const-string v0, "FAQUpdateService"

    const-string v1, "\u66f4\u65b0\u670d\u52a1\u542f\u52a8"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/farben/faq/common/g;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "update_downloadfailedmsg"

    invoke-static {v0}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "versionbean"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/farben/faq/b/h;

    iput-object v0, p0, Lcom/farben/faq/service/FAQUpdateService;->i:Lcom/farben/faq/b/h;

    iget-object v0, p0, Lcom/farben/faq/service/FAQUpdateService;->i:Lcom/farben/faq/b/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farben/faq/service/FAQUpdateService;->i:Lcom/farben/faq/b/h;

    sget-boolean v1, Lcom/farben/faq/service/FAQUpdateService;->f:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/farben/faq/b/h;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8f6f\u4ef6A\u5305\u66f4\u65b0\u5730\u5740\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/farben/faq/service/FAQUpdateService;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/farben/faq/common/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v3, v3, v1}, Lcom/farben/faq/service/FAQUpdateService;->a(IIF)V

    new-instance v1, Lcom/farben/faq/e/a;

    invoke-direct {v1, p0}, Lcom/farben/faq/e/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/farben/faq/service/FAQUpdateService;->j:Lcom/farben/faq/e/a;

    iget-object v1, p0, Lcom/farben/faq/service/FAQUpdateService;->j:Lcom/farben/faq/e/a;

    sget-object v2, Lcom/farben/faq/common/g;->a:Ljava/lang/String;

    const-string v3, "ztefaq/software/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/farben/faq/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
