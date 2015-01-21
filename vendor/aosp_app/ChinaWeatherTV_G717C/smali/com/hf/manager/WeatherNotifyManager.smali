.class public Lcom/hf/manager/WeatherNotifyManager;
.super Ljava/lang/Object;
.source "WeatherNotifyManager.java"


# static fields
.field public static final NOTIFY_WARNING_ID:I = 0x463

.field public static final NOTIFY_WEATHER_ID:I = 0x464

.field private static final TAG:Ljava/lang/String; = "WeatherNotifyManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancleNotification(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "cityId"

    .prologue
    .line 96
    const/16 v0, 0x463

    .line 98
    .local v0, id:I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 102
    :goto_0
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 103
    .local v1, manager:Landroid/app/NotificationManager;
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 105
    return-void

    .line 99
    .end local v1           #manager:Landroid/app/NotificationManager;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static final cancleWeatherNotify(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 121
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 122
    .local v0, manager:Landroid/app/NotificationManager;
    const/16 v1, 0x464

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 123
    return-void
.end method

.method public static showWarnNotification(Landroid/content/Context;Ljava/util/List;Lcom/hf/model/CityModel;)V
    .locals 12
    .parameter "context"
    .parameter
    .parameter "city"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/hf/model/WarningModel;",
            ">;",
            "Lcom/hf/model/CityModel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/hf/model/WarningModel;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    check-cast v10, Lcom/hf/HFWeatherApp;

    invoke-virtual {v10}, Lcom/hf/HFWeatherApp;->isWeatherWarningActivityTop()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    if-eqz p2, :cond_0

    .line 50
    const/16 v6, 0x463

    .line 52
    .local v6, notifyId:I
    :try_start_0
    iget-object v10, p2, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 56
    :goto_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 59
    const/4 v10, 0x0

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/hf/model/WarningModel;

    .line 60
    .local v9, warning:Lcom/hf/model/WarningModel;
    if-eqz v9, :cond_0

    .line 63
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_2

    const/4 v3, 0x1

    .line 64
    .local v3, isMany:Z
    :goto_2
    const-string v10, "notification"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 65
    .local v4, nManager:Landroid/app/NotificationManager;
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    .line 66
    .local v5, notification:Landroid/app/Notification;
    iget v10, v9, Lcom/hf/model/WarningModel;->bigImageId:I

    iput v10, v5, Landroid/app/Notification;->icon:I

    .line 67
    iget-object v10, v9, Lcom/hf/model/WarningModel;->title:Ljava/lang/String;

    iput-object v10, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 68
    const/16 v10, 0x10

    iput v10, v5, Landroid/app/Notification;->flags:I

    .line 69
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 70
    .local v2, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 71
    .local v0, bundle:Landroid/os/Bundle;
    const-string v10, "city_id"

    iget-object v11, p2, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {p0, p2}, Lcom/hf/utils/Util;->getDiaplayName(Landroid/content/Context;Lcom/hf/model/CityModel;)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, cityName:Ljava/lang/String;
    const-string v10, "city_name"

    invoke-virtual {v0, v10, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    if-eqz v3, :cond_3

    .line 75
    const-string v10, "notify_type"

    const-string v11, "notifyToList"

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-class v10, Lcom/hf/UI/WarningListActivity;

    invoke-virtual {v2, p0, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 82
    :goto_3
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 83
    const/high16 v10, 0x1000

    invoke-virtual {v2, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    long-to-int v10, v10

    const/4 v11, 0x0

    invoke-static {p0, v10, v2, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 85
    .local v7, pendingIntent:Landroid/app/PendingIntent;
    invoke-static {p0}, Lcom/hf/utils/Util;->isChinese(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v8, v9, Lcom/hf/model/WarningModel;->title:Ljava/lang/String;

    .line 86
    .local v8, title:Ljava/lang/String;
    :goto_4
    iget-object v10, v9, Lcom/hf/model/WarningModel;->decription:Ljava/lang/String;

    invoke-virtual {v5, p0, v8, v10, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 88
    invoke-virtual {v4, v6, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 63
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #cityName:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #isMany:Z
    .end local v4           #nManager:Landroid/app/NotificationManager;
    .end local v5           #notification:Landroid/app/Notification;
    .end local v7           #pendingIntent:Landroid/app/PendingIntent;
    .end local v8           #title:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 78
    .restart local v0       #bundle:Landroid/os/Bundle;
    .restart local v1       #cityName:Ljava/lang/String;
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v3       #isMany:Z
    .restart local v4       #nManager:Landroid/app/NotificationManager;
    .restart local v5       #notification:Landroid/app/Notification;
    :cond_3
    const-class v10, Lcom/hf/UI/WarningItemActivity;

    invoke-virtual {v2, p0, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 79
    const-string v10, "notify_type"

    const-string v11, "notifyToOne"

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v10, "warning_model"

    invoke-virtual {v0, v10, v9}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_3

    .line 85
    .restart local v7       #pendingIntent:Landroid/app/PendingIntent;
    :cond_4
    iget-object v8, v9, Lcom/hf/model/WarningModel;->englishTitle:Ljava/lang/String;

    goto :goto_4

    .line 53
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #cityName:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #isMany:Z
    .end local v4           #nManager:Landroid/app/NotificationManager;
    .end local v5           #notification:Landroid/app/Notification;
    .end local v7           #pendingIntent:Landroid/app/PendingIntent;
    .end local v9           #warning:Lcom/hf/model/WarningModel;
    :catch_0
    move-exception v10

    goto/16 :goto_1
.end method

.method public static final showWeatherNotify(Landroid/content/Context;Lcom/hf/model/CityModel;Lcom/hf/model/WeatherModel;)V
    .locals 2
    .parameter "context"
    .parameter "city"
    .parameter "model"

    .prologue
    .line 131
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hf/manager/WeatherNotifyManager$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/hf/manager/WeatherNotifyManager$1;-><init>(Landroid/content/Context;Lcom/hf/model/CityModel;Lcom/hf/model/WeatherModel;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 272
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 274
    return-void
.end method
