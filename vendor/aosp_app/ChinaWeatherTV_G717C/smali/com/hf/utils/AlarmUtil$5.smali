.class Lcom/hf/utils/AlarmUtil$5;
.super Ljava/lang/Object;
.source "AlarmUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/utils/AlarmUtil;->setUpdateWeatherAlarm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/utils/AlarmUtil;


# direct methods
.method constructor <init>(Lcom/hf/utils/AlarmUtil;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/utils/AlarmUtil$5;->this$0:Lcom/hf/utils/AlarmUtil;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 200
    const-wide/16 v8, 0x7d0

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_0
    iget-object v8, p0, Lcom/hf/utils/AlarmUtil$5;->this$0:Lcom/hf/utils/AlarmUtil;

    #getter for: Lcom/hf/utils/AlarmUtil;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/hf/utils/AlarmUtil;->access$0(Lcom/hf/utils/AlarmUtil;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 206
    .local v6, preference:Landroid/content/SharedPreferences;
    const/4 v7, 0x0

    .line 208
    .local v7, type:I
    :try_start_1
    iget-object v8, p0, Lcom/hf/utils/AlarmUtil$5;->this$0:Lcom/hf/utils/AlarmUtil;

    #getter for: Lcom/hf/utils/AlarmUtil;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/hf/utils/AlarmUtil;->access$0(Lcom/hf/utils/AlarmUtil;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f080135

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "12"

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    .line 212
    :goto_1
    mul-int/lit8 v8, v7, 0x3c

    mul-int/lit8 v8, v8, 0x3c

    mul-int/lit16 v8, v8, 0x3e8

    int-to-long v3, v8

    .line 213
    .local v3, interval:J
    iget-object v8, p0, Lcom/hf/utils/AlarmUtil$5;->this$0:Lcom/hf/utils/AlarmUtil;

    #setter for: Lcom/hf/utils/AlarmUtil;->mInterval:J
    invoke-static {v8, v3, v4}, Lcom/hf/utils/AlarmUtil;->access$2(Lcom/hf/utils/AlarmUtil;J)V

    .line 219
    iget-object v8, p0, Lcom/hf/utils/AlarmUtil$5;->this$0:Lcom/hf/utils/AlarmUtil;

    #getter for: Lcom/hf/utils/AlarmUtil;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/hf/utils/AlarmUtil;->access$0(Lcom/hf/utils/AlarmUtil;)Landroid/content/Context;

    move-result-object v8

    const-string v9, "alarm"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 220
    .local v0, alarm:Landroid/app/AlarmManager;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 221
    .local v2, intent:Landroid/content/Intent;
    const-string v8, "com.hf.QUERY_ALL_WEATHER_ALARM"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    iget-object v8, p0, Lcom/hf/utils/AlarmUtil$5;->this$0:Lcom/hf/utils/AlarmUtil;

    #getter for: Lcom/hf/utils/AlarmUtil;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/hf/utils/AlarmUtil;->access$0(Lcom/hf/utils/AlarmUtil;)Landroid/content/Context;

    move-result-object v8

    const/16 v9, 0x2712

    const/high16 v10, 0x4000

    invoke-static {v8, v9, v2, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 223
    .local v5, pendingIntent:Landroid/app/PendingIntent;
    iget-object v8, p0, Lcom/hf/utils/AlarmUtil$5;->this$0:Lcom/hf/utils/AlarmUtil;

    #getter for: Lcom/hf/utils/AlarmUtil;->mInterval:J
    invoke-static {v8}, Lcom/hf/utils/AlarmUtil;->access$3(Lcom/hf/utils/AlarmUtil;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    .line 224
    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v11, p0, Lcom/hf/utils/AlarmUtil$5;->this$0:Lcom/hf/utils/AlarmUtil;

    #getter for: Lcom/hf/utils/AlarmUtil;->mInterval:J
    invoke-static {v11}, Lcom/hf/utils/AlarmUtil;->access$3(Lcom/hf/utils/AlarmUtil;)J

    move-result-wide v11

    add-long/2addr v9, v11

    invoke-virtual {v0, v8, v9, v10, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 228
    :goto_2
    return-void

    .line 201
    .end local v0           #alarm:Landroid/app/AlarmManager;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #interval:J
    .end local v5           #pendingIntent:Landroid/app/PendingIntent;
    .end local v6           #preference:Landroid/content/SharedPreferences;
    .end local v7           #type:I
    :catch_0
    move-exception v1

    .line 203
    .local v1, e1:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 226
    .end local v1           #e1:Ljava/lang/InterruptedException;
    .restart local v0       #alarm:Landroid/app/AlarmManager;
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v3       #interval:J
    .restart local v5       #pendingIntent:Landroid/app/PendingIntent;
    .restart local v6       #preference:Landroid/content/SharedPreferences;
    .restart local v7       #type:I
    :cond_0
    invoke-virtual {v0, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_2

    .line 209
    .end local v0           #alarm:Landroid/app/AlarmManager;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #interval:J
    .end local v5           #pendingIntent:Landroid/app/PendingIntent;
    :catch_1
    move-exception v8

    goto :goto_1
.end method
