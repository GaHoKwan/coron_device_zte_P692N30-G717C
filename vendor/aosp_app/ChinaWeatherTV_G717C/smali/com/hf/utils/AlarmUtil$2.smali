.class Lcom/hf/utils/AlarmUtil$2;
.super Ljava/lang/Object;
.source "AlarmUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/utils/AlarmUtil;->setWarningAlarm()V
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
    iput-object p1, p0, Lcom/hf/utils/AlarmUtil$2;->this$0:Lcom/hf/utils/AlarmUtil;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    .line 82
    iget-object v6, p0, Lcom/hf/utils/AlarmUtil$2;->this$0:Lcom/hf/utils/AlarmUtil;

    #getter for: Lcom/hf/utils/AlarmUtil;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/hf/utils/AlarmUtil;->access$0(Lcom/hf/utils/AlarmUtil;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 83
    .local v3, preference:Landroid/content/SharedPreferences;
    const-string v6, "warning_switch"

    invoke-interface {v3, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 84
    .local v5, warning_switch:Z
    const-string v6, "AlarmUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "warning_switch = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    if-nez v5, :cond_0

    .line 86
    iget-object v6, p0, Lcom/hf/utils/AlarmUtil$2;->this$0:Lcom/hf/utils/AlarmUtil;

    #calls: Lcom/hf/utils/AlarmUtil;->closeWarningAlarm()V
    invoke-static {v6}, Lcom/hf/utils/AlarmUtil;->access$1(Lcom/hf/utils/AlarmUtil;)V

    .line 104
    :goto_0
    return-void

    .line 90
    :cond_0
    const/4 v4, 0x0

    .line 92
    .local v4, type:I
    :try_start_0
    iget-object v6, p0, Lcom/hf/utils/AlarmUtil$2;->this$0:Lcom/hf/utils/AlarmUtil;

    #getter for: Lcom/hf/utils/AlarmUtil;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/hf/utils/AlarmUtil;->access$0(Lcom/hf/utils/AlarmUtil;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f080135

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "12"

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 95
    :goto_1
    if-ne v4, v9, :cond_1

    .line 96
    iget-object v6, p0, Lcom/hf/utils/AlarmUtil$2;->this$0:Lcom/hf/utils/AlarmUtil;

    #calls: Lcom/hf/utils/AlarmUtil;->closeWarningAlarm()V
    invoke-static {v6}, Lcom/hf/utils/AlarmUtil;->access$1(Lcom/hf/utils/AlarmUtil;)V

    goto :goto_0

    .line 98
    :cond_1
    iget-object v6, p0, Lcom/hf/utils/AlarmUtil$2;->this$0:Lcom/hf/utils/AlarmUtil;

    #getter for: Lcom/hf/utils/AlarmUtil;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/hf/utils/AlarmUtil;->access$0(Lcom/hf/utils/AlarmUtil;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "alarm"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 99
    .local v0, alarm:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 100
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "com.hf.QUERY_WARNING"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    iget-object v6, p0, Lcom/hf/utils/AlarmUtil$2;->this$0:Lcom/hf/utils/AlarmUtil;

    #getter for: Lcom/hf/utils/AlarmUtil;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/hf/utils/AlarmUtil;->access$0(Lcom/hf/utils/AlarmUtil;)Landroid/content/Context;

    move-result-object v6

    const/16 v7, 0x2711

    const/high16 v8, 0x4000

    invoke-static {v6, v7, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 102
    .local v2, pendingIntent:Landroid/app/PendingIntent;
    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/32 v9, 0x36ee80

    add-long/2addr v7, v9

    invoke-virtual {v0, v6, v7, v8, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 93
    .end local v0           #alarm:Landroid/app/AlarmManager;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #pendingIntent:Landroid/app/PendingIntent;
    :catch_0
    move-exception v6

    goto :goto_1
.end method
