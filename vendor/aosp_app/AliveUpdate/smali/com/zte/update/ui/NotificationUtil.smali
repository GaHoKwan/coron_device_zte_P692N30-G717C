.class public Lcom/zte/update/ui/NotificationUtil;
.super Ljava/lang/Object;
.source "NotificationUtil.java"

# interfaces
.implements Lcom/zte/update/app/ui/UiObserver;


# static fields
.field protected static final FOUND_SELF_UPDATE_TAG:Ljava/lang/String; = "com.zte.alivupdate.found_update_apps"

.field protected static final FOUND_UPDATE_APPS_TAG:Ljava/lang/String; = "com.zte.autoupdate.found_update_apps"

.field protected static final TAG:Ljava/lang/String; = "AliveUpdate"

.field private static instance:Lcom/zte/update/ui/NotificationUtil;


# instance fields
.field private context:Landroid/content/Context;

.field public nm:Landroid/app/NotificationManager;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getDefault()Lcom/zte/aliveupdate/main/AliveUpdateApp;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/update/ui/NotificationUtil;->context:Landroid/content/Context;

    .line 32
    iget-object v0, p0, Lcom/zte/update/ui/NotificationUtil;->context:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/zte/update/ui/NotificationUtil;->nm:Landroid/app/NotificationManager;

    .line 46
    return-void
.end method

.method public static getInstance()Lcom/zte/update/ui/NotificationUtil;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/zte/update/ui/NotificationUtil;->instance:Lcom/zte/update/ui/NotificationUtil;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/zte/update/ui/NotificationUtil;

    invoke-direct {v0}, Lcom/zte/update/ui/NotificationUtil;-><init>()V

    sput-object v0, Lcom/zte/update/ui/NotificationUtil;->instance:Lcom/zte/update/ui/NotificationUtil;

    .line 40
    :cond_0
    sget-object v0, Lcom/zte/update/ui/NotificationUtil;->instance:Lcom/zte/update/ui/NotificationUtil;

    return-object v0
.end method

.method private static getResBitmap(I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "id"

    .prologue
    .line 132
    :try_start_0
    invoke-static {}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getDefault()Lcom/zte/aliveupdate/main/AliveUpdateApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 134
    .local v0, iconDrawable:Landroid/graphics/drawable/Drawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0           #iconDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 137
    :goto_0
    return-object v1

    .line 135
    :catch_0
    move-exception v1

    .line 137
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancelUpdateNotification()V
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/zte/update/ui/NotificationUtil;->nm:Landroid/app/NotificationManager;

    const-string v1, "com.zte.autoupdate.found_update_apps"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 112
    return-void
.end method

.method public handleNewAppChecked()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 78
    const-string v4, "handleNewAppChecked"

    invoke-static {p0, v4}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/zte/update/data/DataManager;->getInstance()Lcom/zte/update/data/DataManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zte/update/data/DataManager;->getUpdateCheckKeys()Ljava/util/Collection;

    move-result-object v1

    .line 80
    .local v1, keys:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v4

    if-gtz v4, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/zte/update/ui/NotificationUtil;->cancelUpdateNotification()V

    .line 107
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v4, p0, Lcom/zte/update/ui/NotificationUtil;->context:Landroid/content/Context;

    const v5, 0x7f06002a

    new-array v6, v9, [Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, title:Ljava/lang/CharSequence;
    const v4, 0x7f020003

    invoke-static {v4}, Lcom/zte/update/ui/NotificationUtil;->getResBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 90
    .local v0, iconBitmap:Landroid/graphics/Bitmap;
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/zte/update/ui/NotificationUtil;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f020033

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/update/ui/NotificationUtil;->context:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "intent.action.startActivity.show_app_info_list"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v7, 0x3000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v6

    invoke-static {v5, v8, v6, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .line 105
    .local v3, updateAppsNotification:Landroid/app/Notification;
    iget-object v4, p0, Lcom/zte/update/ui/NotificationUtil;->nm:Landroid/app/NotificationManager;

    const-string v5, "com.zte.autoupdate.found_update_apps"

    invoke-virtual {v4, v5, v8, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method public handleSelfNewAppChecked()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 49
    iget-object v4, p0, Lcom/zte/update/ui/NotificationUtil;->context:Landroid/content/Context;

    const v5, 0x7f06003f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, title:Ljava/lang/CharSequence;
    const v4, 0x7f020003

    invoke-static {v4}, Lcom/zte/update/ui/NotificationUtil;->getResBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 52
    .local v0, iconBitmap:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/zte/update/ui/NotificationUtil;->context:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "intent.action.startActivity.show_app_info"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x3000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "mainKey"

    const-string v7, "AliveUpdate"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-static {v4, v8, v5, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 60
    .local v1, intent:Landroid/app/PendingIntent;
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/zte/update/ui/NotificationUtil;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f020033

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .line 72
    .local v3, updateAppsNotification:Landroid/app/Notification;
    iget-object v4, p0, Lcom/zte/update/ui/NotificationUtil;->nm:Landroid/app/NotificationManager;

    const-string v5, "com.zte.alivupdate.found_update_apps"

    invoke-virtual {v4, v5, v9, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 75
    return-void
.end method

.method public varargs update(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 4
    .parameter "tag"
    .parameter "data"

    .prologue
    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 117
    .local v0, key:I
    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/zte/update/ui/NotificationUtil;->handleNewAppChecked()V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    const/16 v2, 0x12

    if-ne v0, v2, :cond_0

    .line 122
    const/4 v2, 0x0

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Integer;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 123
    .local v1, num:I
    if-lez v1, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/zte/update/ui/NotificationUtil;->handleSelfNewAppChecked()V

    goto :goto_0
.end method
