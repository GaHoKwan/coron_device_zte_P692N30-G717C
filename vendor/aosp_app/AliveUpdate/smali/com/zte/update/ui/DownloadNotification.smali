.class public Lcom/zte/update/ui/DownloadNotification;
.super Ljava/lang/Object;
.source "DownloadNotification.java"

# interfaces
.implements Lcom/zte/update/app/ui/UiObserver;
.implements Lcom/zte/update/ui/HandleTimerCallback;


# static fields
.field private static instance:Lcom/zte/update/ui/DownloadNotification;


# instance fields
.field private compeletApp:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field datMgr:Lcom/zte/update/data/DataManager;

.field handleTimer:Lcom/zte/update/ui/HandleTimer;

.field private infoList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/zte/update/data/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/zte/update/ui/DownloadNotification;->infoList:Ljava/util/HashSet;

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/zte/update/ui/DownloadNotification;->compeletApp:Ljava/util/HashSet;

    .line 34
    invoke-static {}, Lcom/zte/update/data/DataManager;->getInstance()Lcom/zte/update/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/update/ui/DownloadNotification;->datMgr:Lcom/zte/update/data/DataManager;

    .line 40
    return-void
.end method

.method private createNotificationBuilder(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 4
    .parameter "context"
    .parameter "title"

    .prologue
    const/4 v3, 0x0

    .line 190
    new-instance v0, Landroid/content/Intent;

    const-string v2, "intent.action.startActivity.SETTING_TO_ALIVE_UPDATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x3000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 192
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 194
    .local v1, notifybuilder:Landroid/app/Notification$Builder;
    invoke-static {p1, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 197
    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 198
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 200
    const v2, 0x7f020033

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 202
    return-object v1
.end method

.method private displayCompelete()V
    .locals 10

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 120
    .local v0, buffer:Ljava/lang/StringBuffer;
    iget-object v7, p0, Lcom/zte/update/ui/DownloadNotification;->compeletApp:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 122
    .local v4, mainKey:Ljava/lang/Object;
    invoke-direct {p0, v4, v0}, Lcom/zte/update/ui/DownloadNotification;->getLable(Ljava/lang/Object;Ljava/lang/StringBuffer;)V

    goto :goto_0

    .line 124
    .end local v4           #mainKey:Ljava/lang/Object;
    :cond_0
    invoke-static {}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getDefault()Lcom/zte/aliveupdate/main/AliveUpdateApp;

    move-result-object v2

    .line 125
    .local v2, context:Landroid/content/Context;
    invoke-direct {p0, v2, v0}, Lcom/zte/update/ui/DownloadNotification;->getCompeleteTitle(Landroid/content/Context;Ljava/lang/StringBuffer;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 127
    .local v6, title:Ljava/lang/CharSequence;
    invoke-direct {p0, v2, v6}, Lcom/zte/update/ui/DownloadNotification;->createNotificationBuilder(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 128
    .local v1, builder:Landroid/app/Notification$Builder;
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 129
    const-string v7, "notification"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 130
    .local v5, notificationManager:Landroid/app/NotificationManager;
    const-string v7, "notify_compelect"

    const/4 v8, 0x0

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v9

    invoke-virtual {v5, v7, v8, v9}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 131
    return-void
.end method

.method private displayDownloadNotification()V
    .locals 9

    .prologue
    .line 142
    const/4 v4, 0x0

    .line 143
    .local v4, total:I
    const/4 v3, 0x0

    .line 144
    .local v3, offset:I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 146
    .local v0, buffer:Ljava/lang/StringBuffer;
    iget-object v5, p0, Lcom/zte/update/ui/DownloadNotification;->infoList:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/update/data/DownloadInfo;

    .line 147
    .local v2, info:Lcom/zte/update/data/DownloadInfo;
    int-to-long v5, v4

    invoke-virtual {v2}, Lcom/zte/update/data/DownloadInfo;->getDownloadTotalSize()J

    move-result-wide v7

    add-long/2addr v5, v7

    long-to-int v4, v5

    .line 148
    int-to-long v5, v3

    invoke-virtual {v2}, Lcom/zte/update/data/DownloadInfo;->getDownloadOffset()J

    move-result-wide v7

    add-long/2addr v5, v7

    long-to-int v3, v5

    .line 149
    invoke-virtual {v2}, Lcom/zte/update/data/DownloadInfo;->getMainKeyValue()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v5, v0}, Lcom/zte/update/ui/DownloadNotification;->getLable(Ljava/lang/Object;Ljava/lang/StringBuffer;)V

    goto :goto_0

    .line 152
    .end local v2           #info:Lcom/zte/update/data/DownloadInfo;
    :cond_0
    invoke-direct {p0, v4, v3, v0}, Lcom/zte/update/ui/DownloadNotification;->displayDownloading(IILjava/lang/StringBuffer;)V

    .line 154
    return-void
.end method

.method private displayDownloading(IILjava/lang/StringBuffer;)V
    .locals 7
    .parameter "total"
    .parameter "offset"
    .parameter "buffer"

    .prologue
    const/4 v6, 0x0

    .line 177
    invoke-static {}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getDefault()Lcom/zte/aliveupdate/main/AliveUpdateApp;

    move-result-object v1

    .line 178
    .local v1, context:Landroid/content/Context;
    invoke-direct {p0, v1, p3}, Lcom/zte/update/ui/DownloadNotification;->getDownloadingTitle(Landroid/content/Context;Ljava/lang/StringBuffer;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 179
    .local v3, title:Ljava/lang/CharSequence;
    invoke-direct {p0, v1, v3}, Lcom/zte/update/ui/DownloadNotification;->createNotificationBuilder(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 180
    .local v0, builder:Landroid/app/Notification$Builder;
    invoke-virtual {v0, p1, p2, v6}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 183
    const-string v4, "notification"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 184
    .local v2, notificationManager:Landroid/app/NotificationManager;
    const-string v4, "notify_status"

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v2, v4, v6, v5}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 185
    return-void
.end method

.method private getCompeleteTitle(Landroid/content/Context;Ljava/lang/StringBuffer;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "context"
    .parameter "buffer"

    .prologue
    .line 134
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, labels:Ljava/lang/String;
    const v2, 0x7f060058

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, compelete:Ljava/lang/String;
    const-string v2, "###"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 138
    return-object v0
.end method

.method private getDownloadingTitle(Landroid/content/Context;Ljava/lang/StringBuffer;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "context"
    .parameter "buffer"

    .prologue
    .line 207
    const v2, 0x7f060008

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "..."

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, downloading:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, labels:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getInstance()Lcom/zte/update/ui/DownloadNotification;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/zte/update/ui/DownloadNotification;->instance:Lcom/zte/update/ui/DownloadNotification;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/zte/update/ui/DownloadNotification;

    invoke-direct {v0}, Lcom/zte/update/ui/DownloadNotification;-><init>()V

    sput-object v0, Lcom/zte/update/ui/DownloadNotification;->instance:Lcom/zte/update/ui/DownloadNotification;

    .line 46
    :cond_0
    sget-object v0, Lcom/zte/update/ui/DownloadNotification;->instance:Lcom/zte/update/ui/DownloadNotification;

    return-object v0
.end method

.method private getLable(Ljava/lang/Object;Ljava/lang/StringBuffer;)V
    .locals 7
    .parameter "mainkey"
    .parameter "buffer"

    .prologue
    .line 157
    invoke-static {}, Lcom/zte/update/data/DataManager;->getInstance()Lcom/zte/update/data/DataManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/zte/update/data/DataManager;->loadRequestAppInfo(Ljava/lang/Object;)Lcom/zte/update/data/RequestAppInfo;

    move-result-object v0

    .line 158
    .local v0, appInfo:Lcom/zte/update/data/RequestAppInfo;
    invoke-virtual {v0}, Lcom/zte/update/data/RequestAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, packageName:Ljava/lang/String;
    invoke-static {}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getDefault()Lcom/zte/aliveupdate/main/AliveUpdateApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 161
    .local v5, pm:Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 163
    .local v4, pckgInfo:Landroid/content/pm/PackageInfo;
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, lableTxt:Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    const-string v6, " "

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .end local v2           #lableTxt:Ljava/lang/String;
    .end local v4           #pckgInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v1

    .line 169
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/zte/util/Log;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startHandleTimer()V
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/zte/update/ui/DownloadNotification;->handleTimer:Lcom/zte/update/ui/HandleTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/update/ui/DownloadNotification;->handleTimer:Lcom/zte/update/ui/HandleTimer;

    invoke-virtual {v0}, Lcom/zte/update/ui/HandleTimer;->isStop()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    :cond_0
    new-instance v0, Lcom/zte/update/ui/HandleTimer;

    invoke-direct {v0, p0}, Lcom/zte/update/ui/HandleTimer;-><init>(Lcom/zte/update/ui/HandleTimerCallback;)V

    iput-object v0, p0, Lcom/zte/update/ui/DownloadNotification;->handleTimer:Lcom/zte/update/ui/HandleTimer;

    .line 113
    iget-object v0, p0, Lcom/zte/update/ui/DownloadNotification;->handleTimer:Lcom/zte/update/ui/HandleTimer;

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v1, v2}, Lcom/zte/update/ui/HandleTimer;->start(J)V

    .line 116
    :cond_1
    return-void
.end method

.method private stopHandleTimer()V
    .locals 1

    .prologue
    .line 99
    invoke-static {}, Lcom/zte/update/data/DataManager;->getInstance()Lcom/zte/update/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/update/data/DataManager;->getDownloadingInfos()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/update/ui/DownloadNotification;->infoList:Ljava/util/HashSet;

    .line 100
    iget-object v0, p0, Lcom/zte/update/ui/DownloadNotification;->infoList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/zte/update/ui/DownloadNotification;->handleTimer:Lcom/zte/update/ui/HandleTimer;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/zte/update/ui/DownloadNotification;->handleTimer:Lcom/zte/update/ui/HandleTimer;

    invoke-virtual {v0}, Lcom/zte/update/ui/HandleTimer;->stop()V

    goto :goto_0
.end method


# virtual methods
.method public clearCompelect()V
    .locals 1

    .prologue
    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/zte/update/ui/DownloadNotification;->compeletApp:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected handleDisplayCompelete()V
    .locals 1

    .prologue
    .line 228
    invoke-static {}, Lcom/zte/update/data/DataManager;->getInstance()Lcom/zte/update/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/update/data/DataManager;->getInstallFinishInfos()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/update/ui/DownloadNotification;->compeletApp:Ljava/util/HashSet;

    .line 229
    iget-object v0, p0, Lcom/zte/update/ui/DownloadNotification;->compeletApp:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 230
    invoke-direct {p0}, Lcom/zte/update/ui/DownloadNotification;->displayCompelete()V

    .line 232
    :cond_0
    return-void
.end method

.method protected handleDisplayDownloading()V
    .locals 4

    .prologue
    .line 235
    invoke-static {}, Lcom/zte/update/data/DataManager;->getInstance()Lcom/zte/update/data/DataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/update/data/DataManager;->getDownloadingInfos()Ljava/util/HashSet;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/update/ui/DownloadNotification;->infoList:Ljava/util/HashSet;

    .line 236
    iget-object v2, p0, Lcom/zte/update/ui/DownloadNotification;->infoList:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/zte/update/ui/DownloadNotification;->displayDownloadNotification()V

    .line 247
    :goto_0
    return-void

    .line 239
    :cond_0
    invoke-static {}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getDefault()Lcom/zte/aliveupdate/main/AliveUpdateApp;

    move-result-object v0

    .line 240
    .local v0, context:Landroid/content/Context;
    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 241
    .local v1, notificationManager:Landroid/app/NotificationManager;
    const-string v2, "notify_status"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onTimeHandle()V
    .locals 0

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/zte/update/ui/DownloadNotification;->handleDisplayDownloading()V

    .line 223
    invoke-virtual {p0}, Lcom/zte/update/ui/DownloadNotification;->handleDisplayCompelete()V

    .line 225
    return-void
.end method

.method public varargs update(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .parameter "tag"
    .parameter "data"

    .prologue
    .line 51
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 52
    .local v0, key:I
    const/16 v2, 0x11

    if-eq v0, v2, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    const/4 v2, 0x0

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 57
    .local v1, msg:I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 58
    invoke-direct {p0}, Lcom/zte/update/ui/DownloadNotification;->startHandleTimer()V

    goto :goto_0

    .line 60
    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 62
    invoke-direct {p0}, Lcom/zte/update/ui/DownloadNotification;->stopHandleTimer()V

    goto :goto_0
.end method
