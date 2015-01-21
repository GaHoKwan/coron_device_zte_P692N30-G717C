.class Lcom/hf/UI/InitDefaultActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "InitDefaultActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/InitDefaultActivity;->registBroadcast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/InitDefaultActivity;


# direct methods
.method constructor <init>(Lcom/hf/UI/InitDefaultActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/InitDefaultActivity$3;->this$0:Lcom/hf/UI/InitDefaultActivity;

    .line 202
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 206
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, action:Ljava/lang/String;
    sget-boolean v3, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v3, :cond_0

    .line 209
    const-string v3, "onReceive"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "action"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    const-string v3, "com.hf.ADD_CITY"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 213
    const-string v3, "com.hf.UPDATE_WEATHER"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 214
    const-string v3, "com.hf.CHANGE_DEFAULT_CITY"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 215
    :cond_1
    iget-object v3, p0, Lcom/hf/UI/InitDefaultActivity$3;->this$0:Lcom/hf/UI/InitDefaultActivity;

    #getter for: Lcom/hf/UI/InitDefaultActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/hf/UI/InitDefaultActivity;->access$3(Lcom/hf/UI/InitDefaultActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 216
    .local v2, message:Landroid/os/Message;
    const/16 v3, 0x3eb

    iput v3, v2, Landroid/os/Message;->what:I

    .line 217
    iget-object v3, p0, Lcom/hf/UI/InitDefaultActivity$3;->this$0:Lcom/hf/UI/InitDefaultActivity;

    #getter for: Lcom/hf/UI/InitDefaultActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/hf/UI/InitDefaultActivity;->access$3(Lcom/hf/UI/InitDefaultActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 231
    .end local v2           #message:Landroid/os/Message;
    :cond_2
    :goto_0
    return-void

    .line 218
    :cond_3
    const-string v3, "com.hf.QUERY_WEATHER_FAILED"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 219
    iget-object v3, p0, Lcom/hf/UI/InitDefaultActivity$3;->this$0:Lcom/hf/UI/InitDefaultActivity;

    #getter for: Lcom/hf/UI/InitDefaultActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/hf/UI/InitDefaultActivity;->access$3(Lcom/hf/UI/InitDefaultActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 220
    .restart local v2       #message:Landroid/os/Message;
    const/16 v3, 0x3ec

    iput v3, v2, Landroid/os/Message;->what:I

    .line 221
    iget-object v3, p0, Lcom/hf/UI/InitDefaultActivity$3;->this$0:Lcom/hf/UI/InitDefaultActivity;

    #getter for: Lcom/hf/UI/InitDefaultActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/hf/UI/InitDefaultActivity;->access$3(Lcom/hf/UI/InitDefaultActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 222
    .end local v2           #message:Landroid/os/Message;
    :cond_4
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 223
    const-string v3, "noConnectivity"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 224
    .local v1, connected:Z
    sget-boolean v3, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v3, :cond_5

    .line 225
    const-string v3, "MainActivityonReceive"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "connected = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_5
    if-eqz v1, :cond_2

    .line 228
    invoke-static {}, Lcom/hf/http/WeatherNet;->getInstance()Lcom/hf/http/WeatherNet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hf/http/WeatherNet;->stopQuery()V

    goto :goto_0
.end method
