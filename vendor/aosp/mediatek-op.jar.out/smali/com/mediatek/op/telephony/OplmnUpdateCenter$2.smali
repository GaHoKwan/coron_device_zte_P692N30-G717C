.class Lcom/mediatek/op/telephony/OplmnUpdateCenter$2;
.super Landroid/content/BroadcastReceiver;
.source "OplmnUpdateCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/op/telephony/OplmnUpdateCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/op/telephony/OplmnUpdateCenter;


# direct methods
.method constructor <init>(Lcom/mediatek/op/telephony/OplmnUpdateCenter;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter$2;->this$0:Lcom/mediatek/op/telephony/OplmnUpdateCenter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 89
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, action:Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter$2;->this$0:Lcom/mediatek/op/telephony/OplmnUpdateCenter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "received broadcast, action = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at time "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "yyyy-MM-dd, kk:mm:ss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/mediatek/op/telephony/OplmnUpdateCenter;->logd(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->access$100(Lcom/mediatek/op/telephony/OplmnUpdateCenter;Ljava/lang/String;)V

    .line 92
    iget-object v5, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter$2;->this$0:Lcom/mediatek/op/telephony/OplmnUpdateCenter;

    #getter for: Lcom/mediatek/op/telephony/OplmnUpdateCenter;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v5}, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->access$500(Lcom/mediatek/op/telephony/OplmnUpdateCenter;)Landroid/net/ConnectivityManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 93
    .local v2, info:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    iget-object v6, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter$2;->this$0:Lcom/mediatek/op/telephony/OplmnUpdateCenter;

    #getter for: Lcom/mediatek/op/telephony/OplmnUpdateCenter;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v6}, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->access$500(Lcom/mediatek/op/telephony/OplmnUpdateCenter;)Landroid/net/ConnectivityManager;

    if-nez v5, :cond_1

    move v1, v3

    .line 96
    .local v1, connected:Z
    :goto_0
    const-string v5, "com.mediatek.intent.action.ACTION_OPLMN_UPDATE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 97
    iget-object v4, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter$2;->this$0:Lcom/mediatek/op/telephony/OplmnUpdateCenter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update oplmn, data connected = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/mediatek/op/telephony/OplmnUpdateCenter;->logd(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->access$100(Lcom/mediatek/op/telephony/OplmnUpdateCenter;Ljava/lang/String;)V

    .line 98
    if-eqz v1, :cond_2

    .line 99
    new-instance v3, Ljava/lang/Thread;

    iget-object v4, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter$2;->this$0:Lcom/mediatek/op/telephony/OplmnUpdateCenter;

    #getter for: Lcom/mediatek/op/telephony/OplmnUpdateCenter;->mOplmnUpdateRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->access$600(Lcom/mediatek/op/telephony/OplmnUpdateCenter;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 110
    :cond_0
    :goto_1
    return-void

    .end local v1           #connected:Z
    :cond_1
    move v1, v4

    .line 93
    goto :goto_0

    .line 101
    .restart local v1       #connected:Z
    :cond_2
    iget-object v4, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter$2;->this$0:Lcom/mediatek/op/telephony/OplmnUpdateCenter;

    #setter for: Lcom/mediatek/op/telephony/OplmnUpdateCenter;->mWaitingForNet:Z
    invoke-static {v4, v3}, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->access$702(Lcom/mediatek/op/telephony/OplmnUpdateCenter;Z)Z

    goto :goto_1

    .line 103
    :cond_3
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter$2;->this$0:Lcom/mediatek/op/telephony/OplmnUpdateCenter;

    #getter for: Lcom/mediatek/op/telephony/OplmnUpdateCenter;->mWaitingForNet:Z
    invoke-static {v3}, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->access$700(Lcom/mediatek/op/telephony/OplmnUpdateCenter;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    iget-object v3, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter$2;->this$0:Lcom/mediatek/op/telephony/OplmnUpdateCenter;

    const-string v5, "Retry to update the oplmn file"

    #calls: Lcom/mediatek/op/telephony/OplmnUpdateCenter;->logd(Ljava/lang/String;)V
    invoke-static {v3, v5}, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->access$100(Lcom/mediatek/op/telephony/OplmnUpdateCenter;Ljava/lang/String;)V

    .line 106
    new-instance v3, Ljava/lang/Thread;

    iget-object v5, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter$2;->this$0:Lcom/mediatek/op/telephony/OplmnUpdateCenter;

    #getter for: Lcom/mediatek/op/telephony/OplmnUpdateCenter;->mOplmnUpdateRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->access$600(Lcom/mediatek/op/telephony/OplmnUpdateCenter;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 107
    iget-object v3, p0, Lcom/mediatek/op/telephony/OplmnUpdateCenter$2;->this$0:Lcom/mediatek/op/telephony/OplmnUpdateCenter;

    #setter for: Lcom/mediatek/op/telephony/OplmnUpdateCenter;->mWaitingForNet:Z
    invoke-static {v3, v4}, Lcom/mediatek/op/telephony/OplmnUpdateCenter;->access$702(Lcom/mediatek/op/telephony/OplmnUpdateCenter;Z)Z

    goto :goto_1
.end method
