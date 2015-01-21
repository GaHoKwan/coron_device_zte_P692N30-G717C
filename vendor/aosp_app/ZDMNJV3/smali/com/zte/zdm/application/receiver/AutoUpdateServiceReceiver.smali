.class public Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field public static final a:I = 0xf

.field public static final b:I = 0x4

.field public static final c:I = 0x3

.field public static final d:I = 0x2

.field public static final e:I = 0x1

.field public static final f:I = 0x0

.field public static final g:I = 0x5

.field public static final h:I = 0x7

.field public static final i:I = 0x8

.field public static j:I


# instance fields
.field private k:Lcom/zte/zdm/application/b/g;

.field private l:Landroid/content/Context;

.field private m:Lcom/zte/zdm/application/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x239

    sput v0, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->j:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a(Z)V
    .locals 2

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "isAutoUpdate"

    invoke-virtual {v0, v1, p0}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public static a()Z
    .locals 3

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "isAutoUpdate"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static b(Z)V
    .locals 2

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "isAutoUpdateNotify"

    invoke-virtual {v0, v1, p0}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public static b()Z
    .locals 3

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "isAutoUpdateNotify"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 8

    const v7, 0x7f09000d

    const/4 v6, 0x0

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const v1, 0x7f020027

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    const/16 v1, 0x10

    iput v1, v5, Landroid/app/Notification;->flags:I

    iget v1, v5, Landroid/app/Notification;->defaults:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v5, Landroid/app/Notification;->defaults:I

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f090125

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {p1, v6, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v5, p1, v1, v2, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/16 v1, 0x10e1

    invoke-virtual {v0, v1, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public c()V
    .locals 4

    const-string v0, "AutoUpdateServiceReceiver showNotifyOrDialog"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->l:Landroid/content/Context;

    iget-object v0, p0, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->m:Lcom/zte/zdm/application/a/a;

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->a()Lcom/zte/zdm/application/b/g;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->k:Lcom/zte/zdm/application/b/g;

    iget-object v0, p0, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->k:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->b()Lcom/zte/zdm/a/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->k:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->d()V

    :goto_0
    return-void

    :cond_1
    const-string v0, "showNotifyOrDialog: screen is null or isHomeClick is true, so show DD Dialog"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->k:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/application/App;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/application/App;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v0, "AutoUpdateServiceReceiver showNotify"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->l:Landroid/content/Context;

    iget-object v0, p0, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->m:Lcom/zte/zdm/application/a/a;

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->a()Lcom/zte/zdm/application/b/g;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->k:Lcom/zte/zdm/application/b/g;

    iget-object v0, p0, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->m:Lcom/zte/zdm/application/a/a;

    const-string v1, "delay_install"

    invoke-virtual {v0, v1, v5}, Lcom/zte/zdm/application/a/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->l:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->l:Landroid/content/Context;

    invoke-static {v3}, Lcom/zte/zdm/application/d/e;->a(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "intentFromNotify"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->k:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v2}, Lcom/zte/zdm/application/b/g;->E()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBusy = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ; isDelayInstall = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "putExtra SHOW_DOWNLOAD_NOW"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->l:Landroid/content/Context;

    const/high16 v2, 0x800

    invoke-static {v0, v5, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v0, p0, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->l:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    const v3, 0x7f020027

    iput v3, v2, Landroid/app/Notification;->icon:I

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "Australia"

    aput-object v4, v3, v5

    invoke-static {v3}, Lcom/zte/zdm/application/b;->b([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->l:Landroid/content/Context;

    const v4, 0x7f0900a9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->l:Landroid/content/Context;

    const v5, 0x7f0900aa

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->l:Landroid/content/Context;

    invoke-virtual {v2, v5, v3, v4, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    :goto_0
    const/16 v1, 0x1a

    iput v1, v2, Landroid/app/Notification;->flags:I

    const/4 v1, 0x5

    iput v1, v2, Landroid/app/Notification;->defaults:I

    sget v1, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->j:I

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->l:Landroid/content/Context;

    const v4, 0x7f09000f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->l:Landroid/content/Context;

    const v5, 0x7f090040

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->l:Landroid/content/Context;

    invoke-virtual {v2, v5, v3, v4, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v1, 0x0

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->l:Landroid/content/Context;

    iget-object v0, p0, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->m:Lcom/zte/zdm/application/a/a;

    iget-object v0, p0, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->m:Lcom/zte/zdm/application/a/a;

    const-string v2, "check_status"

    invoke-virtual {v0, v2, v1}, Lcom/zte/zdm/application/a/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "set alerm auto update"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.zte.zdm.AUTO_UPDATE_RECEIVER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v2, p0, Lcom/zte/zdm/application/receiver/AutoUpdateServiceReceiver;->m:Lcom/zte/zdm/application/a/a;

    const-string v3, "next_update_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/zte/zdm/application/a/a;->a(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/32 v4, 0x240c8400

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.zte.zdm.AUTO_UPDATE_RECEIVER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "updateNotify()"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
