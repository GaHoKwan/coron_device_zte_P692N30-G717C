.class public Lcn/com/zte/nlt/update/AutoUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AutoUpdateReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private doGetUpdateInfoTask()V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcn/com/zte/nlt/update/AutoUpdateReceiver$1;

    invoke-direct {v0, p0}, Lcn/com/zte/nlt/update/AutoUpdateReceiver$1;-><init>(Lcn/com/zte/nlt/update/AutoUpdateReceiver;)V

    .line 82
    .local v0, asyncTask:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Lcn/com/zte/nlt/down/UpdatePackageInfo;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 83
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 42
    const-string v1, "time out"

    invoke-static {v1}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcn/com/zte/nlt/update/AutoUpdate;->getInstance()Lcn/com/zte/nlt/update/AutoUpdate;

    move-result-object v1

    invoke-virtual {v1}, Lcn/com/zte/nlt/update/AutoUpdate;->unregisterAutoUpdate()V

    .line 44
    invoke-static {}, Lcn/com/zte/nlt/update/AutoUpdate;->getInstance()Lcn/com/zte/nlt/update/AutoUpdate;

    move-result-object v1

    invoke-virtual {v1}, Lcn/com/zte/nlt/update/AutoUpdate;->registerAutoUpdate()V

    .line 47
    invoke-static {}, Lcn/com/zte/nlt/SettingsInfo;->isAutoUpdateOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcn/com/zte/nlt/update/AutoUpdate;->getInstance()Lcn/com/zte/nlt/update/AutoUpdate;

    move-result-object v1

    invoke-virtual {v1}, Lcn/com/zte/nlt/update/AutoUpdate;->judgeUpdateTime()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-virtual {p0}, Lcn/com/zte/nlt/update/AutoUpdateReceiver;->showNotification()V

    .line 52
    :cond_0
    new-instance v0, Lcn/com/zte/yp/statics/StaticsInfo;

    invoke-direct {v0}, Lcn/com/zte/yp/statics/StaticsInfo;-><init>()V

    .line 53
    .local v0, staticsInfo:Lcn/com/zte/yp/statics/StaticsInfo;
    invoke-virtual {v0, p1}, Lcn/com/zte/yp/statics/StaticsInfo;->sendStaticsInfo(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method public showNotification()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 102
    invoke-static {}, Lcn/com/zte/yp/YpApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 103
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcn/com/zte/nlt/SettingsActivity;

    invoke-direct {v1, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "update"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 105
    const/high16 v4, 0x400

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 106
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    const v5, 0x7f080072

    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const v5, 0x7f080073

    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const v5, 0x7f02001e

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-static {v0, v6, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 111
    .local v2, notification:Landroid/app/Notification;
    const-string v4, "notification"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 113
    .local v3, notificationManager:Landroid/app/NotificationManager;
    const v4, 0x7f02001f

    invoke-virtual {v3, v4, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 115
    return-void
.end method

.method public showNotification(Lcn/com/zte/nlt/down/UpdatePackageInfo;)V
    .locals 7
    .parameter "pkgInfo"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 86
    invoke-static {}, Lcn/com/zte/yp/YpApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 87
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcn/com/zte/nlt/SettingsActivity;

    invoke-direct {v1, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "update"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 89
    const/high16 v4, 0x400

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 90
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    const v5, 0x7f080072

    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const v5, 0x7f080073

    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const v5, 0x7f02001e

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-static {v0, v6, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 95
    .local v2, notification:Landroid/app/Notification;
    const-string v4, "notification"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 97
    .local v3, notificationManager:Landroid/app/NotificationManager;
    const v4, 0x7f02001f

    invoke-virtual {v3, v4, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 99
    return-void
.end method
