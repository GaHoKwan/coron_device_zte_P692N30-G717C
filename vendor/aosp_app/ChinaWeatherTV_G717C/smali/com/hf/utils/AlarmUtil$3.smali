.class Lcom/hf/utils/AlarmUtil$3;
.super Ljava/lang/Object;
.source "AlarmUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/utils/AlarmUtil;->setUpdateWeatherAMAlarm()V
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
    iput-object p1, p0, Lcom/hf/utils/AlarmUtil$3;->this$0:Lcom/hf/utils/AlarmUtil;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/16 v12, 0xb

    const/16 v11, 0x8

    const/4 v10, 0x5

    const/4 v9, 0x1

    .line 117
    const-wide/16 v6, 0x3e8

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    iget-object v6, p0, Lcom/hf/utils/AlarmUtil$3;->this$0:Lcom/hf/utils/AlarmUtil;

    #getter for: Lcom/hf/utils/AlarmUtil;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/hf/utils/AlarmUtil;->access$0(Lcom/hf/utils/AlarmUtil;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "alarm"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 122
    .local v0, alarm:Landroid/app/AlarmManager;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 123
    .local v4, intent:Landroid/content/Intent;
    const-string v6, "com.hf.QUERY_ALL_WEATHER_AM"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    iget-object v6, p0, Lcom/hf/utils/AlarmUtil$3;->this$0:Lcom/hf/utils/AlarmUtil;

    #getter for: Lcom/hf/utils/AlarmUtil;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/hf/utils/AlarmUtil;->access$0(Lcom/hf/utils/AlarmUtil;)Landroid/content/Context;

    move-result-object v6

    const/16 v7, 0x2714

    const/high16 v8, 0x4000

    invoke-static {v6, v7, v4, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 126
    .local v5, pendingIntent:Landroid/app/PendingIntent;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 127
    .local v1, calendar:Ljava/util/Calendar;
    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 128
    .local v3, hour:I
    sget-boolean v6, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v6, :cond_0

    .line 129
    const-string v6, "AlarmUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "am hour = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    if-lt v3, v11, :cond_1

    .line 132
    invoke-virtual {v1, v10, v9}, Ljava/util/Calendar;->add(II)V

    .line 134
    :cond_1
    invoke-virtual {v1, v12, v11}, Ljava/util/Calendar;->set(II)V

    .line 135
    const/16 v6, 0xc

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    double-to-int v7, v7

    mul-int/lit8 v7, v7, 0x1e

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 136
    const/16 v6, 0xd

    invoke-virtual {v1, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 137
    const/16 v6, 0xe

    invoke-virtual {v1, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 138
    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v0, v6, v7, v8, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 139
    sget-boolean v6, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v6, :cond_2

    .line 140
    const-string v6, "AlarmUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "am alarm = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; day = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; month = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_2
    return-void

    .line 118
    .end local v0           #alarm:Landroid/app/AlarmManager;
    .end local v1           #calendar:Ljava/util/Calendar;
    .end local v3           #hour:I
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #pendingIntent:Landroid/app/PendingIntent;
    :catch_0
    move-exception v2

    .line 119
    .local v2, e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0
.end method
