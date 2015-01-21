.class Lcom/hf/service/SystemReceiver$1;
.super Landroid/os/AsyncTask;
.source "SystemReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/service/SystemReceiver;->connectChanged(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/service/SystemReceiver;

.field private update:Z

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$isAvailable:Z


# direct methods
.method constructor <init>(Lcom/hf/service/SystemReceiver;Landroid/content/Context;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/service/SystemReceiver$1;->this$0:Lcom/hf/service/SystemReceiver;

    iput-object p2, p0, Lcom/hf/service/SystemReceiver$1;->val$context:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/hf/service/SystemReceiver$1;->val$isAvailable:Z

    .line 61
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hf/service/SystemReceiver$1;->update:Z

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .parameter "params"

    .prologue
    const-wide/16 v11, 0x0

    const/4 v10, 0x0

    .line 67
    iget-object v8, p0, Lcom/hf/service/SystemReceiver$1;->val$context:Landroid/content/Context;

    const-string v9, "connectivity"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 68
    .local v7, preferences:Landroid/content/SharedPreferences;
    const-string v8, "time"

    invoke-interface {v7, v8, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 69
    .local v5, lastTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 70
    .local v0, currentTime:J
    sub-long v2, v0, v5

    .line 71
    .local v2, discrepancy:J
    cmp-long v8, v2, v11

    if-ltz v8, :cond_0

    const-wide/32 v8, 0x2932e00

    cmp-long v8, v2, v8

    if-lez v8, :cond_1

    .line 72
    :cond_0
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/hf/service/SystemReceiver$1;->update:Z

    .line 73
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 74
    .local v4, editor:Landroid/content/SharedPreferences$Editor;
    const-string v8, "time"

    invoke-interface {v4, v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 75
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 80
    .end local v4           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_0
    const/4 v8, 0x0

    return-object v8

    .line 77
    :cond_1
    iput-boolean v10, p0, Lcom/hf/service/SystemReceiver$1;->update:Z

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 84
    iget-boolean v1, p0, Lcom/hf/service/SystemReceiver$1;->update:Z

    if-eqz v1, :cond_0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "network changed isAvailable = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    iget-boolean v2, p0, Lcom/hf/service/SystemReceiver$1;->val$isAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, content:Ljava/lang/String;
    iget-object v1, p0, Lcom/hf/service/SystemReceiver$1;->val$context:Landroid/content/Context;

    const-string v2, "weather_log.txt"

    invoke-static {v1, v2, v0}, Lcom/hf/data/LogTag;->writeToSDcard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/hf/service/SystemReceiver$1;->val$context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.hf.QUERY_ALL_WEATHER_NET_STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 91
    .end local v0           #content:Ljava/lang/String;
    :cond_0
    return-void
.end method
