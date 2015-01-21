.class public Lcom/ctc/System/DownOrUnInstalAPPService;
.super Landroid/app/Service;


# static fields
.field public static c:Z

.field private static i:Lcom/ctc/c/n;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field d:Landroid/app/NotificationManager;

.field e:Landroid/app/Notification$Builder;

.field f:Landroid/app/PendingIntent;

.field public g:Landroid/os/Handler;

.field private h:Ljava/lang/String;

.field private j:Landroid/app/Notification;

.field private k:Landroid/app/NotificationManager;

.field private l:Z

.field private m:Landroid/os/Binder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/ctc/System/DownOrUnInstalAPPService;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, "DownOrUnInstalAPPService"

    iput-object v0, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->h:Ljava/lang/String;

    const-string v0, "downRequestCount"

    iput-object v0, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->a:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->b:I

    iput-object v1, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->j:Landroid/app/Notification;

    iput-object v1, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->k:Landroid/app/NotificationManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->l:Z

    new-instance v0, Lcom/ctc/System/d;

    invoke-direct {v0, p0}, Lcom/ctc/System/d;-><init>(Lcom/ctc/System/DownOrUnInstalAPPService;)V

    iput-object v0, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->m:Landroid/os/Binder;

    new-instance v0, Lcom/ctc/System/c;

    invoke-direct {v0, p0}, Lcom/ctc/System/c;-><init>(Lcom/ctc/System/DownOrUnInstalAPPService;)V

    iput-object v0, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->g:Landroid/os/Handler;

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/app/Notification;
    .locals 6

    const v5, 0x7f06003c

    const/16 v4, 0x15

    const/4 v3, 0x0

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/ctc/System/DownOrUnInstalAPPService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->d:Landroid/app/NotificationManager;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ctc/epush/CancelDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/ctc/System/DownOrUnInstalAPPService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->e:Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->e:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f020002

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Lcom/ctc/System/DownOrUnInstalAPPService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v3, v3}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v1, "0%"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->e:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->j:Landroid/app/Notification;

    iget-object v0, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->d:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->j:Landroid/app/Notification;

    invoke-virtual {v0, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :goto_0
    iget-object v0, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->j:Landroid/app/Notification;

    return-object v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ctc/epush/CancelDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->f:Landroid/app/PendingIntent;

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->j:Landroid/app/Notification;

    iget-object v0, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->j:Landroid/app/Notification;

    const v1, 0x7f020001

    iput v1, v0, Landroid/app/Notification;->icon:I

    iget-object v0, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->j:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->j:Landroid/app/Notification;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Lcom/ctc/System/DownOrUnInstalAPPService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0%"

    iget-object v3, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->f:Landroid/app/PendingIntent;

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->d:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->j:Landroid/app/Notification;

    invoke-virtual {v0, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    return-object v2

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ctc/a/a;

    invoke-static {p0, v0}, Lcom/ctc/b/f;->b(Landroid/content/Context;Lcom/ctc/a/a;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private a()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ctc/System/PushArrivedReportService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/ctc/System/DownOrUnInstalAPPService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method static synthetic a(Lcom/ctc/System/DownOrUnInstalAPPService;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->l:Z

    return-void
.end method

.method private a(Lcom/ctc/a/a;)V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/ctc/System/DownOrUnInstalAPPService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_1

    invoke-virtual {p1}, Lcom/ctc/a/a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const-string v0, ""

    invoke-virtual {p1}, Lcom/ctc/a/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/ctc/a/a;->f()Ljava/lang/String;

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private a(Lcom/ctc/a/c;)V
    .locals 5

    const/4 v4, 0x0

    sget-object v0, Lcom/ctc/System/DownOrUnInstalAPPService;->i:Lcom/ctc/c/n;

    const-string v1, "down_isall"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Boolean;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;[Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ctc.epush.ReportAppUpdate_Action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "pushModel"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/ctc/System/DownOrUnInstalAPPService;->sendStickyBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/ctc/a/c;Ljava/util/List;)V
    .locals 9

    const/4 v2, 0x0

    sget-object v0, Lcom/ctc/System/DownOrUnInstalAPPService;->i:Lcom/ctc/c/n;

    const-string v1, "down_isall"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    sget-object v0, Lcom/ctc/System/DownOrUnInstalAPPService;->i:Lcom/ctc/c/n;

    iget-object v1, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;I)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_0
    if-lt v1, v3, :cond_2

    invoke-virtual {p1, v6}, Lcom/ctc/a/c;->a(Ljava/util/List;)V

    sget-object v0, Lcom/ctc/System/DownOrUnInstalAPPService;->i:Lcom/ctc/c/n;

    const-string v1, "updateAppCount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ctc/System/DownOrUnInstalAPPService;->a()V

    const-string v0, ""

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u3001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ctc/System/DownOrUnInstalAPPService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ctc/epush/UserDialogActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "dialogFlag"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "prompt"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/ctc/System/DownOrUnInstalAPPService;->startActivity(Landroid/content/Intent;)V

    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, p1}, Lcom/ctc/System/DownOrUnInstalAPPService;->a(Lcom/ctc/a/c;)V

    :goto_1
    return-void

    :cond_2
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ctc/a/a;

    invoke-static {p0, v0}, Lcom/ctc/b/f;->a(Landroid/content/Context;Lcom/ctc/a/a;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/ctc/a/a;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    invoke-virtual {v0}, Lcom/ctc/a/a;->e()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ctc/b/f;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u3001"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ctc/a/a;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-direct {p0, p1}, Lcom/ctc/System/DownOrUnInstalAPPService;->a(Lcom/ctc/a/c;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-direct {p0, p1}, Lcom/ctc/System/DownOrUnInstalAPPService;->a(Lcom/ctc/a/c;)V

    throw v0
.end method

.method static synthetic b(Lcom/ctc/System/DownOrUnInstalAPPService;)Landroid/app/NotificationManager;
    .locals 1

    iget-object v0, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->k:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Lcom/ctc/a/c;
    .locals 2

    new-instance v0, Lcom/ctc/a/c;

    invoke-direct {v0}, Lcom/ctc/a/c;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/ctc/b/e;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/ctc/a/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private b(Lcom/ctc/a/c;Ljava/util/List;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/ctc/System/DownOrUnInstalAPPService;->i:Lcom/ctc/c/n;

    const-string v1, "updateAppCount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ctc/System/DownOrUnInstalAPPService;->a()V

    invoke-direct {p0, p2}, Lcom/ctc/System/DownOrUnInstalAPPService;->b(Ljava/util/List;)Z

    move-result v0

    sget-object v1, Lcom/ctc/System/DownOrUnInstalAPPService;->i:Lcom/ctc/c/n;

    const-string v3, "down_isall"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    sget-object v1, Lcom/ctc/System/DownOrUnInstalAPPService;->i:Lcom/ctc/c/n;

    iget-object v3, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->a:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lcom/ctc/c/n;->b(Ljava/lang/String;I)I

    move-result v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->b:I

    if-ne v1, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/ctc/System/DownOrUnInstalAPPService;->i:Lcom/ctc/c/n;

    const-string v1, "down_isall"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    sget-object v0, Lcom/ctc/System/DownOrUnInstalAPPService;->i:Lcom/ctc/c/n;

    iget-object v1, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;I)V

    invoke-direct {p0, p2}, Lcom/ctc/System/DownOrUnInstalAPPService;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    move v1, v2

    :goto_0
    if-lt v1, v5, :cond_2

    invoke-virtual {p1, v4}, Lcom/ctc/a/c;->c(Ljava/util/List;)V

    sget-object v0, Lcom/ctc/System/DownOrUnInstalAPPService;->i:Lcom/ctc/c/n;

    const-string v1, "report"

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "1"

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Lcom/ctc/c/n;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ctc/System/ReportAppUpdateInfoService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "pushModel"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/ctc/System/DownOrUnInstalAPPService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ctc/a/a;

    invoke-direct {p0, v0}, Lcom/ctc/System/DownOrUnInstalAPPService;->a(Lcom/ctc/a/a;)V

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/ctc/c/g;->a:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/ctc/a/a;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".apk"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ctc/b/f;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/ctc/c/h;->e(Landroid/content/Context;)V

    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-static {p0}, Lcom/ctc/c/h;->d(Landroid/content/Context;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private b(Ljava/util/List;)Z
    .locals 12

    const/4 v11, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "download() \u2191 MyConstant.needBreakForTimedOut: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/ctc/c/g;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-boolean v0, Lcom/ctc/c/g;->m:Z

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/ctc/System/DownOrUnInstalAPPService;->i:Lcom/ctc/c/n;

    const-string v1, "pushAppJson"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, ""

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v4}, Lcom/ctc/c/n;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/ctc/b/e;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/ctc/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ctc/a/c;->f()Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "appList.size(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/ctc/c/g;->m:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    new-instance v6, Lcom/ctc/b/c;

    const-string v0, ""

    invoke-direct {v6, v0, p0}, Lcom/ctc/b/c;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {p0, p1}, Lcom/ctc/c/h;->a(Landroid/content/Context;Ljava/util/List;)V

    move v4, v3

    move v1, v3

    :goto_1
    if-lt v4, v5, :cond_2

    :goto_2
    sget-boolean v0, Lcom/ctc/epush/CancelDialogActivity;->b:Z

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    sput-boolean v3, Lcom/ctc/epush/CancelDialogActivity;->b:Z

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u2193 download() :isAlldowned:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_3
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "\u2191 downLoad() CancelDialogActivity.cancelAll: "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v7, Lcom/ctc/epush/CancelDialogActivity;->b:Z

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-boolean v0, Lcom/ctc/epush/CancelDialogActivity;->b:Z

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/List;->clear()V

    sput-boolean v3, Lcom/ctc/epush/CancelDialogActivity;->b:Z

    sget-object v0, Lcom/ctc/System/DownOrUnInstalAPPService;->i:Lcom/ctc/c/n;

    const-string v1, "pushAppJson"

    const-string v4, ""

    invoke-virtual {v0, v1, v4}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/ctc/System/DownOrUnInstalAPPService;->i:Lcom/ctc/c/n;

    const-string v1, "com.ctc.epush.DownloadException_FLAG"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    sget-object v0, Lcom/ctc/System/DownOrUnInstalAPPService;->i:Lcom/ctc/c/n;

    const-string v1, "down_isall"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Lcom/ctc/System/DownOrUnInstalAPPService;->stopSelf()V

    move v1, v3

    goto :goto_3

    :cond_3
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ctc/a/a;

    invoke-virtual {v0}, Lcom/ctc/a/a;->c()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/ctc/System/DownOrUnInstalAPPService;->i:Lcom/ctc/c/n;

    invoke-virtual {v8, v7, v3}, Lcom/ctc/c/n;->b(Ljava/lang/String;I)I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "download() \u5f53\u524d\u4e0b\u8f7d:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", rang: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "MyConstant.needBreakForTimedOut:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v10, Lcom/ctc/c/g;->m:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-boolean v9, Lcom/ctc/c/g;->m:Z

    if-eqz v9, :cond_4

    sput-boolean v3, Lcom/ctc/c/g;->m:Z

    sget-object v0, Lcom/ctc/System/DownOrUnInstalAPPService;->i:Lcom/ctc/c/n;

    const-string v2, "down_isall"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Lcom/ctc/System/DownOrUnInstalAPPService;->stopSelf()V

    goto/16 :goto_2

    :cond_4
    if-ne v8, v11, :cond_6

    invoke-virtual {v0}, Lcom/ctc/a/a;->c()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/ctc/System/DownOrUnInstalAPPService;->c(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    sget-object v8, Lcom/ctc/System/DownOrUnInstalAPPService;->i:Lcom/ctc/c/n;

    invoke-virtual {v8, v7, v3}, Lcom/ctc/c/n;->a(Ljava/lang/String;I)V

    sget-boolean v7, Lcom/ctc/c/g;->k:Z

    if-eqz v7, :cond_5

    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ctc/a/a;->a()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v8, 0x7f06003d

    invoke-virtual {p0, v8}, Lcom/ctc/System/DownOrUnInstalAPPService;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/ctc/System/DownOrUnInstalAPPService;->a(Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v7

    iput-object v7, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->j:Landroid/app/Notification;

    iget-object v7, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->k:Landroid/app/NotificationManager;

    const/16 v8, 0x15

    iget-object v9, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->j:Landroid/app/Notification;

    invoke-virtual {v7, v8, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    const/4 v7, 0x0

    sget-object v8, Lcom/ctc/System/DownOrUnInstalAPPService;->i:Lcom/ctc/c/n;

    iget-object v9, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->g:Landroid/os/Handler;

    invoke-virtual {v6, v7, v0, v8, v9}, Lcom/ctc/b/c;->a(ILcom/ctc/a/a;Lcom/ctc/c/n;Landroid/os/Handler;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "isAlldowned: "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ", MyConstant.needBreakForTimedOut: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v7, Lcom/ctc/c/g;->m:Z

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-boolean v1, Lcom/ctc/c/g;->m:Z

    if-eqz v1, :cond_9

    sput-boolean v3, Lcom/ctc/c/g;->m:Z

    invoke-virtual {p0}, Lcom/ctc/System/DownOrUnInstalAPPService;->stopSelf()V

    move v1, v3

    goto/16 :goto_3

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_4

    :cond_5
    sget-object v1, Lcom/ctc/System/DownOrUnInstalAPPService;->i:Lcom/ctc/c/n;

    iget-object v7, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->g:Landroid/os/Handler;

    invoke-virtual {v6, v3, v0, v1, v7}, Lcom/ctc/b/c;->a(ILcom/ctc/a/a;Lcom/ctc/c/n;Landroid/os/Handler;)Z

    move-result v0

    goto :goto_4

    :cond_6
    if-eq v8, v11, :cond_8

    sget-boolean v7, Lcom/ctc/c/g;->k:Z

    if-eqz v7, :cond_7

    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ctc/a/a;->a()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v9, 0x7f06003d

    invoke-virtual {p0, v9}, Lcom/ctc/System/DownOrUnInstalAPPService;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/ctc/System/DownOrUnInstalAPPService;->a(Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v7

    iput-object v7, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->j:Landroid/app/Notification;

    iget-object v7, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->k:Landroid/app/NotificationManager;

    const/16 v9, 0x15

    iget-object v10, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->j:Landroid/app/Notification;

    invoke-virtual {v7, v9, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    sget-object v7, Lcom/ctc/System/DownOrUnInstalAPPService;->i:Lcom/ctc/c/n;

    iget-object v9, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->g:Landroid/os/Handler;

    invoke-virtual {v6, v8, v0, v7, v9}, Lcom/ctc/b/c;->a(ILcom/ctc/a/a;Lcom/ctc/c/n;Landroid/os/Handler;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    goto :goto_4

    :catch_2
    move-exception v0

    move v0, v1

    goto :goto_4

    :cond_7
    sget-object v1, Lcom/ctc/System/DownOrUnInstalAPPService;->i:Lcom/ctc/c/n;

    iget-object v7, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->g:Landroid/os/Handler;

    invoke-virtual {v6, v8, v0, v1, v7}, Lcom/ctc/b/c;->a(ILcom/ctc/a/a;Lcom/ctc/c/n;Landroid/os/Handler;)Z

    move-result v0

    goto :goto_4

    :cond_8
    move v0, v2

    :cond_9
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v0

    goto/16 :goto_1
.end method

.method private c(Ljava/util/List;)Ljava/util/List;
    .locals 7

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    move v1, v2

    :goto_0
    if-lt v1, v4, :cond_0

    return-object v3

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ctc/a/a;

    invoke-virtual {v0}, Lcom/ctc/a/a;->c()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/ctc/System/DownOrUnInstalAPPService;->i:Lcom/ctc/c/n;

    invoke-virtual {v6, v5, v2}, Lcom/ctc/c/n;->b(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    invoke-virtual {v0}, Lcom/ctc/a/a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/ctc/System/DownOrUnInstalAPPService;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private c(Lcom/ctc/a/c;Ljava/util/List;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p2}, Lcom/ctc/System/DownOrUnInstalAPPService;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/ctc/System/DownOrUnInstalAPPService;->i:Lcom/ctc/c/n;

    const-string v3, "updateAppCount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ctc/System/DownOrUnInstalAPPService;->a()V

    invoke-direct {p0, v0}, Lcom/ctc/System/DownOrUnInstalAPPService;->b(Ljava/util/List;)Z

    move-result v1

    sget-object v3, Lcom/ctc/System/DownOrUnInstalAPPService;->i:Lcom/ctc/c/n;

    const-string v4, "down_isall"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    sget-object v3, Lcom/ctc/System/DownOrUnInstalAPPService;->i:Lcom/ctc/c/n;

    iget-object v4, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/ctc/c/n;->b(Ljava/lang/String;I)I

    move-result v3

    if-nez v1, :cond_0

    iget v1, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->b:I

    if-ne v3, v1, :cond_1

    :cond_0
    sget-object v1, Lcom/ctc/System/DownOrUnInstalAPPService;->i:Lcom/ctc/c/n;

    const-string v3, "down_isall"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    sget-object v1, Lcom/ctc/System/DownOrUnInstalAPPService;->i:Lcom/ctc/c/n;

    iget-object v3, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->a:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/ctc/System/DownOrUnInstalAPPService;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    move v1, v2

    :goto_0
    if-lt v1, v5, :cond_2

    invoke-virtual {p1, v4}, Lcom/ctc/a/c;->c(Ljava/util/List;)V

    sget-object v0, Lcom/ctc/System/DownOrUnInstalAPPService;->i:Lcom/ctc/c/n;

    const-string v1, "report"

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "1"

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Lcom/ctc/c/n;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ctc/System/ReportAppUpdateInfoService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "pushModel"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/ctc/System/DownOrUnInstalAPPService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ctc/a/a;

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/ctc/c/g;->a:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/ctc/a/a;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".apk"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ctc/b/f;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/ctc/c/h;->e(Landroid/content/Context;)V

    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-static {p0}, Lcom/ctc/c/h;->d(Landroid/content/Context;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private c(Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ctc/c/g;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ctc/c/g;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ctc/c/h;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d(Lcom/ctc/a/c;Ljava/util/List;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p2}, Lcom/ctc/System/DownOrUnInstalAPPService;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/ctc/System/DownOrUnInstalAPPService;->i:Lcom/ctc/c/n;

    const-string v3, "updateAppCount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ctc/System/DownOrUnInstalAPPService;->a()V

    invoke-direct {p0, v0}, Lcom/ctc/System/DownOrUnInstalAPPService;->b(Ljava/util/List;)Z

    move-result v1

    sget-object v3, Lcom/ctc/System/DownOrUnInstalAPPService;->i:Lcom/ctc/c/n;

    const-string v4, "down_isall"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    sget-object v3, Lcom/ctc/System/DownOrUnInstalAPPService;->i:Lcom/ctc/c/n;

    iget-object v4, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/ctc/c/n;->b(Ljava/lang/String;I)I

    if-eqz v1, :cond_0

    sget-object v1, Lcom/ctc/System/DownOrUnInstalAPPService;->i:Lcom/ctc/c/n;

    const-string v3, "down_isall"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    sget-object v1, Lcom/ctc/System/DownOrUnInstalAPPService;->i:Lcom/ctc/c/n;

    iget-object v3, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->a:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/ctc/System/DownOrUnInstalAPPService;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    move v1, v2

    :goto_0
    if-lt v1, v5, :cond_1

    invoke-virtual {p1, v4}, Lcom/ctc/a/c;->c(Ljava/util/List;)V

    sget-object v0, Lcom/ctc/System/DownOrUnInstalAPPService;->i:Lcom/ctc/c/n;

    const-string v1, "APP_UPDATA"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ctc/epush/PushResultDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "pushModel"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/ctc/System/DownOrUnInstalAPPService;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lcom/ctc/System/DownOrUnInstalAPPService;->i:Lcom/ctc/c/n;

    const-string v1, "report"

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "1"

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Lcom/ctc/c/n;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ctc/System/ReportAppUpdateInfoService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "pushModel"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/ctc/System/DownOrUnInstalAPPService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_1
    invoke-virtual {p0}, Lcom/ctc/System/DownOrUnInstalAPPService;->stopSelf()V

    :cond_0
    return-void

    :cond_1
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ctc/a/a;

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/ctc/a/a;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/ctc/c/g;->a:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/ctc/a/a;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".apk"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ctc/b/f;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u3001"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ctc/a/a;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    invoke-static {p0}, Lcom/ctc/c/h;->e(Landroid/content/Context;)V

    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    invoke-static {p0}, Lcom/ctc/c/h;->d(Landroid/content/Context;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_3
.end method

.method private e(Lcom/ctc/a/c;Ljava/util/List;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p2}, Lcom/ctc/System/DownOrUnInstalAPPService;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/ctc/System/DownOrUnInstalAPPService;->i:Lcom/ctc/c/n;

    const-string v3, "updateAppCount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ctc/System/DownOrUnInstalAPPService;->a()V

    invoke-direct {p0, v0}, Lcom/ctc/System/DownOrUnInstalAPPService;->b(Ljava/util/List;)Z

    move-result v1

    sget-object v3, Lcom/ctc/System/DownOrUnInstalAPPService;->i:Lcom/ctc/c/n;

    const-string v4, "down_isall"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    sget-object v3, Lcom/ctc/System/DownOrUnInstalAPPService;->i:Lcom/ctc/c/n;

    iget-object v4, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/ctc/c/n;->b(Ljava/lang/String;I)I

    if-eqz v1, :cond_0

    sget-object v1, Lcom/ctc/System/DownOrUnInstalAPPService;->i:Lcom/ctc/c/n;

    const-string v3, "down_isall"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    sget-object v1, Lcom/ctc/System/DownOrUnInstalAPPService;->i:Lcom/ctc/c/n;

    iget-object v3, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->a:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/ctc/System/DownOrUnInstalAPPService;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    move v1, v2

    :goto_0
    if-lt v1, v5, :cond_1

    invoke-virtual {p1, v4}, Lcom/ctc/a/c;->c(Ljava/util/List;)V

    sget-object v0, Lcom/ctc/System/DownOrUnInstalAPPService;->i:Lcom/ctc/c/n;

    const-string v1, "APP_UPDATA"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/ctc/c/n;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ctc/epush/PushResultDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "pushModel"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/ctc/System/DownOrUnInstalAPPService;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lcom/ctc/System/DownOrUnInstalAPPService;->i:Lcom/ctc/c/n;

    const-string v1, "report"

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "1"

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Lcom/ctc/c/n;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ctc/System/ReportAppUpdateInfoService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "pushModel"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/ctc/System/DownOrUnInstalAPPService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ctc/a/a;

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/ctc/a/a;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/ctc/c/g;->a:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/ctc/a/a;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".apk"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ctc/b/f;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u3001"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ctc/a/a;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    invoke-static {p0}, Lcom/ctc/c/h;->e(Landroid/content/Context;)V

    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    invoke-static {p0}, Lcom/ctc/c/h;->d(Landroid/content/Context;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_3
.end method


# virtual methods
.method public final a(Landroid/content/Intent;I)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    new-instance v0, Lcom/ctc/c/n;

    invoke-direct {v0, p0}, Lcom/ctc/c/n;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ctc/System/DownOrUnInstalAPPService;->i:Lcom/ctc/c/n;

    new-instance v0, Lcom/ctc/a/c;

    invoke-direct {v0}, Lcom/ctc/a/c;-><init>()V

    sget-object v0, Lcom/ctc/System/DownOrUnInstalAPPService;->i:Lcom/ctc/c/n;

    iget-object v1, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v7}, Lcom/ctc/c/n;->b(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/ctc/System/DownOrUnInstalAPPService;->i:Lcom/ctc/c/n;

    iget-object v2, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->a:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/ctc/c/n;->a(Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Start DownOrUnInstalAPPService...Time:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-object v0, Lcom/ctc/System/DownOrUnInstalAPPService;->i:Lcom/ctc/c/n;

    const-string v1, "pushAppJson"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/ctc/System/DownOrUnInstalAPPService;->stopSelf()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/ctc/System/DownOrUnInstalAPPService;->b(Ljava/lang/String;)Lcom/ctc/a/c;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/ctc/a/c;->f()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/ctc/System/DownOrUnInstalAPPService;->stopSelf()V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/ctc/a/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ctc/a/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ctc/a/c;->f()Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cmd :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", level: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v4, "down"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "0"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iput-boolean v6, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->l:Z

    sput-boolean v6, Lcom/ctc/c/g;->k:Z

    invoke-direct {p0, v0, v3}, Lcom/ctc/System/DownOrUnInstalAPPService;->d(Lcom/ctc/a/c;Ljava/util/List;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ctc.epush.ReportAppUpdate_Action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ctc/System/DownOrUnInstalAPPService;->sendStickyBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/ctc/System/DownOrUnInstalAPPService;->stopSelf()V

    goto :goto_0

    :cond_4
    const-string v4, "down"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iput-boolean v6, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->l:Z

    sput-boolean v6, Lcom/ctc/c/g;->k:Z

    invoke-direct {p0, v0, v3}, Lcom/ctc/System/DownOrUnInstalAPPService;->e(Lcom/ctc/a/c;Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/ctc/System/DownOrUnInstalAPPService;->a(Lcom/ctc/a/c;)V

    invoke-virtual {p0}, Lcom/ctc/System/DownOrUnInstalAPPService;->stopSelf()V

    goto :goto_0

    :cond_5
    const-string v4, "down"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "2"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iput-boolean v6, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->l:Z

    sput-boolean v7, Lcom/ctc/c/g;->k:Z

    invoke-direct {p0, v0, v3}, Lcom/ctc/System/DownOrUnInstalAPPService;->c(Lcom/ctc/a/c;Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/ctc/System/DownOrUnInstalAPPService;->a(Lcom/ctc/a/c;)V

    invoke-virtual {p0}, Lcom/ctc/System/DownOrUnInstalAPPService;->stopSelf()V

    goto/16 :goto_0

    :cond_6
    const-string v4, "down"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "3"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iput-boolean v6, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->l:Z

    sput-boolean v7, Lcom/ctc/c/g;->k:Z

    invoke-direct {p0, v0, v3}, Lcom/ctc/System/DownOrUnInstalAPPService;->b(Lcom/ctc/a/c;Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/ctc/System/DownOrUnInstalAPPService;->a(Lcom/ctc/a/c;)V

    invoke-virtual {p0}, Lcom/ctc/System/DownOrUnInstalAPPService;->stopSelf()V

    goto/16 :goto_0

    :cond_7
    const-string v4, "revoke"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ctc/System/ReportAppUpdateInfoService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "pushModel"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/ctc/System/DownOrUnInstalAPPService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-direct {p0, v0, v3}, Lcom/ctc/System/DownOrUnInstalAPPService;->a(Lcom/ctc/a/c;Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;II)V
    .locals 9

    const-wide/high16 v7, 0x4059

    const/16 v6, 0x15

    const/4 v5, 0x0

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-double v1, p3

    int-to-double v3, p2

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    mul-double v3, v0, v7

    double-to-int v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    mul-double/2addr v0, v7

    double-to-int v0, v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->j:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x7f080024

    invoke-virtual {v1, v2, p2, p3, v5}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    iget-object v1, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->j:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x7f080023

    invoke-virtual {v1, v2, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v1, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->j:Landroid/app/Notification;

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x7f06003c

    invoke-virtual {p0, v3}, Lcom/ctc/System/DownOrUnInstalAPPService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "%"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->f:Landroid/app/PendingIntent;

    invoke-virtual {v1, p0, v2, v0, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->k:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->j:Landroid/app/Notification;

    invoke-virtual {v0, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :goto_0
    if-lt p3, p2, :cond_0

    iget-object v0, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->k:Landroid/app/NotificationManager;

    invoke-virtual {v0, v6}, Landroid/app/NotificationManager;->cancel(I)V

    iput-boolean v5, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->l:Z

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->e:Landroid/app/Notification$Builder;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, v0, v5}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->e:Landroid/app/Notification$Builder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "%"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->k:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->e:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->m:Landroid/os/Binder;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/ctc/System/DownOrUnInstalAPPService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->k:Landroid/app/NotificationManager;

    new-instance v0, Lcom/ctc/c/n;

    invoke-direct {v0, p0}, Lcom/ctc/c/n;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ctc/System/DownOrUnInstalAPPService;->i:Lcom/ctc/c/n;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    :try_start_0
    sget-object v0, Lcom/ctc/System/DownOrUnInstalAPPService;->i:Lcom/ctc/c/n;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ctc/System/DownOrUnInstalAPPService;->i:Lcom/ctc/c/n;

    iget-object v1, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->b(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Close DownOrUnInstalAPPService...Time:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->l:Z

    iget-object v0, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->k:Landroid/app/NotificationManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ctc/System/DownOrUnInstalAPPService;->k:Landroid/app/NotificationManager;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DownOrUninstal.OnDestory() Exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    sget-boolean v0, Lcom/ctc/System/DownOrUnInstalAPPService;->c:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/ctc/System/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/ctc/System/e;-><init>(Lcom/ctc/System/DownOrUnInstalAPPService;Landroid/content/Intent;I)V

    invoke-virtual {v0}, Lcom/ctc/System/e;->start()V

    goto :goto_0
.end method
